import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hermes_android/core/screens/chat_screen.dart';
import 'package:hermes_android/core/services/connection_manager.dart';
import 'package:hermes_android/l10n/app_localizations.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'support/fake_voice_composer_adapter.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({'verbose_mode': false});
  });

  testWidgets(
    'API-server-only model picker lists and applies models without Dashboard',
    (tester) async {
      final requests = <http.Request>[];
      final apiClient = ApiClient(
        baseUrl: 'http://api.fixture:8642',
        apiKey: 'fixture-key',
        httpClient: MockClient((request) async {
          requests.add(request);
          expect(request.url.host, 'api.fixture');
          expect(request.url.port, 8642);
          if (request.method == 'GET' &&
              request.url.path == '/api/sessions/api-session/messages') {
            return http.Response('{"data":[]}', 200);
          }
          if (request.method == 'GET' &&
              request.url.path == '/api/sessions/api-session') {
            return http.Response(
              jsonEncode({
                'object': 'hermes.session',
                'session': {'id': 'api-session', 'model': 'old-model'},
              }),
              200,
            );
          }
          if (request.method == 'GET' &&
              request.url.path == '/api/model/options') {
            return http.Response(
              jsonEncode({
                'model': 'profile-model',
                'provider': 'nous',
                'providers': [
                  {
                    'slug': 'nous',
                    'models': ['old-model', 'new-model'],
                  },
                ],
              }),
              200,
            );
          }
          if (request.method == 'POST' &&
              request.url.path == '/api/sessions/api-session/model') {
            expect(jsonDecode(request.body), {
              'provider': 'nous',
              'model': 'new-model',
              'require_model_lock': true,
            });
            return http.Response(
              '{"object":"hermes.session.model_lock",'
              '"session_id":"api-session"}',
              200,
            );
          }
          return http.Response('not found', 404);
        }),
      );

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: ChatScreen(
            connection: SavedConnection(
              id: 'api-only',
              label: 'API only',
              host: 'api.fixture',
              port: 8642,
              apiKey: 'fixture-key',
            ),
            session: const Session(
              id: 'api-session',
              title: 'API chat',
              model: 'stale-list-model',
              source: 'api_server',
              messageCount: 0,
              isActive: true,
              preview: '',
              startedAt: 1,
            ),
            testApiClient: apiClient,
            testVoiceComposerAdapter: FakeVoiceComposerAdapter(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.bySemanticsLabel('Choose chat model'));
      // The picker button intentionally keeps a progress spinner active while
      // its modal is open, so pumpAndSettle cannot become idle here.
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));

      expect(
        find.text('Profile default: profile-model • nous'),
        findsOneWidget,
      );
      expect(find.text('new-model'), findsOneWidget);
      await tester.tap(find.text('new-model'));
      await tester.tap(find.text('Apply to this chat'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));

      expect(
        requests.map((request) => '${request.method} ${request.url.path}'),
        containsAll([
          'GET /api/sessions/api-session',
          'GET /api/model/options',
          'POST /api/sessions/api-session/model',
        ]),
      );
      expect(requests.any((request) => request.url.port == 9119), isFalse);
      expect(find.textContaining('new-model'), findsWidgets);
    },
  );
}
