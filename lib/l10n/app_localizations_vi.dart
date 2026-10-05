// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get a_one_off_question_archives_itself_after_72_hours_anything =>
      'Câu hỏi một lần. Tự động lưu trữ sau 72 giờ; mọi thứ đáng lưu giữ vẫn được ghi nhớ.';

  @override
  String get ai_full_text => 'AI + toàn văn';

  @override
  String get ai_search_model => 'Mô hình tìm kiếm AI';

  @override
  String ai_searched_for(Object aiRewrittenQuery) {
    return 'AI đã tìm kiếm: $aiRewrittenQuery';
  }

  @override
  String get ai_assisted_filing => 'Sắp xếp có hỗ trợ AI';

  @override
  String get api_key => 'Khóa API';

  @override
  String get api_server_key_from_hermes_env =>
      'API_SERVER_KEY từ ~/.hermes/.env';

  @override
  String get active => 'Đang hoạt động';

  @override
  String get activity => 'Hoạt động';

  @override
  String get activity_reads_the_durable_turn_journal_to_know_what_hermes =>
      'Hoạt động đọc nhật ký vòng lặp bền vững để biết Hermes đang làm gì. Kiểm tra xem gateway có thể truy cập được không, sau đó thử lại.';

  @override
  String get add => 'Thêm';

  @override
  String get add_connection => 'Thêm kết nối';

  @override
  String get add_cron_job => 'Thêm Cron Job';

  @override
  String get add_gateway_connection => 'Thêm kết nối Gateway';

  @override
  String get add_and_update_connections_from_the_backup_keep_the_rest =>
      'Thêm và cập nhật kết nối từ bản sao lưu, giữ nguyên phần còn lại.';

  @override
  String get add_attachment => 'Thêm tệp đính kèm';

  @override
  String get add_new_cron_job => 'Thêm Cron Job mới';

  @override
  String get add_to_chat => 'Thêm vào cuộc trò chuyện';

  @override
  String get all_chats => 'Tất cả cuộc trò chuyện';

  @override
  String get all_stored_message_content => 'Tất cả nội dung tin nhắn đã lưu';

  @override
  String get allow_for_this_session => 'Cho phép trong phiên này';

  @override
  String get allow_matching_commands_until_this_hermes_session_ends =>
      'Cho phép các lệnh khớp cho đến khi phiên Hermes này kết thúc.';

  @override
  String get allow_once => 'Cho phép một lần';

  @override
  String get always_allow => 'Luôn cho phép';

  @override
  String get apply_to_this_chat => 'Áp dụng cho cuộc trò chuyện này';

  @override
  String get approval_needed => 'Cần phê duyệt';

  @override
  String get archive => 'Lưu trữ';

  @override
  String get archive_project => 'Lưu trữ dự án';

  @override
  String archive_2(Object projectName) {
    return 'Lưu trữ $projectName?';
  }

  @override
  String archive_3(Object name) {
    return 'Lưu trữ $name?';
  }

  @override
  String get archived => 'Đã lưu trữ';

  @override
  String get archived_conversations_appear_here =>
      'Các cuộc trò chuyện đã lưu trữ xuất hiện ở đây.';

  @override
  String get archived_quick_chats => 'Cuộc trò chuyện nhanh đã lưu trữ';

  @override
  String get artifacts_attachments_and_generated_media =>
      'Tạo phẩm, tệp đính kèm và phương tiện được tạo';

  @override
  String get ask_ai_to_find_a_conversation => 'Yêu cầu AI tìm cuộc trò chuyện';

  @override
  String get assets => 'Tài nguyên';

  @override
  String get assets_need_a_server_authoritative_assets_index_in_the_hermes =>
      'Tài nguyên cần chỉ mục tài nguyên có thẩm quyền từ máy chủ trong Hermes Gateway trước khi có thể hiển thị theo dự án.';

  @override
  String get assets_unavailable => 'Tài nguyên không khả dụng';

  @override
  String get attach_image_or_file => 'Đính kèm hình ảnh hoặc tệp';

  @override
  String get attachment_drafts => 'Bản nháp đính kèm';

  @override
  String attachment_of(Object index, Object total) {
    return 'Tệp đính kèm $index / $total';
  }

  @override
  String get auto_device_default => 'Tự động (mặc định thiết bị)';

  @override
  String get auto_archives_after_72_hours => 'Tự động lưu trữ sau 72 giờ';

  @override
  String get automation => 'Tự động hóa';

  @override
  String get autonomous_agents => 'Tác nhân tự động';

  @override
  String get background_recovery_unavailable_legacy_transport =>
      'Khôi phục nền không khả dụng — phương thức truyền tải cũ';

  @override
  String get backup_restore => 'Sao lưu & khôi phục';

  @override
  String backup_exported(Object destination) {
    return 'Đã xuất bản sao lưu — $destination';
  }

  @override
  String get base_url => 'URL cơ sở';

  @override
  String get binary_preview_is_unavailable_download_the_file_to_open_it =>
      'Không thể xem trước tệp nhị phân. Tải xuống tệp để mở.';

  @override
  String get branch => 'Nhánh';

  @override
  String get branch_chat => 'Tạo nhánh cuộc trò chuyện';

  @override
  String get branch_created_in_hermes_history =>
      'Đã tạo nhánh trong lịch sử Hermes.';

  @override
  String get browse_and_manage_your_hermes_agent_sessions_from_your_phone =>
      'Duyệt và quản lý các phiên Hermes Agent của bạn từ điện thoại. Kết nối tới bảng điều khiển Hermes đang chạy trên mạng cục bộ của bạn.';

  @override
  String get browse_server_files => 'Duyệt tệp máy chủ';

  @override
  String get browse_the_miniserver_folders_behind_your_projects =>
      'Duyệt các thư mục miniserver phía sau dự án của bạn';

  @override
  String get cancel => 'Hủy';

  @override
  String get cancel_voice_input => 'Hủy nhập giọng nói';

  @override
  String cannot_reach(Object host, Object port) {
    return 'Không thể kết nối tới $host:$port.';
  }

  @override
  String cannot_reach_check_the_host_and_port(Object host, Object port) {
    return 'Không thể kết nối tới $host:$port. Kiểm tra máy chủ và cổng.';
  }

  @override
  String get change_ai_search_model => 'Thay đổi mô hình tìm kiếm AI';

  @override
  String changes_the_default_for_use_the_selector_in_a_chat(Object label) {
    return 'Thay đổi mặc định cho $label. Sử dụng bộ chọn trong cuộc trò chuyện để chỉ ghi đè cuộc trò chuyện đó.';
  }

  @override
  String get chat_actions => 'Thao tác cuộc trò chuyện';

  @override
  String get chats => 'Cuộc trò chuyện';

  @override
  String get chats_from_this_gateway_are_not_grouped_yet_grouping_stays =>
      'Các cuộc trò chuyện từ gateway này chưa được nhóm. Nhóm chỉ ở trên điện thoại này cho đến khi gateway có thể lưu trữ dự án.';

  @override
  String get chats_in_this_project_will_show_their_state_and_last =>
      'Các cuộc trò chuyện trong dự án này sẽ hiển thị trạng thái và hoạt động gần đây của chúng ở đây.';

  @override
  String get chats_that_are_not_assigned_to_a_project =>
      'Các cuộc trò chuyện chưa được gán cho Dự án';

  @override
  String get chats_you_start_in_this_project_will_appear_here_on =>
      'Các cuộc trò chuyện bạn bắt đầu trong dự án này sẽ xuất hiện ở đây, trên mọi thiết bị đã đăng nhập vào Hermes này.';

  @override
  String get check_that_the_gateway_is_running_and_reachable_then_try =>
      'Kiểm tra xem gateway có đang chạy và có thể truy cập được không, sau đó thử lại.';

  @override
  String get check_the_dashboard_connection_and_try_again =>
      'Kiểm tra kết nối Bảng điều khiển và thử lại.';

  @override
  String get check_the_connection_and_try_again =>
      'Kiểm tra kết nối và thử lại.';

  @override
  String get choose_a_small_model_to_rewrite_queries =>
      'Chọn một mô hình nhỏ để viết lại truy vấn';

  @override
  String get choose_an_ai_search_model_before_using_ai_search =>
      'Chọn mô hình tìm kiếm AI trước khi sử dụng tìm kiếm AI.';

  @override
  String get choose_an_active_project_next =>
      'Chọn một Dự án đang hoạt động tiếp theo';

  @override
  String get choose_chat_model => 'Chọn mô hình trò chuyện';

  @override
  String get choose_files => 'Chọn tệp';

  @override
  String get choose_image => 'Chọn hình ảnh';

  @override
  String get choose_images => 'Chọn hình ảnh';

  @override
  String get choose_its_destination_space => 'Chọn không gian đích của nó';

  @override
  String get clear_search => 'Xóa tìm kiếm';

  @override
  String get close => 'Đóng';

  @override
  String get code_copied => 'Đã sao chép mã';

  @override
  String get coming_next => 'Sắp có';

  @override
  String get command => 'Lệnh';

  @override
  String get command_line_chats => 'Cuộc trò chuyện dòng lệnh';

  @override
  String get compatibility_mode => 'Chế độ tương thích';

  @override
  String get configure_a_valid_desktop_gateway_url_before_attaching_files =>
      'Cấu hình URL Desktop Gateway hợp lệ trước khi đính kèm tệp.';

  @override
  String get confirm_always_allow => 'Xác nhận luôn cho phép';

  @override
  String get confirm_passphrase => 'Xác nhận cụm mật khẩu';

  @override
  String connecting_to(Object baseUrl) {
    return 'Đang kết nối tới $baseUrl...';
  }

  @override
  String get connection_issue => 'Vấn đề kết nối';

  @override
  String
  get connection_switched_the_running_reply_continues_on_the_server_and =>
      'Đã chuyển kết nối — phản hồi đang chạy tiếp tục trên máy chủ và sẽ tự động gắn lại.';

  @override
  String get connection_appearance_and_device_preferences =>
      'Kết nối, giao diện và tùy chọn thiết bị';

  @override
  String context_tokens(Object effectiveContextLength) {
    return 'Ngữ cảnh: $effectiveContextLength token';
  }

  @override
  String get continue_label => 'Tiếp tục';

  @override
  String get continue_working => 'Tiếp tục làm việc';

  @override
  String get conversations_in_this_project => 'Cuộc trò chuyện trong dự án này';

  @override
  String get copy_code => 'Sao chép mã';

  @override
  String get copy_message => 'Sao chép tin nhắn';

  @override
  String could_not_branch_chat(Object error) {
    return 'Không thể tạo nhánh cuộc trò chuyện: $error';
  }

  @override
  String could_not_delete_session(Object error) {
    return 'Không thể xóa phiên: $error';
  }

  @override
  String could_not_deny_the_command(Object error) {
    return 'Không thể từ chối lệnh: $error';
  }

  @override
  String could_not_load_ai_search_models(Object error) {
    return 'Không thể tải mô hình tìm kiếm AI: $error';
  }

  @override
  String get could_not_load_conversations => 'Không thể tải cuộc trò chuyện';

  @override
  String get could_not_load_files => 'Không thể tải tệp';

  @override
  String could_not_load_models_for_this_profile(Object error) {
    return 'Không thể tải mô hình cho hồ sơ này: $error';
  }

  @override
  String could_not_load_more_chats(Object error) {
    return 'Không thể tải thêm cuộc trò chuyện: $error';
  }

  @override
  String get could_not_open_the_hermes_dashboard =>
      'Không thể mở bảng điều khiển Hermes.';

  @override
  String get could_not_open_this_project => 'Không thể mở dự án này';

  @override
  String get could_not_preview_file => 'Không thể xem trước tệp';

  @override
  String get could_not_reach_hermes => 'Không thể kết nối tới Hermes';

  @override
  String could_not_reach_authenticate_the_dashboard_at_check_the_port(
    Object dashboardPort,
    Object host,
  ) {
    return 'Không thể kết nối/xác thực bảng điều khiển tại $host:$dashboardPort. Kiểm tra cổng và thông tin xác thực.';
  }

  @override
  String get could_not_read_activity => 'Không thể đọc hoạt động';

  @override
  String could_not_rename_chat(Object error) {
    return 'Không thể đổi tên cuộc trò chuyện: $error';
  }

  @override
  String could_not_send_the_approval(Object error) {
    return 'Không thể gửi phê duyệt: $error';
  }

  @override
  String get could_not_skip_the_hermes_question =>
      'Không thể bỏ qua câu hỏi Hermes.';

  @override
  String could_not_the_project(Object action, Object error) {
    return 'Không thể $action dự án: $error';
  }

  @override
  String get couldn_t_delete_project => 'Không thể xóa dự án';

  @override
  String couldn_t_load_runs(Object error) {
    return 'Không thể tải các lần chạy: $error';
  }

  @override
  String get couldn_t_move_conversation =>
      'Không thể di chuyển cuộc trò chuyện';

  @override
  String couldn_t_move_to(Object label, Object reason) {
    return 'Không thể di chuyển tới $label: $reason';
  }

  @override
  String get couldn_t_prepare_the_shared_files =>
      'Không thể chuẩn bị các tệp được chia sẻ.';

  @override
  String get couldn_t_promote_conversation =>
      'Không thể thăng cấp cuộc trò chuyện';

  @override
  String couldn_t_project(Object action) {
    return 'Không thể $action dự án';
  }

  @override
  String get create => 'Tạo';

  @override
  String get create_a_project => 'Tạo dự án';

  @override
  String get create_a_project_first_then_chats_can_live_inside_it =>
      'Tạo dự án trước, sau đó các cuộc trò chuyện có thể nằm bên trong nó.';

  @override
  String get create_a_space_to_separate_related_conversations =>
      'Tạo không gian để phân tách các cuộc trò chuyện liên quan.';

  @override
  String get create_branch => 'Tạo nhánh';

  @override
  String get cron => 'Cron';

  @override
  String get cron_jobs => 'Cron Jobs';

  @override
  String get cron_job_added => 'Đã thêm Cron job';

  @override
  String get cron_job_updated => 'Đã cập nhật Cron job';

  @override
  String get cron_run => 'Chạy Cron';

  @override
  String get cross_device_ordering_and_reversible_bulk_organization =>
      'Sắp xếp đa thiết bị và tổ chức hàng loạt có thể hoàn tác';

  @override
  String get current_profile_default => 'Mặc định hồ sơ hiện tại';

  @override
  String get custom_proxy_and_dashboard_details =>
      'Chi tiết proxy và bảng điều khiển tùy chỉnh';

  @override
  String get dark => 'Tối';

  @override
  String get dashboard_proxy_settings => 'Cài đặt Bảng điều khiển / Proxy';

  @override
  String get dashboard_password_optional =>
      'Mật khẩu Bảng điều khiển (tùy chọn)';

  @override
  String get dashboard_port => 'Cổng Bảng điều khiển';

  @override
  String get dashboard_username_optional =>
      'Tên người dùng Bảng điều khiển (tùy chọn)';

  @override
  String get dashboard_behind_proxy => 'Bảng điều khiển nằm sau proxy';

  @override
  String get dashboard_path_prefix => 'Tiền tố đường dẫn Bảng điều khiển';

  @override
  String delegated_task(Object goal) {
    return 'Nhiệm vụ được ủy quyền: $goal';
  }

  @override
  String get delete => 'Xóa';

  @override
  String delete_2(Object name) {
    return 'Xóa \"$name\"?';
  }

  @override
  String delete_from_the_remote_hermes_history_this_cannot_be_undone(
    Object title,
  ) {
    return 'Xóa \"$title\" khỏi lịch sử Hermes từ xa? Thao tác này không thể hoàn tác.';
  }

  @override
  String get delete_cron_job => 'Xóa Cron Job';

  @override
  String get delete_connections_that_are_not_in_the_backup =>
      'Xóa các kết nối không có trong bản sao lưu.';

  @override
  String delete_failed(Object error) {
    return 'Xóa thất bại: $error';
  }

  @override
  String get delete_project => 'Xóa dự án';

  @override
  String get delete_session => 'Xóa phiên?';

  @override
  String delete_3(Object projectName) {
    return 'Xóa $projectName?';
  }

  @override
  String deleted(Object name) {
    return 'Đã xóa \"$name\"';
  }

  @override
  String get delivery_is_uncertain_recovering_without_resending =>
      'Việc gửi không chắc chắn; đang khôi phục mà không gửi lại…';

  @override
  String get desktop_gateway_url_optional => 'URL Desktop Gateway (tùy chọn)';

  @override
  String get desktop_gateway_is_not_configured_for_this_connection =>
      'Desktop Gateway chưa được cấu hình cho kết nối này.';

  @override
  String get desktop_app => 'Ứng dụng máy tính để bàn';

  @override
  String get developer_tool_calls => 'Lời gọi công cụ nhà phát triển';

  @override
  String get discord_chats => 'Cuộc trò chuyện Discord';

  @override
  String get dismiss => 'Bỏ qua';

  @override
  String get do_not_run_this_command => 'Không chạy lệnh này.';

  @override
  String get documents_archives_audio_video_or_data =>
      'Tài liệu, lưu trữ, âm thanh, video hoặc dữ liệu';

  @override
  String get download => 'Tải xuống';

  @override
  String download_failed(Object error) {
    return 'Tải xuống thất bại: $error';
  }

  @override
  String get durable_facts_hermes_keeps_about_you =>
      'Sự thật bền vững mà Hermes giữ về bạn';

  @override
  String get durable_work_inside_one_of_your_projects_shared_with_desktop =>
      'Công việc bền vững bên trong một trong các dự án của bạn, được chia sẻ với Desktop.';

  @override
  String get edit => 'Chỉnh sửa';

  @override
  String get edit_connection => 'Chỉnh sửa kết nối';

  @override
  String get edit_cron_job => 'Chỉnh sửa Cron Job';

  @override
  String get edit_gateway_connection => 'Chỉnh sửa kết nối Gateway';

  @override
  String get edit_and_resend => 'Chỉnh sửa và gửi lại';

  @override
  String get enables_file_attachments_through_the_desktop_remote_gateway =>
      'Cho phép đính kèm tệp thông qua Desktop remote gateway.';

  @override
  String get enter_a_name => 'Nhập tên';

  @override
  String get enter_a_passphrase => 'Nhập cụm mật khẩu.';

  @override
  String get enter_the_passphrase_for_this_backup =>
      'Nhập cụm mật khẩu cho bản sao lưu này.';

  @override
  String get every_conversation_is_already_assigned_to_a_project =>
      'Mọi cuộc trò chuyện đã được gán cho một Dự án.';

  @override
  String get everything_not_yet_native_in_the_authenticated_web_dashboard =>
      'Mọi thứ chưa có sẵn gốc, trong bảng điều khiển web đã xác thực';

  @override
  String get explain_the_attached_content_clearly =>
      'Giải thích rõ ràng nội dung đính kèm.';

  @override
  String explain_this_content_clearly(Object text) {
    return 'Giải thích rõ ràng nội dung này:\n\n$text';
  }

  @override
  String
  get explicit_choices_adjust_android_accessibility_text_size_system_leaves_it =>
      'Lựa chọn rõ ràng điều chỉnh kích thước văn bản khả năng tiếp cận Android; Hệ thống để nguyên.';

  @override
  String get export_label => 'Xuất';

  @override
  String get export_share => 'Xuất / chia sẻ';

  @override
  String get external_api_clients => 'Máy khách API bên ngoài';

  @override
  String get extra_high => 'Rất cao';

  @override
  String get extract_tasks => 'Trích xuất nhiệm vụ';

  @override
  String
  get extract_the_decisions_deadlines_owners_and_actionable_action_items_from =>
      'Trích xuất các quyết định, thời hạn, chủ sở hữu và các mục hành động có thể thực hiện từ nội dung đính kèm.';

  @override
  String
  extract_the_decisions_deadlines_owners_and_actionable_action_items_from_2(
    Object text,
  ) {
    return 'Trích xuất các quyết định, thời hạn, chủ sở hữu và các mục hành động có thể thực hiện từ nội dung này:\n\n$text';
  }

  @override
  String failed_to_add_job(Object error) {
    return 'Thêm job thất bại: $error';
  }

  @override
  String get failed_to_load_cron_jobs => 'Tải Cron jobs thất bại';

  @override
  String get failed_to_load_memory => 'Tải bộ nhớ thất bại';

  @override
  String get failed_to_load_messages => 'Tải tin nhắn thất bại';

  @override
  String get failed_to_load_settings => 'Tải cài đặt thất bại';

  @override
  String get failed_to_load_skills => 'Tải kỹ năng thất bại';

  @override
  String failed_to_update_job(Object error) {
    return 'Cập nhật job thất bại: $error';
  }

  @override
  String failed(Object error) {
    return 'Thất bại: $error';
  }

  @override
  String get file_attached_document_catalog_registration_is_pending =>
      'Đã đính kèm tệp; đăng ký danh mục tài liệu đang chờ xử lý.';

  @override
  String get file_reference_added_to_chat =>
      'Đã thêm tham chiếu tệp vào cuộc trò chuyện';

  @override
  String get files => 'Tệp';

  @override
  String get fill_from_document => 'Điền từ tài liệu';

  @override
  String get folder_is_empty => 'Thư mục trống';

  @override
  String get folders => 'Thư mục';

  @override
  String get full_text => 'Toàn văn';

  @override
  String get gateway_api_access => 'Truy cập Gateway API';

  @override
  String get gateway_connected_but_the_dashboard_could_not_be_reached_or =>
      'Đã kết nối Gateway, nhưng không thể truy cập hoặc xác thực bảng điều khiển. Kiểm tra chi tiết bảng điều khiển hoặc xóa chúng để bỏ qua.';

  @override
  String get gateway_path_prefix => 'Tiền tố đường dẫn Gateway';

  @override
  String get go_to_end => 'Đi đến cuối';

  @override
  String get hermes_agent => 'Hermes Agent';

  @override
  String get hermes_agent_for_android => 'Hermes Agent cho Android';

  @override
  String get hermes_could_not_accept_the_answer_please_try_again =>
      'Hermes không thể chấp nhận câu trả lời. Vui lòng thử lại.';

  @override
  String get hermes_could_not_load_your_saved_connections =>
      'Hermes không thể tải các kết nối đã lưu của bạn';

  @override
  String get hermes_did_not_accept_the_response_please_try_again =>
      'Hermes không chấp nhận phản hồi. Vui lòng thử lại.';

  @override
  String get hermes_is_responding => 'Hermes đang phản hồi…';

  @override
  String get hermes_is_waiting_for_input => 'Hermes đang chờ đầu vào…';

  @override
  String get hermes_keeps_android_accessibility_text_scaling_active =>
      'Hermes giữ tỷ lệ văn bản khả năng tiếp cận Android hoạt động.';

  @override
  String get hermes_needs_your_input => 'Hermes cần đầu vào của bạn';

  @override
  String get hermes_profile_optional => 'Hồ sơ Hermes (tùy chọn)';

  @override
  String get hermes_profile_must_be_a_plain_profile_name_such_as =>
      'Hồ sơ Hermes phải là tên hồ sơ đơn giản như \"sol\", không phải đường dẫn.';

  @override
  String get hermes_reasoning_details => 'Chi tiết lý luận của Hermes';

  @override
  String hermes_recovery_is_unavailable(Object error) {
    return 'Khôi phục Hermes không khả dụng: $error';
  }

  @override
  String get hermes_stopped_recovery_safely_no_prompt_was_resent =>
      'Hermes đã dừng khôi phục an toàn. Không có dấu nhắc nào được gửi lại.';

  @override
  String get hide_passphrase => 'Ẩn cụm mật khẩu';

  @override
  String get home_needs_your_recent_chats_to_know_what_deserves_your =>
      'Trang chủ cần các cuộc trò chuyện gần đây của bạn để biết điều gì đáng được chú ý. Kiểm tra xem gateway có thể truy cập được không, sau đó thử lại.';

  @override
  String get host => 'Máy chủ';

  @override
  String get image_selection_was_interrupted_try_again =>
      'Chọn hình ảnh bị gián đoạn. Thử lại.';

  @override
  String get import_label => 'Nhập';

  @override
  String get inbox => 'Hộp thư đến';

  @override
  String get inbox_is_clear => 'Hộp thư đã trống';

  @override
  String get insert_a_remote_file_reference => 'Chèn tham chiếu @file từ xa';

  @override
  String get invalid_port_number => 'Số cổng không hợp lệ.';

  @override
  String get job_paused => 'Đã tạm dừng job';

  @override
  String get job_resumed => 'Đã tiếp tục job';

  @override
  String get job_triggered => 'Đã kích hoạt job';

  @override
  String get label => 'Nhãn';

  @override
  String last_activity(Object day, Object month, Object year) {
    return 'Hoạt động cuối cùng $day/$month/$year';
  }

  @override
  String last(Object lastRun) {
    return 'Lần cuối: $lastRun';
  }

  @override
  String get leave_blank_for_default_8642_443_with_https =>
      'Để trống cho mặc định (8642; 443 với https)';

  @override
  String get leave_blank_for_default_9119 => 'Để trống cho mặc định (9119)';

  @override
  String get light => 'Sáng';

  @override
  String listening(Object elapsed) {
    return 'Đang nghe • $elapsed';
  }

  @override
  String listening_elapsed(Object elapsed) {
    return 'Đang nghe, đã trôi qua $elapsed';
  }

  @override
  String get load_more => 'Tải thêm…';

  @override
  String get loading => 'Đang tải';

  @override
  String get location => 'Vị trí';

  @override
  String get make_sure_the_gateway_api_server_is_running_hermes_gateway =>
      'Đảm bảo Gateway API Server đang chạy\n(hermes gateway status)';

  @override
  String matches(Object assigned, Object name) {
    return 'Khớp với $name · $assigned';
  }

  @override
  String get memory => 'Bộ nhớ';

  @override
  String get memory_entries_are_cross_session_facts_the_agent_remembers_they =>
      'Các mục bộ nhớ là sự thật xuyên phiên mà tác nhân ghi nhớ.\nChúng được cấu hình trong ~/.hermes/config.yaml';

  @override
  String get merge => 'Hợp nhất';

  @override
  String get message => 'Tin nhắn';

  @override
  String get message_hermes => 'Nhắn tin với Hermes…';

  @override
  String get message_actions => 'Thao tác tin nhắn';

  @override
  String get message_copied => 'Đã sao chép tin nhắn';

  @override
  String get migrating => 'Đang di chuyển…';

  @override
  String get migration_complete => 'Hoàn thành di chuyển';

  @override
  String get migration_failed_local_spaces_were_kept_unchanged =>
      'Di chuyển thất bại. Các không gian cục bộ được giữ nguyên.';

  @override
  String get migration_incomplete => 'Di chuyển chưa hoàn thành';

  @override
  String get migration_preview => 'Xem trước di chuyển';

  @override
  String get model => 'Mô hình';

  @override
  String get model_and_thinking_for_this_chat =>
      'Mô hình và tư duy cho cuộc trò chuyện này';

  @override
  String model_was_not_changed(Object error) {
    return 'Mô hình không được thay đổi: $error';
  }

  @override
  String get move_attachment_next => 'Di chuyển tệp đính kèm tiếp theo';

  @override
  String get move_attachment_previous => 'Di chuyển tệp đính kèm trước đó';

  @override
  String get move_chat => 'Di chuyển cuộc trò chuyện';

  @override
  String get move_conversation => 'Di chuyển cuộc trò chuyện';

  @override
  String get move_to_project => 'Di chuyển tới dự án';

  @override
  String get move_to_space => 'Di chuyển tới không gian';

  @override
  String get moved_to_a_project => 'Đã di chuyển tới Dự án';

  @override
  String moved_to(Object label) {
    return 'Đã di chuyển tới $label';
  }

  @override
  String get name => 'Tên';

  @override
  String get name_prompt_and_schedule_are_required =>
      'Tên, dấu nhắc và lịch trình là bắt buộc';

  @override
  String get needs_a_correction_aware_filing_contract_in_the_hermes_gateway =>
      'Cần hợp đồng sắp xếp nhận biết sửa lỗi trong Hermes Gateway.';

  @override
  String get needs_a_reachable_hermes_dashboard_check_the_host_port_and =>
      'Cần bảng điều khiển Hermes có thể truy cập. Kiểm tra máy chủ, cổng và thông tin xác thực của kết nối này.';

  @override
  String get needs_a_server_authoritative_assets_index_in_the_hermes_gateway =>
      'Cần chỉ mục tài nguyên có thẩm quyền từ máy chủ trong Hermes Gateway.';

  @override
  String get needs_durable_pin_ordering_batch_mutation_and_undo_contracts_in =>
      'Cần các hợp đồng sắp xếp ghim bền vững, biến đổi hàng loạt và hoàn tác trong Hermes Gateway.';

  @override
  String get needs_you => 'Cần bạn';

  @override
  String get new_label => 'Mới';

  @override
  String get new_chat => 'Cuộc trò chuyện mới';

  @override
  String get new_chat_2 => 'Cuộc trò chuyện mới';

  @override
  String new_chat_3(Object projectName) {
    return 'Cuộc trò chuyện mới · $projectName';
  }

  @override
  String get new_project => 'Dự án mới';

  @override
  String get new_space => 'Không gian mới';

  @override
  String next(Object nextRun) {
    return 'Tiếp theo: $nextRun';
  }

  @override
  String get nginx_injects_auth_app_sends_clean_requests =>
      'Nginx tiêm xác thực — ứng dụng gửi yêu cầu sạch';

  @override
  String get no_tts_voices_found_ninstall_google_text_to_speech_and =>
      'Không tìm thấy giọng nói TTS.\nCài đặt Google Text-to-Speech và tải dữ liệu giọng nói.';

  @override
  String get no_active_projects_on_this_gateway =>
      'Không có Dự án hoạt động nào trên Gateway này';

  @override
  String get no_activity_yet => 'Chưa có hoạt động nào';

  @override
  String get no_chat_is_blocked_running_or_waiting_to_be_resumed =>
      'Không có cuộc trò chuyện nào bị chặn, đang chạy hoặc đang chờ được tiếp tục. Bắt đầu một cuộc mới bất cứ khi nào bạn sẵn sàng.';

  @override
  String no_chats_in_this_project_match(Object searchQuery) {
    return 'Không có cuộc trò chuyện nào trong dự án này khớp với \"$searchQuery\".';
  }

  @override
  String get no_chats_in_this_space_yet_tap_to_start_one =>
      'Chưa có cuộc trò chuyện nào trong không gian này. Nhấn + để bắt đầu.';

  @override
  String get no_chats_yet => 'Chưa có cuộc trò chuyện nào';

  @override
  String get no_connections => 'Không có kết nối nào';

  @override
  String get no_conversation_matches_this_view =>
      'Không có cuộc trò chuyện nào khớp với chế độ xem này.';

  @override
  String get no_cron_jobs => 'Không có Cron jobs';

  @override
  String get no_folders_yet => 'Chưa có thư mục nào';

  @override
  String get no_local_spaces_were_found_for_this_connection_so_projects =>
      'Không tìm thấy không gian cục bộ nào cho kết nối này, vì vậy Dự án đã là phương pháp tổ chức duy nhất đang được sử dụng ở đây.';

  @override
  String get no_matches => 'Không có kết quả khớp';

  @override
  String get no_memory_entries => 'Không có mục bộ nhớ';

  @override
  String get no_message_content_matches => 'Không có nội dung tin nhắn khớp';

  @override
  String get no_new_messages => 'Không có tin nhắn mới';

  @override
  String get no_projects_yet => 'Chưa có dự án nào';

  @override
  String get no_runs_yet => 'Chưa có lần chạy nào.';

  @override
  String no_server_project_matches_this_name(Object assigned) {
    return 'Không có dự án máy chủ nào khớp với tên này · $assigned';
  }

  @override
  String get no_sessions_yet => 'Chưa có phiên nào';

  @override
  String get no_skills_found => 'Không tìm thấy kỹ năng';

  @override
  String get no_spaces_on_this_device =>
      'Không có không gian nào trên thiết bị này';

  @override
  String get no_text_shared => 'Không có văn bản nào được chia sẻ';

  @override
  String get no_turn_is_blocked_in_flight_or_recently_finished_work =>
      'Không có vòng nào bị chặn, đang diễn ra hoặc vừa hoàn thành gần đây. Công việc bạn bắt đầu sẽ hiển thị ở đây.';

  @override
  String get no_turn_needs_your_input_or_has_failed =>
      'Không có vòng nào cần đầu vào của bạn hoặc đã thất bại.';

  @override
  String get no_unassigned_chats => 'Không có cuộc trò chuyện chưa được gán.';

  @override
  String get nothing_changed_in_the_last_seven_days =>
      'Không có gì thay đổi trong bảy ngày qua.';

  @override
  String get nothing_has_moved_yet_this_is_only_what_a_migration =>
      'Chưa có gì di chuyển — đây chỉ là những gì một cuộc di chuyển sẽ làm.';

  @override
  String get nothing_here => 'Không có gì ở đây';

  @override
  String get nothing_is_running => 'Không có gì đang chạy';

  @override
  String get nothing_needs_you => 'Không có gì cần bạn';

  @override
  String get nothing_to_migrate => 'Không có gì để di chuyển';

  @override
  String get off_no_thinking => 'Tắt (không suy nghĩ)';

  @override
  String get offline_showing_the_last_known_activity =>
      'Ngoại tuyến — hiển thị hoạt động được biết cuối cùng.';

  @override
  String get offline_showing_the_last_known_chats =>
      'Ngoại tuyến — hiển thị các cuộc trò chuyện được biết cuối cùng';

  @override
  String get offline_showing_the_last_known_projects =>
      'Ngoại tuyến — hiển thị các dự án được biết cuối cùng.';

  @override
  String get on_this_device => 'Trên thiết bị này';

  @override
  String get on_device => 'Trên thiết bị';

  @override
  String get open_inbox => 'Mở hộp thư đến';

  @override
  String open_inbox_2(Object count) {
    return 'Mở hộp thư đến ($count)';
  }

  @override
  String get open_the_hermes_dashboard => 'Mở bảng điều khiển Hermes';

  @override
  String get optional_for_the_memory_cron_skills_settings_tabs_leave_blank =>
      'Tùy chọn. Cho các tab Bộ nhớ/Cron/Kỹ năng/Cài đặt. Để trống để sử dụng cổng bảng điều khiển mặc định (9119) mà không cần đăng nhập.';

  @override
  String get organization => 'Tổ chức';

  @override
  String get other_answer => 'Câu trả lời khác';

  @override
  String get overview => 'Tổng quan';

  @override
  String get passphrase => 'Cụm mật khẩu';

  @override
  String get password_optional => 'Mật khẩu (tùy chọn)';

  @override
  String get phone_or_tablet => 'Điện thoại hoặc máy tính bảng';

  @override
  String get pin_batch_and_undo => 'Ghim, hàng loạt và hoàn tác';

  @override
  String get port => 'Cổng';

  @override
  String get preparing_attachments => 'Đang chuẩn bị tệp đính kèm…';

  @override
  String get preview_truncated => 'Xem trước đã cắt ngắn';

  @override
  String get preview_unavailable => 'Không có xem trước';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get profile_default_model => 'Mô hình mặc định hồ sơ';

  @override
  String profile_default_set_to_chats_with_their_own_model_keep(
    Object selectedModel,
  ) {
    return 'Mặc định hồ sơ đặt thành $selectedModel. Các cuộc trò chuyện có mô hình riêng giữ nguyên ghi đè đó.';
  }

  @override
  String
  get profile_this_connection_chats_as_when_the_dashboard_serves_several =>
      'Hồ sơ kết nối này trò chuyện như khi bảng điều khiển phục vụ nhiều hồ sơ. Để trống cho bảng điều khiển riêng biệt theo hồ sơ.';

  @override
  String get project => 'Dự án';

  @override
  String get project_actions => 'Thao tác dự án';

  @override
  String get project_chat => 'Cuộc trò chuyện dự án';

  @override
  String get project_chats_unavailable =>
      'Cuộc trò chuyện dự án không khả dụng';

  @override
  String get projects => 'Dự án';

  @override
  String get projects_group_related_chats_files_and_activity_and_stay_in =>
      'Các dự án nhóm các cuộc trò chuyện, tệp và hoạt động liên quan, và đồng bộ với Hermes trên máy tính của bạn.';

  @override
  String
  get projects_need_a_desktop_gateway_connection_add_the_desktop_gateway =>
      'Dự án cần kết nối Desktop Gateway. Thêm URL Desktop Gateway vào kết nối này để tổ chức cuộc trò chuyện trên các thiết bị của bạn.';

  @override
  String get projects_unavailable => 'Dự án không khả dụng';

  @override
  String get projects_activity_new_navigation =>
      'Dự án, Hoạt động — điều hướng mới';

  @override
  String get promote_to_project => 'Thăng cấp thành dự án';

  @override
  String get prompt => 'Dấu nhắc';

  @override
  String get protect_this_backup => 'Bảo vệ bản sao lưu này';

  @override
  String get provider => 'Nhà cung cấp';

  @override
  String get proxy_injects_auth_app_sends_clean_requests =>
      'Proxy tiêm xác thực; ứng dụng gửi yêu cầu sạch';

  @override
  String get quick_chat => 'Cuộc trò chuyện nhanh';

  @override
  String get quick_chats_appear_here_after_their_retention_period =>
      'Các cuộc trò chuyện nhanh xuất hiện ở đây sau thời gian lưu giữ của chúng.';

  @override
  String get read_aloud => 'Đọc to';

  @override
  String get read_aloud_is_unavailable_on_this_device =>
      'Đọc to không khả dụng trên thiết bị này';

  @override
  String get reading_response_aloud => 'Đang đọc phản hồi to';

  @override
  String get ready_to_upload => 'Sẵn sàng tải lên';

  @override
  String get reasoning => 'Lý luận';

  @override
  String get recently_completed => 'Hoàn thành gần đây';

  @override
  String get recovering_hermes => 'Đang khôi phục Hermes…';

  @override
  String get refresh => 'Làm mới';

  @override
  String get regenerate_response => 'Tạo lại phản hồi';

  @override
  String get remove_attachment => 'Xóa tệp đính kèm';

  @override
  String get rename => 'Đổi tên';

  @override
  String get rename_chat => 'Đổi tên cuộc trò chuyện';

  @override
  String get rename_project => 'Đổi tên dự án';

  @override
  String get rename_space => 'Đổi tên không gian';

  @override
  String rename_2(Object projectName) {
    return 'Đổi tên $projectName';
  }

  @override
  String rename_3(Object name) {
    return 'Đổi tên $name';
  }

  @override
  String get replace => 'Thay thế';

  @override
  String get repositories => 'Kho lưu trữ';

  @override
  String
  get research_the_attached_content_verify_the_important_claims_and_cite =>
      'Nghiên cứu nội dung đính kèm, xác minh các tuyên bố quan trọng và trích dẫn nguồn.';

  @override
  String research_this_content_verify_the_important_claims_and_cite_sources(
    Object text,
  ) {
    return 'Nghiên cứu nội dung này, xác minh các tuyên bố quan trọng và trích dẫn nguồn:\n\n$text';
  }

  @override
  String reset_failed_the_secure_storage_may_need_reinstall(Object retryError) {
    return 'Đặt lại thất bại: $retryError. Bộ lưu trữ an toàn có thể cần cài đặt lại.';
  }

  @override
  String get reset_saved_connections => 'Đặt lại kết nối đã lưu';

  @override
  String get responding => 'Đang phản hồi…';

  @override
  String response_closed_locally_gateway_stop_failed(Object error) {
    return 'Phản hồi đã đóng cục bộ; dừng gateway thất bại: $error';
  }

  @override
  String get response_closed_locally_no_active_gateway_turn_was_found =>
      'Phản hồi đã đóng cục bộ; không tìm thấy vòng gateway hoạt động.';

  @override
  String get response_ready => 'Phản hồi đã sẵn sàng';

  @override
  String get response_stopped => 'Đã dừng phản hồi.';

  @override
  String get restore => 'Khôi phục';

  @override
  String get restore_configuration => 'Khôi phục cấu hình';

  @override
  String get restore_project => 'Khôi phục dự án';

  @override
  String get retry => 'Thử lại';

  @override
  String retry_failed_for_the_draft_and_prompt_were_kept(Object name) {
    return 'Thử lại thất bại cho $name. Bản nháp và dấu nhắc được giữ lại.';
  }

  @override
  String get retry_upload => 'Thử lại tải lên';

  @override
  String retrying(Object name) {
    return 'Đang thử lại $name…';
  }

  @override
  String get review_local_spaces => 'Xem lại không gian cục bộ';

  @override
  String get review_or_promote_quick_chats_past_their_retention_period =>
      'Xem lại hoặc thăng cấp các cuộc trò chuyện nhanh đã qua thời gian lưu giữ';

  @override
  String get review_the_attached_content => 'Xem lại nội dung đính kèm.';

  @override
  String get run_only_this_command => 'Chỉ chạy lệnh này.';

  @override
  String get running_now => 'Đang chạy';

  @override
  String get save => 'Lưu';

  @override
  String get save_changes => 'Lưu thay đổi';

  @override
  String get save_a_permanent_rule_in_the_hermes_configuration =>
      'Lưu quy tắc vĩnh viễn trong cấu hình Hermes.';

  @override
  String get save_the_durable_facts_from_the_attached_content_to_memory =>
      'Lưu các sự thật bền vững từ nội dung đính kèm vào bộ nhớ, sau đó xác nhận những gì đã được lưu giữ.';

  @override
  String save_the_durable_facts_from_this_content_to_memory_then(Object text) {
    return 'Lưu các sự thật bền vững từ nội dung này vào bộ nhớ, sau đó xác nhận những gì đã được lưu giữ:\n\n$text';
  }

  @override
  String get save_your_connections_and_settings_to_an_encrypted_file_then =>
      'Lưu kết nối và cài đặt của bạn vào một tệp được mã hóa, sau đó khôi phục chúng sau khi cài đặt lại hoặc trên thiết bị khác.';

  @override
  String save_2(Object filename) {
    return 'Lưu $filename';
  }

  @override
  String get schedule => 'Lịch trình';

  @override
  String get scheduled_jobs_and_their_last_runs =>
      'Các job đã lên lịch và lần chạy cuối cùng của chúng';

  @override
  String get scheduled_tasks => 'Nhiệm vụ đã lên lịch';

  @override
  String get script_only_no_agent => 'Chỉ script (không có tác nhân)';

  @override
  String get scroll_horizontally => 'Cuộn ngang';

  @override
  String get search_all_chats => 'Tìm kiếm tất cả cuộc trò chuyện';

  @override
  String get search_all_message_content => 'Tìm kiếm tất cả nội dung tin nhắn';

  @override
  String get search_chats => 'Tìm kiếm cuộc trò chuyện';

  @override
  String get search_conversations => 'Tìm kiếm cuộc trò chuyện';

  @override
  String get search_loaded_chats => 'Tìm kiếm cuộc trò chuyện đã tải';

  @override
  String get search_mode => 'Chế độ tìm kiếm';

  @override
  String get select_one_option_or_enter_another_answer =>
      'Chọn một tùy chọn hoặc nhập câu trả lời khác.';

  @override
  String get select_one_or_more_options_then_continue =>
      'Chọn một hoặc nhiều tùy chọn, sau đó tiếp tục.';

  @override
  String get select_text => 'Chọn văn bản';

  @override
  String get send => 'Gửi';

  @override
  String send_failed(Object error) {
    return 'Gửi thất bại: $error';
  }

  @override
  String get send_message => 'Gửi tin nhắn';

  @override
  String get session_sources => 'Nguồn phiên';

  @override
  String get session_deleted_from_remote_hermes =>
      'Đã xóa phiên khỏi Hermes từ xa.';

  @override
  String session_search_failed(Object error) {
    return 'Tìm kiếm phiên thất bại: $error';
  }

  @override
  String get set_profile_default => 'Đặt mặc định hồ sơ';

  @override
  String get settings => 'Cài đặt';

  @override
  String get share_to_hermes => 'Chia sẻ với Hermes';

  @override
  String get show_passphrase => 'Hiển thị cụm mật khẩu';

  @override
  String get show_tool_calls_thinking_and_message_metadata =>
      'Hiển thị lời gọi công cụ, suy nghĩ và siêu dữ liệu tin nhắn';

  @override
  String get signal_messages => 'Tin nhắn Signal';

  @override
  String get skills => 'Kỹ năng';

  @override
  String skills_2(Object count) {
    return 'Kỹ năng ($count)';
  }

  @override
  String get skills_and_tools => 'Kỹ năng và công cụ';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get slack_chats => 'Cuộc trò chuyện Slack';

  @override
  String source(Object source) {
    return 'Nguồn: $source';
  }

  @override
  String get space_actions => 'Thao tác không gian';

  @override
  String get spaces => 'Không gian';

  @override
  String get speak_to_hermes => 'Nói chuyện với Hermes';

  @override
  String get speech_recognition_is_unavailable =>
      'Nhận dạng giọng nói không khả dụng';

  @override
  String get spoken_replies => 'Phản hồi bằng giọng nói';

  @override
  String get spoken_replies_off => 'Phản hồi bằng giọng nói đã tắt';

  @override
  String get spoken_replies_on => 'Phản hồi bằng giọng nói đã bật';

  @override
  String get stalled_no_update_from_hermes =>
      'Bị treo — không có cập nhật từ Hermes';

  @override
  String get start_something_new => 'Bắt đầu điều gì đó mới';

  @override
  String get start_voice_input => 'Bắt đầu nhập giọng nói';

  @override
  String get starting_hermes => 'Đang khởi động Hermes…';

  @override
  String get still_loading_your_projects => 'Vẫn đang tải dự án của bạn.';

  @override
  String get stop => 'Dừng';

  @override
  String get stop_response => 'Dừng phản hồi';

  @override
  String get stop_voice_input => 'Dừng nhập giọng nói';

  @override
  String get submitted_waiting_for_hermes => 'Đã gửi, đang chờ Hermes';

  @override
  String get suggest_projects_and_learn_from_your_corrections =>
      'Đề xuất Dự án và học từ các sửa chữa của bạn';

  @override
  String get summarize_the_attached_content => 'Tóm tắt nội dung đính kèm.';

  @override
  String summarize_this_content(Object text) {
    return 'Tóm tắt nội dung này:\n\n$text';
  }

  @override
  String get switch_profile => 'Chuyển hồ sơ';

  @override
  String get system => 'Hệ thống';

  @override
  String get take_photo => 'Chụp ảnh';

  @override
  String get tap_to_add_a_remote_hermes_gateway_api_server_port =>
      'Nhấn + để thêm Remote Hermes Gateway\n(API Server, cổng 8642)';

  @override
  String get tap_the_button_to_start_a_new_chat =>
      'Nhấn nút + để bắt đầu cuộc trò chuyện mới';

  @override
  String get telegram_messages => 'Tin nhắn Telegram';

  @override
  String get terminal_sessions => 'Phiên terminal';

  @override
  String get text_size => 'Kích thước văn bản';

  @override
  String get text_size_preview => 'Xem trước kích thước văn bản';

  @override
  String text_size_2(Object label) {
    return 'Kích thước văn bản: $label';
  }

  @override
  String get the_api_key_could_not_be_stored_securely =>
      'Khóa API không thể được lưu trữ an toàn.';

  @override
  String get the_project_will_move_to_archived_its_chats_and_files =>
      'Dự án sẽ chuyển sang Đã lưu trữ. Các cuộc trò chuyện và tệp của nó vẫn nguyên vẹn và bạn có thể khôi phục nó bất cứ lúc nào.';

  @override
  String get the_project_will_move_to_archived_its_chats_and_files_2 =>
      'Dự án sẽ chuyển sang Đã lưu trữ. Các cuộc trò chuyện và tệp của nó vẫn nguyên vẹn và bạn có thể khôi phục nó sau.';

  @override
  String get the_active_profile_did_not_return_any_selectable_models =>
      'Hồ sơ đang hoạt động không trả về mô hình nào có thể chọn.';

  @override
  String get the_backup_could_not_be_exported => 'Không thể xuất bản sao lưu.';

  @override
  String get the_backup_could_not_be_restored =>
      'Không thể khôi phục bản sao lưu.';

  @override
  String get the_connection_could_not_be_deleted_safely =>
      'Không thể xóa kết nối một cách an toàn.';

  @override
  String get the_connection_could_not_be_stored_securely =>
      'Không thể lưu trữ kết nối một cách an toàn.';

  @override
  String get the_dashboard_credentials_could_not_be_stored_securely =>
      'Không thể lưu trữ thông tin xác thực bảng điều khiển một cách an toàn.';

  @override
  String get the_detached_reply_failed => 'Phản hồi tách rời thất bại.';

  @override
  String the_detached_reply_failed_2(Object error) {
    return 'Phản hồi tách rời thất bại: $error';
  }

  @override
  String get the_file_contains_your_api_keys_and_dashboard_password_so =>
      'Tệp chứa khóa API và mật khẩu bảng điều khiển của bạn, vì vậy nó được mã hóa. Không có cụm mật khẩu này, không thể khôi phục bản sao lưu.';

  @override
  String get the_last_turn_failed => 'Vòng cuối cùng thất bại';

  @override
  String the_local_connection_store_looks_damaged_you_can_reset_the(
    Object errorType,
  ) {
    return 'Kho lưu trữ kết nối cục bộ có vẻ bị hỏng ($errorType). Bạn có thể đặt lại các kết nối đã lưu và bắt đầu lại từ đầu. Các cuộc trò chuyện trên gateway của bạn không bị ảnh hưởng.';
  }

  @override
  String get the_model_only_rewrites_your_question_into_a_short_full =>
      'Mô hình chỉ viết lại câu hỏi của bạn thành một truy vấn toàn văn ngắn. Hermes sử dụng thông tin xác thực nhà cung cấp đã được cấu hình trên máy chủ.';

  @override
  String get the_server_has_not_reported_folders_for_this_project_yet =>
      'Máy chủ chưa báo cáo thư mục cho dự án này. Tệp toàn cục vẫn khả dụng từ Thêm.';

  @override
  String get the_turn_failed => 'Vòng thất bại';

  @override
  String get the_two_passphrases_do_not_match => 'Hai cụm mật khẩu không khớp.';

  @override
  String get the_value_is_sent_directly_to_the_active_hermes_gateway =>
      'Giá trị được gửi trực tiếp tới Hermes gateway đang hoạt động và không được lưu bởi ứng dụng Android này.';

  @override
  String get there_are_no_visible_files_in_this_server_folder =>
      'Không có tệp nào hiển thị trong thư mục máy chủ này.';

  @override
  String get thinking_effort => 'Nỗ lực suy nghĩ';

  @override
  String get this_hermes_gateway_does_not_support_opening_a_project_yet =>
      'Hermes gateway này chưa hỗ trợ mở dự án. Cập nhật Hermes trên máy chủ để duyệt dự án từ điện thoại của bạn.';

  @override
  String get this_hermes_gateway_is_older_than_server_side_projects_so =>
      'Hermes gateway này cũ hơn các dự án phía máy chủ, vì vậy các cuộc trò chuyện chỉ được nhóm trên thiết bị này. Cập nhật Hermes để chia sẻ cùng các dự án trên các thiết bị của bạn.';

  @override
  String get this_project_has_no_folder_to_open_the_chat_in =>
      'Dự án này không có thư mục để mở cuộc trò chuyện trong đó — nó đã mở ở chưa được gán. Thêm thư mục vào Dự án để nhóm các cuộc trò chuyện của nó.';

  @override
  String get this_chat_has_no_messages_available_in_the_desktop_session =>
      'Cuộc trò chuyện này chưa có tin nhắn nào trong phiên Desktop.';

  @override
  String get this_creates_a_permanent_rule_in_hermes_review_the_full =>
      'Điều này tạo ra một quy tắc vĩnh viễn trong Hermes. Xem lại toàn bộ lệnh trước khi xác nhận.';

  @override
  String get this_gateway_does_not_host_projects_yet_update_the_gateway =>
      'Gateway này chưa lưu trữ dự án. Cập nhật gateway để tổ chức các cuộc trò chuyện trên các thiết bị của bạn.';

  @override
  String get this_permanently_deletes_the_project_chats_will_not_be_deleted =>
      'Điều này xóa vĩnh viễn Dự án. Các cuộc trò chuyện sẽ không bị xóa; chúng sẽ quay lại Chưa được gán.';

  @override
  String get this_server_doesn_t_offer_background_recovery_chats_run_live =>
      'Máy chủ này không cung cấp khôi phục nền — các cuộc trò chuyện chạy trực tiếp';

  @override
  String get this_week => 'Tuần này';

  @override
  String get titles_previews_and_models => 'Tiêu đề, xem trước và mô hình';

  @override
  String get tool_activity => 'Hoạt động công cụ';

  @override
  String get trigger_now => 'Kích hoạt ngay';

  @override
  String get turn_completed => 'Vòng đã hoàn thành';

  @override
  String get turn_recovery_failed => 'Khôi phục vòng thất bại';

  @override
  String get unable_to_prepare_this_file_try_another_one =>
      'Không thể chuẩn bị tệp này. Thử tệp khác.';

  @override
  String get unable_to_prepare_this_image_try_another_one =>
      'Không thể chuẩn bị hình ảnh này. Thử hình ảnh khác.';

  @override
  String unable_to_prepare(Object name) {
    return 'Không thể chuẩn bị $name.';
  }

  @override
  String get unable_to_read_the_selected_image_the_selection_was_kept =>
      'Không thể đọc hình ảnh đã chọn. Lựa chọn đã được giữ lại.';

  @override
  String get unassigned => 'Chưa được gán';

  @override
  String get unassigned_chats => 'Cuộc trò chuyện chưa được gán';

  @override
  String get untitled_chat => 'Cuộc trò chuyện không có tiêu đề';

  @override
  String get untitled_session => 'Phiên không có tiêu đề';

  @override
  String get update_api_key => 'Cập nhật khóa API';

  @override
  String get upload_failed => 'Tải lên thất bại';

  @override
  String get upload_failed_tap_retry => 'Tải lên thất bại • nhấn để thử lại';

  @override
  String uploading(Object index, Object name, Object total) {
    return 'Đang tải lên $index/$total: $name';
  }

  @override
  String get use_as_is => 'Sử dụng nguyên trạng';

  @override
  String get use_at_least_8_characters => 'Sử dụng ít nhất 8 ký tự.';

  @override
  String get use_for_cron_jobs_backed_by_scripts =>
      'Sử dụng cho các cron job được hỗ trợ bởi script.';

  @override
  String get use_on_device => 'Sử dụng trên thiết bị';

  @override
  String get use_the_attached_content_to_identify_and_fill_the_relevant =>
      'Sử dụng nội dung đính kèm để xác định và điền các trường tài liệu hoặc biểu mẫu có liên quan. Hỏi trước khi gửi bất cứ điều gì.';

  @override
  String use_this_content_to_identify_and_fill_the_relevant_document(
    Object text,
  ) {
    return 'Sử dụng nội dung này để xác định và điền các trường tài liệu hoặc biểu mẫu có liên quan. Hỏi trước khi gửi bất cứ điều gì:\n\n$text';
  }

  @override
  String get used_for_hosted_path_prefixes_and_for_the_settings_memory =>
      'Được sử dụng cho các tiền tố đường dẫn được lưu trữ và cho các tab Cài đặt, Bộ nhớ, Kỹ năng và Cron. Để trống tên người dùng/mật khẩu cho bảng điều khiển mở hoặc bật chế độ proxy khi proxy ngược của bạn tiêm xác thực bảng điều khiển.';

  @override
  String get username_optional => 'Tên người dùng (tùy chọn)';

  @override
  String using(Object displayName) {
    return 'Đang sử dụng $displayName…';
  }

  @override
  String get verbose_mode => 'Chế độ chi tiết';

  @override
  String get voice => 'Giọng nói';

  @override
  String voice_setup_failed(Object error) {
    return 'Thiết lập giọng nói thất bại: $error';
  }

  @override
  String get waiting_for_your_input => 'Đang chờ đầu vào của bạn';

  @override
  String get what_hermes_knows_how_to_do => 'Những gì Hermes biết cách làm';

  @override
  String get what_should_the_agent_do => 'Tác nhân nên làm gì?';

  @override
  String get whatsapp_messages => 'Tin nhắn WhatsApp';

  @override
  String get which_project => 'Dự án nào?';

  @override
  String get workspace => 'Không gian làm việc';

  @override
  String get wrap_lines => 'Xuống dòng';

  @override
  String you_can_attach_up_to_items(Object maxRemoteAttachmentDrafts) {
    return 'Bạn có thể đính kèm tối đa $maxRemoteAttachmentDrafts mục.';
  }

  @override
  String get your_answer => 'Câu trả lời của bạn';

  @override
  String get e_g_dashboard => 'ví dụ: /dashboard';

  @override
  String get e_g_dashboard_proxy_path_before_api =>
      'ví dụ: /dashboard (đường dẫn proxy trước /api/)';

  @override
  String get e_g_profile_peter => 'ví dụ: /profile/peter';

  @override
  String get e_g_sol => 'ví dụ: sol';

  @override
  String get e_g_0_9_or_every_2h => 'ví dụ: 0 9 * * * hoặc every 2h';

  @override
  String get e_g_daily_backup => 'ví dụ: Sao lưu hàng ngày';

  @override
  String downloaded(Object filename) {
    return 'Đã tải xuống $filename';
  }

  @override
  String activity_name_status(Object displayName, Object statusLabel) {
    return '$displayName: $statusLabel';
  }

  @override
  String connection_status_label(Object connectionLabel, Object label) {
    return '$connectionLabel $label';
  }

  @override
  String get example_host_hint =>
      '192.168.1.50, 100.x.y.z, hoặc hermes-machine.tailnet.ts.net';

  @override
  String get example_profile_prefix_hint_full =>
      'ví dụ: /profile/peter (đường dẫn proxy trước /api/ và /v1/)';

  @override
  String and_more(Object count) {
    return 'và $count nữa';
  }

  @override
  String chats_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cuộc trò chuyện',
    );
    return '$_temp0';
  }

  @override
  String on_this_device_only(Object chats) {
    return '$chats · chỉ trên thiết bị này';
  }

  @override
  String spaces_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count không gian',
    );
    return '$_temp0';
  }

  @override
  String get no_new_projects_needed => 'không cần dự án mới';

  @override
  String projects_to_create(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dự án để tạo',
    );
    return '$_temp0';
  }

  @override
  String chats_migrated_projects_created(
    Object createdProjects,
    Object linkedSessions,
  ) {
    return '$linkedSessions cuộc trò chuyện đã di chuyển · $createdProjects dự án đã tạo';
  }

  @override
  String chats_stayed_in_local_spaces(Object unlinkedSessions) {
    return '$unlinkedSessions cuộc trò chuyện ở lại trong Không gian cục bộ và có thể được thử lại an toàn.';
  }

  @override
  String model_recommended(Object provider) {
    return '$provider • Đề xuất: nhỏ và rẻ';
  }

  @override
  String session_meta(Object count, Object model, Object time) {
    return '$count tin nhắn • $model • $time';
  }

  @override
  String model_scope_label(Object model, Object scope) {
    return '$model • $scope';
  }

  @override
  String get this_chat => 'cuộc trò chuyện này';

  @override
  String get profile_default => 'mặc định hồ sơ';

  @override
  String minutes_ago(Object count) {
    return '$count phút trước';
  }

  @override
  String hours_ago(Object count) {
    return '$count giờ trước';
  }

  @override
  String days_ago(Object count) {
    return '$count ngày trước';
  }

  @override
  String get now_label => 'bây giờ';

  @override
  String get latest_label => 'Mới nhất';

  @override
  String new_count_indicator(Object count) {
    return '$count mới';
  }

  @override
  String new_messages(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tin nhắn mới',
    );
    return '$_temp0';
  }

  @override
  String activity_failed_summary(Object failures, Object total) {
    return '$failures thất bại • $total tổng cộng';
  }

  @override
  String activity_completed_summary(Object count) {
    return '$count đã hoàn thành';
  }

  @override
  String get hermes_is_using_a_tool => 'Hermes đang sử dụng một công cụ';

  @override
  String hermes_is_using_tools(Object count) {
    return 'Hermes đang sử dụng $count công cụ';
  }

  @override
  String delegated_tasks_completed(Object count) {
    return '$count nhiệm vụ được ủy quyền đã hoàn thành';
  }

  @override
  String delegated_tasks_active(Object count) {
    return '$count nhiệm vụ được ủy quyền đang hoạt động';
  }

  @override
  String branch_main(Object label) {
    return '$label · chính';
  }

  @override
  String get you_heading => '## Bạn';

  @override
  String get hermes_heading => '## Hermes';

  @override
  String get action_label => 'Hành động';

  @override
  String get destination_label => 'Đích';

  @override
  String get preview_label => 'Xem trước';

  @override
  String get share_action_summarize => 'Tóm tắt';

  @override
  String get share_action_explain => 'Giải thích';

  @override
  String get share_action_research => 'Nghiên cứu';

  @override
  String get share_action_remember => 'Ghi nhớ';

  @override
  String get text_size_small => 'Nhỏ';

  @override
  String get text_size_default => 'Mặc định';

  @override
  String get text_size_large => 'Lớn';

  @override
  String get text_size_extra_large => 'Rất lớn';

  @override
  String get text_size_use_system_description =>
      'Sử dụng chính xác kích thước văn bản khả năng tiếp cận Android.';

  @override
  String text_size_percent_description(Object percent) {
    return '$percent% kích thước văn bản Android.';
  }

  @override
  String text_size_label_description(Object description, Object label) {
    return '$label — $description';
  }

  @override
  String files_skipped(Object count) {
    return '$count tệp đã bỏ qua: giới hạn, kích thước, không thể đọc hoặc tên tệp nhạy cảm.';
  }

  @override
  String model_scope_applied(Object effort, Object model) {
    return '$model • $effort hiện chỉ áp dụng cho cuộc trò chuyện này.';
  }

  @override
  String get reasoning_minimal => 'Tối thiểu';

  @override
  String get reasoning_low => 'Thấp';

  @override
  String get reasoning_medium => 'Trung bình';

  @override
  String get reasoning_high => 'Cao';

  @override
  String get reasoning_max => 'Tối đa';

  @override
  String get reasoning_ultra => 'Siêu';

  @override
  String get status_running => 'Đang chạy';

  @override
  String get status_failed => 'Thất bại';

  @override
  String get status_done => 'Hoàn thành';

  @override
  String get status_idle => 'Nhàn rỗi';

  @override
  String get upload_status_uploading => 'Đang tải lên';

  @override
  String get upload_status_uploaded => 'Đã tải lên';

  @override
  String attachment_count(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tệp đính kèm',
    );
    return '$_temp0';
  }

  @override
  String get action_create => 'tạo';

  @override
  String get action_rename => 'đổi tên';

  @override
  String get action_archive => 'lưu trữ';

  @override
  String get action_restore => 'khôi phục';

  @override
  String get action_delete => 'xóa';

  @override
  String get migrate => 'Di chuyển';

  @override
  String assigned_chats(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cuộc trò chuyện đã gán',
    );
    return '$_temp0';
  }

  @override
  String get date_today => 'Hôm nay';

  @override
  String get date_yesterday => 'Hôm qua';

  @override
  String get date_earlier => 'Trước đó';

  @override
  String get nav_home => 'Trang chủ';

  @override
  String get nav_more => 'Thêm';

  @override
  String get status_completed => 'Đã hoàn thành';

  @override
  String get filter_all => 'Tất cả';

  @override
  String get filter_recent => 'Gần đây';

  @override
  String connection_address_key(Object address, Object status) {
    return '$address  •  Khóa: $status';
  }

  @override
  String model_via_provider(Object model, Object provider) {
    return '$model  \nqua `$provider`';
  }

  @override
  String get deny => 'Từ chối';

  @override
  String get connect => 'Kết nối';

  @override
  String get appearance => 'Giao diện';

  @override
  String get connection_section => 'Kết nối';

  @override
  String get about => 'Giới thiệu';

  @override
  String version_label(Object version) {
    return 'Phiên bản $version';
  }

  @override
  String get matched => 'Đã khớp';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get on => 'Bật';

  @override
  String get off => 'Tắt';

  @override
  String get reasoning_off => 'Tắt';

  @override
  String get hermes_response_ready => 'Phản hồi Hermes đã sẵn sàng';

  @override
  String get admin_password_needed => 'Cần mật khẩu quản trị viên';

  @override
  String get hermes_needs_a_sudo_password_for_the_pending_terminal_command =>
      'Hermes cần mật khẩu sudo cho lệnh terminal đang chờ xử lý.';

  @override
  String get sudo_password => 'Mật khẩu sudo';

  @override
  String get secret_needed => 'Cần bí mật';

  @override
  String get hermes_needs_a_secret_for_the_pending_skill =>
      'Hermes cần một bí mật cho kỹ năng đang chờ xử lý.';

  @override
  String get secret_value => 'Giá trị bí mật';

  @override
  String get attached_file => 'Tệp đính kèm';
}
