# Hermes Android — v2.1.13

Ứng dụng Android cho [Hermes Agent](https://hermes-agent.nousresearch.com/) — trò chuyện với các phiên Hermes của bạn từ điện thoại hoặc máy tính bảng qua Wi-Fi cục bộ hoặc mạng Tailscale riêng tư.

> **v2.0.0** hợp nhất phiên bản Remote Gateway cộng đồng được đóng góp bởi
> [@CristianGCiocoi](https://github.com/CristianGCiocoi), với đánh giá và
> kiểm thử từ [@AI-Guru](https://github.com/AI-Guru) và
> [@grunjol](https://github.com/grunjol). Việc hợp nhất mang lại truyền tải
> JSON-RPC Desktop Gateway thống nhất, chọn mô hình cho từng cuộc trò chuyện,
> tải lên nhiều tệp đính kèm, khôi phục vòng bền vững, nhập giọng nói và một
> bộ kiểm thử toàn diện. Xem [CHANGELOG.md](CHANGELOG.md) để biết danh sách đầy đủ
> và [chuỗi PR hợp nhất](https://github.com/rusty4444/hermes-android/issues/81)
> để biết thảo luận cộng đồng.

## Phiên bản hiện tại

- Phiên bản: **2.1.13** (build 2153)
- Gói: `com.hermesagent.hermes_android`
- APK đề xuất cho điện thoại hiện đại: bản build phát hành ARM64 từ trang
  [Releases](https://github.com/rusty4444/hermes-android/releases).
- Các bản build sản xuất được ký bằng keystore phát hành riêng tư. APK gỡ lỗi
  được ký bằng chứng chỉ gỡ lỗi Android vẫn có sẵn để kiểm thử dưới ID gói
  `com.hermesagent.hermes_android.dev`.
- Các phiên bản upstream trước đó vẫn có sẵn từ trang
  [Releases](https://github.com/rusty4444/hermes-android/releases).

## Điểm nổi bật phiên bản Remote Gateway

- Một phiên JSON-RPC Desktop Gateway cho văn bản, hình ảnh và tệp.
- Sao chép/chọn văn bản, Đọc to, Dừng, Chỉnh sửa và gửi lại, Tạo lại và xuất.
- Lên đến 10 tệp đính kèm Remote Gateway mỗi bản nháp, giới hạn tổng cộng 64 MiB;
  các tệp chung giữ giới hạn 16 MiB mỗi tệp.
- Bộ đệm ứng dụng dựa trên tệp, hình ảnh JPEG/PNG/WebP đã được làm sạch siêu dữ liệu,
  tải lên tuần tự có thứ tự, sắp xếp lại có thể truy cập, xóa và thử lại từng cái.
  Đầu vào JPEG đã được làm sạch vẫn là JPEG; đầu vào PNG và WebP được xuất ra dưới dạng PNG.
- REST cũ vẫn bị đóng thất bại với một hình ảnh và không hiển thị đa chọn.
- Mô hình và nỗ lực suy nghĩ cho từng cuộc trò chuyện mà không thay đổi mặc định hồ sơ.
- Tìm kiếm, Đổi tên, Nhánh và Xóa cho các cuộc trò chuyện từ xa.
- Phê duyệt gốc, sudo/secret, làm rõ, lý luận, hoạt động công cụ,
  thông báo, kết quả nền, đánh giá và trạng thái subagent.
- Kết nối lại/tiếp tục phiên liên tục và xử lý thử lại phòng thủ.
- **Thông báo vòng nền** — Thông báo Android kích hoạt khi một vòng
  gateway hoàn thành trong khi ứng dụng ở nền, phản ánh hành vi
  thông báo khay Hermes Desktop. Thông báo tự động xóa khi quay lại ứng dụng.

### Khả năng tương thích truyền tải gateway

Các phiên bản Hermes Agent cổ điển hiện không quảng cáo hợp đồng
`capabilities.turn_recovery` thử nghiệm trong `gateway.ready`. Đối với các phiên bản đó,
ứng dụng có chủ ý sử dụng truyền tải Desktop Gateway cũ và hiển thị
**Khôi phục nền không khả dụng — phương thức truyền tải cũ**. Nếu một vòng cũ hoàn thành
trong khi Android ở nền, ứng dụng đồng bộ lại lịch sử phía máy chủ của phiên đó
khi tiếp tục. Đường dẫn khôi phục chính xác một lần bền vững chỉ kích hoạt khi
gateway rõ ràng quảng cáo hợp đồng khôi phục tương thích.

Xem [CHANGELOG.md](CHANGELOG.md) để biết danh sách thay đổi `.13` đầy đủ và
[docs/HERMESAPK_DEVELOPMENT_LOG.md](docs/HERMESAPK_DEVELOPMENT_LOG.md) để biết
bản ghi triển khai và xác thực đã được làm sạch.

## Có gì mới trong v2.1.13

- **Chọn chính xác văn bản bạn cần** — nhấn giữ bất kỳ tin nhắn trò chuyện nào để mở
  hộp thoại văn bản có thể chọn, sau đó sao chép một phần hoặc tất cả tin nhắn. Hộp thoại
  có thể đọc được ở chủ đề sáng và tối và được bản địa hóa trong tất cả chín ngôn ngữ được cung cấp.

## Có gì mới trong v2.1.12

- **Chọn ngôn ngữ cho từng ứng dụng** — Android 13 trở lên hiện liệt kê tất cả chín
  ngôn ngữ Hermes được cung cấp trong cài đặt ngôn ngữ ứng dụng của hệ thống.
- **Phiên nhàn rỗi chính xác** — các cuộc trò chuyện chưa kết thúc không còn ở trạng thái
  hoạt động vĩnh viễn khi Gateway bỏ qua cờ liveness; các giữ chỗ Dự án bị
  bỏ qua và hoạt động gần đây có cửa sổ năm phút bị giới hạn.

## Có gì mới trong v2.1.11

- **Tám ngôn ngữ mới** — ứng dụng hiện được bản địa hóa bằng tiếng Nhật, tiếng Trung
  Giản thể, tiếng Hàn, tiếng Tây Ban Nha, tiếng Pháp, tiếng Đức, tiếng Bồ Đào Nha Brazil và tiếng Nga.
- **Hành vi ngôn ngữ đáng tin cậy** — các ngôn ngữ không được hỗ trợ quay lại tiếng Anh,
  số đếm tiếng Nga sử dụng các dạng số nhiều chính xác, và các biến thể khu vực tiếng Trung và tiếng Bồ Đào Nha
  không nhận được danh mục không tương thích.

## Có gì mới trong v2.1.10

- **Các cuộc trò chuyện hiện có ở đúng mục tiêu** — gửi từ một cuộc trò chuyện được liệt kê trên máy chủ hiện
  tiếp tục chính xác phiên đó thay vì tạo một phiên anh em mới.
- **Đường dẫn tạo duy nhất cho các cuộc trò chuyện mới** — các bản nháp cục bộ sử dụng khôi phục v2 mà không
  đua với việc tạo phiên cũ thứ hai, trong khi dự phòng rõ ràng vẫn an toàn.

## Có gì mới trong v2.1.9

- **Yêu cầu Gateway tương tác trên Android** — dấu nhắc làm rõ, phê duyệt, sudo
  và secret hiện đến điện thoại trong một vòng đang chạy và khôi phục
  an toàn qua các kết nối lại.
- **Khôi phục cuộc trò chuyện lớn nhanh, an toàn** — các phiên lớn tải bảng ghi gần đây bị giới hạn
  mà không chặn trình soạn thảo, sau đó đối chiếu lịch sử
  có thẩm quyền mà không mất các vòng mới hơn.
- **Trạng thái phiên chính xác** — Android hiện sử dụng trạng thái hoạt động
  rõ ràng của Gateway thay vì coi mọi phiên chưa kết thúc là vẫn đang chạy.

## Có gì mới trong v2.1.8

v2.1.8 sửa hai vấn đề vòng đời kết nối được chẩn đoán và giải quyết bởi
[@igitur](https://github.com/igitur) trong các PR #111 và #113.

- **Cổng HTTPS tùy chỉnh hoạt động như đã nhập** — giá trị trường Cổng rõ ràng được
  tôn trọng ngay cả khi là `8642`; để trống trường vẫn suy ra `443`
  cho HTTPS và `8642` cho HTTP.
- **Các vòng sống sót khi rời khỏi cuộc trò chuyện** — điều hướng đi trong một vòng đang chạy không
  còn đóng kết nối SSE của nó và làm gián đoạn công việc phía máy chủ. Máy khách
  tách rời được giải phóng sau khi hoàn thành, thất bại, hủy bỏ hoặc
  hết thời gian chờ an toàn của nó.

## Có gì mới trong v2.1.7

v2.1.7 đưa không gian làm việc sử dụng hàng ngày Android phù hợp với các gateway
Hermes cổ điển thông qua công việc tương thích rộng rãi được đóng góp bởi
[@Thaeland](https://github.com/Thaeland) trong PR #106.

- **Phản hồi tách rời đáng tin cậy** — kết nối socket bị gián đoạn hiện tiếp tục
  phiên đã lưu, tiếp tục thử lại qua các vòng chạy dài và ứng dụng chạy nền,
  và sử dụng ID tin nhắn bền vững để phản hồi được khôi phục ngay cả khi cửa sổ
  lịch sử giới hạn của máy chủ cuộn qua.
- **Hỗ trợ Dự án cổ điển** — các Dự án mới nhận các thư mục được cung cấp an toàn,
  di chuyển cuộc trò chuyện sử dụng hợp đồng `session.workspace.move` cổ điển, và nhãn dự án,
  cuộc trò chuyện đã lưu trữ, di chuyển, tìm kiếm và trạng thái tương thích theo hình dạng
  dây thực của gateway.
- **Phân trang phiên chính xác** — tái tô phiên ghim không thể bỏ qua,
  nhân đôi hoặc kết thúc sớm các trang sau. Quét OFFSET có thể thay đổi không còn
  xóa các phân công cục bộ mà chúng không thể chứng minh là cũ.
- **Truyền tải an toàn hơn và trạng thái ngoại tuyến** — các ràng buộc runtime cũ tái gắn,
  tạo socket và xác thực là đơn chuyến, yêu cầu mạng bị
  giới hạn và các biến đổi Dự án đồng thời không thể duy trì các snapshot
  cache lạc quan hoặc cũ.
- **Khả năng phục hồi bổ sung** — đọc đã lưu trữ có phạm vi hồ sơ và hoàn chỉnh,
  các phiên máy ở ngoài danh sách cuộc trò chuyện con người, kết nối lại có chủ ý được
  giải thích và Android có thể phát hiện các dịch vụ nhận dạng giọng nói đã cài đặt.

## Có gì mới trong v2.1.6

- **Chứng chỉ gateway riêng tư** — Android hiện tin tưởng các cơ quan cấp chứng chỉ
  mà người dùng thiết bị đã cài đặt rõ ràng, vì vậy các điểm cuối gateway Caddy và Tailscale
  riêng tư có thể kết nối mà không làm yếu các kiểm tra chứng chỉ bình thường
  (#108).

## Có gì mới trong v2.1.0

v2.1.0 hợp nhất phiên bản không gian làm việc sử dụng hàng ngày cộng đồng từ
[@CarlosReyesPena](https://github.com/CarlosReyesPena) (PR #88): một Trang chủ
Workspace mới với các ngăn Dự án, Cuộc trò chuyện và Hoạt động, tìm kiếm phiên
được hỗ trợ bởi máy chủ, sao lưu và khôi phục cấu hình và ý định cuộc trò chuyện nhanh —
cộng với một bộ kiểm thử lớn kèm theo (900+ kiểm thử).

- **Vỏ không gian làm việc** — Trang chủ mới với tóm tắt "cần bạn" xếp hạng theo sự chú ý,
  nút Mới (dự án hoặc nhanh) toàn cục, dòng thời gian hoạt động Hoạt động của
  các vòng gateway và một ngăn Thêm định tuyến Cron, Kỹ năng, Bộ nhớ, Cài đặt
  và bảng điều khiển Hermes.
- **Ngăn Dự án** — dự án Hermes thuộc sở hữu máy chủ thông qua họ RPC gateway
  `projects.*`: tổng quan cây dự án, cuộc trò chuyện theo dự án,
  xem trước di chuyển và đường dẫn ghi cho Không gian cục bộ, di chuyển cuộc trò chuyện giữa
  các dự án, tìm kiếm theo dự án và xóa an toàn. Các gateway cũ giảm cấp
  một cách duyên dáng sang chế độ tương thích chỉ cục bộ có nhãn.
- **Trình duyệt cuộc trò chuyện** — bộ lọc Tất cả / Gần đây / Chưa gán / Đã lưu trữ, nhóm
  ngày, trạng thái đang chạy/hoàn thành, cờ phiên ghim và đã lưu trữ và
  nhãn phiên→dự án dự phòng cho các API cũ hơn.
- **Tìm kiếm phiên** — ba chế độ có thể chọn: trên thiết bị (mặc định), toàn văn
  thông qua điểm cuối FTS5 bảng điều khiển với kết quả trích xuất khớp và
  viết lại truy vấn hỗ trợ AI thông qua Hermes (yêu cầu
  hỗ trợ máy chủ tương ứng). Chế độ được ghi nhớ cho mỗi kết nối; khóa API nhà cung cấp không bao giờ
  rời khỏi máy chủ.
- **Sao lưu & khôi phục cấu hình** — xuất tất cả các kết nối và
  tùy chọn ứng dụng vào một tệp được mã hóa duy nhất (PBKDF2 + AES-256-GCM), nhập ở
  chế độ hợp nhất hoặc thay thế, với khôi phục có thể truy cập từ trạng thái kết nối trống
  trước khi cấu hình bất kỳ máy chủ nào.
- **Vòng đời cuộc trò chuyện nhanh** — các điểm đầu vào mục tiêu chia sẻ và lối tắt ứng dụng,
  trang chia sẻ/đánh giá cho văn bản và tệp và chính sách lưu trữ cuộc trò chuyện nhanh 72 giờ
  không bao giờ lưu trữ công việc bị chặn hoặc đang chạy.
- **Khả năng phục hồi** — khám phá khả năng gateway (không bao giờ giả định máy chủ
  mới nhất), TCP mới cho mỗi yêu cầu với thời gian chờ 20 giây để sửa keep-alive
  cũ bị treo và yêu cầu quyền thông báo runtime Android 13+.
- **Giao diện người dùng cuộc trò chuyện** — tiêu đề ngữ cảnh dính (dự án, mô hình, nỗ lực lý luận,
  trạng thái kết nối), nhãn vai trò Bạn/Hermes, trang hành động nhấn giữ, khối mã
  có hàng rào thực với sao chép và chuyển đổi xuống dòng/cuộn và đầu ra công cụ đầy đủ
  trên thẻ hoạt động được mở rộng.

## Có gì mới trong v2.0.1

- **Thông báo vòng nền** — Thông báo Android kích hoạt khi một vòng Desktop
  Gateway hoàn thành trong khi ứng dụng ở nền, phản ánh hành vi
  thông báo khay Hermes Desktop. Thông báo tự động xóa khi bạn
  quay lại ứng dụng.
- **Đã giải quyết lỗi cuộn** — lỗi nhảy cuộn giữa lịch sử kế thừa khi mở lại phiên
  (từ PR upstream #71) đã được giải quyết hoàn toàn.
  `ChatScrollCoordinator` chỉ căn chỉnh đến cuối khi tải ban đầu, không bao giờ bên trong
  trình xử lý hoàn thành streaming.

## Có gì mới trong v2.0.0

v2.0.0 hợp nhất phiên bản Remote Gateway cộng đồng từ
[@CristianGCiocoi](https://github.com/CristianGCiocoi).

- **Truyền tải JSON-RPC Desktop Gateway thống nhất** — văn bản, hình ảnh và tệp chia sẻ
  một phiên WebSocket thay vì đường dẫn REST+WebSocket tách biệt.
- **Chọn mô hình và nỗ lực suy nghĩ cho từng cuộc trò chuyện** mà không thay đổi
  mặc định hồ sơ.
- **Tải lên nhiều tệp đính kèm** — lên đến 10 tệp mỗi tin nhắn, 16 MiB mỗi tệp.
- **Sao chép/Chọn, Đọc to, Chỉnh sửa+Gửi lại, Tạo lại, Dừng, Xuất, Tìm kiếm,
  Đổi tên, Nhánh, Xóa** cho các cuộc trò chuyện.
- **Xử lý sự kiện Desktop Gateway gốc** — phê duyệt, sudo, secrets,
  làm rõ, lý luận, hoạt động công cụ, thông báo, kết quả nền,
  đánh giá và subagent.
- **Nhập giọng nói** — chuẩn bị đầu vào giọng nói trước khi gửi rõ ràng.
- **Khôi phục vòng bền vững** — phản hồi gateway hoàn thành sống sót qua các sự kiện
  vòng đời hủy quy trình Android.
- **Cài đặt kích thước văn bản có thể truy cập liên tục**.
- **Siêu dữ liệu intake tài liệu ATLAS** cho tải lên di động.
- **Lưu trữ thông tin xác thực Android an toàn** với tài liệu khóa nền tảng.
- **113+ kiểm thử Flutter** cộng với một bộ hợp đồng gateway tổng hợp dưới
  `tools/fake_gateway/`.

## Có gì mới trong v1.0.8

- **Tiền tố đường dẫn reverse-proxy** — cấu hình các tiền tố đường dẫn riêng biệt cho Gateway API và bảng điều khiển, ví dụ: `/profile/peter` trước `/api` và `/v1`, và `/dashboard` trước các tuyến `/api` bảng điều khiển.
- **Chế độ bảng điều khiển được proxy** — bật **Dashboard behind proxy** khi nginx/Caddy/máy chủ của bạn tiêm xác thực bảng điều khiển. Trong chế độ này, ứng dụng gửi các yêu cầu bảng điều khiển sạch mà không cố gắng lấy token phiên bảng điều khiển hoặc thực hiện đăng nhập mật khẩu.
- **Xác thực và cuộc trò chuyện nhận biết tiền tố** — xác thực khóa API, duyệt phiên, lịch sử cuộc trò chuyện hiện có, hoàn thành cuộc trò chuyện streaming và màn hình ngăn kéo bảng điều khiển đều sử dụng các tiền tố đã cấu hình.

## Có gì mới trong v1.0.7

- **Bảng điều khiển được bảo vệ bằng mật khẩu** — các tab Bộ nhớ/Cron/Kỹ năng/Cài đặt hiện hoạt động với bảng điều khiển được bảo mật bằng basic-auth, không chỉ bảng điều khiển mở (`--insecure`). Ứng dụng đăng nhập thông qua luồng `/auth/password-login` của bảng điều khiển và tái sử dụng cookie phiên (cơ chế tương tự mà máy khách máy tính để bàn sử dụng).
- **Cổng bảng điều khiển có thể cấu hình** — đặt cổng bảng điều khiển tùy chỉnh cho mỗi kết nối khi nó không phải là mặc định `9119`.
- **Chi tiết bảng điều khiển trong luồng kết nối** — đặt cổng/tên người dùng/mật khẩu bảng điều khiển trong khi thêm kết nối (mở rộng **Custom dashboard details**) hoặc sau đó thông qua **⋮ → Dashboard Login**, với xác thực trước khi lưu.

## Có gì mới trong v1.0.6

- **Hỗ trợ cuộc trò chuyện giọng nói** — nhấn micrô trong cuộc trò chuyện để đọc một tin nhắn cho Hermes, và Hermes có thể nói lại phản hồi.
- Phản hồi nói có thể được bật tắt từ thanh nhập cuộc trò chuyện.
- Quyền micrô và nhận dạng giọng nói Android/iOS được bao gồm.

## Tính năng

- **Cuộc trò chuyện Hermes trên Android** — duyệt các phiên, tạo cuộc trò chuyện mới và gửi dấu nhắc cho Hermes Agent của bạn.
- **Phản hồi streaming** — cuộc trò chuyện sử dụng điểm cuối streaming tương thích OpenAI của Hermes Gateway: `POST /v1/chat/completions`. Các token xuất hiện theo thời gian thực với cuộn tự động mượt mà.
- **Giao diện người dùng kiểu nhắn tin** — chủ đề tối/sáng/hệ thống, màu nhấn Hermes vàng (`#D4AF37`), kết xuất markdown, dấu thời gian tương đối và bố cục điện thoại/máy tính bảng đáp ứng.
- **Thương hiệu Hermes vàng/đen** — nhấn vàng nổi bật trên nền đen, biểu tượng ứng dụng tùy chỉnh với mật độ mipmap, tin nhắn tác nhân sử dụng bong bóng xám.
- **Tích hợp Gateway API** — các phiên và cuộc trò chuyện chạy thông qua Hermes Gateway API Server, thường trên cổng `8642`, với các điểm cuối HTTP và HTTPS được hỗ trợ. Triển khai reverse-proxy có thể đặt tiền tố đường dẫn gateway được áp dụng trước các tuyến `/api` và `/v1`.
- **Tích hợp bảng điều khiển** — các màn hình Bộ nhớ, Cron Jobs, Kỹ năng và Cài đặt sử dụng API bảng điều khiển Hermes (cổng mặc định `9119`, có thể cấu hình cho mỗi kết nối) trên cùng máy chủ. Hoạt động với bảng điều khiển mở (`--insecure`), **bảng điều khiển được bảo vệ bằng mật khẩu** thông qua đăng nhập tích hợp và bảng điều khiển được proxy nơi xác thực được tiêm ở upstream.
- **Cài đặt mô hình** — xem và thay đổi mô hình Hermes đã cấu hình nơi bảng điều khiển hiển thị cài đặt mô hình.
- **Quản lý Cron** — liệt kê, kích hoạt, tạm dừng/tiếp tục, tạo, chỉnh sửa và xóa các cron job Hermes đã lên lịch.
- **Trình duyệt kỹ năng** — xem các kỹ năng Hermes có sẵn với mô tả và điều kiện kích hoạt.
- **Trình xem bộ nhớ** — kiểm tra bộ nhớ cuộc trò chuyện qua các phiên.
- **Chuyển đổi chế độ chi tiết** — hiển thị siêu dữ liệu tin nhắn thô (vai trò, lời gọi công cụ, dấu thời gian) trong cuộc trò chuyện.
- **Chuyển đổi chủ đề ba chiều** — Tối / Sáng / Mặc định hệ thống.
- **Xử lý bàn phím** — cuộn tự động khi mở bàn phím, hành động gửi khi Enter, FAB để cuộn xuống dưới cùng.
- **Cuộc trò chuyện giọng nói** — nhập micrô gửi giọng nói được nhận dạng cho Hermes, với phản hồi chuyển văn bản thành giọng nói tùy chọn.

## Ảnh chụp màn hình

<table>
  <tr>
    <td align="center"><img src="docs/screenshots/01-session-list.jpg" width="220" alt="Danh sách phiên"><br><sub>Danh sách phiên</sub></td>
    <td align="center"><img src="docs/screenshots/02-navigation-drawer.jpg" width="220" alt="Ngăn kéo điều hướng"><br><sub>Ngăn kéo điều hướng</sub></td>
    <td align="center"><img src="docs/screenshots/03-cron-jobs.jpg" width="220" alt="Cron jobs"><br><sub>Cron jobs</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="docs/screenshots/04-add-cron-job.jpg" width="220" alt="Thêm cron job"><br><sub>Thêm cron job</sub></td>
    <td align="center"><img src="docs/screenshots/05-memory.jpg" width="220" alt="Bộ nhớ"><br><sub>Bộ nhớ</sub></td>
    <td align="center"><img src="docs/screenshots/06-settings.jpg" width="220" alt="Cài đặt"><br><sub>Cài đặt</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="docs/screenshots/07-skills.jpg" width="220" alt="Kỹ năng"><br><sub>Kỹ năng</sub></td>
  </tr>
</table>

## Bắt đầu nhanh

### Yêu cầu

- Thiết bị hoặc trình giả lập Android (Android 8+).
- Hermes Agent được cài đặt trên máy chủ.
- Hermes Gateway API Server có thể truy cập từ thiết bị Android.
- `API_SERVER_KEY` từ môi trường máy chủ Hermes (`~/.hermes/.env`).
- Tùy chọn: Bảng điều khiển Hermes có thể truy cập cho các màn hình Bộ nhớ/Cron/Kỹ năng/Cài đặt.

Tài liệu Hermes Agent: <https://hermes-agent.nousresearch.com/docs>

### Cài đặt APK

Tải xuống APK mới nhất từ trang
[GitHub Releases](https://github.com/rusty4444/hermes-android/releases) của kho lưu trữ này.

Đối với hầu hết điện thoại Android, cài đặt APK ARM64:

```bash
adb install Hermes-Android-2.0.1-arm64-release.apk
```

Nếu cài đặt trực tiếp trên Android, bật **Install unknown apps** cho trình duyệt hoặc trình quản lý tệp của bạn, sau đó mở APK đã tải xuống.

### 1. Khởi động Gateway API Server

Các tính năng cuộc trò chuyện/phiên Android kết nối với Hermes Gateway API Server. Nó phải liên kết với địa chỉ mà điện thoại của bạn có thể truy cập, không chỉ `127.0.0.1`.

Sử dụng lệnh khởi động gateway/API-server Hermes bình thường của bạn và xác nhận:

- máy chủ/IP có thể truy cập từ Android
- cổng thường là `8642`
- `API_SERVER_KEY` có sẵn trong `~/.hermes/.env`

### 2. Tùy chọn: khởi động bảng điều khiển cho các tính năng ngăn kéo

Bộ nhớ, Cron Jobs, Kỹ năng và Cài đặt sử dụng API bảng điều khiển Hermes (cổng mặc định `9119`).

Mở bảng điều khiển (không đăng nhập):

```bash
hermes dashboard --insecure --host 0.0.0.0 --tui --port 9119
```

Bảng điều khiển được bảo vệ bằng mật khẩu (được khuyến nghị trên mạng chia sẻ) — khởi động nó với
nhà cung cấp basic-auth thay vì `--insecure`, sau đó nhập tên người dùng/mật khẩu trong
hộp thoại **Dashboard / Proxy Settings** của ứng dụng (xem [Truy cập bảng điều khiển](#4-tùy-chọn-cấu-hình-truy-cập-bảng-điều-khiển)).

> `--host 0.0.0.0` là bắt buộc khi kết nối từ thiết bị khác. Bảng điều khiển chỉ localhost không thể truy cập từ Android.

### 3. Kết nối ứng dụng

1. Đặt thiết bị Android và máy chủ Hermes trên cùng Wi-Fi/LAN (hoặc kết nối qua Tailscale — xem bên dưới).
2. Tìm IP máy chủ Hermes:

   ```bash
   # macOS
   ipconfig getifaddr en0

   # Linux
   hostname -I | awk '{print $1}'
   ```

3. Mở ứng dụng Hermes Android.
4. Nhấn **+** để thêm kết nối.
5. Nhập:
   - **Label:** bất kỳ tên nào, ví dụ: `Home`
   - **Host:** IP máy chủ, ví dụ: `192.168.1.50`
   - **Port:** `8642`
   - **API Key:** `API_SERVER_KEY` từ máy Hermes
6. Nếu triển khai của bạn nằm sau đường dẫn reverse proxy, mở rộng **Custom proxy and dashboard details** và đặt các tiền tố gateway/bảng điều khiển ở đó. Không đặt đường dẫn URL trong trường Host; trường Host chỉ là scheme, hostname và cổng tùy chọn.
7. Nhấn kết nối đã lưu để duyệt các phiên.
8. Nhấn một phiên để bắt đầu trò chuyện hoặc tạo một phiên mới.

### 4. Tùy chọn: cấu hình truy cập bảng điều khiển

Các màn hình ngăn kéo (Bộ nhớ, Cron Jobs, Kỹ năng, Cài đặt) nói chuyện với bảng điều khiển
Hermes, có thể chạy trên cổng khác với Gateway API Server và có thể
được bảo vệ bằng mật khẩu. Cấu hình nó cho mỗi kết nối — khi thêm
kết nối (mở rộng **Custom proxy and dashboard details** trong hộp thoại Add Connection) hoặc
sau đó:

1. Trong danh sách kết nối, nhấn menu **⋮** trên một kết nối → **Dashboard / Proxy Settings**.
2. Điền vào:
   - **Gateway path prefix** — đường dẫn reverse-proxy tùy chọn trước các tuyến gateway `/api`
     và `/v1`, ví dụ: `/profile/peter`.
   - **Dashboard path prefix** — đường dẫn reverse-proxy tùy chọn trước các tuyến
     `/api` bảng điều khiển, ví dụ: `/dashboard`.
   - **Dashboard behind proxy** — bật điều này khi proxy tiêm xác thực bảng điều khiển
     và ứng dụng không nên lấy token SPA bảng điều khiển hoặc đăng nhập
     bằng tên người dùng/mật khẩu.
   - **Dashboard Port** — để trống để sử dụng mặc định (`9119` cho HTTP hoặc
     cổng bên ngoài giống nhau cho triển khai HTTPS), hoặc đặt cổng rõ ràng nếu
     bảng điều khiển của bạn được hiển thị ở nơi khác.
   - **Username / Password** — chỉ cho bảng điều khiển được bảo vệ bằng mật khẩu. Để
     cả hai trống cho bảng điều khiển mở (`--insecure`).
   - **Hermes profile** — chỉ khi bảng điều khiển là bảng điều khiển *cấp máy*
     (`hermes dashboard` / `hermes serve` không có `--isolated`) lưu trữ
     nhiều hồ sơ. Hermes xác định phạm vi mỗi lời gọi JSON-RPC trên socket đó bằng
     trường `profile` trong yêu cầu và quay lại hồ sơ mặc định
     của chính nó khi nó bị thiếu, vì vậy không có trường này, các cuộc trò chuyện có thể lặng lẽ hạ cánh
     trong hồ sơ sai. Sử dụng tên hồ sơ chính xác như trong `hermes profile
     list`, ví dụ: `sol`. Để trống cho bảng điều khiển riêng biệt theo hồ sơ.
3. Nhấn **Save**. Ứng dụng xác thực cài đặt với bảng điều khiển trước
   khi lưu chúng.

Khi thông tin xác thực được đặt, ứng dụng xác thực thông qua luồng
`/auth/password-login` của bảng điều khiển và tái sử dụng cookie phiên được trả về — cơ chế
tương tự mà máy khách Hermes máy tính để bàn sử dụng.

## Kết nối từ xa với Tailscale

Tailscale cung cấp cho điện thoại và máy Hermes của bạn một mạng mã hóa riêng tư, vì vậy bạn **không** cần phải hiển thị Hermes trực tiếp ra internet công cộng.

Trang web Tailscale: <https://tailscale.com/>

### Cài đặt Tailscale trên Android

1. Cài đặt Tailscale cho Android: <https://tailscale.com/download/android>
2. Đăng nhập bằng cùng tài khoản/tailnet Tailscale được sử dụng bởi máy Hermes của bạn.
3. Để Tailscale kết nối trong khi sử dụng ứng dụng Hermes.

### Cài đặt Tailscale trên máy Hermes

Cài đặt Tailscale cho hệ điều hành của bạn: <https://tailscale.com/download>

Ví dụ:

```bash
# macOS với Homebrew
brew install --cask tailscale

# Debian/Ubuntu
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up
```

Sau khi máy Hermes được kết nối, lấy địa chỉ Tailscale của nó:

```bash
tailscale ip -4
```

Bạn cũng có thể bật MagicDNS và sử dụng tên máy thay vì IP `100.x.y.z`:

- Tài liệu MagicDNS: <https://tailscale.com/kb/1081/magicdns>

### Kết nối ứng dụng qua Tailscale

Trong hộp thoại kết nối ứng dụng Android:

- **Host:** IP Tailscale máy Hermes, ví dụ: `100.64.12.34`, hoặc tên MagicDNS của nó
- **Port:** `8642`
- **API Key:** `API_SERVER_KEY`

Nếu sử dụng Bộ nhớ/Cron/Kỹ năng/Cài đặt từ xa, giữ bảng điều khiển có thể truy cập trên cùng máy chủ Tailscale tại cổng `9119`.

## Kết nối qua HTTPS

Đối với triển khai được lưu trữ/reverse-proxy (ví dụ: Hugging Face Spaces, VPS với nginx/Caddy), nhập URL HTTPS đầy đủ vào trường **Host**:

```text
https://your-hermes-host.example.com
```

Nếu không bao gồm cổng, ứng dụng sử dụng cổng `443`. Nếu dịch vụ HTTPS của bạn sử dụng cổng tùy chỉnh, hãy bao gồm nó trong URL (`https://host.example.com:8443`) hoặc đặt trường Port thành giá trị đó trước khi kết nối.

Để trống trường **Port** và ứng dụng suy ra mặc định scheme — `443` cho HTTPS, `8642` cho HTTP. Giá trị được nhập vào **Port** luôn được sử dụng nguyên trạng, bao gồm `8642` qua HTTPS (ví dụ: điểm cuối `tailscale serve` kết thúc TLS trên cổng API-server). Cổng bên trong URL Host (`https://host.example.com:8443`) được ưu tiên hơn trường Port.

Đối với kết nối HTTPS, các màn hình ngăn kéo bảng điều khiển sử dụng cùng cổng HTTPS bên ngoài. Đối với kết nối HTTP/LAN cục bộ, cuộc trò chuyện sử dụng cổng `8642` và màn hình bảng điều khiển sử dụng cổng `9119`.

### Đường dẫn reverse-proxy

Nếu proxy của bạn hiển thị Hermes dưới đường dẫn URL, giữ trường **Host** chỉ gốc và đặt đường dẫn trong **Custom proxy and dashboard details**:

```text
Host: https://your-hermes-host.example.com
Port: 443
Gateway path prefix: /profile/peter
Dashboard path prefix: /dashboard
Dashboard behind proxy: on, nếu proxy tiêm xác thực bảng điều khiển
```

Với thiết lập đó, ứng dụng gọi các tuyến gateway như
`https://your-hermes-host.example.com/profile/peter/v1/chat/completions` và
các tuyến bảng điều khiển như
`https://your-hermes-host.example.com/dashboard/api/model/info`.

### Ghi chú bảo mật

- Ưu tiên Tailscale/VPN để sử dụng từ xa.
- Không chuyển tiếp cổng Gateway API Server hoặc bảng điều khiển trực tiếp ra internet công cộng.
- Xoay `API_SERVER_KEY` nếu nó được chia sẻ hoặc hiển thị.
- Các ví dụ cục bộ/Tailscale sử dụng HTTP, vì vậy ranh giới mạng riêng tư quan trọng. Sử dụng HTTPS cho các điểm cuối công cộng hoặc được lưu trữ.

## Kiến trúc

```text
Ứng dụng Android (Flutter)
├─ Gateway API Server, cổng 8642 hoặc tiền tố proxy HTTPS
│  ├─ GET /api/sessions
│  ├─ GET /api/sessions/{id}/messages
│  └─ POST /v1/chat/completions  (SSE streaming)
└─ Bảng điều khiển Hermes, cổng 9119 hoặc tiền tố proxy HTTPS
   ├─ /api/memory
   ├─ /api/cron/jobs
   ├─ /api/skills
   └─ /api/model/*
```

## Sử dụng ứng dụng

### Màn hình cuộc trò chuyện

- **Gửi tin nhắn** — Nhập vào trường nhập liệu và nhấn nút gửi hoặc nhấn Enter.
- **Phản hồi streaming** — Phản hồi của tác nhân xuất hiện từng token theo thời gian thực. Cuộc trò chuyện tự động cuộn xuống dưới cùng khi token mới xuất hiện.
- **Tiến trình công cụ** — Khi tác nhân sử dụng công cụ, tin nhắn tiến trình nội tuyến hiển thị tên công cụ, trạng thái và tiến trình.
- **Chế độ chi tiết** — Chuyển đổi trong cài đặt ứng dụng để hiển thị siêu dữ liệu tin nhắn thô (vai trò, ID lời gọi công cụ, dấu thời gian).
- **Kết xuất Markdown** — Tin nhắn trợ lý kết xuất markdown (khối mã, bảng, danh sách, liên kết).
- **Dấu thời gian tương đối** — Tin nhắn hiển thị "2 phút trước", "3 giờ trước", v.v.

### Cuộc trò chuyện giọng nói

Thanh nhập cuộc trò chuyện có hai điều khiển giọng nói:

| Nút | Biểu tượng | Chức năng |
|--------|------|-------------|
| **Micrô** | 🎤 / 🎤🔴 | Nhấn để bắt đầu nhập giọng nói. Nói tin nhắn của bạn — nó xuất hiện trong trường nhập liệu và gửi tự động khi bạn tạm dừng. Nhấn lại (hoặc biểu tượng dừng màu đỏ) để hủy. |
| **Chuyển đổi phản hồi giọng nói** | 🔊 / 🔇 | Chuyển đổi xem Hermes có đọc phản hồi của nó to sau tin nhắn nhập giọng nói hay không. Bật = 🔊 (tăng âm lượng), Tắt = 🔇 (tắt âm lượng). |

**Cách phản hồi giọng nói hoạt động:**

1. Nhấn micrô, nói câu hỏi của bạn và đợi nhận dạng hoàn thành (văn bản xuất hiện và tự động gửi).
2. Hermes truyền phản hồi của nó dưới dạng văn bản trong cuộc trò chuyện như bình thường.
3. Sau khi phản hồi đầy đủ đến, nếu chuyển đổi phản hồi giọng nói bật (🔊), ứng dụng đọc phản hồi to bằng chuyển văn bản thành giọng nói.

Phản hồi giọng nói **chỉ** kích hoạt khi bạn gửi tin nhắn qua nút micrô. Tin nhắn đã nhập chỉ tạo phản hồi văn bản.

#### Thiết lập chuyển văn bản thành giọng nói (Android)

Phản hồi nói yêu cầu Google Text-to-Speech được cài đặt và cấu hình trên thiết bị của bạn. Ứng dụng sử dụng công cụ TTS tích hợp của thiết bị — nó không đóng gói giọng nói riêng.

**Từng bước:**

1. **Cài đặt Google Text-to-Speech** — Nếu chưa có trên thiết bị của bạn, cài đặt từ Play Store: [Google Text-to-Speech](https://play.google.com/store/apps/details?id=com.google.android.tts)
2. **Đặt làm công cụ mặc định** — Cài đặt → Khả năng tiếp cận → Đầu ra chuyển văn bản thành giọng nói → Công cụ ưu tiên → **Google Text-to-Speech**
3. **Tải dữ liệu giọng nói** — Trong cùng màn hình cài đặt TTS, nhấn biểu tượng bánh răng ⚙️ bên cạnh Google Text-to-Speech → Cài đặt dữ liệu giọng nói → chọn **English (Australia)** hoặc giọng tiếng Anh ưu tiên của bạn → tải xuống
4. **Kiểm tra âm lượng phương tiện** — TTS sử dụng luồng âm thanh **phương tiện**, không phải chuông. Tăng âm lượng phương tiện và đảm bảo điện thoại của bạn không ở chế độ im lặng/chỉ rung.
5. **Kiểm tra TTS** — Trong màn hình cài đặt TTS, nhấn "Play" để nghe cụm từ kiểm tra. Nếu bạn nghe được, ứng dụng sẽ hoạt động.

**Khắc phục sự cố giọng nói:**

- **Nút micrô không làm gì** — Nhận dạng giọng nói có thể không khả dụng trên thiết bị của bạn. Đảm bảo ứng dụng Google được cài đặt và có quyền micrô.
- **Chuyển đổi phản hồi giọng nói bật (🔊) nhưng Hermes không nói** — Google TTS có thể không được cài đặt hoặc không có dữ liệu giọng nói được tải xuống. Làm theo các bước thiết lập TTS ở trên.
- **Hermes nói nhỏ hoặc quá nhanh** — Điều chỉnh tốc độ nói và âm lượng trong Cài đặt → Khả năng tiếp cận → Đầu ra chuyển văn bản thành giọng nói.
- **Nhận dạng không chính xác** — Nói rõ ràng, giảm tiếng ồn nền và kiểm tra xem ngôn ngữ hệ thống của thiết bị có bao gồm tiếng Anh không.

### Danh sách phiên

- Duyệt tất cả các phiên Hermes.
- Nhấn một phiên để mở cuộc trò chuyện của nó.
- Kéo để làm mới danh sách phiên.
- Tạo một phiên mới từ tiêu đề danh sách phiên.

### Ngăn kéo điều hướng (☰)

Truy cập các màn hình được hỗ trợ bởi bảng điều khiển này:

- **Bộ nhớ** — Xem bộ nhớ cuộc trò chuyện qua các phiên. Hiển thị sự thật đã lưu trữ, tùy chọn và ngữ cảnh dự án.
- **Cron Jobs** — Liệt kê tất cả các cron job đã lên lịch. Kích hoạt, tạm dừng/tiếp tục, tạo, chỉnh sửa hoặc xóa job.
- **Kỹ năng** — Duyệt các kỹ năng Hermes có sẵn với mô tả và điều kiện kích hoạt.
- **Cài đặt** — Xem và thay đổi mô hình Hermes đã cấu hình, tùy chọn chủ đề và chế độ chi tiết.

### Chủ đề

- Chuyển đổi ba chiều: **Tối** / **Sáng** / **Mặc định hệ thống**.
- Nhấn Hermes vàng (`#D4AF37`) trên chế độ tối; được điều chỉnh cho chế độ sáng.

### Quản lý Cron job

Màn hình Cron Jobs hỗ trợ CRUD đầy đủ:

- **Liệt kê** — Xem tất cả các job với trạng thái (đã bật/đã tắt), chạy tiếp theo và lịch trình.
- **Tạo** — Nhấn **+** để thêm job mới với lịch trình (biểu thức cron hoặc khoảng thời gian), dấu nhắc và kỹ năng tùy chọn.
- **Chỉnh sửa** — Nhấn một job để sửa đổi lịch trình, dấu nhắc, kỹ năng hoặc trạng thái của nó.
- **Kích hoạt** — Chạy job thủ công ngay lập tức.
- **Tạm dừng/Tiếp tục** — Chuyển đổi trạng thái đã bật job.
- **Xóa** — Xóa một job (với xác nhận).

## Phát triển

```bash
cd hermes-android
flutter pub get
flutter analyze
flutter test
flutter run -d android
```

## Build APK phát hành

```bash
flutter clean
flutter pub get
flutter build apk --release --split-per-abi
mkdir -p release-apks
cp build/app/outputs/flutter-apk/app-*-release.apk release-apks/
```

`pubspec.yaml` khai báo `versionCode` Android cơ sở. Khối tách ABI F-Droid
trong `android/app/build.gradle.kts` suy ra mã cho mỗi ABI là
`base * 10 + ABI code` (armeabi-v7a = 1, arm64-v8a = 2, x86_64 = 3), vì vậy các
mã được sắp xếp theo thứ tự armeabi-v7a < arm64-v8a < x86_64 như fdroiddata yêu cầu.
Đối với v2.1.13, cơ sở `2153` do đó tạo ra mã `21531`/`21532`/`21533`.
CI đọc APK arm64 hoàn chỉnh bằng `aapt` và thất bại nếu mối quan hệ đó
lệch. Kiểm tra sàn phát hành tiếp tục áp dụng cho giá trị cơ sở và không được
làm yếu để dựa vào mã ABI.

Tệp đầu ra:

```text
build/app/outputs/flutter-apk/app-arm64-v8a-release.apk
build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk
build/app/outputs/flutter-apk/app-x86_64-release.apk
```

## Danh sách kiểm tra phát hành

Mỗi PR phát hành phải hoàn thành [`CODE_QUALITY_CHECKLIST.md`](CODE_QUALITY_CHECKLIST.md) trước khi gắn thẻ hoặc xuất bản APK. Danh sách kiểm tra bao gồm phân tích, kiến trúc, UX, bảo mật, phát hành và kiểm tra thủ công.

Luồng phát hành tối thiểu:

1. Cập nhật phiên bản `pubspec.yaml`.
2. Hoàn thành `CODE_QUALITY_CHECKLIST.md` và ghi lại bất kỳ ngoại lệ nào trong PR phát hành.
3. Build APK phát hành tách biệt.
4. Gắn thẻ phát hành, ví dụ: `v1.0.0`.
5. Tạo Phát hành GitHub với tất cả tài sản APK.
6. Xác nhận khả năng hiển thị kho lưu trữ và tài sản phát hành trên GitHub.

## Khắc phục sự cố

### Tôi có thể thấy các phiên nhưng màn hình ngăn kéo bảng điều khiển thất bại

Các tính năng cuộc trò chuyện/phiên sử dụng cổng `8642`. Bộ nhớ, Cron Jobs, Kỹ năng và Cài đặt sử dụng bảng điều khiển trên cổng `9119`. Khởi động bảng điều khiển với `--host 0.0.0.0` và đảm bảo cổng `9119` có thể truy cập qua Wi-Fi hoặc Tailscale.

### Cuộc trò chuyện thất bại với lỗi xác thực

Kiểm tra xem khóa API của kết nối Android có khớp với `API_SERVER_KEY` từ máy Hermes (`~/.hermes/.env`) không.

### Ứng dụng không thể tìm thấy máy chủ

- Xác minh điện thoại và máy chủ trên cùng Wi-Fi hoặc cùng tailnet Tailscale.
- Thử IP thô trước tên máy chủ.
- Kiểm tra quy tắc tường lửa cục bộ cho cổng `8642` và `9119`.
- Trên Android, đảm bảo ứng dụng có quyền mạng (được cấp theo mặc định).

### Streaming dừng hoặc tin nhắn không xuất hiện

- Kết nối SSE có thể đã hết thời gian chờ. Kéo để làm mới danh sách phiên và nhập lại cuộc trò chuyện.
- Kiểm tra xem Gateway API Server có đang chạy và phản hồi không: `curl http://<host>:8642/api/sessions`.
- Nếu sử dụng reverse proxy, đảm bảo nó hỗ trợ kết nối SSE lâu dài (không có thời gian chờ tích cực).

### Màn hình bảng điều khiển hiển thị trống hoặc lỗi

- Xác minh bảng điều khiển đang chạy với `--host 0.0.0.0` (bảng điều khiển mở cũng cần `--insecure`).
- Nếu bảng điều khiển được bảo vệ bằng mật khẩu, đặt tên người dùng/mật khẩu trong **⋮ → Dashboard / Proxy Settings** (hoặc **Custom proxy and dashboard details** khi thêm kết nối). 401 ở đây có nghĩa là thông tin xác thực sai.
- Nếu bảng điều khiển nằm sau đường dẫn reverse-proxy, đặt **Dashboard path prefix**. Nếu proxy tiêm xác thực bảng điều khiển, bật **Dashboard behind proxy** để ứng dụng gửi yêu cầu sạch.
- Kiểm tra cổng bảng điều khiển khớp với kết nối (mặc định `9119` cho cục bộ/Tailscale, cùng cổng HTTPS cho được lưu trữ; ghi đè nó trong Dashboard / Proxy Settings nếu cần).
- Bảng điều khiển phải trên cùng máy chủ với Gateway API Server để ngăn kéo ứng dụng truy cập nó.

### Nhập giọng nói hoặc phản hồi nói không hoạt động

- **Phản hồi nói không hoạt động** — Cài đặt Google Text-to-Speech, đặt nó làm công cụ mặc định và tải dữ liệu giọng nói tiếng Anh. Xem [Thiết lập chuyển văn bản thành giọng nói](#thiết-lập-chuyển-văn-bản-thành-giọng-nói-android) ở trên để biết hướng dẫn từng bước.
- **Nhận dạng giọng nói không hoạt động** — Đảm bảo ứng dụng Google được cài đặt và có quyền micrô (Cài đặt → Ứng dụng → Hermes → Quyền → Micrô).
- **Chuyển đổi phản hồi giọng nói tắt** — Kiểm tra biểu tượng loa trong thanh nhập cuộc trò chuyện: 🔊 = bật, 🔇 = tắt. Nhấn nó để bật phản hồi nói.
- **Âm lượng phương tiện bằng không** — TTS sử dụng luồng âm thanh phương tiện, không phải chuông. Tăng âm lượng phương tiện bằng các nút âm lượng vật lý trong khi ở màn hình chính.
- **Hermes nói nhưng âm thanh nhỏ hoặc nhanh** — Điều chỉnh tốc độ nói và âm lượng trong Cài đặt → Khả năng tiếp cận → Đầu ra chuyển văn bản thành giọng nói.

### Ví dụ trường máy chủ

Ứng dụng chấp nhận bất kỳ dạng nào trong số này và chuẩn hóa chúng khi lưu:

```text
192.168.1.50
192.168.1.50:8642
http://192.168.1.50:8642
100.64.12.34
hermes-machine.tailnet-name.ts.net
https://your-hermes-host.example.com
https://your-hermes-host.example.com:8443
```

Đối với các đường dẫn được lưu trữ như `https://your-hermes-host.example.com/profile/peter`, nhập `https://your-hermes-host.example.com` làm máy chủ và `/profile/peter` làm **Gateway path prefix**.

## Cấu trúc dự án

```text
lib/
├── main.dart                          # Vỏ ứng dụng, kết nối đã lưu, ngăn kéo điều hướng
├── core/
│   ├── models/
│   │   ├── attachment_draft.dart       # Mô hình composer hình ảnh/tệp được hỗ trợ bởi tệp
│   │   ├── connection.dart             # Mô hình SavedConnection và chuẩn hóa máy chủ
│   │   └── session.dart                # Mô hình phiên
│   ├── screens/
│   │   ├── session_list_screen.dart   # Trình duyệt phiên
│   │   ├── chat_screen.dart           # Cuộc trò chuyện với SSE streaming
│   │   ├── settings_screen.dart       # Cài đặt mô hình/chủ đề/ứng dụng
│   │   ├── memory_screen.dart         # Trình xem bộ nhớ
│   │   ├── skills_screen.dart         # Trình duyệt kỹ năng
│   │   └── cron_screen.dart           # Trình quản lý Cron job
│   ├── services/
│   │   ├── attachment_draft_service.dart # Bộ đệm, làm sạch, giới hạn, thứ tự tải lên
│   │   ├── connection_manager.dart    # Kết nối đã lưu, Gateway API, Dashboard API
│   │   └── ws_client.dart             # Máy khách JSON-RPC WebSocket cho sử dụng bảng điều khiển/TUI trong tương lai
│   └── utils/
│       └── responsive.dart            # Điểm ngắt điện thoại/máy tính bảng
└── assets/
    └── icon/
        └── icon.png                   # Nguồn biểu tượng ứng dụng
```

## Ghi công

- **maebahesioru** — đã sửa xử lý liveness phiên Gateway với
  hồi quy tập trung trong PR #121 (v2.1.9), đã thêm bản địa hóa Flutter hoàn chỉnh và
  QA tiếng Nhật trên thiết bị trong PR #115 (v2.1.11), sau đó đã thêm hỗ trợ ngôn ngữ Android cho từng ứng dụng
  và dự phòng phiên nhàn rỗi bị giới hạn trong PR #125 và #123 (v2.1.12),
  và văn bản tin nhắn có thể chọn với phạm vi chủ đề tối và bản địa hóa trong
  PR #127 (v2.1.13).
- **igitur** — đã chẩn đoán và sửa xử lý cổng HTTPS rõ ràng (PR #111) và
  bảo toàn các vòng Hermes đang chạy khi rời khỏi cuộc trò chuyện (PR #113), với phạm vi
  hồi quy tập trung cho cả hai bản sửa lỗi. Phát hành trong v2.1.8.
- **Thaeland** — đã đóng góp công việc tương thích và độ tin cậy gateway cổ điển rộng rãi
  trong PR #106: khôi phục kết nối lại bền vững, sửa lỗi hợp đồng
  dây Projects và Chats, phân trang và quyền sở hữu thư mục an toàn, cứng hóa
  truyền tải và bộ hồi quy kèm theo. Phát hành trong v2.1.7.
- **spsDrop** — đã báo cáo rằng Android không thể kết nối qua gateway
  Caddy/Tailscale riêng tư có CA được cài đặt trong kho lưu trữ tin cậy thiết bị
  (#108). Đã sửa trong v2.1.6.
- **kon1z** — đã cung cấp tái tạo máy tính bảng chi tiết, đo lường và phân tích nguyên nhân gốc rễ cho tin nhắn dài bị cắt (#104). Đã sửa trong v2.1.4.
- **AletheiaVox** — ống dẫn Hermes-profile trên socket Desktop Gateway (PR #98): trường hồ sơ tùy chọn trên kết nối, được tiêm vào mọi payload JSON-RPC để bảng điều khiển cấp máy xác định phạm vi cuộc trò chuyện cho hồ sơ đúng. Đã hợp nhất trong v2.1.3.
- **software-greg** — danh sách và ứng dụng mô hình cuộc trò chuyện không có gateway (PR #97). Đã hợp nhất trong v2.1.3.
- **realchrisolin** — đã xóa mặc định URL gateway desktop được mã hóa cứng và làm cho các trường kết nối tùy chọn có thể xóa được (PR #86). Đã hợp nhất trong v2.1.3.
- **Thaeland** — đã chẩn đoán rằng cuộc trò chuyện Dự án bị chặn trên các gateway Hermes cổ điển (#100) và đã đóng góp dự phòng dựa trên cwd và hình dạng dây `session.create` cổ điển để cuộc trò chuyện Dự án mở ở mọi nơi (PR #102). Đã hợp nhất trong v2.1.2.
- **CarlosReyesPena** — phiên bản không gian làm việc sử dụng hàng ngày cộng đồng (PR #88): Vỏ không gian làm việc với Home/Projects/Chats/Activity/More, tích hợp dự án gateway, tìm kiếm phiên ba chế độ (trên thiết bị / FTS5 toàn văn / hỗ trợ AI), sao lưu & khôi phục cấu hình được mã hóa, vòng đời cuộc trò chuyện nhanh và ý định chia sẻ, khám phá khả năng và 900+ kiểm thử. Đã hợp nhất trong v2.1.0.
- **CristianGCiocoi** — phiên bản Remote Gateway cộng đồng: truyền tải JSON-RPC thống nhất, chọn mô hình cho từng cuộc trò chuyện, tải lên nhiều tệp đính kèm, khôi phục vòng bền vững, nhập giọng nói, bộ kiểm thử hợp đồng gateway và CHANGELOG toàn diện. Đã hợp nhất trong v2.0.0.
- **AI-Guru** — đánh giá chi tiết, kiểm thử độc lập và xác định lỗi offset cuộn cho phiên bản cộng đồng.
- **grunjol** — đánh giá kỹ thuật và phản hồi kiến trúc truyền tải cho phiên bản cộng đồng; cũng đã đóng góp PR #68: hỗ trợ tiền tố đường dẫn reverse-proxy và bảng điều khiển được proxy.
- **louquillio** — đã đóng góp PR #74: bộ lọc nguồn phiên trong Cài đặt.
- **sternbergm** — đã đóng góp PR #67: bảng điều khiển được bảo vệ bằng mật khẩu và cổng bảng điều khiển có thể cấu hình.

## Giấy phép

MIT
