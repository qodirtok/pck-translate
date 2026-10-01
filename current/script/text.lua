--所有与显示相关的字符串都需列至此处
--使用字典序排序，且按照以下分类整理






--字符串的常量必须大写，多个英文单词之间用下划线连接







--界面文本		AUI_* -> Interface String --在界面的某一固定位置显示的文本






--提示框文本	DLG_* -> Dialog String --在弹出提示框中显示的提示文字
--通用文本		GNR_* -> General String
--消息文本		MSG_* -> Message String --用MSG_ERR_*表示返回的错误消息





--界面悬浮说明	TIP_* -> Tip String
--Loading小提示 LDG_TIP	LDG_TITLE
--其他文本		TEXT_*
--临时测试用	TMP_*

--以下字符串归类暂时不放到本文件中
--按钮文本		BTN_* -> Button String --目前存放于界面.xml文件中







--更新内容
TEXT_NEWHELP_CONTENT = ""

--Loading小提示






LDG_TITLE = "^dca004LouLx Game: ^ffffff%s";
LDG_TIP = {
	"Nhân vật đạt cấp tối đa vẫn có thể nhận điểm kinh nghiệm (lịch luyện).",
	"Điểm kinh nghiệm ngoài việc dùng để thăng cấp, còn có nhiều công dụng khác.",
	"Cố gắng không thách đấu quái vật vượt quá cấp độ của bạn, trừ khi bạn chấp nhận cái giá phải trả khi tử vong.",
	"Nhân vật nam giới cũng có thể sử dụng vũ khí loại Phiến Vũ.",
	"Tấn công người chơi nước khác sẽ không bị phạt PK.",
	"Đừng dễ dàng tiết lộ thông tin tài khoản và mật khẩu cho người khác.",
	"Nhấn phím P để mở giao diện Sản Xuất.",
	"Nhấp chuột phải vào mục tiêu sẽ tự động tấn công mục tiêu đó.",
	"Khi cấp độ của bạn trên 40 mà bị quái vật hoặc NPC giết chết, bạn sẽ mất 1% số điểm kinh nghiệm còn lại.",
	"Shift + Chuột phải vào rương báu hoặc túi da rơi ra từ quái vật sẽ tự động nhặt tất cả chiến lợi phẩm.",
	"Chủ kho cung cấp chức năng mở rộng túi đồ và kho cá nhân.",
	"Hoàn thành nhiệm vụ cấp thấp chỉ nhận được một lượng nhỏ kinh nghiệm.",
	"Thuộc tính nhân vật sẽ tăng lên theo cấp độ và cấp độ binh chủng.",
	"Quái vật hiếm sẽ rơi ra chiến lợi phẩm chất lượng tốt hơn.",
	"Số sao bên cạnh hình đại diện quái vật cho biết độ khó khi khiêu chiến quái vật.",
	"Khi đạt cấp 40, bạn có thể chọn tham gia một trong ba phe Ngụy, Thục, Ngô.",
	"Hoàn thành nhiệm vụ Quán Rượu có thể nhận được tiền tệ tương đương để mua vật phẩm trong cửa hàng Quán Rượu.",
	"Sử dụng các phím W, S, A, D để di chuyển nhân vật của bạn.",
	"Nhấn phím NumLock sẽ khiến nhân vật của bạn tự động di chuyển về phía trước.",
	"Khi tấn công, hãy giữ nhân vật của bạn mặt hướng về phía kẻ địch.",
	"Người chơi từ cấp 1 đến 40 đang trong trạng thái bảo vệ tân thủ, sẽ không bị người chơi khác tấn công.",
	"Nhấn giữ Ctrl có thể bắt buộc tấn công người chơi khác.",
	"Tấn công người chơi cùng quốc gia sẽ làm tăng điểm PK của bạn.",
	"Dịch vụ truyền tống của Trạm Dịch chỉ có thể đưa bạn đến các khu vực đã từng đi qua.",
	"Nhấn Alt + Z có thể ẩn giao diện thao tác trò chơi.",
	"Nhấn F9 có thể vào chế độ máy ảnh.",
	"Khi thanh kinh nghiệm ở phía dưới màn hình bắt đầu nhấp nháy, có nghĩa là bạn có thể thăng cấp nhân vật ngay lập tức.",
	"Nhấn phím C để mở giao diện Thuộc Tính Nhân Vật.",
	"Trong giao diện Thuộc Tính Nhân Vật, bạn có thể chọn thăng cấp nhân vật hoặc thăng cấp binh chủng.",
	"Sau khi nhân vật nhận được danh hiệu, thuộc tính phụ thêm của danh hiệu sẽ có hiệu lực ngay lập tức.",
	"Di chuyển chuột đến NPC mục tiêu, nhấp chuột phải để mở hộp thoại.",
	"Nhấn phím J để mở giao diện Cửa Hàng Vật Phẩm.",
	"Nhấn phím B để mở giao diện Túi Đồ và Trang Bị Nhân Vật.",
	"Nhấn phím L để mở giao diện Thông Tin Nhiệm Vụ.",
	"Nhấn phím I để mở giao diện Bảng Xếp Hạng Trò Chơi.",
	"Nhấn phím T để mở giao diện Cài Đặt Tổ Đội.",
	"Nhấn phím Y để mở giao diện Cài Đặt Kết Nghĩa.",
	"Nhấn phím G để mở giao diện Cài Đặt Quân Đoàn.",
	"Thăng cấp nhân vật và cấp độ binh chủng đều tiêu hao điểm kinh nghiệm của nhân vật.",
	"Nhấp chuột trái không buông và xoay chuột, người chơi có thể nhìn thấy khuôn mặt của nhân vật mình.",
	"Sau khi nhân vật đạt cấp 15 có thể học Kỹ Năng Chiến Đấu tại Võ Sư ở Trường An.",
	"Nhấn giữ phím Z đồng thời nhấp vào biểu tượng kỹ năng/nhấn phím tắt kỹ năng sẽ tự thi triển kỹ năng lên bản thân.",
	"Vật phẩm loại thuốc mỡ ngoài việc dùng cho bản thân, cũng có thể dùng cho người chơi khác.",
	"Chọn mục tiêu sau đó nhấp vào biểu tượng vật phẩm loại thuốc mỡ sẽ sử dụng thuốc mỡ lên người chơi mục tiêu.",
	"Nếu bạn đạt cấp 10 và hoàn thành Nhiệm Vụ Binh Chủng, bạn có thể tiêu hao điểm kinh nghiệm để thăng cấp Binh Chủng của mình.",
	"Sau khi nhân vật đạt cấp 20, có thể học Kỵ Thuật tại Mã Thuật Sư ở thành Trường An.",
	"Sau khi cấp độ binh chủng thăng lên Cửu Đoạn, cần phải hoàn thành Nhiệm Vụ Binh Chủng tương ứng mới có thể thăng binh chủng lên giai đoạn tiếp theo.",
	"Mỗi khi Cấp Độ Binh Chủng Chính thăng một cấp, có thể nhận được một điểm Chuyên Tinh.",
	"Khi chế tạo vũ khí và phòng cụ, chất lượng nguyên liệu đưa vào càng tốt, khả năng sản xuất ra trang bị chất lượng cao càng lớn!",
	"Phân giải trang bị cần phải học Kỹ Năng Sản Xuất - Xảo Tượng, và chỉ có thể phân giải vũ khí và phòng cụ từ bậc một trở lên.",
	"Trang bị có thể phân giải thành Nguyên Thạch, Nguyên Thạch là vật phẩm cần thiết để chế tạo vật liệu cường hóa trang bị.",
	"Kỹ Năng Sản Xuất - May Vá có thể chế tạo phòng cụ từ bậc một trở lên.",
	"Kỹ Năng Sản Xuất - Thợ Rèn có thể chế tạo vũ khí từ bậc một trở lên.",
	"Kỹ Năng Sản Xuất - Xảo Tượng dùng để chế tạo vật liệu cường hóa trang bị, tổng hợp Nguyên Thạch và Phù Ngọc phẩm cấp cao hơn.",
	"Kỹ Năng Sản Xuất - Thợ Công dùng để chế tạo các loại bảo vật và cơ quan khí giới, nâng cấp Bí Văn Linh Châu.",
	"Kỹ Năng Sản Xuất - Nấu Ăn dùng để chế tạo các loại thức ăn, rượu ngon và trà uống.",
	"Kỹ Năng Sản Xuất - Cấp Cứu dùng để chế tạo các loại thuốc mỡ có thể sử dụng trong chiến đấu.",
	"Nguyên Thạch cấp thấp có thể được tổng hợp thành Nguyên Thạch cấp cao hơn thông qua Kỹ Năng Sản Xuất - Xảo Tượng.",
	"Ăn thức ăn có thể hồi phục sinh lực ngoài chiến đấu, sau khi ăn xong thức ăn còn có thể nhận được hiệu quả tăng tốc độ hồi phục sinh lực.",
	"Uống rượu ngon có thể hồi phục thể lực ngoài chiến đấu, sau khi uống xong rượu ngon còn có thể nhận được hiệu quả tăng cường đấu khí khi giết địch.",
	"Uống trà có thể hồi phục thể lực ngoài chiến đấu, sau khi uống xong trà còn có thể nhận được hiệu quả tăng cường thể lực khi giết địch.",
	"Thuốc mỡ giúp nhân vật liên tục hồi phục sinh lực, có thể sử dụng trong chiến đấu.",
	"Thuốc viên giúp nhân vật hồi phục ngay lập tức một lượng sinh lực nhất định, có thể sử dụng trong chiến đấu.",
	"Gắn Phù Ngọc vào trang bị, trang bị sẽ nhận được thuộc tính của Phù Ngọc.",
	"Các Thương Nhân Tạp Hóa ở các nơi cung cấp dịch vụ Gắn Phù Ngọc và Xóa Phù Ngọc.",
	"Các Xảo Tượng và Thương Nhân Trang Sức ở các nơi cung cấp dịch vụ Cường Hóa Trang Bị và Phân Giải Trang Bị.",
	"Phần lớn nguyên liệu thô cần thiết cho Kỹ Năng Sản Xuất có thể mua tại Thương Nhân Tạp Hóa ở các nơi.",
	"Trang bị có thể gắn Phù Ngọc chỉ giới hạn ở Mũ, các loại Y Phục và Trang Sức.",
	"Thuộc tính Phù Ngọc đã gắn có thể được xóa khỏi trang bị, sau đó trang bị có thể gắn Phù Ngọc lại.",
	"Kỹ Năng Sản Xuất - Xảo Tượng có thể tinh luyện Phù Ngọc phẩm cấp thấp thành Phù Ngọc phẩm cấp cao hơn.",
	"Chỉ có thể trang bị một loại Bảo Vật cùng loại cùng lúc.",
	"Kỹ Năng Sản Xuất - Xảo Tượng có thể chế tạo vật liệu cường hóa trang bị từ Nguyên Thạch thu được sau khi phân giải trang bị.",
	"Biểu tượng Binh Pháp Kết Nghĩa có thể kéo vào thanh phím tắt để sử dụng.",
	"Vũ khí từ bậc một trở lên có thể gửi đến Binh Khí Sư để trưởng thành, vũ khí sau khi trưởng thành có lực tấn công cao hơn.",
	"Nhấn phím K để mở giao diện Kỹ Năng và Chuyên Tinh.",
	"Nhấp vào nút “Chuyên Tinh” ở dưới giao diện Kỹ Năng, có thể chuyển sang giao diện Chuyên Tinh.",
	"Sau khi cộng điểm Chuyên Tinh có thể nâng cao hiệu quả sử dụng Kỹ Năng Chiến Đấu, giúp quá trình đánh quái của bạn dễ dàng hơn!",
	"Nhân vật đạt cấp 15 có thể thành lập Kết Nghĩa.",
	"Nhân vật đạt cấp 12 mới có thể gia nhập Kết Nghĩa.",
	"Thành lập Quân Đoàn cần nhân vật đạt cấp 25, chỉ có thủ lĩnh Kết Nghĩa mới có thể tạo Quân Đoàn.",
	"Kỹ Năng Sản Xuất - Thuần Dưỡng dùng để tăng tốc độ di chuyển của tọa kỵ, mỗi loại tọa kỵ ít nhất có thể nâng cấp một lần.",
	"Khi mở nhiều client Xích Bích cùng lúc, thu nhỏ trò chơi đang chạy ở nền có thể nâng cao hiệu suất hoạt động của hệ thống.",
	"Khi Cường Hóa Trang Bị, cần phải đưa vào vật liệu cường hóa tương ứng với phẩm cấp và loại trang bị.",
	"Trang bị đã cường hóa nếu cường hóa lại, thuộc tính cường hóa cũ sẽ bị ghi đè.",
	"Sử dụng Độn Giáp Thiên Thư để xóa Binh Chủng Chính, Binh Chủng Phụ và điểm Chuyên Tinh hiện tại, cấp độ Binh Chủng Chính và Binh Chủng Phụ ban đầu sẽ được giữ nguyên.",
	"Vũ khí sau khi trưởng thành sẽ bị ràng buộc với nhân vật, vũ khí bị ràng buộc sẽ không thể giao dịch!",
	"Thợ Công Kỹ Năng Sư ở thành Trường An cung cấp dịch vụ Khảm Bí Văn và Xóa Bí Văn.",
	"Nếu bạn nhận được một viên Bí Văn Linh Châu, bạn có thể khảm nó vào vũ khí và phòng cụ.",
	"Sử dụng Chu Sa Bút có thể tiến hành Điểm Hóa Bí Văn Linh Châu cấp thấp, sau khi Điểm Hóa thành công sẽ nhận được Bí Văn Linh Châu cấp cao hơn.",
	"Chỉ có vũ khí và phòng cụ từ bậc bốn trở lên mới có thể khảm Bí Văn.",
	"Mỗi vũ khí và phòng cụ từ bậc bốn trở lên thường có thể kích hoạt 3 ô Bí Văn.",
	"Bạn cần phải kích hoạt ô Bí Văn trên trang bị trước, sau đó mới có thể tiến hành Khảm Bí Văn.",
	"Các loại Bí Văn Linh Châu khác nhau có thể khảm vào các vị trí phòng cụ hoặc binh khí khác nhau.",
	"Trong chiến trường, sử dụng kênh chat thường chỉ có người chơi phe mình nhìn thấy.",
	"Biểu tượng Thao Tác Nhanh có thể kéo vào thanh phím tắt để sử dụng.",
	"Nhấn phím N mở giao diện Thao Tác, có thể chỉnh sửa thao tác nhanh của trò chơi.",
	"Nếu cấp độ Binh Chủng Chính của bạn thấp hơn bất kỳ Binh Chủng nào khác, bạn sẽ tiêu hao nhiều điểm kinh nghiệm hơn khi nâng cấp Binh Chủng.",
	"Sau khi chiến trường mở, hãy vào chiến trường trong vòng 2 phút, sau 2 phút hệ thống sẽ tự động hủy hàng chờ của bạn.",
	"Sử dụng Thái Ất Nguyên Phù có thể đảm bảo Bí Văn Linh Châu của bạn sẽ không bị vỡ và biến mất sau khi nâng cấp thất bại.",
	"Nếu đưa Thiên Tử Chiếu Thư cho Quản Lộ ở thành Trường An, có thể cho phép bạn thay đổi phe phái.",
	"Mỗi khi kích hoạt một ô Bí Văn cần tiêu hao một Khai Quang Thạch. Bạn có thể mua từ Thợ Công Học Đồ hoặc có cơ hội nhận được khi tham gia Nhiệm Vụ Thiên Cơ.",
	"Vật phẩm bị khóa bằng Tím Kim Tỏa không thể tiêu hủy, giao dịch, gửi thư hoặc bán.",
	"Hệ thống Chuyên Tinh của Binh Chủng Phụ tối đa có thể nhận được 25 điểm Chuyên Tinh.",
	"Chỉ cần nhấp vào vị trí có thể đến trên bản đồ nhỏ ở góc trên bên phải màn hình, nhân vật sẽ tự động di chuyển đến vị trí đó.",
	"Nhấp chuột trái vào bất kỳ khu vực nào có thể di chuyển trong cảnh, nhân vật sẽ tự động di chuyển đến nơi chuột nhấp.",
	"Nhấp chuột phải vào NPC là có thể đối thoại với NPC.",
	"Công Thành Chiến Quốc Gia bắt đầu vào lúc 20:00 thứ Bảy hàng tuần, kéo dài hai giờ, quốc gia chiếm được Quan Trung là bên chiến thắng cuối cùng.",
	"Chiến Trường Quốc Chiến cần phải đạt cấp Anh Hùng mới có thể tham gia.",
	"Vào lúc 19:30 hàng ngày sẽ bắt đầu cuộc thi Thi Tài Thao Lược (Thi Tài Hùng Biện), người chơi đang online có thể tham gia hoạt động thông qua lời mời tham gia cuộc thi.",
	"Sau khi cuộc thi Thi Tài Thao Lược kết thúc, 20 người chơi đứng đầu bảng xếp hạng cuộc thi có thể nhận được Bằng Chứng Ưu Thắng qua thư.",
	"Dịch vụ Chuyển Đổi Thuộc Tính do Thương Nhân Tạp Hóa cung cấp có thể chuyển thuộc tính Phù Ngọc trên một trang bị sang trang bị khác.",
	"Mỗi lần chuyển đổi thành công thuộc tính phụ thêm trên trang bị sẽ tiêu hao một Gả Y Phù.",
	"Dịch vụ Nâng Cấp Trang Bị có thể dùng để nâng cao phẩm cấp trang bị của bạn, ví dụ như nâng một vũ khí bậc năm thành vũ khí bậc sáu.",
	"Khi Nâng Cấp Trang Bị thường yêu cầu cấp độ Trưởng Thành của trang bị gốc đạt đến một cấp độ nhất định, và cần tiêu hao một số vật liệu.",
	"Sau khi Nâng Cấp Trang Bị, sẽ kế thừa hoàn toàn số ô Bí Văn đã kích hoạt, Bí Văn đã khảm và thuộc tính cường hóa của trang bị gốc.",
	"Cấp độ Binh Chủng Chính đạt đến cấp Thần hoặc cấp Tiên (ví dụ: Thương Thần, Vũ Tiên) mới có thể tu luyện Binh Chủng Phụ.",
	"Trong các cảnh quan loại tuyết, tắt Ánh Sáng Rực Rỡ trong cài đặt hệ thống có thể làm hiệu ứng hình ảnh trở nên dịu nhẹ hơn.",
	"Trang bị ngựa loại Hoàn Nguyên chỉ có thể xóa trang bị ngựa loại tương ứng, ví dụ Hoàn Nguyên Bàn Đạp chỉ có thể xóa trang bị ngựa loại bàn đạp.",
	};


----战场说明文字----
--ID:161
AUI_BATTLEFIELD = {}
AUI_BATTLEFIELD[161] = {
						"Loại hình: Đối kháng, tiêu diệt thủ lĩnh\rĐộ khó:★★★\rCấp độ:58+\rĐối đầu:Quân Khăn Vàng VS Quân Đông Hán\rMục tiêu Quân Khăn Vàng:Đánh bại Hoàng Phủ Tung\rMục tiêu Quân Đông Hán:Đánh bại Trương Giác\rCốt truyện:\r    Lúc bấy giờ là năm Hán Linh Đế Trung Bình nguyên niên (năm 184 Tây lịch), dưới sự kêu gọi của giáo chủ Thái Bình Đạo Trương Giác, tín đồ Thái Bình Đạo đội khăn vàng, chạy đi tuyên bố “Trời xanh đã chết, Trời vàng nên lập. Năm Giáp Tí, thiên hạ đại cát”, phát động cuộc nổi loạn quy mô lớn quét khắp cả nước. Triều đình Đông Hán vô cùng kinh hoàng, bổ nhiệm Hà Tiến làm Đại tướng quân, điều động Bắc quân và binh mã các quận quốc thảo phạt Khăn Vàng.\r    Lực lượng chủ yếu của Quân Khăn Vàng, tập trung chủ yếu ở ba nơi là Ký Châu, Dĩnh Xuyên và Nam Dương. Trong đó, Quân Khăn Vàng ở Dĩnh Xuyên, tạo ra mối đe dọa lớn nhất đối với kinh đô Lạc Dương của nhà Hán.\r    Mùa hè tháng Tư, Hữu Trung Lang Tướng Chu Tuấn dẫn một bộ phận quân đội đến tiền tuyến Dĩnh Xuyên, bị bộ hạ Bột Tài của Khăn Vàng Dĩnh Xuyên đánh lui. Chi quân khác của Tả Trung Lang Tướng Hoàng Phủ Tung thấy Khăn Vàng thế lớn, rút về Trường Xã cố thủ. Khăn Vàng Dĩnh Xuyên đại cử tiến thẳng, thực hiện chiến thuật bao vây, chiến đấu theo đó rơi vào tình trạng giằng co.",
						"Quân Khăn Vàng",
						"Quân Đông Hán",
						"Đánh bại Hoàng Phủ Tung",
						"Đánh bại Trương Giác",
						"Trương Giác bại lui",
						"Hoàng Phủ Tung bại lui",
						}
--ID:210
AUI_BATTLEFIELD[210] = {
						"Loại hình: Hợp tác, phòng ngự tấn công\rĐộ khó:★★\rCấp độ:20+\rĐối đầu:Quân Đông Hán VS Quân Khăn Vàng (NPC)\rMục tiêu:Trong 20 phút bảo vệ Hoàng Phủ Tung không chết\rCốt truyện:\r    Năm 184 Tây lịch, Loạn Khăn Vàng bùng nổ quy mô lớn. Dưới sự tấn công của hàng chục vạn Quân Khăn Vàng, quân đội Đông Hán liên tiếp thất bại. Trên chiến trường Nhữ Nam, Tả Trung Lang Tướng Hoàng Phủ Tung quyết định dẫn quân rút về Trường Xã cố thủ, nhưng trên đường lại bị Quân Khăn Vàng tấn công quy mô lớn. Cần gấp những người trung nghĩa đến giúp Hán quân rút lui thành công.\r    “Vì thắng lợi tương lai, ta phải sống sót trong trận chiến này!”",
						"Quân Đông Hán",
						"Quân Khăn Vàng",
						"Hoàng Phủ Tung sống sót",
						"Không",
						"Hoàng Phủ Tung tử trận",
						"Không",
						}
--ID:211
AUI_BATTLEFIELD[211] = {
						"Loại hình: Hợp tác, tranh giành tài nguyên\rĐộ khó:★★★\rCấp độ:40+\rĐối đầu:Quân Đông Hán VS Quân Khăn Vàng (NPC)\rMục tiêu:Trong 40 phút thu thập thành công 2000 bao lương thảo\rCốt truyện:\r    Năm 184 Tây lịch, Loạn Khăn Vàng càn quét khắp nơi trên cả nước. Do nền nông nghiệp cả nước bị chiến tranh tàn phá nghiêm trọng, cả hai bên đều rơi vào tình cảnh khó khăn thiếu thốn quân lương. Để tranh giành lô quân lương lớn tích trữ ở khu vực Quảng Tông, quan quân bộ hạ Lô Thực và Quân Khăn Vàng đang tiến hành tranh giành quyết liệt. Lúc này, một đội quân Nghĩa Dũng tạm thời được thành lập đã xuất hiện trên chiến trường Quảng Tông.\r    “Cướp tiền, cướp lương, cướp đất đai!”",
						"Quân Đông Hán",
						"Quân Khăn Vàng",
						"",
						"",
						"",
						"",
						}
--ID:221
AUI_BATTLEFIELD[221] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★\rCấp độ:58+\rĐối đầu:Quân Đông Hán VS Quân Khăn Vàng (NPC)\rMục tiêu:Trong 60 phút tiêu diệt thành công chủ tướng Khăn Vàng Trương Lương\rCốt truyện:\r    Năm 184 Tây lịch, Loạn Khăn Vàng tiến vào giai đoạn ác liệt nhất ở miền Trung Nguyên. Để đánh bại “Nhân Công Tướng Quân” Trương Lương, toàn quân Lô Thực phát động tấn công. Nhưng mãnh tướng Chu Thương dưới trướng Trương Lương khiến Hán quân liên tục bị thất bại. Lúc này, một hán tử tự xưng là Quan Trường Sinh ở Giải Lương Hà Đông xuất hiện trên chiến trường.\r    “Ngươi chính là Nhân Công Tướng Quân? Có thể cho ta biết công lý đại nghĩa ở nhân gian là gì không!”",
						"Quân Đông Hán",
						"Quân Khăn Vàng",
						"Đánh bại Trương Lương",
						"Không",
						"Lô Thực bại trận",
						"Không",
						}
--ID:222
AUI_BATTLEFIELD[222] = {
						"Loại hình: Hợp tác, hộ tống\rĐộ khó:★★★★\rCấp độ:50+\rĐối đầu:Quân Lưu Bị VS Quân Lưu Chương (NPC)\rMục tiêu:Trong 50 phút hộ tống Bàng Thống an toàn vượt qua Lạc Phượng Pha, và đánh bại đại tướng địch Trương Nhiệm\rCốt truyện:\r    Kiến An năm thứ mười tám, Lưu Bị để chiếm đoạt đất Ba Thục, tiến quân đến Thành Đô. Các tướng Thục là Trương Nhiệm, Lãnh Bào, Lưu Tuân và những người khác bố trí tuyến phòng thủ vững chắc ở Lạc Thành, ngăn cản Quân Lưu Bị. Để đột phá phòng tuyến Quân Lưu Chương, quân sư Lưu Bị Bàng Thống hiến kế, dẫn binh đi đường tắt Lạc Phượng Pha tập kích kẻ địch. Tuy nhiên, khi Bàng Thống dẫn quân đi qua Lạc Phượng Pha, lại gặp phải phục kích của tướng Thục Trương Nhiệm. Đời danh quân sư “Phượng Sồ”, liệu có ngã xuống ở Lạc Phượng Pha?",
						"Quân Lưu Bị",
						"Quân Lưu Chương",
						"Hộ tống Bàng Thống an toàn vượt qua Lạc Phượng Pha",
						"Không",
						"Bàng Thống bại trận",
						"Không",
						}
--ID:223
AUI_BATTLEFIELD[223] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★\rCấp độ:30+\rĐối đầu:Liên quân Tôn Lưu VS Quân Tào Tháo (NPC)\rMục tiêu:Trong 30 phút đánh bại thủ lĩnh địch Cao Lăng, bảo vệ an toàn cho Tôn Thượng Hương\rCốt truyện:\r    Đại quân Tào Tháo sắp nam chinh, để liên minh với Quân Lưu Bị, Tôn Quyền phái Tôn Thượng Hương đến Kinh Châu hội kiến Lưu Bị. Nhưng, trên đường lại bị thích khách Quân Tào ngăn cản. Lưu Bị phái bộ tướng Triệu Vân đi giải cứu Tôn Thượng Hương bị vây khốn. Tuy nhiên, trên đường Triệu Vân lại gặp một người quen.",
						"Liên quân Tôn Lưu",
						"Quân Tào Tháo",
						"Bảo vệ an toàn cho Tôn Thượng Hương",
						"Không",
						"Tôn Thượng Hương bại trận",
						"Không",
						}
--ID:227
AUI_BATTLEFIELD[227] = {
						"^fffd44Dựa trên kịch bản do Lan Lăng Thiên Tử ở Điện Tín khu 2 – Cổ Kiếm cung cấp.\r^ffffffLoại hình: Hợp tác, hộ tống\rĐộ khó:★★★★\rCấp độ:55+\rĐối đầu:Quân Lã Bố VS Quân Tào Tháo (NPC)\rMục tiêu:Trong 30 phút giải cứu Lã Bố khỏi Bạch Môn Lầu\rCốt truyện:\r    Kiến An năm thứ ba tháng mười hai mùng bảy, Lã Bố thua trận ở Bạch Môn Lầu, bị Tào Tháo hạ lệnh chém đầu. Nhưng Trương Liêu được Tào Tháo chiêu hàng cảm kích ân nghĩa nhiều năm của Lã Bố, bèn xông vào ngục giải cứu Lã Bố và Cao Thuận, Phi Tướng Lã Bố liệu có đột phá vòng vây thành công, xoay chuyển vận mệnh bại vong? Kịch bản hư cấu về khả năng lịch sử, hãy xem Phi Tướng làm thế nào để xoay chuyển tình thế!",
						"Quân Lã Bố",
						"Quân Tào Tháo",
						"Giải cứu Lã Bố thành công",
						"Không",
						"Lã Bố bại trận",
						"Không",
						}
--ID:237
AUI_BATTLEFIELD[237] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★\rCấp độ:1+\rĐối đầu:Quân Đông Hán VS Quân Khăn Vàng (NPC)\rMục tiêu:Trong 120 phút đánh bại thủ lĩnh địch Trương Giác\rCốt truyện:\r    Năm Trung Bình nguyên niên, Loạn Khăn Vàng đang diễn ra sôi nổi. Để dẹp yên chiến loạn, vài nghĩa sĩ vô danh đến đại bản doanh Khăn Vàng ở Cự Lộc hành thích Đại Hiền Lương Sư Trương Giác. Chỉ cần kết thúc sinh mạng của Trương Giác, là có thể chấm dứt Loạn Khăn Vàng kéo dài! Giai thoại ẩn dưới mặt nước lịch sử, liệu bạn có thể trở thành anh hùng đứng sau màn hạ sát Đại Hiền Lương Sư?",
						"Quân Đông Hán",
						"Quân Khăn Vàng",
						"Đánh bại Trương Giác",
						"Không",
						"Không",
						"Không",
						}
--ID:326
AUI_BATTLEFIELD[326] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★\rCấp độ:1+\rĐối đầu:Quân Đông Hán VS Quân Khăn Vàng (NPC)\rMục tiêu:Trong 120 phút đánh bại thủ lĩnh địch Trương Giác\rCốt truyện:\r    Năm Trung Bình nguyên niên, Loạn Khăn Vàng đang diễn ra sôi nổi. Để dẹp yên chiến loạn, vài nghĩa sĩ vô danh đến đại bản doanh Khăn Vàng ở Cự Lộc hành thích Đại Hiền Lương Sư Trương Giác. Chỉ cần kết thúc sinh mạng của Trương Giác, là có thể chấm dứt Loạn Khăn Vàng kéo dài! Giai thoại ẩn dưới mặt nước lịch sử, liệu bạn có thể trở thành anh hùng đứng sau màn hạ sát Đại Hiền Lương Sư?",
						"Quân Đông Hán",
						"Quân Khăn Vàng",
						"Đánh bại Trương Giác",
						"Không",
						"Không",
						"Không",
						}
--ID:252
AUI_BATTLEFIELD[252] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★\rCấp độ:15+\rĐối đầu:Quân Mã Siêu VS Quân Tây Khương (NPC)\rMục tiêu:Trong 40 phút đánh bại Diêm Hành\rCốt truyện:\r    Đầu Kiến An, Trung Nguyên rơi vào đại loạn. Ở vùng Lương Châu xa xôi, thế lực Mã Đằng và thế lực Hàn Toại bề ngoài hòa bình chung sống, nhưng sau lưng lại ngầm đấu đá. Một ngày nọ Mã Siêu biết được Hàn Toại gửi mật thư đến vùng Khương. Để điều tra động thái của Hàn Toại, Mã Siêu cùng em họ Mã Đại, Mã Thiết dẫn một đội dũng sĩ lẻn vào trại Khương, định trộm mật thư của Hàn Toại. Câu chuyện cứ thế mở ra…\r    Để điều tra Hàn Toại và người Khương có câu kết hay không, người chơi theo Mã Siêu vào đại bản doanh quân Khương mật thám, nhưng lại rơi vào ổ phục kích của quân Khương, mọi người trải qua gian khổ đột phá vòng vây, không ngờ lại bị đại tướng quân Hàn Toại là Diêm Hành chặn giết! Đồng thời Khương Vương Mê Đương Đại Vương cũng dẫn chủ lực quân Khương truy kích từ phía sau. Trong tình thế nguy cấp này, Cẩm Mã Siêu liệu có thể đại hiển thần uy?",
						"Quân Mã Siêu",
						"Quân Tây Khương",
						"Đánh bại Diêm Hành",
						"Không",
						"Mã Siêu bại trận",
						"Không",
						}
--ID:327
AUI_BATTLEFIELD[327] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★\rCấp độ:15+\rĐối đầu:Quân Mã Siêu VS Quân Tây Khương (NPC)\rMục tiêu:Trong 40 phút đánh bại Diêm Hành\rCốt truyện:\r    Đầu Kiến An, Trung Nguyên rơi vào đại loạn. Ở vùng Lương Châu xa xôi, thế lực Mã Đằng và thế lực Hàn Toại bề ngoài hòa bình chung sống, nhưng sau lưng lại ngầm đấu đá. Một ngày nọ Mã Siêu biết được Hàn Toại gửi mật thư đến vùng Khương. Để điều tra động thái của Hàn Toại, Mã Siêu cùng em họ Mã Đại, Mã Thiết dẫn một đội dũng sĩ lẻn vào trại Khương, định trộm mật thư của Hàn Toại. Câu chuyện cứ thế mở ra…\r    Để điều tra Hàn Toại và người Khương có câu kết hay không, người chơi theo Mã Siêu vào đại bản doanh quân Khương mật thám, nhưng lại rơi vào ổ phục kích của quân Khương, mọi người trải qua gian khổ đột phá vòng vây, không ngờ lại bị đại tướng quân Hàn Toại là Diêm Hành chặn giết! Đồng thời Khương Vương Mê Đương Đại Vương cũng dẫn chủ lực quân Khương truy kích từ phía sau. Trong tình thế nguy cấp này, Cẩm Mã Siêu liệu có thể đại hiển thần uy?",
						"Quân Mã Siêu",
						"Quân Tây Khương",
						"Đánh bại Diêm Hành",
						"Không",
						"Mã Siêu bại trận",
						"Không",
						}
--ID:254
AUI_BATTLEFIELD[254] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★★\rCấp độ:60+\rĐối đầu:Liên Quân VS Quân Đổng Trác (NPC)\rMục tiêu:Trong 120 phút đánh bại Đổng Trác\rCốt truyện:\r    Sơ Bình nguyên niên (năm 189 Tây lịch), Đổng Trác chuyên quyền, lừa vua hại dân. Tào Tháo tự Trần Lưu khởi binh, triệu tập mười tám trấn chư hầu, đề cử Thái thú Bột Hải Viên Thiệu làm minh chủ, phát lời kêu gọi (giả chiếu) khắp thiên hạ, thống lĩnh hàng chục vạn hùng binh, tiến về Lạc Dương. Và chắn trước mặt mười tám trấn chư hầu là hai cửa ải Tị Thủy và Hổ Lao.\r    Cửa ải Tị Thủy do Thượng tướng thứ nhất dưới trướng Đổng Trác là Hoa Hùng trấn giữ, một người giữ ải, vạn người khó qua. Đổng Trác thì đích thân dẫn hai mươi vạn đại quân đóng ở cửa ải Hổ Lao được mệnh danh là “Then khóa Trung Thiên, yết hầu Tam Tần”, lệnh cho nghĩa tử Ôn Hầu Lã Bố đóng trại trước cửa ải, hổ thị (trông chừng) đợi Liên quân chư hầu đến. Ôn Hầu Lã Bố võ nghệ vô song như hổ đói mài sắc móng vuốt, chuẩn bị giẫm đạp lên tôn nghiêm và tự tin của võ tướng thiên hạ. Và trong Liên quân, có ba hạ tướng vô danh ít ai biết đến, sắp tỏa sáng rực rỡ trước nghìn quân vạn mã…",
						"Liên Quân",
						"Quân Đổng Trác",
						"Đánh bại Đổng Trác",
						"Không",
						"Không",
						"Không",
						}
--ID:328
AUI_BATTLEFIELD[328] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★★\rCấp độ:60+\rĐối đầu:Liên Quân VS Quân Đổng Trác (NPC)\rMục tiêu:Trong 120 phút đánh bại Đổng Trác\rCốt truyện:\r    Sơ Bình nguyên niên (năm 189 Tây lịch), Đổng Trác chuyên quyền, lừa vua hại dân. Tào Tháo tự Trần Lưu khởi binh, triệu tập mười tám trấn chư hầu, đề cử Thái thú Bột Hải Viên Thiệu làm minh chủ, phát lời kêu gọi (giả chiếu) khắp thiên hạ, thống lĩnh hàng chục vạn hùng binh, tiến về Lạc Dương. Và chắn trước mặt mười tám trấn chư hầu là hai cửa ải Tị Thủy và Hổ Lao.\r    Cửa ải Tị Thủy do Thượng tướng thứ nhất dưới trướng Đổng Trác là Hoa Hùng trấn giữ, một người giữ ải, vạn người khó qua. Đổng Trác thì đích thân dẫn hai mươi vạn đại quân đóng ở cửa ải Hổ Lao được mệnh danh là “Then khóa Trung Thiên, yết hầu Tam Tần”, lệnh cho nghĩa tử Ôn Hầu Lã Bố đóng trại trước cửa ải, hổ thị (trông chừng) đợi Liên quân chư hầu đến. Ôn Hầu Lã Bố võ nghệ vô song như hổ đói mài sắc móng vuốt, chuẩn bị giẫm đạp lên tôn nghiêm và tự tin của võ tướng thiên hạ. Và trong Liên quân, có ba hạ tướng vô danh ít ai biết đến, sắp tỏa sáng rực rỡ trước nghìn quân vạn mã…",
						"Liên Quân",
						"Quân Đổng Trác",
						"Đánh bại Đổng Trác",
						"Không",
						"Không",
						"Không",
						}
--ID:253 Tào Tháo Truyện
AUI_BATTLEFIELD[253] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★\rCấp độ:58+\rĐối đầu:Quân Tào Tháo VS Quân đội không rõ (NPC)\rMục tiêu:Trong 40 phút đánh bại Xác Sống Lương Hiếu Vương\rCốt truyện:\r    Thiên hạ chia ba, chiến sự liên miên, quân phí eo hẹp, Tào Tháo bèn lập chức Mạc Kim Hiệu Úy, chiêu mộ rộng rãi những người giỏi trộm mộ trong thiên hạ, ý muốn trộm lăng mộ các đời vua trước để bổ sung quân nhu. Trận đầu tiên do Tào Tháo đích thân dẫn Mạc Kim Hiệu Úy trộm Lăng mộ Lương Hiếu Vương. Quỷ trước chặn đường, quỷ sau kêu khóc, cơ quan khắp nơi, Mê Thành trộm mộ.\r    “Người thắp nến, quỷ thổi đèn”. Cơ quan khắp nơi, nhánh phụ trùng trùng, mỗi một lựa chọn đều có thể kích hoạt hiểm cảnh mới, mỗi một bất ngờ đều có thể kết thúc sinh mạng của mạo hiểm giả.",
						"Quân Tào Tháo",
						"Quân đội không rõ",
						"Đánh bại Xác Sống Lương Hiếu Vương",
						"Không",
						"Nến tắt",
						"Không",
						}
--ID:255 Lưu Bị Truyện
AUI_BATTLEFIELD[255] = {
						"^fffd44Dựa trên kịch bản do Tiêu Nguyệt Gia La ở Điện Tín khu 1 – Đông Phong cung cấp.\r^ffffffLoại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★\rCấp độ:58+\rĐối đầu:Quân Lưu Bị VS Quân Tào Tháo (NPC)\rMục tiêu:Trong 40 phút đánh bại Tào Tháo\rCốt truyện:\r    Sau trận Tân Dã, Lưu Bị bại chạy, Tào Tháo thừa thắng truy kích. Thấy đại quân Tào Tháo hùng mạnh sắp áp sát, để bảo toàn Lưu Bị và đoàn tùy tùng thoát khỏi kiếp nạn này, cần không chỉ là lòng dũng cảm phi thường và võ công ngạo thế, mà còn cần trí tuệ, mưu lược hơn người.\r    Chuyến đi của Lưu Bị đầy gian nan hiểm trở, Hạ Hầu Ân, Tào Hồng lần lượt xuất hiện, tuy nhiên, đây không phải là kẻ thù đáng sợ nhất, bởi vì, bạn sẽ trực tiếp đối mặt với枭雄 (kiêu hùng) Tam Quốc – Tào Tháo!\r    Đối mặt với nghìn quân vạn mã, Huyền Đức liệu có thể toàn thân rút lui? Quan Vũ, Trương Phi sẽ kề vai chiến đấu cùng bạn, Gia Cát Khổng Minh là quân sư sau màn của bạn. Bây giờ hãy nếm trải cảm giác thoải mái khi một mình địch lại trăm người, giữa vạn mã thiên quân, bạn chính là bóng dáng vĩ đại xông ra một con đường máu!",
						"Quân Lưu Bị",
						"Quân Tào Tháo",
						"Đánh bại Tào Tháo",
						"Không",
						"Lưu Bị bại trận",
						"Không",
						}
--ID:256 Trận Bộc Dương (Điểm tích lũy)
AUI_BATTLEFIELD[256] = {
						"Loại hình: Đối kháng, giành điểm tích lũy\rĐộ khó:★★★★\rCấp độ:60 - 80\rĐối đầu:Quân Tào Tháo VS Quân Lã Bố\rMục tiêu:Đạt mục tiêu điểm tích lũy trước\rCốt truyện:\r    Hưng Bình nguyên niên (năm 194 Tây lịch), Thứ sử Duyện Châu Tào Tháo giương cao cờ trắng báo thù cho cha, phát binh thảo phạt Thứ sử Từ Châu Đào Khiêm. Ngay khi Tào quân đang thắng lợi liên tiếp ở Từ Châu, căn cứ địa Duyện Châu của Tào Tháo đột nhiên xảy ra biến cố lớn. Bộ hạ của Tào Tháo là Trương Mạo, Trần Cung dẫn quân phiêu bạt của Lã Bố vào Duyện Châu, giương cao cờ phản! Hổ lang chi sư (quân sư tử, sói) của Chiến Thần Lã Bố nhanh chóng càn quét khắp đất Duyện Châu, Tào Tháo nghe tin lập tức giảng hòa với Quân Lưu Bị ở Từ Châu, rút quân về Duyện Châu,展開 (triển khai) cuộc chiến khốc liệt kéo dài hơn một năm với Quân Lã Bố ở Bộc Dương.",
						"Quân Tào Tháo",
						"Quân Lã Bố",
						"",
						"",
						"",
						"",
						}
--ID:266 Điển Vi Truyện
AUI_BATTLEFIELD[266] = {
						"^fffd44Dựa trên kịch bản do Phi Thiên Trư Hiệp ở Điện Tín khu 2 – Phong Vân cung cấp.\r^ffffffLoại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★\rCấp độ:65+\rĐối đầu:Quân Tào Tháo VS Quân Trương Tú\rMục tiêu:Trong 40 phút đánh bại Trương Tú\rCốt truyện:\r    Kiến An năm thứ hai (năm 197 Tây lịch), Tào Tháo nam chinh Uyển Thành Trương Tú, Trương Tú dẫn chúng đầu hàng dưới trướng Tào Tháo. Nhưng Tào Tháo tham sắc đẹp của Trâu Thị, vợ Trương Tế, lệnh Điển Vi bảo vệ, ngày ngày cùng Trâu Thị vui vẻ. Trương Tú vì thế mà nổi giận, bèn cùng Giả Hủ mưu giết Tào.\r    Mãnh tướng cái thế được mệnh danh là “Ác Lai thời cổ” Điển Vi, sắp nghênh đón khoảnh khắc vận mệnh bi tráng nhất!",
						 "Quân Tào Tháo",
						"Quân Trương Tú",
						"Đánh bại Trương Tú",
						"Không",
						"Tào Tháo bại trận",
						"Không",
						}
--ID:268 Trận chiến rút lui Kinh Tương
AUI_BATTLEFIELD[268] = {
						"Loại hình: Hợp tác, hộ tống\rĐộ khó:★★★★★★\rCấp độ:50+\rĐối đầu:Quân Lưu Bị VS Quân Tào Tháo\rMục tiêu:Hợp tác hộ tống, bảo vệ Lưu Bị và bách tính chạy nạn đến đích\rCốt truyện:\r    Kiến An năm thứ mười ba (năm 208 Tây lịch) tháng Bảy, Tào Tháo điều động năm mươi vạn đại quân, bắt đầu nam chinh quy mô lớn vào Kinh Châu. Thứ sử Kinh Châu Lưu Biểu lệnh khách tướng Lưu Bị dẫn quân rút khỏi Tân Dã về Phàn Thành, chuẩn bị liên hợp phát động nghênh kích. Ngay tại thời khắc cận chiến này, Lưu Biểu đột nhiên bệnh nặng qua đời, nội bộ Kinh Châu lập tức rơi vào cục diện hỗn loạn tranh chấp giữa hai công tử Lưu Tông, Lưu Kỳ. Sái Mạo, Trương Doãn, Khoái Việt và các trọng thần Kinh Châu khác tôn Lưu Tông làm Thứ sử, đầu hàng Tào Tháo. Quân Lưu Bị đóng ở Phàn Thành rơi vào tử địa bị địch đánh cả trước lẫn sau.\r    Lúc bấy giờ là tháng Chín Kiến An năm thứ mười ba, Quân Lưu Bị bảo vệ hàng chục vạn bách tính Kinh Châu tự nguyện đi theo, bắt đầu trận chiến rút lui Kinh Tương bi tráng nhất trong lịch sử Tam Quốc.",
						"Quân Lưu Bị",
						"Quân Tào Tháo",
						"Bảo vệ Lưu Bị và bách tính, đánh lui Tào quân",
						"Không",
						"Lưu Bị bại trận hoặc bách tính chết hết",
						"Không",
						}
--ID:241 Quốc chiến (Điểm tích lũy)
AUI_BATTLEFIELD[241] = {
						"",
						"Bên tấn công",
						"Bên phòng thủ",
						"",
						"",
						"",
						"",
						}
--ID:267 Định Quân Sơn
AUI_BATTLEFIELD[267] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★\rCấp độ:70+\rĐối đầu:Quân Lưu Bị VS Quân Tào Tháo\rMục tiêu:Đánh bại Hạ Hầu Uyên, đoạt Định Quân Sơn\rCốt truyện:\r    Kiến An năm thứ hai mươi tư (năm 219 Tây lịch), cuộc chiến kéo dài hơn một năm giữa Quân Lưu Bị và Quân Tào Tháo ở Hán Trung.\r    Tháng Giêng, Quân Lưu Bị vượt qua sông Hán Thủy từ trước cửa Dương Bình Quan, đóng trại trước Định Quân Sơn. Chủ soái Tào quân Hạ Hầu Uyên cũng dẫn binh đóng trại tại đây,展開 (triển khai) cuộc chiến tranh giành quyết liệt với Quân Lưu Bị. Một bên là lão tướng Hoàng Trung nằm trong Ngũ Hổ Thượng Tướng và quân sư Pháp Chính không kém Gia Cát Lượng, một bên là Túc Tướng Hạ Hầu Uyên một mình đảm đương mọi việc của Tào quân và danh tướng Trương Hợp xuất thân từ Hà Bắc. Tuy nhiên, đằng sau cuộc chiến công phòng Định Quân Sơn ác liệt này, lại ẩn giấu bí mật không ai biết đến…",
						"Quân Lưu Bị",
						"Quân Tào Tháo",
						"Đánh bại Hạ Hầu Uyên, đoạt Định Quân Sơn",
						"Không",
						"Hoàng Trung bại lui",
						"Không",
						}
--ID:275 Triệu Vân Truyện
AUI_BATTLEFIELD[275] = {
						"^fffd44Dựa trên kịch bản do Bắc Uyển Quan Tuyết ở Điện Tín khu 1 – Bắc Đẩu cung cấp.\r^ffffffLoại hình: Hợp tác, hộ tống\rĐộ khó:★★★★\rCấp độ:55+\rĐối đầu:Quân Lưu Bị VS Quân Tào Tháo\rMục tiêu:Yểm trợ Triệu Vân vượt qua cầu Trường Bản\rCốt truyện:\r    Kiến An năm thứ mười ba (năm 208 Tây lịch), Tào Tháo dẫn năm mươi vạn đại quân nam chinh Kinh Châu, Thứ sử Kinh Châu Lưu Biểu đột nhiên bệnh nặng qua đời, trọng thần Kinh Châu Sái Mạo, Trương Doãn phụng con trai Lưu Biểu là Lưu Tông đầu hàng Tào Tháo. Quân Lưu Bị đóng ở Phàn Thành bảo vệ hàng chục vạn bách tính rút về phía nam. Nhưng, ở Đương Dương Trường Bản, Quân Lưu Bị và bách tính bị chủ lực Tào quân đuổi kịp, tan tác gần hết. Để tìm lại chủ mẫu Mi phu nhân và tiểu chủ nhân A Đẩu, Triệu Vân bảy lần vào bảy lần ra chạy đi chạy về giữa trận địa hàng chục vạn Tào quân, để lại một đoạn truyền kỳ ngàn năm được người đời ca tụng.",
						"Quân Lưu Bị",
						"Quân Tào Tháo",
						"Triệu Vân cứu chủ vượt qua cầu Trường Bản",
						"Không",
						"Triệu Vân bại trận",
						"Không",
						}
--ID:265 Tôn Quyền Truyện
AUI_BATTLEFIELD[265] = {
						"^fffd44Dựa trên kịch bản do ╄Hồ Đồ╄ Dĩnh ở Điện Tín khu 1 – Thiên Hạ cung cấp.\r^ffffffLoại hình: Thu thập tài nguyên\rĐộ khó:★★★\rCấp độ:58+\rĐối đầu:Quân Tôn Quyền VS Quân Sơn Trại\rMục tiêu:Giúp Tôn Quyền thu thập vật liệu cần thiết để chế tạo Hồ Lô Sắt\rCốt truyện:\r    Kiến An năm thứ mười ba, mười ba vạn Tào quân phất cờ nam hạ, ý đồ thống nhất nam bắc. Để cầu toàn vẹn, Ngô Thục liên minh chống Tào; danh là đồng minh, thực chất mỗi người một bụng. Cả hai bên đều biết rõ, bá chủ thiên hạ chỉ có thể là một người. Chuyện tranh giành quyền lực, cần phải thấy binh đao; binh đao tương kiến, một là tiên phát chế nhân, hai là tri kỷ tri bỉ. Khổng Minh ý đồ mượn chuyện chế tạo Hồ Lô để thăm dò thực hư Đông Ngô. Quyền biết rõ là kế, nhưng cũng muốn mượn sự khó khăn của việc đúc tạo để chỉ trích, nhờ đó chấn nhiếp dã tâm Tây Thục. Nhưng sự việc đã qua hơn nửa tháng, việc đúc tạo vẫn chưa có tiến triển. Ngay lúc đang khổ não, có ba thợ giày tồi đến…",
						"Quân Tôn Quyền",
						"Quân Sơn Trại",
						"Không",
						"Không",
						"Không",
						"Không",
						}
--ID:279 Đấu trường 12 người (Điểm tích lũy)
AUI_BATTLEFIELD[279] = {
						"Loại hình: Cướp cờ\rCấp độ:Không giới hạn\rSố người:12 (Giới hạn người xem là 100)\rMục tiêu:Cướp lấy đại kỳ đấu trường",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						}
--ID:280 Đấu trường 1 người (Điểm tích lũy)
AUI_BATTLEFIELD[280] = {
						"Loại hình: Cướp cờ\rCấp độ:\rSố người:\rMục tiêu:",
						"Đội Đỏ",
						"Đội Xanh",
						"Không",
						"Không",
						"Không",
						"Không",
						}
--ID:281 Tưởng Cán Trộm Sách (Điểm tích lũy)
AUI_BATTLEFIELD[281] = {
						"^fffd44Dựa trên kịch bản do Long Tộc ￠ Danh Tửu ở Điện Tín khu 2 – Bá Vương cung cấp.\r^ffffffLoại hình: Khác\rĐộ khó:★★★\rCấp độ:45+\rĐối đầu:Quân Tào Tháo VS Quân Tôn Quyền\rSố người:1-4 người / 4 người\rMục tiêu:Đoạt lấy mật văn cơ mật\rCốt truyện:\r    Lúc bấy giờ là mùa đông Kiến An năm thứ mười ba, đại quân Tào Tháo và quân Đại Đô Đốc Chu Du của Đông Ngô đối đầu ở Xích Bích, rơi vào thế giằng co. Mưu sĩ Tào quân Tưởng Cán hiến kế đến thuyết phục Chu Du đầu hàng. Nhưng việc khuyên hàng bị Chu Du từ chối, Tưởng Cán lo lắng tay trắng trở về, bèn quyết định trộm mật văn cơ mật của Ngô quân quay về dâng công. Một cuộc chiến ngầm đánh cắp bí mật kinh tâm động phách, cứ thế mở ra.",
						"Quân Tào Tháo",
						"Quân Tôn Quyền",
						"Bảo vệ Tưởng Cán trộm mật văn và quay về đại doanh Ô Lâm",
						"Không",
						"Trong ba mươi phút không trộm được mật văn",
						"Không",
						}
--ID:332 Tưởng Cán Trộm Sách (Điểm tích lũy)
AUI_BATTLEFIELD[332] = {
						"^fffd44Dựa trên kịch bản do Long Tộc ￠ Danh Tửu ở Điện Tín khu 2 – Bá Vương cung cấp.\r^ffffffLoại hình: Khác\rĐộ khó:★★★\rCấp độ:45+\rĐối đầu:Quân Tào Tháo VS Quân Tôn Quyền\rSố người:1-4 người / 4 người\rMục tiêu:Đoạt lấy mật văn cơ mật\rCốt truyện:\r    Lúc bấy giờ là mùa đông Kiến An năm thứ mười ba, đại quân Tào Tháo và quân Đại Đô Đốc Chu Du của Đông Ngô đối đầu ở Xích Bích, rơi vào thế giằng co. Mưu sĩ Tào quân Tưởng Cán hiến kế đến thuyết phục Chu Du đầu hàng. Nhưng việc khuyên hàng bị Chu Du từ chối, Tưởng Cán lo lắng tay trắng trở về, bèn quyết định trộm mật văn cơ mật của Ngô quân quay về dâng công. Một cuộc chiến ngầm đánh cắp bí mật kinh tâm động phách, cứ thế mở ra.",
						"Quân Tào Tháo",
						"Quân Tôn Quyền",
						"Bảo vệ Tưởng Cán trộm mật văn và quay về đại doanh Ô Lâm",
						"Không",
						"Trong ba mươi phút không trộm được mật văn",
						"Không",
						}
--ID:277 Trận Hợp Phì
AUI_BATTLEFIELD[277] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:60+\rĐối đầu:Quân Tào Tháo VS Quân Tôn Quyền\rMục tiêu:Đánh bại Tôn Quyền, giữ vững thành Hợp Phì\rCốt truyện:\r    Tháng 11 năm 208, Tào Tháo sau đại bại ở Xích Bích đóng quân ở phía bắc Kinh Châu, Tôn Quyền đích thân dẫn binh tấn công Hợp Phì, nhưng mắc kế quân viện binh giả của Tào quân, đốt trại rút lui. Trận Hợp Phì lần thứ nhất kết thúc với thất bại của Quân Tôn Quyền. Đến năm 214, Tào Tháo nam chinh Tôn Quyền không thành, trước khi rút quân để lại Trương Liêu, Lý Điển, Nhạc Tiến và hơn bảy nghìn người phòng thủ Hợp Phì. Đến năm sau, khi Tào Tháo xuất chinh Trương Lỗ, phái Hộ Quân Tiết Tễ gửi thư đến Hợp Phì, viết “Giặc đến thì mở ra”. Lúc này, Tôn Quyền và Lưu Bị tranh chấp Kinh Châu lấy điều kiện chia đôi Kinh Châu, hai quân rút lui. Tôn Quyền thấy chủ lực Tào quân ở Hán Trung, bèn vào tháng Tám dẫn mười vạn người bắc tiến đến Lục Khẩu, lại lần nữa xuất chinh Hợp Phì.",
						"Quân Tào Tháo",
						"Quân Tôn Quyền",
						"Đánh bại Tôn Quyền, giữ vững thành Hợp Phì",
						"Không",
						"Trương Liêu bại lui",
						"Không",
						}
--ID:278 Trận Công Phá Ích Châu
AUI_BATTLEFIELD[278] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★\rCấp độ:25+\rĐối đầu:Quân Lưu Bị VS Quân Lưu Chương\rMục tiêu:Đánh bại Lưu Chương, đoạt Ích Châu\rCốt truyện:\r    Sau trận Xích Bích, Lưu Bị theo phương lược Tây thủ Ích Châu trong 《Long Trung Đối》, nhân cơ hội Lưu Chương mời ông vào Thục cùng đánh Trương Lỗ, vào Kiến An năm thứ mười sáu tiến về Ích Châu. Trong quá trình thảo phạt Trương Lỗ, Lưu Bị vốn đã suy tính sâu xa thiết kế chọc giận bộ chúng, dụ giết các tướng Xuyên là Dương Hoài, Cao Bái, sáp nhập binh lực của họ, chiếm giữ thành Phù Huyện. Lưu Chương nổi giận, bèn phản công Lưu Bị, nhưng liên tục bại trận, lại từ chối đầu hàng. Năm thứ mười chín, Gia Cát Lượng để Quan Vũ trấn thủ Kinh Châu, cùng Trương Phi, Triệu Vân dẫn quân ngược sông vào Thục, chi viện Lưu Bị. Khắc phục Ba Đông đến Giang Châu, bắt Thái thú Ba Quận Nghiêm Nhan. Sau đó binh chia làm hai đường hội quân với Quân Lưu Bị, bao vây Thành Đô.",
						"Quân Lưu Bị",
						"Quân Lưu Chương",
						"Đánh bại Lưu Chương, đoạt Ích Châu",
						"Không",
						"Lưu Bị bại lui",
						"Không",
						}
--ID:291 Di Tích Hiên Viên
AUI_BATTLEFIELD[291] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:75+\rĐối đầu:Đội Thám Hiểm VS Quân đội không rõ\rMục tiêu:Khám phá bí ẩn của Di Tích Hiên Viên\rCốt truyện:\r    Năm Hồng Hoang thượng cổ, Xi Vưu tàn bạo vô đạo, thôn tính chư hầu, dẫn đến chiến loạn không ngừng trong thiên hạ, sinh linh đồ thán. Viêm Hoàng nhị đế, lập nên bộ tộc hùng mạnh nhất lưu vực sông Hoàng Hà: bộ tộc Hoa Hạ, để đối kháng với bộ lạc Cửu Lê của Xi Vưu. Xi Vưu được Hình Thiên, Khoa Phụ, Hỏa Thần Khang Hồi và Phong Bá Vũ Sư giúp đỡ, liên tiếp đánh bại Hoàng Đế bảy mươi hai trận, bộ tộc Hoa Hạ lâm nguy! Tuy nhiên, trong trận chiến quyết định thắng lợi cuối cùng—Trận Trác Lộc, con gái của Bắc Cực Tử Vi Thái Hoàng Đại Đế——thủy tổ cương thi Nữ Bạt, và Thiên niên thượng cổ long——Ứng Long hạ phàm giúp Hiên Viên Hoàng Đế một trận đánh tan bộ lạc Cửu Lê. Ứng Long càng lập công đầu trong trận chiến này khi誅殺 (tru sát) Xi Vưu và Khoa Phụ!\r    Thời gian trôi qua mấy ngàn năm sau, một số khí tức quỷ dị bắt đầu rục rịch trong Di Tích Hiên Viên – Chiến trường Trác Lộc…",
						"Đội Thám Hiểm",
						"Quân đội không rõ",
						"Khám phá bí ẩn của Di Tích Hiên Viên",
						"Không",
						"Không",
						"Không",
						}
--ID:330 Di Tích Hiên Viên
AUI_BATTLEFIELD[330] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:75+\rĐối đầu:Đội Thám Hiểm VS Quân đội không rõ\rMục tiêu:Khám phá bí ẩn của Di Tích Hiên Viên\rCốt truyện:\r    Năm Hồng Hoang thượng cổ, Xi Vưu tàn bạo vô đạo, thôn tính chư hầu, dẫn đến chiến loạn không ngừng trong thiên hạ, sinh linh đồ thán. Viêm Hoàng nhị đế, lập nên bộ tộc hùng mạnh nhất lưu vực sông Hoàng Hà: bộ tộc Hoa Hạ, để đối kháng với bộ lạc Cửu Lê của Xi Vưu. Xi Vưu được Hình Thiên, Khoa Phụ, Hỏa Thần Khang Hồi và Phong Bá Vũ Sư giúp đỡ, liên tiếp đánh bại Hoàng Đế bảy mươi hai trận, bộ tộc Hoa Hạ lâm nguy! Tuy nhiên, trong trận chiến quyết định thắng lợi cuối cùng—Trận Trác Lộc, con gái của Bắc Cực Tử Vi Thái Hoàng Đại Đế——thủy tổ cương thi Nữ Bạt, và Thiên niên thượng cổ long——Ứng Long hạ phàm giúp Hiên Viên Hoàng Đế một trận đánh tan bộ lạc Cửu Lê. Ứng Long càng lập công đầu trong trận chiến này khi tru sát Xi Vưu và Khoa Phụ!\r    Thời gian trôi qua mấy ngàn năm sau, một số khí tức quỷ dị bắt đầu rục rịch trong Di Tích Hiên Viên – Chiến trường Trác Lộc…",
						"Đội Thám Hiểm",
						"Quân đội không rõ",
						"Khám phá bí ẩn của Di Tích Hiên Viên",
						"Không",
						"Không",
						"Không",
						}
--ID:294 Ma Vực Hạng Vương
AUI_BATTLEFIELD[294] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:65+\rĐối đầu:Đội Thám Hiểm VS Quân đội Ma Vương\rMục tiêu:Khám phá bí mật của Ma Vực Hạng Vương\rCốt truyện:\r    Năm 203 trước Công nguyên, cuộc chiến Sở Hán kết thúc với chiến thắng toàn diện của Lưu Bang. Đời Bá Vương Hạng Vũ, tự vẫn ở Ô Giang, để lại tiếng thở dài tiếc nuối cho hậu thế. Tương truyền, sau khi Hạng Vũ chết, hồn phách của ông bị giam cầm ở vùng tuyết cực bắc. Ở đó, một Ma Thành cao lớn đáng sợ đột nhiên mọc lên trong một đêm, mấy trăm năm sau đó, nó cô đơn và thê lương đứng sừng sững giữa tuyết, kể về sự bất lực và bi ai. Gần đây, liên tiếp xuất hiện nhiều chuyện kỳ quái gần Ma Thành, hồn ma xuất hiện, người qua đường mất tích, gia súc chết thảm, và tình hình ngày càng nghiêm trọng. Người ta buộc phải tập trung ánh mắt nghi ngờ và thù hận vào bên trong Ma Thành, đoán rằng đó là nguồn gốc của mọi bất hạnh.",
						"Đội Thám Hiểm",
						"Quân đội Ma Vương",
						"Khám phá bí mật của Ma Vực Hạng Vương",
						"Không",
						"Không",
						"Không",
						}
--ID:331 Ma Vực Hạng Vương
AUI_BATTLEFIELD[331] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:65+\rĐối đầu:Đội Thám Hiểm VS Quân đội Ma Vương\rMục tiêu:Khám phá bí mật của Ma Vực Hạng Vương\rCốt truyện:\r    Năm 203 trước Công nguyên, cuộc chiến Sở Hán kết thúc với chiến thắng toàn diện của Lưu Bang. Đời Bá Vương Hạng Vũ, tự vẫn ở Ô Giang, để lại tiếng thở dài tiếc nuối cho hậu thế. Tương truyền, sau khi Hạng Vũ chết, hồn phách của ông bị giam cầm ở vùng tuyết cực bắc. Ở đó, một Ma Thành cao lớn đáng sợ đột nhiên mọc lên trong một đêm, mấy trăm năm sau đó, nó cô đơn và thê lương đứng sừng sững giữa tuyết, kể về sự bất lực và bi ai. Gần đây, liên tiếp xuất hiện nhiều chuyện kỳ quái gần Ma Thành, hồn ma xuất hiện, người qua đường mất tích, gia súc chết thảm, và tình hình ngày càng nghiêm trọng. Người ta buộc phải tập trung ánh mắt nghi ngờ và thù hận vào bên trong Ma Thành, đoán rằng đó là nguồn gốc của mọi bất hạnh.",
						"Đội Thám Hiểm",
						"Quân đội Ma Vương",
						"Khám phá bí mật của Ma Vực Hạng Vương",
						"Không",
						"Không",
						"Không",
						}
--ID:293 Cổ Điện Lâu Lan
AUI_BATTLEFIELD[293] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★★★\rCấp độ:76+\rĐối đầu:Đội Thám Hiểm VS Liên quân Hung Nô\rMục tiêu:Phá hủy âm mưu tà ác của Cổ Điện Lâu Lan\rCốt truyện:\r    Một trong ba mươi sáu nước Tây Vực – Lâu Lan, án ngữ yết hầu Con Đường Tơ Lụa, có quan hệ thương mại và mật thiết với nhà Hán. Nhưng nước này giáp với Hung Nô, bị họ kiềm chế, ý kiến chính trị trong nước dần chia làm hai phe, một phe chủ trương tiếp tục thân Hán, một phe kiến nghị phụ thuộc Hung Nô. Sau nhiều năm tranh giành, phe thân Hán có phần chiếm ưu thế. Để thực hiện mục đích xâm chiếm Trung Nguyên, Hung Nô lên kế hoạch lấy Lâu Lan làm cứ điểm tiền tuyến của mình, thậm chí không tiếc dùng thủ đoạn đê hèn, bắt cóc vương công quý tộc Lâu Lan, kích động binh lính phản loạn, và câu kết với phản quân chiếm giữ Cổ Điện thánh địa Lâu Lan, nghiên cứu và khai thác sức mạnh cổ xưa thần bí bên trong, dưỡng tinh súc nhuệ, ý đồ Trung Nguyên.",
						"Đội Thám Hiểm",
						"Liên quân Hung Nô",
						"Phá hủy âm mưu tà ác của Cổ Điện Lâu Lan",
						"Không",
						"Không",
						"Không",
						}
--ID:329 Cổ Điện Lâu Lan
AUI_BATTLEFIELD[329] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★★★\rCấp độ:76+\rĐối đầu:Đội Thám Hiểm VS Liên quân Hung Nô\rMục tiêu:Phá hủy âm mưu tà ác của Cổ Điện Lâu Lan\rCốt truyện:\r    Một trong ba mươi sáu nước Tây Vực – Lâu Lan, án ngữ yết hầu Con Đường Tơ Lụa, có quan hệ thương mại và mật thiết với nhà Hán. Nhưng nước này giáp với Hung Nô, bị họ kiềm chế, ý kiến chính trị trong nước dần chia làm hai phe, một phe chủ trương tiếp tục thân Hán, một phe kiến nghị phụ thuộc Hung Nô. Sau nhiều năm tranh giành, phe thân Hán có phần chiếm ưu thế. Để thực hiện mục đích xâm chiếm Trung Nguyên, Hung Nô lên kế hoạch lấy Lâu Lan làm cứ điểm tiền tuyến của mình, thậm chí không tiếc dùng thủ đoạn đê hèn, bắt cóc vương công quý tộc Lâu Lan, kích động binh lính phản loạn, và câu kết với phản quân chiếm giữ Cổ Điện thánh địa Lâu Lan, nghiên cứu và khai thác sức mạnh cổ xưa thần bí bên trong, dưỡng tinh súc nhuệ, ý đồ Trung Nguyên.",
						"Đội Thám Hiểm",
						"Liên quân Hung Nô",
						"Phá hủy âm mưu tà ác của Cổ Điện Lâu Lan",
						"Không",
						"Không",
						"Không",
						}
--ID:297 Tưởng Cán Trộm Sách cấp 60
AUI_BATTLEFIELD[297] = {
						"^fffd44Dựa trên kịch bản do Long Tộc ￠ Danh Tửu ở Điện Tín khu 2 – Bá Vương cung cấp.\r^ffffffLoại hình: Khác\rĐộ khó:★★★★★★\rCấp độ:60+\rĐối đầu:Quân Tào Tháo VS Quân Tôn Quyền\rMục tiêu:Đoạt lấy mật văn cơ mật\rCốt truyện:\r    Lúc bấy giờ là mùa đông Kiến An năm thứ mười ba, đại quân Tào Tháo và quân Đại Đô Đốc Chu Du của Đông Ngô đối đầu ở Xích Bích, rơi vào thế giằng co. Mưu sĩ Tào quân Tưởng Cán hiến kế đến thuyết phục Chu Du đầu hàng. Nhưng việc khuyên hàng bị Chu Du từ chối, Tưởng Cán lo lắng tay trắng trở về, bèn quyết định trộm mật văn cơ mật của Ngô quân quay về dâng công. Một cuộc chiến ngầm đánh cắp bí mật kinh tâm động phách, cứ thế mở ra.",
						"Quân Tào Tháo",
						"Quân Tôn Quyền",
						"Bảo vệ Tưởng Cán trộm mật văn và quay về đại doanh Ô Lâm",
						"Không",
						"Trong ba mươi phút không trộm được mật văn",
						"Không",
						}
--ID:298 Dạy Mã Thuật (Tôn Tổ Truyện)
AUI_BATTLEFIELD[298] = {
						"Loại hình: Nhiệm vụ\rĐộ khó:★★★\rCấp độ:30+\rMục tiêu:Vượt qua thử thách, học được Mã Thuật cao cấp\rCốt truyện:\r    Kỵ binh, là lực lượng chủ yếu tuyệt đối xung phong hãm trận, phi nước đại trên chiến trường. Mã thương nhân thần bí Tôn Tổ ở thành Trường An, rất am hiểu về chiến đấu trên lưng ngựa, muốn trở thành kỵ binh đủ tiêu chuẩn, còn cần nhờ ông chỉ điểm. Chỉ khi vượt qua hàng loạt thử thách của ông, mới có thể trải nghiệm cảm giác chiến đấu trên lưng ngựa nhanh như gió, đột kích ngàn dặm!",
						"Quân Đồng Minh",
						"Quân Địch",
						"Vượt qua thử thách, học được Mã Thuật cao cấp",
						"Không",
						"Không",
						"Không",
						}
--ID:299 Trận Bộc Dương II
AUI_BATTLEFIELD[299] = {
						"Loại hình: Chuẩn bị chiến đấu / Chiếm tháp\rĐộ khó:★★ / ★★★★\rCấp độ:72+\rĐối đầu:Quân Lã Bố VS Quân Tào Tháo\rMục tiêu:Hòa (30 phút) / Áp đảo sĩ khí (1 giờ)\r\r    Hưng Bình nguyên niên, nhân lúc Tào Tháo dẫn chủ lực tấn công Từ Châu, Quân Lã Bố phát động tấn công vào hậu phương Tào Tháo, binh mã Tào quân ở lại cố gắng nghênh chiến, hai quân tranh giành các cứ điểm lớn nhỏ ở khu vực Bộc Dương, mỗi bên đều có thắng bại. Nghe tin hậu phương bị chiếm, Tào Tháo nghe theo phân tích của Quách Gia và các mưu sĩ khác, rút chủ lực khỏi Từ Châu, Quân Lã Bố rút về Hạ Phì. Chiến Thần Lã Bố đối đầu với gian hùng Tào Tháo, Trại Hãm Trận đối đầu với Hổ Báo Kỵ, hai bên lại展開 (triển khai) cuộc chiến ác liệt, Trận Bộc Dương cuối cùng nghênh đón cao trào Long Hổ Tương Tranh.",
						"Quân Lã Bố",
						"Quân Tào Tháo",
						"",
						"",
						"",
						"",
						}
--ID:317 Trận Bộc Dương II (Dành cho Chuẩn bị chiến đấu)
AUI_BATTLEFIELD[317] = {
						"Loại hình: Chuẩn bị chiến đấu (Chuyên dụng)\rĐộ khó:★★ \rCấp độ:66+ \rĐối đầu:Quân Lã Bố VS Quân Tào Tháo\rMục tiêu:Hòa (30 phút)\r\r    Hưng Bình nguyên niên, nhân lúc Tào Tháo dẫn chủ lực tấn công Từ Châu, Quân Lã Bố phát động tấn công vào hậu phương Tào Tháo, binh mã Tào quân ở lại cố gắng nghênh chiến, hai quân tranh giành các cứ điểm lớn nhỏ ở khu vực Bộc Dương, mỗi bên đều có thắng bại. Nghe tin hậu phương bị chiếm, Tào Tháo nghe theo phân tích của Quách Gia và các mưu sĩ khác, rút chủ lực khỏi Từ Châu, Quân Lã Bố rút về Hạ Phì. Trận chiến cuối cùng sắp bùng nổ, quân đóng ở hai bên đều tăng cường chuẩn bị chiến đấu, nỗ lực chiếm lấy tiên cơ trên chiến trường.",
						"Quân Lã Bố",
						"Quân Tào Tháo",
						"",
						"",
						"",
						"",
						}
--ID:304 Chăn Cừu Ngoài Đồng
AUI_BATTLEFIELD[304] = {
						"Loại hình: Hợp tác, giành điểm tích lũy cao\rĐộ khó:★★★\rCấp độ:15+\rCốt truyện:\r    Chư tiên không có sở thích nào khác, chỉ thích sưu tầm dị thú. Các loài kỳ lạ trong thiên hạ, đều được thu vào túi, ngày ngày thưởng ngoạn, thật là khoái trá. Không may hôm đó, chư tiên hẹn nhau đánh cờ ở Giang Du Than, vì quá hứng thú, quên hết mọi thứ xung quanh. Các dị thú nhân cơ hội trốn thoát, vui vẻ ngoài đồng, phóng túng nhân gian. Chư tiên bất đắc dĩ, đành phải nhờ quý vị, lùa các dị thú về chuồng của mình, để hoàn thành kiếp nạn này.",
						"Tiểu đội chăn cừu",
						"  ",
						"",
						"",
						"",
						"",
						"Vui lòng đến chỗ Quản Lộ nhận thưởng",
						}
--ID:308 Tào Thực Truyện
AUI_BATTLEFIELD[308] = {
						"Loại hình: Khác\rĐộ khó:★★★\rCấp độ:71+\rCốt truyện:\r    Thời Kiến An, vừa lúc chính quyền Đông Hán sụp đổ, thời cuộc biến động không chỉ tạo nên một loạt anh hùng hào kiệt lưu danh sử sách, mà văn học nước ta cũng đạt đến sự phồn vinh chưa từng có trong thời loạn này. Tào Thực, con trai thứ tư của Tào Tháo, chính là đại diện tiêu biểu hoạt động trong giới văn học Kiến An, ông cùng cha và anh trai khai sáng một điển hình văn học - Phong cách Kiến An; những áng văn phong phú của ông cũng được đưa vào sử sách, được người đời ca tụng, lưu truyền ngàn đời.",
						"Đoàn người Tào Thực",
						"  ",
						"Giúp Tào Thực hoàn thành lịch luyện",
						"",
						"Không",
						"",
						}
--ID:306 Thành Lầu Tây Vực
AUI_BATTLEFIELD[306] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:73+\r\r    Ở vùng Tây Vực như mộng ảo, bao nhiêu huy hoàng và văn hóa đã bị chôn vùi trong bụi trần lịch sử, cát vàng cuồng phong đã càn quét suốt mấy ngàn năm, một thành phố như ảo ảnh xuất hiện trước mắt những lữ khách cùng đường, mọi người đều quỳ xuống cảm ơn lòng thương xót và từ bi của thượng đế, sau đó bước vào Thành Lầu này… Kể từ đó không còn tin tức gì nữa.",
						"Đội Thám Hiểm",
						"  ",
						"Giết chết Hồ Tiên bí cảnh",
						"",
						"Không",
						"",
						}
--ID:312 Trường An Trường Đua Ngựa Tập Luyện
AUI_BATTLEFIELD[312] = {
						"Loại hình: Hoạt động\rĐộ khó:★\rGiới thiệu:\r    Trường đua ngựa tập luyện nằm ở Trường An, tuyển thủ có thể đến đây làm quen với đường đua, tiến hành các hoạt động làm nóng đơn giản trước khi thi đấu chính thức.\rThành tựu:\r    Ở Trường đua ngựa tập luyện, mỗi 1 giờ có thể nhận 1 lần nhiệm vụ “Dương Tiên Nhảy Vọt”. Nhiệm vụ này hoàn thành tích lũy 20 lần, có thể nhận được Đồ Giám·Trường An Trường Đua Ngựa Tập Luyện.",
						"Tuyển thủ làm nóng",
						"  ",
						"Tiến hành hoạt động làm nóng ở trường đua",
						"",
						"Không",
						"",
						}
--ID:311 Đại Hội Đua Ngựa Quan Trung
AUI_BATTLEFIELD[311] = {
						"Loại hình: Hoạt động\rĐộ khó:★★★\rGiới thiệu:\r    Chủ Nhật - Thứ Sáu, tổ chức Đại Hội Đua Ngựa Quan Trung vào lúc 21:30 mỗi tối, người chơi cấp 60 trở lên đều có thể tham gia.\rThành tựu:\r    Khi bắt đầu cuộc đua, tuyển thủ cần nhận nhiệm vụ “Sách Mã Bôn Đằng”, nhiệm vụ này mỗi lần cuộc đua chỉ có thể hoàn thành 1 lần, hoàn thành tích lũy 15 lần có thể nhận được Đồ Giám·Đại Hội Đua Ngựa Quan Trung. Trong cuộc đua, tuyển thủ hoàn thành nhiệm vụ trước có thể tranh giành Quán quân, Á quân, Quý quân.",
						"Tuyển thủ đua ngựa",
						"  ",
						"Hoàn thành 5 vòng đua",
						"",
						"Không",
						"",
						}
--ID:313 Đại Hội Đua Ngựa Thần Châu
AUI_BATTLEFIELD[313] = {
						"Loại hình: Hoạt động\rĐộ khó:★★★★★\rGiới thiệu:\r    Tổ chức Đại Hội Đua Ngựa Thần Châu vào lúc 21:30 mỗi tối Thứ Bảy hàng tuần, chỉ tuyển thủ cấp Tinh Anh có được Thẻ Tham Gia Đại Hội Đua Ngựa Thần Châu mới có thể tham gia.\rThành tựu:\r    Khi bắt đầu cuộc đua, tuyển thủ cần nhận nhiệm vụ “Sách Mã Bôn Đằng”, nhiệm vụ này mỗi lần cuộc đua chỉ có thể hoàn thành 1 lần, hoàn thành tích lũy 8 lần có thể nhận được Đồ Giám·Đại Hội Đua Ngựa Thần Châu. Trong cuộc đua, tuyển thủ hoàn thành nhiệm vụ trước có thể tranh giành Quán quân, Á quân, Quý quân.",
						"Tuyển thủ đua ngựa",
						"  ",
						"Hoàn thành 7 vòng đua",
						"",
						"Không",
						"",
						}
--ID:318 Hồn Động Yểm
AUI_BATTLEFIELD[318] = {
						"",
						"",
						"",
						"",
						"",
						"",
						"",
						}
--ID:325 Thương Sở Ly Ca
AUI_BATTLEFIELD[325] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★★★★\rCấp độ:77+\rCốt truyện:\r    Bá nghiệp trôi về đông sự đã khó khăn, đường cùng làm sao còn sức nhổ núi? Vốn nắm chắc phần thắng, lại không ngờ bại trận ở Ô Giang. Một khúc bi ca Cái Hạ trăm năm trước, bi tráng ngàn đời. Ngoài trướng Sở, Tứ Diện Sở Ca (bốn bề vang tiếng Sở). Trong trướng Sở, mỹ nhân uống kiếm, một nụ cười vạn năm dài.",
						"Đội Thám Hiểm",
						"Quân đội không rõ",
						"Khám phá bí ẩn của Thương Sở Ly Ca",
						"",
						"Không",
						"",
						"Ít kinh nghiệm",
						}
--ID:336 Thương Sở Ly Ca
AUI_BATTLEFIELD[336] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★★★★\rCấp độ:77+\rCốt truyện:\r    Bá nghiệp trôi về đông sự đã khó khăn, đường cùng làm sao còn sức nhổ núi? Vốn nắm chắc phần thắng, lại không ngờ bại trận ở Ô Giang. Một khúc bi ca Cái Hạ trăm năm trước, bi tráng ngàn đời. Ngoài trướng Sở, Tứ Diện Sở Ca. Trong trướng Sở, mỹ nhân uống kiếm, một nụ cười vạn năm dài.",
						"Đội Thám Hiểm",
						"Quân đội không rõ",
						"Khám phá bí ẩn của Thương Sở Ly Ca",
						"",
						"Không",
						"",
						"Ít kinh nghiệm",
						}
--ID:334 Đại Hội Lôi Đài·Mùa I
AUI_BATTLEFIELD[334] = {
						"Loại hình: Đấu trường\rThời gian:15 phút\rCấp độ:70+\rMục tiêu:Trong 15 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Vương Giả Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"Nhận thưởng ở chỗ Hỏa Đức Tinh Quân",
						}
--ID:335 Chiến Trận Anh Hùng Đấu Trường
AUI_BATTLEFIELD[335] = {
						"Loại hình: Đấu trường\rThời gian:10 phút\rCấp độ:80+\rMục tiêu:Trong 10 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Vương Giả Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"Nhận thưởng ở chỗ Hỏa Đức Tinh Quân",
						}
--ID:348 Đại Hội Lôi Đài·Hạng Nhẹ
AUI_BATTLEFIELD[348] = {
						"Loại hình: Đấu trường\rThời gian:15 phút\rCấp độ:60-69\rMục tiêu:Trong 15 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Anh Hùng Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"Nhận thưởng ở chỗ Hỏa Đức Tinh Quân",
						}
--ID:333 Mã Siêu Truyện
AUI_BATTLEFIELD[333] = {
						"Loại hình: Tiêu diệt thủ lĩnh\rĐộ khó:★★★\rCấp độ:65+\rCốt truyện:\r    Kiến An năm thứ mười ba (năm 208 Tây lịch), Tào Mạnh Đức nhậm chức Tể Tướng nhà Hán, tích cực nam chinh, nhưng cuối cùng vẫn không yên tâm về các thế lực cát cứ ở Quan Trung và Tây Lương, bèn đặc biệt phái sứ giả sang Lương Châu phía tây, lấy danh nghĩa triều đình phong cho Mã Đằng tước hiệu Chinh Nam Tướng Quân, lệnh ông theo quân thảo phạt Tôn Quyền. Thế là, Mã Đằng dẫn con trai thứ Mã Hưu, Mã Thiết và 5000 binh lính Tây Lương theo lệnh đến dưới thành Hứa Xương. Không lâu sau, binh lính Tây Lương bị Tào Mạnh Đức tiêu diệt, ba cha con Mã Đằng cũng bị sát hại thảm khốc. Mã Siêu biết tin, vô cùng đau buồn phẫn nộ, thề phải tự tay giết Tào Mạnh Đức, để báo thù rửa hận.",
						"Quân Mã Siêu",
						"Quân Tào Tháo",
						"Tiêu diệt tất cả chủ tướng trại Tào",
						"Mã Siêu tử trận",
						"Mã Siêu bị giết",
						"Tất cả chủ tướng tử trận",
						}
--ID:351 Trận Mạch Thành
AUI_BATTLEFIELD[351] = {
						"Loại hình: Hợp tác, hộ tống\rĐộ khó:★★★★\rCấp độ:75+\rCốt truyện:\r    Mùa đông Kiến An năm thứ hai mươi tư, Ngụy Ngô liên minh đối kháng Quan Vũ, Quan Vũ không địch lại bại rút về Mạch Thành. Quan Vũ – người ở vào đường cùng quyết định đột phá vòng vây trong đêm, nhưng Lã Mông đã sớm giăng thiên la địa võng trên con đường ông ta nhất định phải đi qua. Quan Vũ – vị Võ Thánh thời Tam Quốc này, liệu có thoát khỏi hiểm cảnh?",
						"Quân Quan Vũ",
						"Quân Lã Mông",
						"Hỗ trợ Quan Vũ và những người khác đột phá vòng vây",
						"Tiêu diệt toàn bộ quân Quan Vũ",
						"Đột phá vòng vây thất bại",
						"Quan Vũ đột phá vòng vây thành công",
						"Ít kinh nghiệm",
						}
--ID:352 Điêu Thuyền Truyện
AUI_BATTLEFIELD[352] = {
						"Loại hình: Điểm tích lũy, nhiệm vụ\rĐộ khó:★★★\rCấp độ:70+\rCốt truyện:\r    Tam Quốc tình tay ba, Điêu Thuyền Lã Phụng Tiên, Thái Sư đến gặp gỡ, một vở kịch hay. Lầu Bái Nguyệt bắt mật thám, Tiểu Âm Tào thưởng họa tiên; một người là Phong Khởi Lũng Tây, một người là Phong Độ Phiên Phiên. Nếu nói không có duyên kỳ lạ, kiếp này lại gặp nhau; nếu nói có duyên kỳ lạ, tại sao tâm sự cuối cùng lại hóa thành hư vô.",
						"Đoàn người Điêu Thuyền",
						"Gia Đinh Phủ Đổng",
						"Điêu Thuyền và người tình cuối cùng thành quyến thuộc",
						"Không",
						"Không",
						"Không",
						"Ít kinh nghiệm",
						}
--ID:353 Trận Hạ Khẩu
AUI_BATTLEFIELD[353] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★\rCấp độ:80\rCốt truyện:\r    Hạ Khẩu, thời Đông Hán thuộc Giang Hạ Quận Kinh Châu, chia ưu thế Kinh Tương mà áp đảo Kinh Tương, là một trung tâm quân sự quan trọng kết nối hai châu Kinh, Dương, lại là yếu điểm phải chiếm khi Dương Châu phía đông nam ngược sông Tây tiến. Kiến An năm thứ mười ba, Tôn Quyền dẫn binh phạt Hoàng Tổ, thu phục Cam Ninh, từ đó vững vàng chiếm giữ Hạ Khẩu, đặt nền móng cho thắng lợi của trận Xích Bích. Đông Ngô từ đó chế tạo rộng rãi chiến thuyền, phái binh phòng thủ bờ sông; lại lệnh Tôn Tĩnh dẫn quân thủ Ngô Hội; Tôn Quyền tự mình thống lĩnh đại quân, đóng ở Sài Tang; Chu Du ngày ngày ở Hồ Bà Dương luyện tập thủy quân, để chuẩn bị công chiến.",
						"Ngô Quân",
						"Hoàng Tổ Quân ",
						"Tiêu diệt đại tướng địch",
						"Không",
						"Chủ tướng tử trận",
						"Không",
						"Ít kinh nghiệm",
						}
--ID:354 Ngọa Long Cửu Thiên
AUI_BATTLEFIELD[354] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★\rCấp độ:Anh Hùng 5+\rCốt truyện:\r    Kiến An năm thứ bảy, Khổng Minh ẩn mình ở Long Trung, theo học Thủy Kính Tiên Sinh Tư Mã Huy. Lượng bình thường thích đọc 《Lương Phụ Ngâm》, lại thường tự ví mình với Quản Trọng, Nhạc Nghị, danh tiếng vang khắp Kinh Châu, người ta gọi là “Ngọa Long”. Lúc bấy giờ có danh sĩ Kinh Châu Hoàng Thừa Ngạn, khen tài của Lượng, vừa lúc có con gái chưa gả, muốn chiêu Lượng làm rể.\r    Hoàng Thừa Ngạn đã nói trước, Gia Cát Lượng muốn cưới Nguyệt Anh, phải vượt qua trùng trùng thử thách. Hơn nữa Nguyệt Anh nổi tiếng bên ngoài, thông minh như băng tuyết, số người ngưỡng mộ vô số kể. Thử thách này, e rằng khó khăn hơn ngoài mưu lược. Thế là Gia Cát Lượng nói: “Nếu giúp cưới vợ, Lượng ghi lòng tạc dạ, tất có hậu tạ.” Nhất thời hào hiệp thiên hạ không ai không chấn động, ùn ùn kéo đến Long Trung.\r    Lão trượng nhân Hoàng Thừa Ngạn để lại một túi gấm thần bí, đoàn người Gia Cát Lượng sẽ đối mặt với thử thách chưa biết như thế nào? Một cuộc đại chiến cầu hôn cô đọng những gian khổ tình cảm, so tài trí mưu lược sắp展開 (triển khai).",
						"Đoàn người Khổng Minh",
						"Người thần bí",
						"Gia Cát Lượng và Hoàng Nguyệt Anh kết duyên vợ chồng",
						"Không",
						"Không",
						"Không",
						}
--ID:372 Ngọa Long Cửu Thiên
AUI_BATTLEFIELD[372] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★\rCấp độ:Anh Hùng 5+\rCốt truyện:\r    Kiến An năm thứ bảy, Khổng Minh ẩn mình ở Long Trung, theo học Thủy Kính Tiên Sinh Tư Mã Huy. Lượng bình thường thích đọc 《Lương Phụ Ngâm》, lại thường tự ví mình với Quản Trọng, Nhạc Nghị, danh tiếng vang khắp Kinh Châu, người ta gọi là “Ngọa Long”. Lúc bấy giờ có danh sĩ Kinh Châu Hoàng Thừa Ngạn, khen tài của Lượng, vừa lúc có con gái chưa gả, muốn chiêu Lượng làm rể.\r    Hoàng Thừa Ngạn đã nói trước, Gia Cát Lượng muốn cưới Nguyệt Anh, phải vượt qua trùng trùng thử thách. Hơn nữa Nguyệt Anh nổi tiếng bên ngoài, thông minh như băng tuyết, số người ngưỡng mộ vô số kể. Thử thách này, e rằng khó khăn hơn ngoài mưu lược. Thế là Gia Cát Lượng nói: “Nếu giúp cưới vợ, Lượng ghi lòng tạc dạ, tất có hậu tạ.” Nhất thời hào hiệp thiên hạ không ai không chấn động, ùn ùn kéo đến Long Trung.\r    Lão trượng nhân Hoàng Thừa Ngạn để lại một túi gấm thần bí, đoàn người Gia Cát Lượng sẽ đối mặt với thử thách chưa biết như thế nào? Một cuộc đại chiến cầu hôn cô đọng những gian khổ tình cảm, so tài trí mưu lược sắp triển khai.",
						"Đoàn người Khổng Minh",
						"Người thần bí",
						"Gia Cát Lượng và Hoàng Nguyệt Anh kết duyên vợ chồng",
						"Không",
						"Không",
						"Không",
						}
--ID:362 Quốc Chiến Hàng Ngày - Trận Tập Kích (Điểm tích lũy)
AUI_BATTLEFIELD[362] = {
						"",
						"Bên tấn công",
						"Bên phòng thủ",
						"",
						"",
						"",
						"",
						}
--ID:380 Chiến Trường 4D (Điểm tích lũy)
AUI_BATTLEFIELD[380] = {
						"Loại hình: Hợp tác, thay đổi lịch sử\rĐộ khó:★★★★★\rCấp độ:68+\rCốt truyện:\r    Nước chảy ngược dòng, phong ba xoay chuyển. Lại vào chiến trường, giấc mộng không còn như xưa. Thủy Kính Tiên Sinh, mượn sức mạnh của trời, lại mở “Phi Tướng Hồi Thiên”, “Tây Lương Nhiễu Loạn”, “Trận Hợp Phì”. Thoáng chốc như hôm qua nhưng cảnh vật đã đổi thay, thiếu niên cẩm y chớp mắt thành kẻ thù xa lạ. Dòng chảy thời đại rốt cuộc sẽ đi về đâu, hung khí trong tay, lòng nhân từ trong tim, đường ở dưới chân.",
						"Nghịch Lữ Sơn Nhân",
						"Kẻ thù thời không",
						"Giết chết Trương Liêu",
						"Giết chết Tôn Quyền",
						"Tôn Quyền tử trận",
						"Trương Liêu tử trận",
						}
--ID:521 Trường Đua Liên Server Tập Luyện
AUI_BATTLEFIELD[521] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:522 Đấu Trường Liên Server•Vòng Tuyển Chọn tuyến 3
AUI_BATTLEFIELD[522] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:60+\rSố người:6-15 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:523 Đấu Trường Liên Server•Vòng Tuyển Chọn tuyến 4
AUI_BATTLEFIELD[523] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:60+\rSố người:6-15 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:524 Đấu Trường Liên Server•Vòng Tuyển Chọn tuyến 5
AUI_BATTLEFIELD[524] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:60+\rSố người:6-15 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:525 Đấu Trường Liên Server•Vòng Tuyển Chọn tuyến 6
AUI_BATTLEFIELD[525] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:60+\rSố người:6-15 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:526 Đấu Trường Liên Server•Vòng Tuyển Chọn tuyến 7
AUI_BATTLEFIELD[526] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:60+\rSố người:6-15 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:527 Đấu Trường Liên Server•Vòng Tuyển Chọn tuyến 8
AUI_BATTLEFIELD[527] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:60+\rSố người:6-15 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:528 Đấu Trường Liên Server•Vòng Liên Server tuyến 3
AUI_BATTLEFIELD[528] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}






AUI_BATTLEFIELD[529] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:530 Đấu Trường Liên Server•Vòng Liên Server tuyến 5
AUI_BATTLEFIELD[530] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:531 Đấu Trường Liên Server•Vòng Liên Server tuyến 6
AUI_BATTLEFIELD[531] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:532 Đấu Trường Liên Server•Vòng Liên Server tuyến 7
AUI_BATTLEFIELD[532] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:533 Đấu Trường Liên Server•Vòng Liên Server tuyến 8
AUI_BATTLEFIELD[533] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:534 Đấu Trường Liên Server•Vòng Liên Server tuyến 9
AUI_BATTLEFIELD[534] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:535 Đấu Trường Liên Server•Vòng Liên Server tuyến 10
AUI_BATTLEFIELD[535] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:75+\rSố người:4-10 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:536 Đấu Trường Liên Server•Vòng Liên Server tuyến 11
AUI_BATTLEFIELD[536] = {
						"Loại hình: Đấu trường\rThời gian:20 phút\rCấp độ:60+\rSố người:6-15 (Giới hạn người xem 50)\rMục tiêu:Trong 20 phút số lần tiêu diệt vượt qua đối phương, hoặc đoạt lấy Thắng Lợi Chi Đỉnh ở trung tâm.",
						"Đội Đỏ",
						"Đội Xanh",
						"",
						"",
						"",
						"",
						"",
						}
--ID:540 Vô Song 09 Vượt Ải Chém Tướng
AUI_BATTLEFIELD[540] = {
						"Loại hình: Hoạt động, Thử thách phòng\rĐộ khó:★★★★\rCấp độ:80+\rSố người:4-4\rGiới thiệu:Dọc ngang thời đại Tam Quốc, thử thách ải vô cực, giúp quần hùng viết lại lịch sử Tam Quốc!",
						"Đội Thử Thách",
						"",
						"",
						"",
						"",
						"",
						"",
						}
--ID:747 Trận Bộc Dương cấp Anh Hùng
AUI_BATTLEFIELD[747] = {
						"Loại hình: Đối kháng, giành điểm tích lũy\rĐộ khó:★★★★\rCấp độ:Anh Hùng cấp 1+\rĐối đầu:Quân Tào Tháo VS Quân Lã Bố\rMục tiêu:Đạt mục tiêu điểm tích lũy trước\rCốt truyện:\r    Hưng Bình nguyên niên (năm 194 Tây lịch), Thứ sử Duyện Châu Tào Tháo giương cao cờ trắng báo thù cho cha, phát binh thảo phạt Thứ sử Từ Châu Đào Khiêm. Ngay khi Tào quân đang thắng lợi liên tiếp ở Từ Châu, căn cứ địa Duyện Châu của Tào Tháo đột nhiên xảy ra biến cố lớn. Bộ hạ của Tào Tháo là Trương Mạo, Trần Cung dẫn quân phiêu bạt của Lã Bố vào Duyện Châu, giương cao cờ phản! Hổ lang chi sư của Chiến Thần Lã Bố nhanh chóng càn quét khắp đất Duyện Châu, Tào Tháo nghe tin lập tức giảng hòa với Quân Lưu Bị ở Từ Châu, rút quân về Duyện Châu, triển khai cuộc chiến khốc liệt kéo dài hơn một năm với Quân Lã Bố ở Bộc Dương.",
						"Quân Tào Tháo",
						"Quân Lã Bố",
						"",
						"",
						"",
						"",
						}
AUI_BATTLEFIELD[759] = {
						"Loại hình: Hộ tống, giành điểm tích lũy\rĐộ khó:★★★★\rCấp độ:Anh Hùng cấp 16+\rĐối đầu:Quân Tào Tháo VS Liên quân Tôn Lưu\rMục tiêu:Hộ tống Tào Tháo vượt qua Hoa Dung Đạo\rCốt truyện:\r    Kiến An năm thứ mười ba, Tào Tháo dẫn đại quân Ngụy quốc đối đầu với Liên quân Ngô Thục ở Xích Bích, Đại Đô Đốc Ngô quốc Chu Du dùng kế trá hàng và hỏa công đại phá Ngụy quân, đối mặt với đại quân trong chốc lát tan thành tro bụi, Tào Tháo chỉ còn cách dẫn tàn binh bại tướng chạy trốn về Hứa Xương. Trên đường trốn chạy khỏi vòng vây truy đuổi của quân Thục Ngô, cuối cùng đã đến Hoa Dung Đạo, nhưng lại gặp phải Quan Vũ danh chấn Hoa Hạ tại đây…",
						"Quân Tào Tháo",
						"Liên quân Tôn Lưu",
						"",
						"",
						"",
						"",
						}
--ID:903 Ảo Tưởng Bát Trận Đồ Khai Môn
AUI_BATTLEFIELD[903] = {
						"Loại hình: Điểm tích lũy, Thủ tháp\rĐộ khó:★★★\rCấp độ:Anh Hùng cấp 1+\rĐối đầu:Cơ quan Bát Trận VS Quân địch xông trận\rMục tiêu:Điều khiển cơ quan đánh bại quân địch\rCốt truyện:\r      Gia Cát Khổng Minh từng bày trận đá, tên là Bát Trận Đồ. Lặp lại tám cửa, theo Độn Giáp là Hưu, Sinh, Thương, Đỗ, Cảnh, Tử, Kinh, Khai. Khai Môn, là bình phong thứ nhất của Bát Trận, ý ở ngăn chặn kẻ địch xông trận thông thường.\r      Nghĩa sĩ hãy vào từ Khai Môn, dùng ngọc thạch ảo hóa cơ quan Bát Trận, đẩy lui kẻ địch Trận Tốt, Trận Sĩ, Trận Pháo, Trận Tướng để thể ngộ: Bát Trận Đồ phục trăm vạn hùng binh, kẻ địch bốn phương đến có đi không về.",
						"Cơ quan Bát Trận",
						"Quân địch xông trận",
						"",
						"",
						"",
						"",
						}
--ID:905 Ảo Tưởng Bát Trận Đồ Khai Môn (Thủ lĩnh)
AUI_BATTLEFIELD[905] = {
						"Loại hình: Điểm tích lũy, Thủ tháp\rĐộ khó:★★★\rCấp độ:Anh Hùng cấp 1+\rĐối đầu:Cơ quan Bát Trận VS Quân địch xông trận\rMục tiêu:Điều khiển cơ quan đánh bại quân địch\rCốt truyện:\r      Gia Cát Khổng Minh từng bày trận đá, tên là Bát Trận Đồ. Lặp lại tám cửa, theo Độn Giáp là Hưu, Sinh, Thương, Đỗ, Cảnh, Tử, Kinh, Khai. Khai Môn, là bình phong thứ nhất của Bát Trận, ý ở ngăn chặn kẻ địch xông trận thông thường.\r      Nghĩa sĩ hãy vào từ Khai Môn, dùng ngọc thạch ảo hóa cơ quan Bát Trận, đẩy lui kẻ địch Trận Tốt, Trận Sĩ, Trận Pháo, Trận Tướng để thể ngộ: Bát Trận Đồ phục trăm vạn hùng binh, kẻ địch bốn phương đến có đi không về.",
						"Cơ quan Bát Trận",
						"Quân địch xông trận",
						"",
						"",
						"",
						"",
						}
--ID:904 Ảo Tưởng Bát Trận Đồ Hưu Môn
AUI_BATTLEFIELD[904] = {
						"Loại hình: Điểm tích lũy, tiêu diệt thủ lĩnh\rĐộ khó:★★★\rCấp độ:Anh Hùng cấp 31+\rĐối đầu:Đội Thử Thách VS Ảo ảnh Bát Trận\rMục tiêu:Thử thách 8 ải Ảo ảnh Anh Hùng\rCốt truyện:\r      Gia Cát Khổng Minh từng bày trận đá, tên là Bát Trận Đồ. Lặp lại tám cửa, theo Độn Giáp là Hưu, Sinh, Thương, Đỗ, Cảnh, Tử, Kinh, Khai. Hưu Môn, là bình phong thứ hai của Bát Trận, ở cung Khảm phương Bắc, là nơi vạn vật nghỉ ngơi sinh sôi, cũng là cửa cát lợi.\r      Trong trận có Linh Thạch, mô phỏng tàn tượng Anh Kiệt đương thời, Nghĩa sĩ nên nhanh chóng phá giải.",
						"Đội Thử Thách",
						"Ảo ảnh Bát Trận",
						"",
						"",
						"",
						"",
						}

--ID:906 Vô Song 11 Hoàng Lăng Bắc Mang
AUI_BATTLEFIELD[906] = {
						"Loại hình: Thám hiểm, giành điểm tích lũy\rĐộ khó:★★★★★★\rCấp độ:Anh Hùng cấp 35+\rMục tiêu:Thám hiểm Hoàng Lăng Bắc Mang, đào kho báu\rCốt truyện:\r    	Từ sau khi Hắc Ngọc Tỷ ở Lạc Dương xuất hiện, Bạch Y Nhân Đông Hải dị cầu tiên, thế lực Khăn Vàng trên đất Thanh Châu lại trỗi dậy, tất cả những điều này dường như là một bí ẩn khổng lồ, rốt cuộc đằng sau đó ẩn giấu âm mưu gì. Hoàng Lăng Bắc Mang nơi xuất hiện Hắc Ngọc Tỷ rốt cuộc có bí mật gì…",
						"Đội Thử Thách",
						"Vong Hồn Hoàng Lăng",
						"",
						"",
						"",
						"",
						}
--ID:907 Diễn Nghĩa 14 Chùa Cam Lộ
AUI_BATTLEFIELD[907] = {
						"Loại hình: Cốt truyện, Điểm tích lũy, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:Anh Hùng cấp 35+\rMục tiêu:Điểm tích lũy đạt 500 trở lên\rCốt truyện:\r      Sau trận Xích Bích, Tào Tháo rút về phương Bắc cố thủ, Đông Ngô chiếm giữ Giang Nam, Lưu Bị chiếm cứ Kinh Châu, thế chân vạc đã hình thành. Tôn Quyền đòi Lưu Bị “trả lại” Kinh Châu không thành, bèn bày kế, nhân lúc vợ Lưu Bị vừa qua đời, lấy danh nghĩa chiêu rể, gả em gái Tôn Quyền là Tôn Thượng Hương cho Lưu Bị, đợi khi dụ được ông đến Đông Ngô, sẽ giữ lại, để đổi lấy Kinh Châu. Nào ngờ Gia Cát Lượng đã sớm nhìn thấu mưu kế của Đông Ngô, sắp xếp Cẩm Nang Diệu Kế, khiến Lưu Bị bình an vô sự, cưới được Tôn Thượng Hương, để lại lời đồn “Chu Lang Diệu Kế An Thiên Hạ, Bồi Liễu Phu Nhân Hựu Chiết Binh” (Kế hay của Chu Du yên thiên hạ, mất vợ lại thiệt quân).\r    Không ngờ, sau khi Tôn Thượng Hương về Kinh Châu thì mắc bệnh nặng không dậy nổi, sau khi khỏi bệnh tinh thần mơ màng, hôn mê bất tỉnh. Gia Cát Lượng cố gắng suy tính, cũng chỉ có thể khám phá ra Tôn Thượng Hương trong lòng có uất kết không thể giải tỏa, vì thế mà lâm bệnh. Sau khi thuốc thang châm cứu đều bó tay, Gia Cát Lượng đưa ra một phương pháp, đó là dùng Hoàn Hồn Hương vào giấc mơ của Tôn Thượng Hương, tìm ra nguồn gốc của bệnh tâm lý…",
						"Đội Thử Thách",
						"Bách Tính Đông Ngô",
						"",
						"",
						"",
						"",
						}
--ID:933 Vô Song Hổ Lao Quan Quần Anh Hội cấp Anh Hùng
AUI_BATTLEFIELD[933] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★★★\rCấp độ:Anh Hùng cấp 40+\rĐối đầu:Liên Quân VS Quân Đổng Trác (NPC)\rMục tiêu:Trong 120 phút đánh bại Đổng Trác\rCốt truyện:\r    Sơ Bình nguyên niên (năm 189 Tây lịch), Đổng Trác chuyên quyền, lừa vua hại dân. Tào Tháo tự Trần Lưu khởi binh, triệu tập mười tám trấn chư hầu, đề cử Thái thú Bột Hải Viên Thiệu làm minh chủ, phát lời kêu gọi (giả chiếu) khắp thiên hạ, thống lĩnh hàng chục vạn hùng binh, tiến về Lạc Dương. Và chắn trước mặt mười tám trấn chư hầu là hai cửa ải Tị Thủy và Hổ Lao.\r    Cửa ải Tị Thủy do Thượng tướng thứ nhất dưới trướng Đổng Trác là Hoa Hùng trấn giữ, một người giữ ải, vạn người khó qua. Đổng Trác thì đích thân dẫn hai mươi vạn đại quân đóng ở cửa ải Hổ Lao được mệnh danh là “Then khóa Trung Thiên, yết hầu Tam Tần”, lệnh cho nghĩa tử Ôn Hầu Lã Bố đóng trại trước cửa ải, hổ thị (trông chừng) đợi Liên quân chư hầu đến. Ôn Hầu Lã Bố võ nghệ vô song như hổ đói mài sắc móng vuốt, chuẩn bị giẫm đạp lên tôn nghiêm và tự tin của võ tướng thiên hạ. Và trong Liên quân, có ba hạ tướng vô danh ít ai biết đến, sắp tỏa sáng rực rỡ trước nghìn quân vạn mã…",
						"Liên Quân",
						"Quân Đổng Trác",
						"Đánh bại Đổng Trác",
						"Không",
						"Không",
						"Không",
						}
--ID:935 Trận Hợp Phì cấp Anh Hùng
AUI_BATTLEFIELD[935] = {
						"Loại hình: Hợp tác, tiêu diệt thủ lĩnh\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 30+\rĐối đầu:Quân Tào Tháo VS Quân Tôn Quyền\rMục tiêu:Đánh bại Tôn Quyền, giữ vững thành Hợp Phì\rCốt truyện:\r    Năm 208 tháng 11, Tào Tháo sau đại bại ở Xích Bích đóng quân ở phía bắc Kinh Châu, Tôn Quyền đích thân dẫn binh tấn công Hợp Phì, nhưng mắc kế quân viện binh giả của Tào quân, đốt trại rút lui. Trận Hợp Phì lần thứ nhất kết thúc với thất bại của Quân Tôn Quyền. Đến năm 214, Tào Tháo nam chinh Tôn Quyền không thành, trước khi rút quân để lại Trương Liêu, Lý Điển, Nhạc Tiến và hơn bảy nghìn người phòng thủ Hợp Phì. Đến năm sau, khi Tào Tháo xuất chinh Trương Lỗ, phái Hộ Quân Tiết Tễ gửi thư đến Hợp Phì, viết “Giặc đến thì mở ra”. Lúc này, Tôn Quyền và Lưu Bị tranh chấp Kinh Châu lấy điều kiện chia đôi Kinh Châu, hai quân rút lui. Tôn Quyền thấy chủ lực Tào quân ở Hán Trung, bèn vào tháng Tám dẫn mười vạn người bắc tiến đến Lục Khẩu, lại lần nữa xuất chinh Hợp Phì.",
						"Quân Tào Tháo",
						"Quân Tôn Quyền",
						"Đánh bại Tôn Quyền, giữ vững thành Hợp Phì",
						"Không",
						"Trương Liêu bại lui",
						"Không",
						}
--ID:946 Bảy Lần Bắt Mạnh Hoạch
AUI_BATTLEFIELD[946] = {
						"Loại hình: Hợp tác, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 30+\rĐối đầu:Thục Quân VS Quân Mạnh Hoạch\rMục tiêu:Dùng ít binh lực tổn thất nhất đánh bại Mạnh Hoạch\rCốt truyện:\r    Kiến Hưng nguyên niên, do Lưu Bị đại bại ở Di Lăng, binh lực Thục quốc trống rỗng, các đại tộc ở Ích Trung là họ Ung nhân cơ hội khởi binh làm phản. Họ Ung để tăng cường viện binh bên ngoài, lừa dối thủ lĩnh bộ tộc Nam Man Mạnh Hoạch, Mạnh Hoạch dưới sự mê hoặc của họ cũng nổi dậy làm loạn. Kiến Hưng năm thứ ba, Thừa tướng Thục Hán Gia Cát Lượng, đích thân dẫn binh đi bình định loạn ở phía Nam. Đại quân liên tiếp chiến thắng, dẹp yên loạn họ Ung. Nhưng Mạnh Hoạch tập hợp tàn quân, trốn vào nơi hiểm ác Nam Man, từ chối đầu hàng.",
						"Thục Quân",
						"Quân Mạnh Hoạch",
						"",
						"",
						"",
						"",
						}
--ID:947 Chiến Trường Xe Chiến PVP
AUI_BATTLEFIELD[947] = {
						"Loại hình: Đấu trường, giành điểm tích lũy\rĐộ khó:★★★★\rCấp độ:Anh Hùng 1+\rĐối đầu:Quân Trung Nguyên VS Quân Nam Man\rMục tiêu:Phá hủy kiến trúc trung tâm trong đại bản doanh đối phương\rCốt truyện:\rTừ năm Diên Khang nguyên niên, Tào Phi xưng đế sau, Lưu Bị, Tôn Quyền lần lượt xưng đế, thế chân vạc Tam Quốc cuối cùng được xác lập.\rThục quốc là quốc gia yếu nhất trong Tam Quốc, phía Bắc có Tào Ngụy, phía Đông có Tôn Ngô, phía Tây hoang vu không người, phía Nam là nơi rừng rậm hiểm ác. Để cân bằng sức mạnh các bên, Thục quốc cấp thiết cần có sự đột phá về vũ khí.\rDưới sự phát triển tích cực của Gia Cát Lượng và người vợ Hoàng Nguyệt Anh tinh thông các vật phẩm cơ khí kỳ ảo, một loại vũ khí hoàn toàn mới đã ra đời: Xe Chiến. Nó có lớp giáp chắc chắn, đao kiếm chém hoặc cung nỏ bắn thông thường gần như vô dụng với nó; nó có tốc độ không thua kém ngựa tốt, khiến ưu thế cơ động của kỵ binh tan biến; nó còn có sức phá hủy mạnh mẽ, cung mạnh nỏ mạnh, thậm chí một loại vũ khí gọi là thuốc súng được phát minh dựa vào thuật luyện đan cũng được sử dụng trên đó, công phá thành trì, không gì không phá được.\rTrong giai đoạn chế tạo xe chiến, các thế lực lớn lần lượt biết được tin tức này, đua nhau làm theo, nhất thời dấy lên một làn sóng cạnh tranh sản xuất xe chiến. Ở tiền tuyến Nam Man, để đối kháng với quân đội Trung Nguyên, quân Nam Man cũng đầu tư rất nhiều nhân lực vật lực tài lực, lợi dụng tài nguyên phong phú tại địa phương chế tạo ra xe chiến. Vòng chiến tranh mới sắp bùng nổ…",
						"Quân Trung Nguyên",
						"Quân Nam Man",
						"",
						"",
						"",
						"",
						}
--ID:948 Hoạt Động Cốt Truyện PVE 04 Lái Thử Xe Chiến
AUI_BATTLEFIELD[948] = {
						"Loại hình: Hợp tác, lái thử xe chiến\rĐộ khó:★★★\rCấp độ:5+\rCốt truyện:\rDo tin đồn về các cơ quan người hình nổi lên, những người nhận mật lệnh Hán quân nhanh chóng đi đến sa mạc hẻo lánh tìm kiếm dấu vết của chúng, không ngờ gặp phục kích của Mã Tặc sa mạc, suýt bị tiêu diệt. May mắn được một người phụ nữ cứu giúp, và được tặng xe chiến để hỗ trợ, ngay sau đó đã triển khai một cuộc đối đầu đầy truyền kỳ với Mã Tặc sa mạc.",
						"Xe chiến nương",
						"Mã Tặc sa mạc",
						"Tiêu diệt Mã Tặc sa mạc",
						"Không",
						"Xe chiến nương tử trận",
						"Không",
						}

--ID:950 Chí Anh Hùng 01 Hứa Chử Truyện
AUI_BATTLEFIELD[950] = {
						"Loại hình: Hợp tác, tiêu diệt BOSS\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 30+\rCốt truyện:\rTrong số các mãnh tướng dưới trướng Tào Tháo có Hứa Chử nổi tiếng với danh hiệu “Hổ Si”, từng trong trận Mã Siêu tấn công Hứa Xương của Ngụy quốc, cởi áo lâm trận đại chiến hơn trăm hiệp với Mã Siêu mà không thua kém, người thần dũng có thể đấu ngang sức với Cẩm Mã Siêu, đáng kính đáng sợ. Và nay quần hùng các nước đứng trước cửa đại doanh Ngụy quân, phát động thử thách với người mang danh “Hổ Si”.",
						"Đội Thử Thách",
						"Quân Hứa Chử",
						"",
						"",
						"",
						"",
						}

--ID:953 Bảy Lần Bắt Mạnh Hoạch (Thủ lĩnh)
AUI_BATTLEFIELD[953] = {
						"Loại hình: Hợp tác, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 30+\rĐối đầu:Thục Quân VS Quân Mạnh Hoạch\rMục tiêu:Dùng ít binh lực tổn thất nhất đánh bại Mạnh Hoạch\rCốt truyện:\r    Kiến Hưng nguyên niên, do Lưu Bị đại bại ở Di Lăng, binh lực Thục quốc trống rỗng, các đại tộc ở Ích Trung là họ Ung nhân cơ hội khởi binh làm phản. Họ Ung để tăng cường viện binh bên ngoài, lừa dối thủ lĩnh bộ tộc Nam Man Mạnh Hoạch, Mạnh Hoạch dưới sự mê hoặc của họ cũng nổi dậy làm loạn. Kiến Hưng năm thứ ba, Thừa tướng Thục Hán Gia Cát Lượng, đích thân dẫn binh đi bình định loạn ở phía Nam. Đại quân liên tiếp chiến thắng, dẹp yên loạn họ Ung. Nhưng Mạnh Hoạch tập hợp tàn quân, trốn vào nơi hiểm ác Nam Man, từ chối đầu hàng.",
						"Thục Quân",
						"Quân Mạnh Hoạch",
						"",
						"",
						"",
						"",
						}

--ID:952 Cam Ninh Truyện
AUI_BATTLEFIELD[952] = {
						"Loại hình: Hợp tác, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 50\rCốt truyện:\r    Bên bờ sông Cẩm Giang, thượng nguồn Trường Giang, giặc Cẩm Phàm nổi loạn, một đám hải tặc thủy bộ tác oai tác quái tại đây, khắp nơi cướp đoạt tài vật chở trên các thuyền đi lại, thuyền của giặc treo lụa Thục, thể hiện sự khác biệt, cảnh báo thế nhân rằng băng đảng có kỷ luật, nhóm hải tặc hành sự dứt khoát, phong cách tàn độc, trong đó đại ca cầm đầu là Cam Hưng Bá gan lớn nghệ cao, một đám thanh niên liều mạng theo sau, giương cờ lụa Thục, chèo thuyền. Tương truyền giặc Cẩm Phàm là Giao Long Tam Hiệp, chuyên gây mưa gió, xuất hiện có thủy quái đi theo, người đời nói: “Thà gặp gió Thạch Vưu, còn hơn gặp giặc Cẩm Phàm.” Giặc Cẩm Phàm đáng sợ đã vang danh khắp nơi.",
						"Đội Thử Thách",
						"Quân Cam Ninh",
						"",
						"",
						"",
						"",
						}

--ID:959 Trận Quan Độ
AUI_BATTLEFIELD[959] = {
						"Loại hình: Hợp tác, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 40+\rCốt truyện:\r",
						"Viên Quân",
						"Tào Quân",
						"",
						"",
						"",
						"",
						}

--ID:996 Trận Chiến Tranh Bá Nam Trung
AUI_BATTLEFIELD[996] = {
						"Loại hình: Hợp tác, tiêu diệt BOSS\rĐộ khó:★★★\rCấp độ:35+\rCốt truyện:\r    Cuối thời Đông Hán, cục diện thế lực Nam Trung hỗn loạn, hai thế lực lớn nhất địa phương là Mạnh Hoạch và Mộc Lộc Đại Vương cầm đầu, hai thế lực này thường xuyên giao chiến, khiến cư dân địa phương lầm than. Để bộ tộc của mình hưng thịnh, thủ lĩnh hai bộ tộc lớn dẫn binh tiến hành trận chiến cuối cùng, nhất quyết phân định ra Nam Trung Chi Vương thực sự.",
						"Thế lực Viện Quân",
						"Quân Mộc Lộc",
						"Đánh bại Mộc Lộc Đại Vương",
						"Không",
						"Cổng thành bị phá hủy",
						"Không",
						}

--ID:1007 Hoàng Trung Truyện
AUI_BATTLEFIELD[1007] = {
						"Đề xuất đội hình: Anh Hùng 5-47 số người > 2, Anh Hùng 48 số người > 0\r\rGợi ý tham gia:\r    Thời gian chuẩn bị vào phụ bản được sửa thành 2 phút 30 giây, trong thời gian này người chơi tham gia nhất định phải kịp thời vào trận, sau khi vào trận nhận nhiệm vụ “Tương Phùng Hà Tất Tằng Tương Thức” ở chỗ Hoàng Trung, hoàn thành vượt ải với điều kiện số người đề xuất của đội, có thể nhận được phần thưởng thêm phong phú.\r\rCốt truyện:\r    Hoàng Trung tự Hán Thăng, ban đầu dưới trướng Lưu Biểu, sau quy phục Thái thú Trường Sa Hàn Huyền, lúc đó Lưu Bị phái Quan Vũ làm tiên phong đoạt Trường Sa, Thái thú Hàn Huyền dựa vào Hoàng Trung trấn giữ, giằng co với Quân Lưu Bị.\r    Hoàng Trung dũng mãnh cương liệt lại trí dũng song toàn, đại chiến 100 hiệp với Quan Vũ bất phân thắng bại, thần tiễn bắn sau lưng càng bách phát bách trúng, tên không bắn hụt.\r    Trận Trường Sa Hoàng Trung ngựa trượt chân dưới đao Quan Vũ được Quan Vũ tha, Hoàng Trung cũng bắn tên trúng mũ trụ tha cho Quan Vũ, anh hùng quý mến nhau cuối cùng khiến Hàn Huyền nghi ngờ, Hoàng Trung bị ép bất đắc dĩ quy phục Lưu Bị, trở thành một trong “Ngũ Hổ Thượng Tướng” cuối cùng của Thục quốc, trận Định Quân Sơn chém chết danh tướng Ngụy quốc Hạ Hầu Uyên càng làm Hoàng Trung danh tiếng vang xa.",
						"Đội Thử Thách",
						"Quân Hoàng Trung",
						"",
						"",
						"",
						"",
						}

--ID:1009 Hào Mông Quan
AUI_BATTLEFIELD[1009] = {
						"Loại hình: Đối kháng, giành điểm tích lũy\rCấp độ:Anh Hùng 31+\rChế độ xếp hàng:Cá nhân\rThời gian mở:Cả ngày\rCốt truyện:\r    Hào Mông Quan là nơi nổi tiếng Trương Phi thắp đèn đêm chiến Mã Siêu, lúc đó Lưu Bị vây đánh Thành Đô, Lưu Chương cầu cứu Trương Lỗ, Mã Siêu do bại trận mà投奔 (đầu quân) Trương Lỗ tự nguyện tấn công Hào Mông Quan, các tướng sĩ trấn thủ không ai địch nổi Mã Siêu, Lưu Bị đích thân dẫn Trương Phi đến cứu viện.\r    Trương Phi, Mã Siêu đại chiến hai trăm hiệp bất phân thắng bại, trời tối Trương Phi càng hưng phấn, thắp đèn đêm chiến với Mã Siêu, hai người không đánh không quen, sau đó Mã Siêu quy phục Lưu Bị, hai người cùng nằm trong Ngũ Hổ Thượng Tướng, trở thành một đoạn truyền kỳ. Hào Mông Quan cũng vì thế trở thành nơi tốt nhất cho các mãnh tướng anh hùng Long Tranh Hổ Đấu!",
						"Bình Bắc Quân",
						"Trấn Nam Quân",
						"",
						"",
						"",
						"",
						}

--ID:1008 Thất Tinh Trận
AUI_BATTLEFIELD[1008] = {
						"Loại hình: Hợp tác, Vượt ải\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 45+\rCốt truyện:\r    Kiến Hưng năm thứ mười hai, Gia Cát Lượng dẫn mười vạn đại quân xuất phát từ Hán Trung, men theo đường núi Bao Tà Cốc bắc thượng, xuyên qua Tần Lĩnh, tiến đóng trước thành trì Ngụy quân, sau vài lần xung đột quy mô lớn, do ảnh hưởng của vị trí địa lý, Thục quốc không chiếm được tiên cơ, ngược lại do vài lần tấn công đã tiêu hao thực lực Thục quân, xét thấy viễn chinh đến, Ngụy quân binh cường mã tráng, trước mắt sẽ là một cuộc chiến dai dẳng, Gia Cát Lượng hạ lệnh rút về Ngũ Trượng Nguyên, trong cuộc chiến dai dẳng, việc điều binh khiển tướng của Gia Cát Lượng khiến thế lực Ngụy quốc suýt rơi vào bờ vực bại thủ. Tuy nhiên do Gia Cát Lượng lao lực thành bệnh, cán cân thắng lợi cuộc đấu trí Ngụy Thục này dần nghiêng về phía Tư Mã Ý, Gia Cát Lượng chiếm giữ địa thế hiểm yếu Ngũ Trượng Nguyên bày Thất Tinh Trận Pháp, nỗ lực dùng thuật Kỳ Môn Độn Giáp, kéo dài tuổi thọ nghịch thiên cải mệnh thống nhất Trung Nguyên.\rPhía Ngụy quốc, Tư Mã Ý trong tình hình không rõ ràng phái tinh nhuệ dưới trướng đi thám thính đại doanh Gia Cát Lượng.\r",
						"Ngụy Quân",
						"Thục Quân",
						"Đánh bại Gia Cát Lượng",
						"Không",
						"Thời gian chiến trường kết thúc",
						"Không",
						}

--1036 Chiến Liên Server
AUI_BATTLEFIELD[1036] = {
						"Loại hình: Đối kháng, tiêu diệt boss\rĐộ khó:★★★★\rCấp độ:Anh Hùng 31+\rCốt truyện:\r    Thời loạn thế xuất anh hùng, trong thời đại hỗn loạn này, nguy cơ và cơ hội cùng tồn tại. Mở rộng lãnh thổ là lựa chọn tất yếu của mỗi người có chí trở thành bá chủ, thành trì hữu hạn trở thành mục tiêu tranh giành của nhiều thế lực. Thế lực chưa chiếm được thành trì cố gắng hết sức để giành được một căn cứ, thế lực đã có thành trì muốn có thêm nhiều thành trì hơn… Mất thành trì đối với mỗi thế lực đều là tổn thất lớn, có thể nói là tấc đất tấc vàng!\rChiến Thành Liên Server không chỉ tái hiện một trận chiến nổi tiếng nào đó, mà là bất kỳ trận chiến tranh giành thành trì nào có thể xảy ra ở bất cứ đâu trong thời đại quần hùng nổi dậy! Mỗi thế lực đều có thể đóng vai trò “Bên tấn công” hoặc “Bên phòng thủ” bất cứ lúc nào, thành còn người còn, thành mất người vong!",
						"Bên tấn công",
						"Bên phòng thủ",
						"Tiêu diệt chủ tướng bên phòng thủ",
						"Tiêu diệt chủ tướng bên tấn công",
						"Chủ tướng phe ta tử trận",
						"Chủ tướng phe ta tử trận",
						}
--ID:1038 Quần Anh Hội·Vòng Sơ Loại
AUI_BATTLEFIELD[1038] = {
						"Loại hình: Đối kháng 1v1\rThời gian:Mở vào 21:00 - 22:30 tối Thứ Tư, cách tuần\rGiới hạn:Mỗi tuần chỉ có thể dùng một loại Binh Chủng Chính tham gia\rVé vào cửa:Quần Anh Lệnh·Vòng Sơ Loại (Nhận ở chỗ Trạm Thiên Hiệp thành Trường An)\rCấp độ:Anh Hùng 45+\rGợi ý:Trong thời gian giới hạn, người chơi quyết định 5 người đứng đầu của mỗi binh chủng bằng xếp hạng điểm tích lũy, thứ hạng sẽ áp dụng quy tắc đến trước xếp trước, có thể xem chi tiết xếp hạng điểm tích lũy trong giao diện. 8 giờ sáng Thứ Năm, hệ thống sẽ gửi thưởng qua thư cho 5 người chơi đứng đầu mỗi binh chủng trên bảng xếp hạng điểm tích lũy, tuyển thủ thăng cấp sẽ có thể tham gia vòng phục đấu ở máy chủ Đấu Trường Thiên Hạ.\r\rCốt truyện:\r    Diên Khang nguyên niên, con trai Tào Tháo là Tào Phi cướp ngôi tự lập, lập nước Ngụy, định đô Lạc Dương, năm sau Lưu Bị để tiếp nối nhà Hán, xưng đế ở Thành Đô, sử gọi là “Thục Hán”. Chương Vũ năm thứ hai, Tôn Quyền xưng Vương, quốc hiệu “Ngô”, sau định đô Kiến Nghiệp, cục diện Tam Quốc hình thành. Trong thời đại Tam Quốc tranh bá này, giữa dân gian dấy lên hội võ thuật thịnh đại, con dân các nước trên đại lục Thần Châu đều muốn mượn cơ hội này để nổi danh lập công, vẻ vang cho đất nước. Anh hùng mệnh cách bạn còn chờ đợi gì nữa, đã đến lúc chiến đấu vì thiên hạ rồi.",
						"Phe ta",
						"Phe ta",
						"Tiêu diệt đối phương, giành 2 hiệp thắng lợi",
						"Tiêu diệt đối phương, giành 2 hiệp thắng lợi",
						"Đối thủ giành 2 hiệp thắng lợi",
						"Đối thủ giành 2 hiệp thắng lợi",
						}

--ID:1039 Quần Anh Hội·Vòng Phục Đấu
AUI_BATTLEFIELD[1039] = {
						"Loại hình: Đối kháng 1v1\rThời gian:Mở vào 21:00 - 22:30 tối Thứ Năm, cách tuần\rGiới hạn:Mỗi tuần chỉ có thể dùng một loại Binh Chủng Chính tham gia\rVé vào cửa:Quần Anh Lệnh·Vòng Phục Đấu\rCấp độ:Anh Hùng 45+\rGợi ý:Trong thời gian giới hạn, người chơi quyết định người đứng đầu mỗi binh chủng bằng xếp hạng điểm tích lũy, thứ hạng sẽ áp dụng quy tắc đến trước xếp trước, có thể xem chi tiết xếp hạng điểm tích lũy trong giao diện. Sau khi liên server mở vào sáng Thứ Bảy, hệ thống sẽ gửi thưởng qua thư cho người chơi đứng đầu mỗi binh chủng trên bảng xếp hạng điểm tích lũy.\r\rCốt truyện:\r    Diên Khang nguyên niên, con trai Tào Tháo là Tào Phi cướp ngôi tự lập, lập nước Ngụy, định đô Lạc Dương, năm sau Lưu Bị để tiếp nối nhà Hán, xưng đế ở Thành Đô, sử gọi là “Thục Hán”. Chương Vũ năm thứ hai, Tôn Quyền xưng Vương, quốc hiệu “Ngô”, sau định đô Kiến Nghiệp, cục diện Tam Quốc hình thành. Trong thời đại Tam Quốc tranh bá này, giữa dân gian dấy lên hội võ thuật thịnh đại, con dân các nước trên đại lục Thần Châu đều muốn mượn cơ hội này để nổi danh lập công, vẻ vang cho đất nước. Anh hùng mệnh cách bạn còn chờ đợi gì nữa, đã đến lúc chiến đấu vì thiên hạ rồi.",
						"Phe ta",
						"Phe ta",
						"Tiêu diệt đối phương, giành 2 hiệp thắng lợi",
						"Tiêu diệt đối phương, giành 2 hiệp thắng lợi",
						"Đối thủ giành 2 hiệp thắng lợi",
						"Đối thủ giành 2 hiệp thắng lợi",
						}

--ID:1040 Quần Anh Hội·Vòng Chung Kết
AUI_BATTLEFIELD[1040] = {
						"Loại hình: Đối kháng 1v1\rThời gian:Mở vào 22:00 - 23:30 tối Thứ Bảy, cách tuần\rGiới hạn:Mỗi tuần chỉ có thể dùng một loại Binh Chủng Chính tham gia\rVé vào cửa:Quần Anh Lệnh·Vòng Chung Kết\rCấp độ:Anh Hùng 45+\rGợi ý:Trong thời gian giới hạn, người chơi quyết định 3 người đứng đầu bằng xếp hạng điểm tích lũy, thứ hạng sẽ áp dụng quy tắc đến trước xếp trước, có thể xem chi tiết xếp hạng điểm tích lũy trong giao diện. Vào Chủ Nhật trên liên server, hệ thống sẽ gửi thưởng qua thư cho 3 người chơi đứng đầu trên bảng xếp hạng điểm tích lũy.\r\rCốt truyện:\r    Diên Khang nguyên niên, con trai Tào Tháo là Tào Phi cướp ngôi tự lập, lập nước Ngụy, định đô Lạc Dương, năm sau Lưu Bị để tiếp nối nhà Hán, xưng đế ở Thành Đô, sử gọi là “Thục Hán”. Chương Vũ năm thứ hai, Tôn Quyền xưng Vương, quốc hiệu “Ngô”, sau định đô Kiến Nghiệp, cục diện Tam Quốc hình thành. Trong thời đại Tam Quốc tranh bá này, giữa dân gian dấy lên hội võ thuật thịnh đại, con dân các nước trên đại lục Thần Châu đều muốn mượn cơ hội này để nổi danh lập công, vẻ vang cho đất nước. Anh hùng mệnh cách bạn còn chờ đợi gì nữa, đã đến lúc chiến đấu vì thiên hạ rồi.",
						"Phe ta",
						"Phe ta",
						"Tiêu diệt đối phương, giành 2 hiệp thắng lợi",
						"Tiêu diệt đối phương, giành 2 hiệp thắng lợi",
						"Đối thủ giành 2 hiệp thắng lợi",
						"Đối thủ giành 2 hiệp thắng lợi",
						}

--ID:1068 Hào Mông Quan Giới Hạn Thời Gian
AUI_BATTLEFIELD[1068] = {
						"Loại hình: Đối kháng, giành điểm tích lũy\rCấp độ:Anh Hùng 31+\rChế độ xếp hàng:Không giới hạn\rThời gian mở:19:00 - 23:00\rCốt truyện:\r    Hào Mông Quan là nơi nổi tiếng Trương Phi thắp đèn đêm chiến Mã Siêu, lúc đó Lưu Bị vây đánh Thành Đô, Lưu Chương cầu cứu Trương Lỗ, Mã Siêu do bại trận mà đầu quân Trương Lỗ tự nguyện tấn công Hào Mông Quan, các tướng sĩ trấn thủ không ai địch nổi Mã Siêu, Lưu Bị đích thân dẫn Trương Phi đến cứu viện.\r    Trương Phi, Mã Siêu đại chiến hai trăm hiệp bất phân thắng bại, trời tối Trương Phi却 (lại) càng hưng phấn, thắp đèn đêm chiến với Mã Siêu, hai người không đánh không quen, sau đó Mã Siêu quy phục Lưu Bị, hai người cùng nằm trong Ngũ Hổ Thượng Tướng, trở thành một đoạn truyền kỳ. Hào Mông Quan cũng vì thế trở thành nơi tốt nhất cho các mãnh tướng anh hùng Long Tranh Hổ Đấu!",
						"Bình Bắc Quân",
						"Trấn Nam Quân",
						"",
						"",
						"",
						"",
						}

--ID:1280 Tháp Thử Thách
AUI_BATTLEFIELD[1280] = {
						"Loại hình: Hợp tác, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 31+\rCốt truyện:\r    Tháp có ngàn tầng, vạn tượng trùng trùng, con đường vô tận, lặng chờ khám phá.\r    Ngoài Vị Ương Cung, doanh trại Thanh Phong, giữa rừng cây bằng phẳng, nhiều tòa tháp cao sừng sững, truyền thuyết nơi đây là nơi người thượng võ tu luyện. Có tin đồn Tiên nhân Tả Từ thường xuyên ở trong tháp đêm quan sát tinh tượng, đoán xem vạn tượng thế gian. Khi ông gặp người hữu duyên vào tháp, sẽ cùng họ đối ẩm đêm khuya, trình bày mọi việc xảy ra trên đất Thần Châu Hoa Hạ trước mắt, cùng họ luận bàn thế sự.\r    Người thượng võ hữu duyên trải qua lần lịch luyện này, đều sẽ giác ngộ nỗi băn khoăn của kiếp trước, nâng cao đáng kể năng lực của bản thân, thế là, truyền thuyết về tòa tháp này cứ thế truyền miệng trong dân gian, trở thành đề tài thảo luận của dân chúng, từ miệng họ biết được, khu rừng tháp này tên là “Tháp Thử Thách”.",
						"Bên Xông Tháp",
						"Bên Thủ Tháp",
						"Thông qua 99 tầng",
						"",
						"Số lần tử vong lớn hơn 20 lần",
						"",
						}
						
--ID:1292 Ước Chiến·Hứa Xương
AUI_BATTLEFIELD[1292] = {
						"Loại hình: Đấu trường, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 31+",
						"Bên Thử Thách",
						"Bên Ứng Chiến",
						"Thời gian kết thúc điểm tích lũy bên thử thách lớn hơn bên ứng chiến",
						"Thời gian kết thúc điểm tích lũy bên ứng chiến lớn hơn bên thử thách",
						"",
						"",
						}

--ID:1293 Ước Chiến·Hán Trung
AUI_BATTLEFIELD[1293] = {
						"Loại hình: Đấu trường, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 31+",
						"Bên Thử Thách",
						"Bên Ứng Chiến",
						"Thời gian kết thúc điểm tích lũy bên thử thách lớn hơn bên ứng chiến",
						"Thời gian kết thúc điểm tích lũy bên ứng chiến lớn hơn bên thử thách",
						"",
						"",
						}

--ID:1294 Ước Chiến·Kiến Nghiệp
AUI_BATTLEFIELD[1294] = {
						"Loại hình: Đấu trường, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 31+",
						"Bên Thử Thách",
						"Bên Ứng Chiến",
						"Thời gian kết thúc điểm tích lũy bên thử thách lớn hơn bên ứng chiến",
						"Thời gian kết thúc điểm tích lũy bên ứng chiến lớn hơn bên thử thách",
						"",
						"",
						}
						
--ID:1295 Trận Tương Dương
AUI_BATTLEFIELD[1295] = {
						"Loại hình: Đấu trường, Điểm tích lũy\rĐộ khó:★★★★★\rCấp độ:Anh Hùng 31+",
						"Bên Thử Thách",
						"Bên Ứng Chiến",
						"Thời gian kết thúc điểm tích lũy bên thử thách lớn hơn bên ứng chiến",
						"Thời gian kết thúc điểm tích lũy bên ứng chiến lớn hơn bên thử thách",
						"",
						"",
						}
--ID:1311 Chiến Trường Kỵ Chiến PVP Trận Giới Kiều
AUI_BATTLEFIELD[1311] = {
						"Loại hình: Đấu trường, Đối kháng\rĐộ khó:★★★★\rCấp độ:Anh Hùng 1+\rĐối đầu:Viên Thiệu Quân VS Công Tôn Toản Quân\rMục tiêu:Tiêu diệt chủ tướng trong đại bản doanh đối phương\rCốt truyện:\rNăm 191 Công nguyên (Sơ Bình năm thứ hai) mùa đông, Công Tôn Việt bị tên lạc của Viên Thiệu quân bắn trúng tử vong trong trận Dương Thành. Công Tôn Toản vì báo thù cho Công Tôn Việt, dấy binh tấn công Viên Thiệu. Công Tôn Toản tấn công mãnh liệt, uy trấn Hà Bắc. Nhất thời, các quận huyện Ký Châu đều nghe danh quy hàng.\rSơ Bình năm thứ hai, Công Tôn Toản dẫn đại quân phá tan quân Khăn Vàng Thanh Châu, Từ Châu, binh phong cường thịnh, tiến đóng ở Giới Kiều. Viên Thiệu đích thân dẫn binh nghênh chiến Công Tôn Toản, hai quân triển khai giao chiến ở khoảng 20 km phía nam Giới Kiều. Vòng chiến tranh mới sắp bùng nổ…………",
						"Viên Thiệu Quân",
						"Công Tôn Toản Quân",
						"Tiêu diệt Công Tôn Toản",
						"Tiêu diệt Viên Thiệu",
						"Chủ tướng phe ta tử trận",
						"Chủ tướng phe ta tử trận",
						}
--ID:1387						
AUI_BATTLEFIELD[1387] = {
						"Giới thiệu Chiến Tranh",
						"Bên tấn công",
						"Bên phòng thủ",
						"Đẩy lui Tào Tháo",
						"Tào Tháo còn sống",
						"Tào Tháo còn sống",
						"Tào Tháo còn sống khi hoạt động kết thúc",
						}
						
AUI_BATTLEFIELD[1388] = {
						"Giới thiệu Chiến Tranh",
						"Bên tấn công",
						"Bên phòng thủ",
						"Đẩy lui Lưu Bị",
						"Lưu Bị còn sống",
						"Lưu Bị còn sống",
						"Lưu Bị còn sống khi hoạt động kết thúc",
						}
						
AUI_BATTLEFIELD[1389] = {
						"Giới thiệu Chiến Tranh",
						"Bên tấn công",
						"Bên phòng thủ",
						"Đẩy lui Tôn Quyền",
						"Tôn Quyền còn sống",
						"Tôn Quyền còn sống",
						"Tôn Quyền còn sống khi hoạt động kết thúc",
						}

--组队提示消息
TEXT_TEAM_INVITE = "%s mời bạn gia nhập đội, có đồng ý không?";
TEXT_TEAM_INVITE_REJECT = "%s đã từ chối lời mời vào đội của bạn.";
TEXT_TEAM_REQUEST = "%s yêu cầu gia nhập đội của bạn, có đồng ý không?";
TEXT_TEAM_REQUEST_REJECT = "%s đã từ chối yêu cầu vào đội của bạn.";
TEXT_TEAM_MEMBER_JOIN = "%s đã gia nhập đội của bạn.";
TEXT_TEAM_MEMBER_LEAVE = "%s đã rời đội.";
TEXT_TEAM_DISCARD = "%s đã giải tán đội.";
TEXT_TEAM_SELF_JOIN = "Bạn đã gia nhập một đội.";
TEXT_TEAM_SELF_LEAVE = "Bạn đã rời đội.";
TEXT_TEAM_CHANGE_LEADER = "%s đã trở thành đội trưởng mới.";
TEXT_TEAM_MEMBER_LOGIN = "%s đã vào trò chơi.";
TEXT_TEAM_MEMBER_LOGOUT = "%s đã rời trò chơi.";
TEXT_TEAM_CHANGELOOT_FREE = "Phương thức phân phối tổ đội đã đổi thành %s.";
TEXT_TEAM_CHANGELOOT_TEAM = "Phương thức phân phối tổ đội đã đổi thành %s, phẩm chất bỏ phiếu thấp nhất là %s.";

--Phân phối tổ đội
GNR_LOOTRULE_FREE = "Tự do nhặt";
GNR_LOOTRULE_TEAM = "Phân phối theo đội";
GNR_ROLLLEVEL_2 = "Thứ phẩm";
GNR_ROLLLEVEL_3 = "Trân phẩm";
GNR_ROLLLEVEL_4 = "Tuyệt phẩm";

--Tên bản đồ
GNR_MAP_NAME1 = "Hà Bắc"
GNR_MAP_NAME2 = "Tây Lương"
GNR_MAP_NAME3 = "Ba Thục"
GNR_MAP_NAME4 = "Nam Man"
GNR_MAP_NAME5 = "Giang Nam"
GNR_MAP_NAME6 = "Kinh Tương"
GNR_MAP_NAME7 = "Trường An"
GNR_MAP_NAME8 = "Thảo Nguyên"
GNR_MAP_NAME9 = "Lạc Dương"
GNR_MAP_NAME10 = "Xuyên Nam"

--Gợi ý nâng cấp binh chủng chính phụ
AUI_CHARACTER_ButtonHELP = "  Nhấp vào nút bên phải để nâng cấp"
AUI_CHARACTER_PROFHELP = "  Có thể nâng cấp tại %s"
AUI_CHARACTER_PROFMAXHELP = "  Binh chủng của bạn đã mãn cấp"
AUI_CHARACTER_PROFNILHELP = "  Bạn chưa chọn binh chủng"

--Gợi ý nâng cấp kỹ năng sản xuất
AUI_PRODUCESKILL_TIP = "Bạn có thể học kỹ năng %s của %s%%s ở cấp %s tại %s."
TEXT_PRODUCESKILL_SKILLTYPE1 = "Thuần Dưỡng"
TEXT_PRODUCESKILL_SKILLTYPE2 = "Nấu Ăn"
TEXT_PRODUCESKILL_SKILLTYPE3 = "Thợ Rèn"
TEXT_PRODUCESKILL_SKILLTYPE4 = "May Vá"
TEXT_PRODUCESKILL_SKILLTYPE5 = "Xảo Tượng"
TEXT_PRODUCESKILL_SKILLTYPE6 = "Dược Sư"
TEXT_PRODUCESKILL_SKILLTYPE7 = "Cấp Cứu"
TEXT_PRODUCESKILL_SKILLTYPE8 = "Thợ Công"
TEXT_PRODUCESKILL_SKILLLEVELTYPE1 = "Sơ cấp"
TEXT_PRODUCESKILL_SKILLLEVELTYPE2 = "Trung cấp"
TEXT_PRODUCESKILL_SKILLLEVELTYPE3 = "Cao cấp"
TEXT_PRODUCESKILL_SKILLLEVELTYPE4 = "Đặc cấp"
TEXT_PRODUCESKILL_SKILLLEVELTYPE5 = "Đại sư"
TEXT_PRODUCESKILL_SKILLLEVELTYPE6 = "Thần Tượng"
TEXT_PRODUCESKILL_SKILLLEVELTYPE7 = "Tông sư"
TEXT_PRODUCESKILL_SKILLLEVELTYPE8 = "Ngự dụng"
TEXT_PRODUCESKILL_NPCNAME1 = "Hàn Lê"
TEXT_PRODUCESKILL_NPCNAME2 = "Trương Mạo"
TEXT_PRODUCESKILL_NPCNAME3 = "Bồ Nguyên"
TEXT_PRODUCESKILL_NPCNAME4 = "Ngu Quyên Chi"
TEXT_PRODUCESKILL_NPCNAME5 = "Ngu Thiếu Quân"
TEXT_PRODUCESKILL_NPCNAME6 = "Đường Ngu"
TEXT_PRODUCESKILL_NPCNAME7 = "Lý Đương Chi"
TEXT_PRODUCESKILL_NPCNAME8 = "Trịnh Hồn"
TEXT_PRODUCESKILL_NOTE1 = "Nâng cấp tọa kỵ."
TEXT_PRODUCESKILL_NOTE2 = "Chế tạo thức ăn, rượu ngon và trà uống."
TEXT_PRODUCESKILL_NOTE3 = "Chế tạo vũ khí."
TEXT_PRODUCESKILL_NOTE4 = "Chế tạo phòng cụ."
TEXT_PRODUCESKILL_NOTE5 = "Chế tạo vật liệu cường hóa, tổng hợp Nguyên Thạch và Phù Ngọc."
TEXT_PRODUCESKILL_NOTE6 = "Chế tạo thuốc viên hồi phục sinh lực ngay lập tức."
TEXT_PRODUCESKILL_NOTE7 = "Chế tạo thuốc mỡ có thể sử dụng trong chiến đấu."
TEXT_PRODUCESKILL_NOTE8 = "Chế tạo bảo vật, Điểm Hóa Bí Văn Linh Châu."

--Gợi ý thuộc tính đặc biệt

--Vũ khí
SpecailDesc0 = {}
SpecailDesc0[8] = "#N sau nỗ lực không ngừng, đã thành công chế tạo ra #G, lập tức vui mừng khôn xiết, khiến người khác ngưỡng mộ!"
SpecailDesc0[12] = "#N qua nỗ lực kiên trì không ngừng, cuối cùng cũng rèn ra được #G, trong khoảnh khắc một luồng hàn ý sắc bén theo đó tỏa ra, mọi người đều kinh hãi!"
SpecailDesc0[15] = "Sát khí khai phong, không gì cản nổi! #N dựa vào thành ý của tinh thạch và nghị lực kiên định, cuối cùng đã có được #G, cả triều đình đều chấn động!"
SpecailDesc0[16] = "Sát khí khai phong, không gì cản nổi! #N dựa vào thành ý của tinh thạch và nghị lực kiên định, cuối cùng đã có được #G, cả triều đình đều chấn động!"
SpecailDesc0[17] = "Sát khí khai phong, không gì cản nổi! #N dựa vào thành ý của tinh thạch và nghị lực kiên định, cuối cùng đã có được #G, cả triều đình đều chấn động!"
SpecailDesc0[18] = "Sát khí khai phong, không gì cản nổi! #N dựa vào thành ý của tinh thạch và nghị lực kiên định, cuối cùng đã có được #G, cả triều đình đều chấn động!"
SpecailDesc0[19] = "Sát khí khai phong, không gì cản nổi! #N dựa vào thành ý của tinh thạch và nghị lực kiên định, cuối cùng đã có được #G, cả triều đình đều chấn động!"
SpecailDesc0[20] = "Mười bước giết một người, ngàn dặm không lưu lại dấu vết! Thần binh vừa ra, trời khóc đất than quỷ thần đều kinh hãi! Không biết thế gian còn ai có thể tranh tài cao thấp với #N đang cầm #G!"
SpecailDesc0[21] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N đang cầm #G đã than thở như vậy!"
SpecailDesc0[22] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N đang cầm #G đã than thở như vậy!"
SpecailDesc0[23] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N đang cầm #G đã than thở như vậy!"
SpecailDesc0[24] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N đang cầm #G đã than thở như vậy!"
SpecailDesc0[25] = "Cười Tam Quốc, nằm trong túi ta, luận anh hùng, thiên hạ trừ ta còn ai! Có được thần khí này, ai dám cùng ta một trận chiến! #N đang cầm #G đã than thở như vậy!"

--Phòng cụ
SpecailDesc1 = {}
SpecailDesc1[8] = "#N sau nỗ lực không ngừng, đã thành công chế tạo ra #G, năng lực dường như đã tăng lên rất nhiều!"
SpecailDesc1[12] = "#N qua nỗ lực kiên trì không ngừng, cuối cùng cũng rèn ra được #G, thật là thần kỳ, tuyệt vời thay!"
SpecailDesc1[15] = "#N mặc #G xuất hiện, thiên triều tất sẽ dấy lên một trận máu tanh gió tanh!"
SpecailDesc1[16] = "#N mặc #G xuất hiện, thiên triều tất sẽ dấy lên một trận máu tanh gió tanh!"
SpecailDesc1[17] = "#N mặc #G xuất hiện, thiên triều tất sẽ dấy lên một trận máu tanh gió tanh!"
SpecailDesc1[18] = "#N mặc #G xuất hiện, thiên triều tất sẽ dấy lên một trận máu tanh gió tanh!"
SpecailDesc1[19] = "#N mặc #G xuất hiện, thiên triều tất sẽ dấy lên một trận máu tanh gió tanh!"
SpecailDesc1[20] = "Ba chén nhả lời hứa, năm núi đổ còn nhẹ! Sự tồn tại của #G, đã hoàn toàn kích thích Vương Giả Chi Khí trong cơ thể #N, cả thiên hạ vì thế mà mê mẩn!"
SpecailDesc1[21] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N khoác #G đã than thở như vậy!"
SpecailDesc1[22] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N khoác #G đã than thở như vậy!"
SpecailDesc1[23] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N khoác #G đã than thở như vậy!"
SpecailDesc1[24] = "Ba chiêu đã lấy thủ cấp thượng tướng, một người có thể ngăn vạn quân! Có được thần khí này, ai dám cùng ta một trận chiến! #N khoác #G đã than thở như vậy!"
SpecailDesc1[25] = "Cười Tam Quốc, nằm trong túi ta, luận anh hùng, thiên hạ trừ ta còn ai! Có được thần khí này, ai dám cùng ta một trận chiến! #N khoác #G đã than thở như vậy!"

--LevelHelpString
--1 Binh chủng
TEXT_PROFHELP_TITLE1 = "1. Gợi ý nâng cấp binh chủng:"
TEXT_PROFHELP_TITLE2 = "\r2. Gợi ý học kỹ năng:"
TEXT_PROFHELP_TITLE3 = "\r3. Gợi ý điểm chuyên tinh:"
TEXT_PROFHELP_TITLE4 = "\r4. Gợi ý điểm tư chất:"

TEXT_PROFHELP_NOWMAINPROF = "Binh chủng chính hiện tại của bạn là ^ff9090%s%s^ffffff."
TEXT_PROFHELP_NOWSUBPROF = "Binh chủng phụ hiện tại của bạn là ^ff9090%s%s^ffffff."
TEXT_PROFHELP_MAINPROFNIL = "Bạn chưa chọn binh chủng chính, có thể đến #%d# để chọn binh chủng chính muốn tu luyện."
TEXT_PROFHELP_SUBPROFNIL1 = "Bạn chưa chọn binh chủng phụ, có thể đến #%d# để chọn binh chủng phụ muốn tu luyện."
TEXT_PROFHELP_SUBPROFNIL2 = "Bạn chưa tu luyện binh chủng phụ. Khi cấp độ binh chủng chính của bạn đạt ^ff9090%s%s^ffffff trở lên, mới có thể tu luyện binh chủng phụ."
TEXT_PROFHELP_SUBPROFNIL3 = "Bạn chưa tu luyện binh chủng phụ."
TEXT_PROFHELP_MAINPROFMAX = "Binh chủng chính đã mãn cấp, tạm thời không thể tăng thêm."
TEXT_PROFHELP_SUBPROFMAX = "Binh chủng phụ đã mãn cấp, tạm thời không thể tăng thêm."
TEXT_PROFHELP_MAINSUGGEST1 = "Đề nghị bạn nâng cấp binh chủng chính lên ^ff9090%s%s^ffffff, khi nâng cấp sẽ tiêu hao điểm kinh nghiệm (lịch luyện)."
TEXT_PROFHELP_MAINSUGGEST2 = "Bạn cần đến #%d# hoàn thành Nhiệm Vụ Binh Chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff9090%s%s^ffffff."
TEXT_PROFHELP_SUBSUGGEST = "Bạn cần đến #%d# hoàn thành Nhiệm Vụ Binh Chủng, mới có thể nâng cấp binh chủng phụ lên giai đoạn tiếp theo: ^ff9090%s%s^ffffff."
TEXT_PROFHELP_SUGGEST = "Đề nghị bạn ưu tiên nâng cấp binh chủng chính, vì nếu cấp độ binh chủng chính của bạn thấp hơn cấp độ binh chủng phụ, khi nâng cấp binh chủng chính sẽ tiêu hao nhiều điểm kinh nghiệm hơn."

TEXT_PROFHELP_LEARNNIL = "Cấp độ này không có kỹ năng chiến đấu nào có thể học."
TEXT_PROFHELP_LEARNSKILL = "Bạn có thể đến #%d# học kỹ năng chiến đấu mới."
TEXT_PROFHELP_LEARNRIDE = "Khi bạn đạt cấp 20, có thể đến #%d# học kỵ thuật."

TEXT_PROFHELP_MAINDOWERNIL = "Bạn chưa chọn binh chủng chính, không có điểm chuyên tinh khả dụng."
TEXT_PROFHELP_MAINDOWER1 = "Tổng điểm chuyên tinh binh chủng chính hiện tại của bạn là %d."
TEXT_PROFHELP_MAINDOWER2 = "Mỗi khi cấp độ binh chủng chính tăng lên một cấp có thể nhận được một điểm chuyên tinh."
TEXT_PROFHELP_SUBDOWERNIL = "Bạn chưa chọn binh chủng phụ, không có điểm chuyên tinh khả dụng."
TEXT_PROFHELP_SUBDOWER1 = "Tổng điểm chuyên tinh binh chủng phụ hiện tại của bạn là %d."
TEXT_PROFHELP_SUBDOWER2 = "Mỗi khi cấp độ binh chủng phụ tăng lên một cấp có thể nhận được một điểm chuyên tinh."
TEXT_PROFHELP_SUBDOWER3 = "Bạn cần nâng cấp binh chủng phụ lên ^ff9090%s%s^ffffff, mới có thể nhận được điểm chuyên tinh. Sau đó mỗi khi cấp độ binh chủng phụ tăng lên một cấp có thể nhận được một điểm chuyên tinh."

TEXT_PROFHELP_INTDOWER1 = "Tổng điểm tư chất hiện tại của bạn là %d."
TEXT_PROFHELP_INTDOWER2 = "Hiện tại mỗi khi cấp độ nhân vật của bạn tăng lên một cấp có thể nhận được năm điểm tư chất."

GNR_PROFRANK_NAME0 = ""
GNR_PROFRANK_NAME1 = "Nhất đoạn"
GNR_PROFRANK_NAME2 = "Nhị đoạn"
GNR_PROFRANK_NAME3 = "Tam đoạn"
GNR_PROFRANK_NAME4 = "Tứ đoạn"
GNR_PROFRANK_NAME5 = "Ngũ đoạn"
GNR_PROFRANK_NAME6 = "Lục đoạn"
GNR_PROFRANK_NAME7 = "Thất đoạn"
GNR_PROFRANK_NAME8 = "Bát đoạn"
GNR_PROFRANK_NAME9 = "Cửu đoạn"

GNR_PROFLEVEL_NAME1_0 = "Người Tập Đao"
GNR_PROFLEVEL_NAME1_1 = "Đao Binh"
GNR_PROFLEVEL_NAME1_2 = "Đao Kỵ"
GNR_PROFLEVEL_NAME1_3 = "Đao Úy"
GNR_PROFLEVEL_NAME1_4 = "Đao Tướng"
GNR_PROFLEVEL_NAME1_5 = "Đao Thánh"
GNR_PROFLEVEL_NAME1_6 = "Đao Thần"
GNR_PROFLEVEL_NAME1_7 = "Phong Đao Sứ"
GNR_PROFLEVEL_NAME1_8 = "Phong Đao Tôn"
GNR_PROFLEVEL_NAME1_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME2_0 = "Người Tập Thương"
GNR_PROFLEVEL_NAME2_1 = "Thương Binh"
GNR_PROFLEVEL_NAME2_2 = "Thương Kỵ"
GNR_PROFLEVEL_NAME2_3 = "Thương Úy"
GNR_PROFLEVEL_NAME2_4 = "Thương Tướng"
GNR_PROFLEVEL_NAME2_5 = "Thương Vương"
GNR_PROFLEVEL_NAME2_6 = "Thương Thần"
GNR_PROFLEVEL_NAME2_7 = "Thánh Thương Sứ"
GNR_PROFLEVEL_NAME2_8 = "Thánh Thương Tôn"
GNR_PROFLEVEL_NAME2_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME3_0 = "Người Tập Kích"
GNR_PROFLEVEL_NAME3_1 = "Kích Binh"
GNR_PROFLEVEL_NAME3_2 = "Kích Kỵ"
GNR_PROFLEVEL_NAME3_3 = "Kích Úy"
GNR_PROFLEVEL_NAME3_4 = "Kích Tướng"
GNR_PROFLEVEL_NAME3_5 = "Kích Thánh"
GNR_PROFLEVEL_NAME3_6 = "Kích Thần"
GNR_PROFLEVEL_NAME3_7 = "Xích Kích Sứ"
GNR_PROFLEVEL_NAME3_8 = "Xích Kích Tôn"
GNR_PROFLEVEL_NAME3_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME4_0 = "Người Tập Việt"
GNR_PROFLEVEL_NAME4_1 = "Việt Binh"
GNR_PROFLEVEL_NAME4_2 = "Việt Kỵ"
GNR_PROFLEVEL_NAME4_3 = "Việt Úy"
GNR_PROFLEVEL_NAME4_4 = "Việt Tướng"
GNR_PROFLEVEL_NAME4_5 = "Việt Thánh"
GNR_PROFLEVEL_NAME4_6 = "Việt Thần"
GNR_PROFLEVEL_NAME4_7 = "Hoàng Việt Sứ"
GNR_PROFLEVEL_NAME4_8 = "Hoàng Việt Tôn"
GNR_PROFLEVEL_NAME4_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME5_0 = "Người Tập Xoa"
GNR_PROFLEVEL_NAME5_1 = "Xoa Binh"
GNR_PROFLEVEL_NAME5_2 = "Xoa Kỵ"
GNR_PROFLEVEL_NAME5_3 = "Xoa Úy"
GNR_PROFLEVEL_NAME5_4 = "Xoa Tướng"
GNR_PROFLEVEL_NAME5_5 = "Xoa Thánh"
GNR_PROFLEVEL_NAME5_6 = "Xoa Thần"
GNR_PROFLEVEL_NAME5_7 = "Ảnh Xoa Sứ"
GNR_PROFLEVEL_NAME5_8 = "Ảnh Xoa Tôn"
GNR_PROFLEVEL_NAME5_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME6_0 = "Người Tập Côn"
GNR_PROFLEVEL_NAME6_1 = "Côn Binh"
GNR_PROFLEVEL_NAME6_2 = "Côn Kỵ"
GNR_PROFLEVEL_NAME6_3 = "Côn Úy"
GNR_PROFLEVEL_NAME6_4 = "Côn Tướng"
GNR_PROFLEVEL_NAME6_5 = "Côn Vương"
GNR_PROFLEVEL_NAME6_6 = "Côn Tiên"
GNR_PROFLEVEL_NAME6_7 = "Xảo Côn Sứ"
GNR_PROFLEVEL_NAME6_8 = "Xảo Côn Tôn"
GNR_PROFLEVEL_NAME6_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME7_0 = "Người Tập Kiếm"
GNR_PROFLEVEL_NAME7_1 = "Kiếm Khách"
GNR_PROFLEVEL_NAME7_2 = "Kiếm Sĩ"
GNR_PROFLEVEL_NAME7_3 = "Kiếm Hiệp"
GNR_PROFLEVEL_NAME7_4 = "Kiếm Hào"
GNR_PROFLEVEL_NAME7_5 = "Kiếm Thánh"
GNR_PROFLEVEL_NAME7_6 = "Kiếm Tiên"
GNR_PROFLEVEL_NAME7_7 = "Ngạo Kiếm Sứ"
GNR_PROFLEVEL_NAME7_8 = "Ngạo Kiếm Tôn"
GNR_PROFLEVEL_NAME7_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME8_0 = "Người Tập Phủ"
GNR_PROFLEVEL_NAME8_1 = "Phủ Binh"
GNR_PROFLEVEL_NAME8_2 = "Phủ Kỵ"
GNR_PROFLEVEL_NAME8_3 = "Phủ Úy"
GNR_PROFLEVEL_NAME8_4 = "Phủ Tướng"
GNR_PROFLEVEL_NAME8_5 = "Phủ Vương"
GNR_PROFLEVEL_NAME8_6 = "Phủ Thần"
GNR_PROFLEVEL_NAME8_7 = "Cuồng Phủ Sứ"
GNR_PROFLEVEL_NAME8_8 = "Cuồng Phủ Tôn"
GNR_PROFLEVEL_NAME8_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME9_0 = "Người Tập Câu"
GNR_PROFLEVEL_NAME9_1 = "Câu Khách"
GNR_PROFLEVEL_NAME9_2 = "Câu Sĩ"
GNR_PROFLEVEL_NAME9_3 = "Câu Hiệp"
GNR_PROFLEVEL_NAME9_4 = "Câu Hào"
GNR_PROFLEVEL_NAME9_5 = "Câu Vương"
GNR_PROFLEVEL_NAME9_6 = "Câu Thần"
GNR_PROFLEVEL_NAME9_7 = "Tật Câu Sứ"
GNR_PROFLEVEL_NAME9_8 = "Tật Câu Tôn"
GNR_PROFLEVEL_NAME9_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME10_0 = "Người Tập Giản"
GNR_PROFLEVEL_NAME10_1 = "Giản Khách"
GNR_PROFLEVEL_NAME10_2 = "Giản Sĩ"
GNR_PROFLEVEL_NAME10_3 = "Giản Hiệp"
GNR_PROFLEVEL_NAME10_4 = "Giản Hào"
GNR_PROFLEVEL_NAME10_5 = "Giản Thánh"
GNR_PROFLEVEL_NAME10_6 = "Giản Thần"
GNR_PROFLEVEL_NAME10_7 = "Liệt Giản Sứ"
GNR_PROFLEVEL_NAME10_8 = "Liệt Giản Tôn"
GNR_PROFLEVEL_NAME10_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME11_0 = "Người Tập Chùy"
GNR_PROFLEVEL_NAME11_1 = "Chùy Binh"
GNR_PROFLEVEL_NAME11_2 = "Chùy Kỵ"
GNR_PROFLEVEL_NAME11_3 = "Chùy Úy"
GNR_PROFLEVEL_NAME11_4 = "Chùy Tướng"
GNR_PROFLEVEL_NAME11_5 = "Chùy Thánh"
GNR_PROFLEVEL_NAME11_6 = "Chùy Thần"
GNR_PROFLEVEL_NAME11_7 = "Oanh Chùy Sứ"
GNR_PROFLEVEL_NAME11_8 = "Oanh Chùy Tôn"
GNR_PROFLEVEL_NAME11_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME12_0 = "Người Tập Trảo"
GNR_PROFLEVEL_NAME12_1 = "Trảo Khách"
GNR_PROFLEVEL_NAME12_2 = "Trảo Sĩ"
GNR_PROFLEVEL_NAME12_3 = "Trảo Hiệp"
GNR_PROFLEVEL_NAME12_4 = "Trảo Hào"
GNR_PROFLEVEL_NAME12_5 = "Trảo Thánh"
GNR_PROFLEVEL_NAME12_6 = "Trảo Thần"
GNR_PROFLEVEL_NAME12_7 = "Lôi Trảo Sứ"
GNR_PROFLEVEL_NAME12_8 = "Lôi Trảo Tôn"
GNR_PROFLEVEL_NAME12_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME13_0 = "Người Tập Thuẫn"
GNR_PROFLEVEL_NAME13_1 = "Thuẫn Binh"
GNR_PROFLEVEL_NAME13_2 = "Thuẫn Kỵ"
GNR_PROFLEVEL_NAME13_3 = "Thuẫn Úy"
GNR_PROFLEVEL_NAME13_4 = "Thuẫn Tướng"
GNR_PROFLEVEL_NAME13_5 = "Thuẫn Vương"
GNR_PROFLEVEL_NAME13_6 = "Thuẫn Tiên"
GNR_PROFLEVEL_NAME13_7 = "Kiên Thuẫn Sứ"
GNR_PROFLEVEL_NAME13_8 = "Kiên Thuẫn Tôn"
GNR_PROFLEVEL_NAME13_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME14_0 = "Người Tập Hoàn"
GNR_PROFLEVEL_NAME14_1 = "Hoàn Thủ"
GNR_PROFLEVEL_NAME14_2 = "Hoàn Sĩ"
GNR_PROFLEVEL_NAME14_3 = "Hoàn Hiệp"
GNR_PROFLEVEL_NAME14_4 = "Hoàn Tướng"
GNR_PROFLEVEL_NAME14_5 = "Hoàn Thánh"
GNR_PROFLEVEL_NAME14_6 = "Hoàn Tiên"
GNR_PROFLEVEL_NAME14_7 = "Linh Hoàn Sứ"
GNR_PROFLEVEL_NAME14_8 = "Linh Hoàn Tôn"
GNR_PROFLEVEL_NAME14_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME15_0 = "Người Tập Trượng"
GNR_PROFLEVEL_NAME15_1 = "Trượng Khách"
GNR_PROFLEVEL_NAME15_2 = "Trượng Sĩ"
GNR_PROFLEVEL_NAME15_3 = "Trượng Hiệp"
GNR_PROFLEVEL_NAME15_4 = "Trượng Tướng"
GNR_PROFLEVEL_NAME15_5 = "Trượng Vương"
GNR_PROFLEVEL_NAME15_6 = "Trượng Tiên"
GNR_PROFLEVEL_NAME15_7 = "Hào Trượng Sứ"
GNR_PROFLEVEL_NAME15_8 = "Hào Trượng Tôn"
GNR_PROFLEVEL_NAME15_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME16_0 = "Người Tập Vũ"
GNR_PROFLEVEL_NAME16_1 = "Vũ Giả"
GNR_PROFLEVEL_NAME16_2 = "Vũ Sĩ"
GNR_PROFLEVEL_NAME16_3 = "Vũ Sư"
GNR_PROFLEVEL_NAME16_4 = "Vũ Hào"
GNR_PROFLEVEL_NAME16_5 = "Vũ Vương"
GNR_PROFLEVEL_NAME16_6 = "Vũ Tiên"
GNR_PROFLEVEL_NAME16_7 = "Diệu Vũ Sứ"
GNR_PROFLEVEL_NAME16_8 = "Diệu Vũ Tôn"
GNR_PROFLEVEL_NAME16_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME17_0 = "Người Tập Phiến"
GNR_PROFLEVEL_NAME17_1 = "Phiến Sinh"
GNR_PROFLEVEL_NAME17_2 = "Phiến Sĩ"
GNR_PROFLEVEL_NAME17_3 = "Phiến Hiệp"
GNR_PROFLEVEL_NAME17_4 = "Phiến Tướng"
GNR_PROFLEVEL_NAME17_5 = "Phiến Vương"
GNR_PROFLEVEL_NAME17_6 = "Phiến Tiên"
GNR_PROFLEVEL_NAME17_7 = "Dật Phiến Sứ"
GNR_PROFLEVEL_NAME17_8 = "Dật Phiến Tôn"
GNR_PROFLEVEL_NAME17_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME18_0 = "Người Tập Cung"
GNR_PROFLEVEL_NAME18_1 = "Cung Thủ"
GNR_PROFLEVEL_NAME18_2 = "Cung Kỵ"
GNR_PROFLEVEL_NAME18_3 = "Cung Úy"
GNR_PROFLEVEL_NAME18_4 = "Cung Tướng"
GNR_PROFLEVEL_NAME18_5 = "Cung Vương"
GNR_PROFLEVEL_NAME18_6 = "Cung Thần"
GNR_PROFLEVEL_NAME18_7 = "Thiên Cung Sứ"
GNR_PROFLEVEL_NAME18_8 = "Thiên Cung Tôn"
GNR_PROFLEVEL_NAME18_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME19_0 = "Người Tập Tiên"
GNR_PROFLEVEL_NAME19_1 = "Tiên Thủ"
GNR_PROFLEVEL_NAME19_2 = "Tiên Kỵ"
GNR_PROFLEVEL_NAME19_3 = "Tiên Úy"
GNR_PROFLEVEL_NAME19_4 = "Tiên Tướng"
GNR_PROFLEVEL_NAME19_5 = "Tiên Vương"
GNR_PROFLEVEL_NAME19_6 = "Tiên Thần"
GNR_PROFLEVEL_NAME19_7 = "Thần Tiên Sứ"
GNR_PROFLEVEL_NAME19_8 = "Thần Tiên Tôn"
GNR_PROFLEVEL_NAME19_9 = "Chờ định 3"

GNR_PROFLEVEL_NAME20_0 = "Người Tập Nỏ"
GNR_PROFLEVEL_NAME20_1 = "Nỏ Thủ"
GNR_PROFLEVEL_NAME20_2 = "Nỏ Kỵ"
GNR_PROFLEVEL_NAME20_3 = "Nỏ Úy"
GNR_PROFLEVEL_NAME20_4 = "Nỏ Tướng"
GNR_PROFLEVEL_NAME20_5 = "Nỏ Vương"
GNR_PROFLEVEL_NAME20_6 = "Nỏ Thần"
GNR_PROFLEVEL_NAME20_7 = "Thiên Nỏ Sứ"
GNR_PROFLEVEL_NAME20_8 = "Thiên Nỏ Tôn"
GNR_PROFLEVEL_NAME20_9 = "Chờ định 3"

--2 Trang bị
TEXT_EQUIPHELP_CANCHANGE = "Bộ phận có thể thay đổi trang bị mới ở cấp độ hiện tại: %s"
TEXT_EQUIPHELP_NOWEQUIP = "Trang bị ^ff9090%s^ffffff có thể trang bị là: %s."
TEXT_EQUIPHELP_NEXTEQUIP = "%s bậc tiếp theo cần cấp %s mới có thể trang bị."

GNR_EQUIPLEVEL_NAME0 = "Sơ cấp"
GNR_EQUIPLEVEL_NAME1 = "Bậc một"
GNR_EQUIPLEVEL_NAME2 = "Bậc hai"
GNR_EQUIPLEVEL_NAME3 = "Bậc ba"
GNR_EQUIPLEVEL_NAME4 = "Bậc bốn"
GNR_EQUIPLEVEL_NAME5 = "Bậc năm"
GNR_EQUIPLEVEL_NAME6 = "Bậc sáu"
GNR_EQUIPLEVEL_NAME7 = "Bậc bảy"
GNR_EQUIPLEVEL_NAME8 = "Bậc tám"
GNR_EQUIPLEVEL_NAME9 = "Bậc chín"
GNR_EQUIPLEVEL_NAME10 = "Bậc mười"

GNR_EQUIPGRID_NAME1 = "Vũ khí"
GNR_EQUIPGRID_NAME2 = "Áo"
GNR_EQUIPGRID_NAME3 = "Hộ vai"
GNR_EQUIPGRID_NAME4 = "Hộ chân"
GNR_EQUIPGRID_NAME5 = "Giày"
GNR_EQUIPGRID_NAME6 = "Đai lưng"
GNR_EQUIPGRID_NAME7 = "Hộ cổ tay"

--4 Hoạt động
TEXT_MEETHELP_CONTENT1 = "^ff9090%s^ffffff：%s"
TEXT_MEETHELP_CONTENT2 = "Bạn có thể nói chuyện với #%d# để tham gia hoạt động này."
TEXT_MEETHELP_NIL = "Hiện tại không có hoạt động hàng ngày nào bạn có thể tham gia."

TEXT_MEET_NAME1 = "Thi Tài Thao Lược"
TEXT_MEET_NAME2 = "Thiên Lý Truy Hung"
TEXT_MEET_NAME3 = "Nhiệm Vụ Nhân Nghĩa"
TEXT_MEET_NAME4 = "Tìm Báu Vật Hàng Ngày"
TEXT_MEET_NAME5 = "Câu Cá Hàng Ngày"
TEXT_MEET_NAME6 = "Đại Hội Câu Cá Cuối Tuần"
TEXT_MEET_NAME7 = "Nhạc Phủ Thăm Hỏi"
TEXT_MEET_NAME8 = "Tranh Đoạt Ngũ Trượng Nguyên"

TEXT_MEET_NOTE1 = "Bắt đầu lúc 19:30 hàng ngày, online là có thể nhận được lời mời."
TEXT_MEET_NOTE2 = "Bắt đầu từ 0 giờ hàng ngày, mỗi 2 giờ bắt đầu một lần."
TEXT_MEET_NOTE3 = "Mở cả ngày."
TEXT_MEET_NOTE4 = "Mỗi ngày một lần."
TEXT_MEET_NOTE5 = "Mở cả ngày."
TEXT_MEET_NOTE6 = "19:00-22:00 Chủ Nhật hàng tuần."
TEXT_MEET_NOTE7 = "Mỗi ngày một lần."
TEXT_MEET_NOTE8 = "Phải gia nhập một trong ba phe Ngụy, Thục, Ngô."

--5 Sản xuất
TEXT_PRODUCEHELP_SKILLINFO = "^ff9090%s^ffffff：%s%s"
TEXT_PRODUCEHELP_FIRSTINFO = "Cần đạt cấp %d mới có thể học."
TEXT_PRODUCEHELP_LEARNINFO = "\r            Cấp độ có thể học hiện tại：%s, NPC học：#%d#."

--6 Chiến trường
TEXT_BATTLEHELP_TITLE = "^ff9090Chiến trường phù hợp với cấp độ hiện tại của bạn^ffffff："
TEXT_BATTLEHELP_BATTLETYPE1 = "Chinh Chiến"
TEXT_BATTLEHELP_BATTLETYPE2 = "Diễn Nghĩa"
TEXT_BATTLEHELP_BATTLETYPE3 = "Vô Song"
TEXT_BATTLEHELP_BATTLETYPE4 = "Ngoại Truyện"
TEXT_BATTLEHELP_BATTLEINFO = "    Chiến trường cấp %d %s：%s."
TEXT_BATTLEHELP_NIL = "Hiện tại không có chiến trường nào phù hợp cho bạn tham gia."

TEXT_BATTLE_NAME1 = "Trận Dĩnh Xuyên"
TEXT_BATTLE_NAME2 = "Trận Bộc Dương"
TEXT_BATTLE_NAME3 = "Trận Chiến Hán Quân Bọc Hậu"
TEXT_BATTLE_NAME4 = "Trận Chiến Nghĩa Binh Tích Lương"
TEXT_BATTLE_NAME5 = "Trận Lạc Phượng Pha"
TEXT_BATTLE_NAME6 = "Trận Chiến Rút Lui Kinh Tương"
TEXT_BATTLE_NAME7 = "Trận Thảo Phạt Trương Lương"
TEXT_BATTLE_NAME8 = "Tây Lương Nhiễu Loạn"
TEXT_BATTLE_NAME9 = "Loạn Khăn Vàng"
TEXT_BATTLE_NAME10 = "Hổ Lao Quan Quần Anh Hội"
TEXT_BATTLE_NAME11 = "Tôn Hương Truyện·Kỵ Quyến Hương Phong"
TEXT_BATTLE_NAME12 = "Lã Bố Truyện·Phi Tướng Hồi Thiên"
TEXT_BATTLE_NAME13 = "Tào Tháo Truyện·Vương Lăng Quỷ Ảnh"
TEXT_BATTLE_NAME14 = "Lưu Bị Truyện·Thoát Hiểm Từ Miệng Hổ"
TEXT_BATTLE_NAME15 = "Điển Vi Truyện·Ác Lai Gào Thét"
TEXT_BATTLE_NAME16 = "Tôn Quyền Truyện·Ký Sự Hồ Lô Sắt"
TEXT_BATTLE_NAME17 = "Triệu Vân Truyện·Long Dược Trường Bản"
TEXT_BATTLE_NAME18 = "Tưởng Cán Truyện·Trộm Sách Ở Trại Ngô"
TEXT_BATTLE_NAME19 = "Trận Hợp Phì"
TEXT_BATTLE_NAME20 = "Trận Công Phá Ích Châu"
TEXT_BATTLE_NAME21 = "Ám Tập Định Quân Sơn"
TEXT_BATTLE_NAME22 = "Di Tích Hiên Viên"
TEXT_BATTLE_NAME23 = "Ma Vực Hạng Vương"
TEXT_BATTLE_NAME24 = "Cổ Điện Lâu Lan"

--7 Quan chức
GNR_POSITION_LEVEL0 = "Phổ thông"
GNR_POSITION_LEVEL1 = "Cửu phẩm"
GNR_POSITION_LEVEL2 = "Bát phẩm"
GNR_POSITION_LEVEL3 = "Thất phẩm"
GNR_POSITION_LEVEL4 = "Lục phẩm"
GNR_POSITION_LEVEL5 = "Ngũ phẩm"
GNR_POSITION_LEVEL6 = "Tòng tứ phẩm"
GNR_POSITION_LEVEL7 = "Chính tứ phẩm"
GNR_POSITION_LEVEL8 = "Tòng tam phẩm"
GNR_POSITION_LEVEL9 = "Chính tam phẩm"

GNR_POSITION_TYPE0 = "Quân chức"
GNR_POSITION_TYPE1 = "Văn quan"
GNR_POSITION_TYPE2 = "Võ quan"

GNR_POSITION_EXPLOIT1 = "Văn huân"
GNR_POSITION_EXPLOIT2 = "Võ huân"

TEXT_POSITION_NAME1 = "Tân binh"
TEXT_POSITION_NAME2 = "Binh tốt"
TEXT_POSITION_NAME3 = "Binh trưởng"
TEXT_POSITION_NAME4 = "Quân hầu"
TEXT_POSITION_NAME5 = "Hiệu úy"
TEXT_POSITION_NAME6 = "Đô úy"
TEXT_POSITION_NAME7 = "Tì tướng"
TEXT_POSITION_NAME8 = "Thiên tướng"
TEXT_POSITION_NAME9 = "Ưng Dương Tướng Quân"
TEXT_POSITION_NAME10 = "Phục Ba Tướng Quân"
TEXT_POSITION_NAME11 = "Thảo Lỗ Tướng Quân"
TEXT_POSITION_NAME12 = "Hoành Dã Tướng Quân"
TEXT_POSITION_NAME13 = "Điển Quân Trung Lang Tướng"
TEXT_POSITION_NAME14 = "Phủ Quân Trung Lang Tướng"
TEXT_POSITION_NAME15 = "Đãng Khấu Trung Lang Tướng"
TEXT_POSITION_NAME16 = "Kiến Uy Trung Lang Tướng"
TEXT_POSITION_NAME17 = "Võ Vệ Trung Lang Tướng"
TEXT_POSITION_NAME18 = "Vũ Lâm Trung Lang Tướng"
TEXT_POSITION_NAME19 = "Hổ Bôn Trung Lang Tướng"
TEXT_POSITION_NAME20 = "Ngũ Quan Trung Lang Tướng"
TEXT_POSITION_NAME21 = "Tiền Tướng Quân"
TEXT_POSITION_NAME22 = "Hậu Tướng Quân"
TEXT_POSITION_NAME23 = "Tả Tướng Quân"
TEXT_POSITION_NAME24 = "Hữu Tướng Quân"
TEXT_POSITION_NAME25 = "Bình Đông Tướng Quân"
TEXT_POSITION_NAME26 = "Bình Nam Tướng Quân"
TEXT_POSITION_NAME27 = "Bình Tây Tướng Quân"
TEXT_POSITION_NAME28 = "Bình Bắc Tướng Quân"
TEXT_POSITION_NAME29 = "Thư Tá"
TEXT_POSITION_NAME30 = "Công Tào"
TEXT_POSITION_NAME31 = "Chủ Bộ"
TEXT_POSITION_NAME32 = "Biệt Giá"
TEXT_POSITION_NAME33 = "Trưởng Sử"
TEXT_POSITION_NAME34 = "Thái Nhạc Lệnh"
TEXT_POSITION_NAME35 = "Thái Sử Lệnh"
TEXT_POSITION_NAME36 = "Thái Y Lệnh"
TEXT_POSITION_NAME37 = "Thái Thương Lệnh"
TEXT_POSITION_NAME38 = "Yết Giả Bộc Xạ"
TEXT_POSITION_NAME39 = "Gián Nghị Đại Phu"
TEXT_POSITION_NAME40 = "Thái Tử Tẩy Mã"
TEXT_POSITION_NAME41 = "Tán Kỵ Thường Thị"
TEXT_POSITION_NAME42 = "Trung Tán Đại Phu"
TEXT_POSITION_NAME43 = "Thái Trung Đại Phu"
TEXT_POSITION_NAME44 = "Thượng Thư Bộc Xạ"
TEXT_POSITION_NAME45 = "Ngự Sử Trung Thừa"
TEXT_POSITION_NAME46 = "Thái Tử Thiếu Phó"
TEXT_POSITION_NAME47 = "Trung Thư Lệnh"
TEXT_POSITION_NAME48 = "Thượng Thư Lệnh"
TEXT_POSITION_NAME49 = "Thị Trung"
TEXT_POSITION_NAME50 = "Thái Tử Thái Phó"
TEXT_POSITION_NAME51 = "Chấp Kim Ngô"
TEXT_POSITION_NAME52 = "Tương Tác Đại Tượng"
TEXT_POSITION_NAME53 = "Thủy Hành Đô Úy"

TEXT_POSITIONHELP_INFO = "%s%s：^ff9090%s^ffffff\r（%s%s%s）\r"
TEXT_POSITIONHELP_NEEDEXPLOIT = "Cần %s %d,"
TEXT_POSITIONHELP_USEEXPLOIT = "Tiêu hao công huân %d,"
TEXT_POSITIONHELP_NPCINFO = "NPC quan chức：#%d#"
TEXT_POSITIONHELP_NIL = "Hiện tại không có chiến trường nào phù hợp cho bạn tham gia."

--Treo máy
AUTO_WARNING_NOTARGET		=	"$$$$$$$$$$ Không có mục tiêu có thể tấn công xung quanh"
AUTO_WARNING_NOBANGDAGE		=	"$$$$$$$$$$ Ủy thác không thể sử dụng cao hồi máu"
AUTO_WARNING_NOPOTION		=	"$$$$$$$$$$ Ủy thác không thể sử dụng đan dược"
AUTO_WARNING_NOWINE			=	"$$$$$$$$$$ Ủy thác không thể sử dụng tiên tửu"
AUTO_WARNING_NOFOOD			=	"$$$$$$$$$$ Ủy thác không thể sử dụng thức ăn"
AUTO_WARNING_NODRINK		=	"$$$$$$$$$$ Ủy thác không thể sử dụng đồ uống"

--------------------------------------------------------------------
--Hướng dẫn tân thủ
--------------------------------------------------------------------
AUI_LEVELTIP_NOLEVEL = "Không"
AUI_LEVELTIP_NOPROF = "—"
AUI_LEVELTIP_LEVELSUFFIX = "cấp"
AUI_LEVELTIP_Hero = "Anh Hùng"

LEVELTIP_TYPE1 = "Nâng cấp binh chủng"
LEVELTIP_TYPE2 = "Học kỹ năng"
LEVELTIP_TYPE6 = "Hoạt động hàng ngày"
LEVELTIP_TYPE8 = "Trang bị"
LEVELTIP_TYPE9 = "Sản xuất"
LEVELTIP_TYPE10 = "Chiến trường"

LEVELTIP_TITLE1 = "Thay vũ khí bậc mười"
LEVELTIP_TITLE2 = "Thay áo bậc mười"
LEVELTIP_TITLE3 = "Thay hộ vai bậc mười"
LEVELTIP_TITLE4 = "Thay hộ chân bậc mười"
LEVELTIP_TITLE5 = "Thay giày bậc mười"
LEVELTIP_TITLE6 = "Thay đai lưng bậc mười"
LEVELTIP_TITLE7 = "Thay hộ cổ tay bậc mười"
LEVELTIP_TITLE8 = "Thay vũ khí bậc chín"
LEVELTIP_TITLE9 = "Thay áo bậc chín"
LEVELTIP_TITLE10 = "Thay hộ vai bậc chín"
LEVELTIP_TITLE11 = "Thay hộ chân bậc chín"
LEVELTIP_TITLE12 = "Thay giày bậc chín"
LEVELTIP_TITLE13 = "Thay đai lưng bậc chín"
LEVELTIP_TITLE14 = "Thay hộ cổ tay bậc chín"
LEVELTIP_TITLE15 = "Thay vũ khí bậc tám"
LEVELTIP_TITLE16 = "Thay áo bậc tám"
LEVELTIP_TITLE17 = "Thay hộ vai bậc tám"
LEVELTIP_TITLE18 = "Thay hộ chân bậc tám"
LEVELTIP_TITLE19 = "Thay giày bậc tám"
LEVELTIP_TITLE20 = "Thay đai lưng bậc tám"
LEVELTIP_TITLE21 = "Thay hộ cổ tay bậc tám"
LEVELTIP_TITLE22 = "Chiến trường Vô Song “Cổ Điện Lâu Lan”"
LEVELTIP_TITLE23 = "Học kỹ năng sản xuất “Dược Sư”"
LEVELTIP_TITLE24 = "Thay vũ khí bậc bảy"
LEVELTIP_TITLE25 = "Thay áo bậc bảy"
LEVELTIP_TITLE26 = "Thay hộ vai bậc bảy"
LEVELTIP_TITLE27 = "Thay hộ chân bậc bảy"
LEVELTIP_TITLE28 = "Thay giày bậc bảy"
LEVELTIP_TITLE29 = "Thay đai lưng bậc bảy"
LEVELTIP_TITLE30 = "Thay hộ cổ tay bậc bảy"
LEVELTIP_TITLE31 = "Chiến trường Diễn Nghĩa “Ám Tập Định Quân Sơn”"
LEVELTIP_TITLE32 = "Học kỹ năng sản xuất “Thợ Rèn”"
LEVELTIP_TITLE33 = "Chiến trường Vô Song “Ma Vực Hạng Vương”"
LEVELTIP_TITLE34 = "Học kỹ năng sản xuất “Cấp Cứu”"
LEVELTIP_TITLE35 = "Chiến trường Diễn Nghĩa “Trận Công Phá Ích Châu”"
LEVELTIP_TITLE36 = "Học kỹ năng sản xuất “Nấu Ăn”"
LEVELTIP_TITLE37 = "Nâng cấp binh chủng chính lên “Phong Đao Sứ”"
LEVELTIP_TITLE38 = "Nâng cấp binh chủng chính lên “Thánh Thương Sứ”"
LEVELTIP_TITLE39 = "Nâng cấp binh chủng chính lên “Xích Kích Sứ”"
LEVELTIP_TITLE40 = "Nâng cấp binh chủng chính lên “Hoàng Việt Sứ”"
LEVELTIP_TITLE41 = "Nâng cấp binh chủng chính lên “Bá Xoa Sứ”"
LEVELTIP_TITLE42 = "Nâng cấp binh chủng chính lên “Xảo Côn Sứ”"
LEVELTIP_TITLE43 = "Nâng cấp binh chủng chính lên “Ngạo Kiếm Sứ”"
LEVELTIP_TITLE44 = "Nâng cấp binh chủng chính lên “Cuồng Phủ Sứ”"
LEVELTIP_TITLE45 = "Nâng cấp binh chủng chính lên “Tật Câu Sứ”"
LEVELTIP_TITLE46 = "Nâng cấp binh chủng chính lên “Liệt Giản Sứ”"
LEVELTIP_TITLE47 = "Nâng cấp binh chủng chính lên “Oanh Chùy Sứ”"
LEVELTIP_TITLE48 = "Nâng cấp binh chủng chính lên “Lôi Trảo Sứ”"
LEVELTIP_TITLE49 = "Nâng cấp binh chủng chính lên “Kiên Thuẫn Sứ”"
LEVELTIP_TITLE50 = "Nâng cấp binh chủng chính lên “Linh Hoàn Sứ”"
LEVELTIP_TITLE51 = "Nâng cấp binh chủng chính lên “Hào Trượng Sứ”"
LEVELTIP_TITLE52 = "Nâng cấp binh chủng chính lên “Diệu Vũ Sứ”"
LEVELTIP_TITLE53 = "Nâng cấp binh chủng chính lên “Dật Phiến Sứ”"
LEVELTIP_TITLE54 = "Nâng cấp binh chủng chính lên “Thiên Cung Sứ”"
LEVELTIP_TITLE55 = "Chiến trường Vô Song “Di Tích Hiên Viên”"
LEVELTIP_TITLE56 = "Nâng cấp binh chủng chính lên “Đao Thần”"
LEVELTIP_TITLE57 = "Nâng cấp binh chủng chính lên “Thương Thần”"
LEVELTIP_TITLE58 = "Nâng cấp binh chủng chính lên “Kích Thần”"
LEVELTIP_TITLE59 = "Nâng cấp binh chủng chính lên “Việt Thần”"
LEVELTIP_TITLE60 = "Nâng cấp binh chủng chính lên “Xoa Thần”"
LEVELTIP_TITLE61 = "Nâng cấp binh chủng chính lên “Côn Tiên”"
LEVELTIP_TITLE62 = "Nâng cấp binh chủng chính lên “Kiếm Tiên”"
LEVELTIP_TITLE63 = "Nâng cấp binh chủng chính lên “Phủ Thần”"
LEVELTIP_TITLE64 = "Nâng cấp binh chủng chính lên “Câu Thần”"
LEVELTIP_TITLE65 = "Nâng cấp binh chủng chính lên “Giản Thần”"
LEVELTIP_TITLE66 = "Nâng cấp binh chủng chính lên “Chùy Thần”"
LEVELTIP_TITLE67 = "Nâng cấp binh chủng chính lên “Trảo Thần”"
LEVELTIP_TITLE68 = "Nâng cấp binh chủng chính lên “Thuẫn Tiên”"
LEVELTIP_TITLE69 = "Nâng cấp binh chủng chính lên “Hoàn Tiên”"
LEVELTIP_TITLE70 = "Nâng cấp binh chủng chính lên “Trượng Tiên”"
LEVELTIP_TITLE71 = "Nâng cấp binh chủng chính lên “Vũ Tiên”"
LEVELTIP_TITLE72 = "Nâng cấp binh chủng chính lên “Phiến Tiên”"
LEVELTIP_TITLE73 = "Nâng cấp binh chủng chính lên “Cung Thần”"
LEVELTIP_TITLE74 = "Thay vũ khí bậc năm"
LEVELTIP_TITLE75 = "Thay áo bậc năm"
LEVELTIP_TITLE76 = "Thay hộ vai bậc năm"
LEVELTIP_TITLE77 = "Thay hộ chân bậc năm"
LEVELTIP_TITLE78 = "Thay giày bậc năm"
LEVELTIP_TITLE79 = "Thay đai lưng bậc năm"
LEVELTIP_TITLE80 = "Thay hộ cổ tay bậc năm"
LEVELTIP_TITLE81 = "Thay vũ khí bậc sáu"
LEVELTIP_TITLE82 = "Thay áo bậc sáu"
LEVELTIP_TITLE83 = "Thay hộ vai bậc sáu"
LEVELTIP_TITLE84 = "Thay hộ chân bậc sáu"
LEVELTIP_TITLE85 = "Thay giày bậc sáu"
LEVELTIP_TITLE86 = "Thay đai lưng bậc sáu"
LEVELTIP_TITLE87 = "Thay hộ cổ tay bậc sáu"
LEVELTIP_TITLE88 = "Chiến trường Chinh Chiến “Trận Bộc Dương”"
LEVELTIP_TITLE89 = "Chiến trường Vô Song “Loạn Khăn Vàng”"
LEVELTIP_TITLE90 = "Chiến trường Vô Song “Hổ Lao Quan Quần Anh Hội”"
LEVELTIP_TITLE91 = "Chiến trường Diễn Nghĩa “Trận Hợp Phì”"
LEVELTIP_TITLE92 = "Hoạt động hàng ngày: Tranh Đoạt Ngũ Trượng Nguyên"
LEVELTIP_TITLE93 = "Thay hộ cổ tay bậc bốn"
LEVELTIP_TITLE94 = "Học kỹ năng sản xuất “Thợ Rèn”"
LEVELTIP_TITLE95 = "Học kỹ năng sản xuất “May Vá”"
LEVELTIP_TITLE96 = "Học kỹ năng sản xuất “Xảo Tượng”"
LEVELTIP_TITLE97 = "Chiến trường Chinh Chiến “Trận Dĩnh Xuyên”"
LEVELTIP_TITLE98 = "Chiến trường Diễn Nghĩa “Trận Thảo Phạt Trương Lương”"
LEVELTIP_TITLE99 = "Chiến trường Ngoại Truyện “Tào Tháo Truyện·Vương Lăng Quỷ Ảnh”"
LEVELTIP_TITLE100 = "Chiến trường Ngoại Truyện “Lưu Bị Truyện·Thoát Hiểm Từ Miệng Hổ”"
LEVELTIP_TITLE101 = "Chiến trường Ngoại Truyện “Điển Vi Truyện·Ác Lai Gào Thét”"
LEVELTIP_TITLE102 = "Chiến trường Ngoại Truyện “Tôn Quyền Truyện·Ký Sự Hồ Lô Sắt”"
LEVELTIP_TITLE103 = "Chiến trường Ngoại Truyện “Triệu Vân Truyện·Long Dược Trường Bản”"
LEVELTIP_TITLE104 = "Thay đai lưng bậc bốn"
LEVELTIP_TITLE105 = "Thay hộ chân bậc bốn"
LEVELTIP_TITLE106 = "Chiến trường Ngoại Truyện “Lã Bố Truyện·Phi Tướng Hồi Thiên”"
LEVELTIP_TITLE107 = "Thay hộ vai bậc bốn"
LEVELTIP_TITLE108 = "Học kỹ năng sản xuất “Dược Sư”"
LEVELTIP_TITLE109 = "Thay giày bậc bốn"
LEVELTIP_TITLE110 = "Nâng cấp binh chủng chính lên “Đao Thánh”"
LEVELTIP_TITLE111 = "Nâng cấp binh chủng chính lên “Thương Vương”"
LEVELTIP_TITLE112 = "Nâng cấp binh chủng chính lên “Kích Thánh”"
LEVELTIP_TITLE113 = "Nâng cấp binh chủng chính lên “Việt Thánh”"
LEVELTIP_TITLE114 = "Nâng cấp binh chủng chính lên “Xoa Thánh”"
LEVELTIP_TITLE115 = "Nâng cấp binh chủng chính lên “Côn Vương”"
LEVELTIP_TITLE116 = "Nâng cấp binh chủng chính lên “Kiếm Thánh”"
LEVELTIP_TITLE117 = "Nâng cấp binh chủng chính lên “Phủ Vương”"
LEVELTIP_TITLE118 = "Nâng cấp binh chủng chính lên “Câu Vương”"
LEVELTIP_TITLE119 = "Nâng cấp binh chủng chính lên “Giản Thánh”"
LEVELTIP_TITLE120 = "Nâng cấp binh chủng chính lên “Chùy Thánh”"
VELTIP_TITLE121 = "Nâng cấp binh chủng chính lên “Trảo Thánh”"
LEVELTIP_TITLE122 = "Nâng cấp binh chủng chính lên “Thuẫn Vương”"
LEVELTIP_TITLE123 = "Nâng cấp binh chủng chính lên “Hoàn Thánh”"
LEVELTIP_TITLE124 = "Nâng cấp binh chủng chính lên “Trượng Vương”"
LEVELTIP_TITLE125 = "Nâng cấp binh chủng chính lên “Vũ Vương”"
LEVELTIP_TITLE126 = "Nâng cấp binh chủng chính lên “Phiến Vương”"
LEVELTIP_TITLE127 = "Nâng cấp binh chủng chính lên “Cung Vương”"
LEVELTIP_TITLE128 = "Thay vũ khí bậc bốn"
LEVELTIP_TITLE129 = "Thay áo bậc bốn"
LEVELTIP_TITLE130 = "Chiến trường Diễn Nghĩa “Trận Lạc Phượng Pha”"
LEVELTIP_TITLE131 = "Chiến trường Diễn Nghĩa “Trận Chiến Rút Lui Kinh Tương”"
LEVELTIP_TITLE132 = "Thay hộ cổ tay bậc ba"
LEVELTIP_TITLE133 = "Học kỹ năng sản xuất “Nấu Ăn”"
LEVELTIP_TITLE134 = "Học kỹ năng sản xuất “Thợ Rèn”"
LEVELTIP_TITLE135 = "Học kỹ năng sản xuất “May Vá”"
LEVELTIP_TITLE136 = "Học kỹ năng sản xuất “Xảo Tượng”"
LEVELTIP_TITLE137 = "Học kỹ năng sản xuất “Cấp Cứu”"
LEVELTIP_TITLE138 = "Chiến trường Ngoại Truyện “Tưởng Cán Truyện·Trộm Sách Ở Trại Ngô”"
LEVELTIP_TITLE139 = "Thay đai lưng bậc ba"
LEVELTIP_TITLE140 = "Học kỹ năng sản xuất “Dược Sư”"
LEVELTIP_TITLE141 = "Thay hộ chân bậc ba"
LEVELTIP_TITLE142 = "Thay hộ vai bậc ba"
LEVELTIP_TITLE143 = "Nâng cấp binh chủng chính lên “Đao Tướng”"
LEVELTIP_TITLE144 = "Nâng cấp binh chủng chính lên “Thương Tướng”"
LEVELTIP_TITLE145 = "Nâng cấp binh chủng chính lên “Kích Tướng”"
LEVELTIP_TITLE146 = "Nâng cấp binh chủng chính lên “Việt Tướng”"
LEVELTIP_TITLE147 = "Nâng cấp binh chủng chính lên “Xoa Tướng”"
LEVELTIP_TITLE148 = "Nâng cấp binh chủng chính lên “Côn Tướng”"
LEVELTIP_TITLE149 = "Nâng cấp binh chủng chính lên “Kiếm Hào”"
LEVELTIP_TITLE150 = "Nâng cấp binh chủng chính lên “Phủ Tướng”"
LEVELTIP_TITLE151 = "Nâng cấp binh chủng chính lên “Câu Hào”"
LEVELTIP_TITLE152 = "Nâng cấp binh chủng chính lên “Giản Hào”"
LEVELTIP_TITLE153 = "Nâng cấp binh chủng chính lên “Chùy Tướng”"
LEVELTIP_TITLE154 = "Nâng cấp binh chủng chính lên “Trảo Hào”"
LEVELTIP_TITLE155 = "Nâng cấp binh chủng chính lên “Thuẫn Tướng”"
LEVELTIP_TITLE156 = "Nâng cấp binh chủng chính lên “Hoàn Tướng”"
LEVELTIP_TITLE157 = "Nâng cấp binh chủng chính lên “Trượng Tướng”"
LEVELTIP_TITLE158 = "Nâng cấp binh chủng chính lên “Vũ Hào”"
LEVELTIP_TITLE159 = "Nâng cấp binh chủng chính lên “Phiến Tướng”"
LEVELTIP_TITLE160 = "Nâng cấp binh chủng chính lên “Cung Tướng”"
LEVELTIP_TITLE161 = "Hoạt động hàng ngày: Nhạc Phủ Thăm Hỏi"
LEVELTIP_TITLE162 = "Học kỹ năng sản xuất “Cấp Cứu”"
LEVELTIP_TITLE163 = "Chiến trường Diễn Nghĩa “Trận Chiến Nghĩa Binh Tích Lương”"
LEVELTIP_TITLE164 = "Thay giày bậc ba"
LEVELTIP_TITLE165 = "Thay vũ khí bậc ba"
LEVELTIP_TITLE166 = "Thay áo bậc ba"
LEVELTIP_TITLE167 = "Học kỹ năng sản xuất “Nấu Ăn”"
LEVELTIP_TITLE168 = "Thay hộ cổ tay bậc hai"
LEVELTIP_TITLE169 = "Học kỹ năng sản xuất “Thợ Rèn”"
LEVELTIP_TITLE170 = "Học kỹ năng sản xuất “May Vá”"
LEVELTIP_TITLE171 = "Học kỹ năng sản xuất “Xảo Tượng”"
LEVELTIP_TITLE172 = "Học kỹ năng sản xuất “Dược Sư”"
LEVELTIP_TITLE173 = "Thay đai lưng bậc hai"
LEVELTIP_TITLE174 = "Nâng cấp binh chủng chính lên “Đao Úy”"
LEVELTIP_TITLE175 = "Nâng cấp binh chủng chính lên “Thương Úy”"
LEVELTIP_TITLE176 = "Nâng cấp binh chủng chính lên “Kích Úy”"
LEVELTIP_TITLE177 = "Nâng cấp binh chủng chính lên “Việt Úy”"
LEVELTIP_TITLE178 = "Nâng cấp binh chủng chính lên “Xoa Úy”"
LEVELTIP_TITLE179 = "Nâng cấp binh chủng chính lên “Côn Úy”"
LEVELTIP_TITLE180 = "Nâng cấp binh chủng chính lên “Kiếm Hiệp”"
LEVELTIP_TITLE181 = "Nâng cấp binh chủng chính lên “Phủ Úy”"
LEVELTIP_TITLE182 = "Nâng cấp binh chủng chính lên “Câu Hiệp”"
LEVELTIP_TITLE183 = "Nâng cấp binh chủng chính lên “Giản Hiệp”"
LEVELTIP_TITLE184 = "Nâng cấp binh chủng chính lên “Chùy Úy”"
LEVELTIP_TITLE185 = "Nâng cấp binh chủng chính lên “Trảo Hiệp”"
LEVELTIP_TITLE186 = "Nâng cấp binh chủng chính lên “Thuẫn Úy”"
LEVELTIP_TITLE187 = "Nâng cấp binh chủng chính lên “Hoàn Hiệp”"
LEVELTIP_TITLE188 = "Nâng cấp binh chủng chính lên “Trượng Hiệp”"
LEVELTIP_TITLE189 = "Nâng cấp binh chủng chính lên “Vũ Sư”"
LEVELTIP_TITLE190 = "Nâng cấp binh chủng chính lên “Phiến Hiệp”"
LEVELTIP_TITLE191 = "Nâng cấp binh chủng chính lên “Cung Úy”"
LEVELTIP_TITLE192 = "Chiến trường Ngoại Truyện “Tôn Hương Truyện·Kỵ Quyến Hương Phong”"
LEVELTIP_TITLE193 = "Thay hộ chân bậc hai"
LEVELTIP_TITLE194 = "Học kỹ năng sản xuất “Cấp Cứu”"
LEVELTIP_TITLE195 = "Thay hộ vai bậc hai"
LEVELTIP_TITLE196 = "Chiến trường Vô Song “Tây Lương Nhiễu Loạn”"
LEVELTIP_TITLE197 = "Thay giày bậc hai"
LEVELTIP_TITLE198 = "Học kỹ năng sản xuất “Nấu Ăn”"
LEVELTIP_TITLE199 = "Học kỹ năng sản xuất “Dược Sư”"
LEVELTIP_TITLE200 = "Thay vũ khí bậc hai"
LEVELTIP_TITLE201 = "Thay áo bậc hai"
LEVELTIP_TITLE202 = "Học kỹ năng sản xuất “Xảo Tượng”"
LEVELTIP_TITLE203 = "Học kỹ năng sản xuất “Thợ Công”"
LEVELTIP_TITLE204 = "Nâng cấp binh chủng chính lên “Đao Kỵ”"
LEVELTIP_TITLE205 = "Nâng cấp binh chủng chính lên “Thương Kỵ”"
LEVELTIP_TITLE206 = "Nâng cấp binh chủng chính lên “Kích Kỵ”"
LEVELTIP_TITLE207 = "Nâng cấp binh chủng chính lên “Việt Kỵ”"
LEVELTIP_TITLE208 = "Nâng cấp binh chủng chính lên “Xoa Kỵ”"
LEVELTIP_TITLE209 = "Nâng cấp binh chủng chính lên “Côn Kỵ”"
LEVELTIP_TITLE210 = "Nâng cấp binh chủng chính lên “Kiếm Sĩ”"
LEVELTIP_TITLE211 = "Nâng cấp binh chủng chính lên “Phủ Kỵ”"
LEVELTIP_TITLE212 = "Nâng cấp binh chủng chính lên “Câu Sĩ”"
LEVELTIP_TITLE213 = "Nâng cấp binh chủng chính lên “Giản Sĩ”"
LEVELTIP_TITLE214 = "Nâng cấp binh chủng chính lên “Chùy Kỵ”"
LEVELTIP_TITLE215 = "Nâng cấp binh chủng chính lên “Trảo Sĩ”"
LEVELTIP_TITLE216 = "Nâng cấp binh chủng chính lên “Thuẫn Kỵ”"
LEVELTIP_TITLE217 = "Nâng cấp binh chủng chính lên “Hoàn Sĩ”"
LEVELTIP_TITLE218 = "Nâng cấp binh chủng chính lên “Trượng Sĩ”"
LEVELTIP_TITLE219 = "Nâng cấp binh chủng chính lên “Vũ Sĩ”"
LEVELTIP_TITLE220 = "Nâng cấp binh chủng chính lên “Phiến Sĩ”"
LEVELTIP_TITLE221 = "Nâng cấp binh chủng chính lên “Cung Kỵ”"
LEVELTIP_TITLE222 = "Học kỵ thuật"
LEVELTIP_TITLE223 = "Thay hộ cổ tay bậc một"
LEVELTIP_TITLE224 = "Học kỹ năng sản xuất “Thuần Dưỡng”"
LEVELTIP_TITLE225 = "Học kỹ năng sản xuất “Thợ Rèn”"
LEVELTIP_TITLE226 = "Học kỹ năng sản xuất “May Vá”"
LEVELTIP_TITLE227 = "Chiến trường Diễn Nghĩa “Trận Chiến Hán Quân Bọc Hậu”"
LEVELTIP_TITLE228 = "Học kỹ năng sản xuất “Dược Sư”"
LEVELTIP_TITLE229 = "Thay đai lưng bậc một"
LEVELTIP_TITLE230 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE231 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE232 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE233 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE234 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE235 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE236 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE237 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE238 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE239 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE240 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE241 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE242 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE243 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE244 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE245 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE246 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE247 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE248 = "Hoạt động hàng ngày: Tìm Báu Vật Hàng Ngày"
LEVELTIP_TITLE249 = "Hoạt động hàng ngày: Câu Cá Hàng Ngày"
LEVELTIP_TITLE250 = "Hoạt động hàng ngày: Đại Hội Câu Cá Cuối Tuần"
LEVELTIP_TITLE251 = "Thay hộ chân bậc một"
LEVELTIP_TITLE252 = "Học kỹ năng sản xuất “Nấu Ăn”"
LEVELTIP_TITLE253 = "Học kỹ năng sản xuất “Cấp Cứu”"
LEVELTIP_TITLE254 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE255 = "Thay hộ vai bậc một"
LEVELTIP_TITLE256 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE257 = "Nâng cấp binh chủng chính lên “Đao Binh”"
LEVELTIP_TITLE258 = "Nâng cấp binh chủng chính lên “Thương Binh”"
LEVELTIP_TITLE259 = "Nâng cấp binh chủng chính lên “Kích Binh”"
LEVELTIP_TITLE260 = "Nâng cấp binh chủng chính lên “Việt Binh”"
LEVELTIP_TITLE261 = "Nâng cấp binh chủng chính lên “Xoa Binh”"
LEVELTIP_TITLE262 = "Nâng cấp binh chủng chính lên “Côn Binh”"
LEVELTIP_TITLE263 = "Nâng cấp binh chủng chính lên “Kiếm Khách”"
LEVELTIP_TITLE264 = "Nâng cấp binh chủng chính lên “Phủ Binh”"
LEVELTIP_TITLE265 = "Nâng cấp binh chủng chính lên “Câu Khách”"
LEVELTIP_TITLE266 = "Nâng cấp binh chủng chính lên “Giản Khách”"
LEVELTIP_TITLE267 = "Nâng cấp binh chủng chính lên “Chùy Binh”"
LEVELTIP_TITLE268 = "Nâng cấp binh chủng chính lên “Trảo Khách”"
LEVELTIP_TITLE269 = "Nâng cấp binh chủng chính lên “Thuẫn Binh”"
LEVELTIP_TITLE270 = "Nâng cấp binh chủng chính lên “Hoàn Thủ”"
LEVELTIP_TITLE271 = "Nâng cấp binh chủng chính lên “Trượng Khách”"
LEVELTIP_TITLE272 = "Nâng cấp binh chủng chính lên “Vũ Giả”"
LEVELTIP_TITLE273 = "Nâng cấp binh chủng chính lên “Phiến Sinh”"
LEVELTIP_TITLE274 = "Nâng cấp binh chủng chính lên “Cung Thủ”"
LEVELTIP_TITLE275 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE276 = "Thay giày bậc một"
LEVELTIP_TITLE277 = "Học kỹ năng sản xuất “Cấp Cứu”"
LEVELTIP_TITLE278 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE279 = "Hoạt động hàng ngày: Nhiệm Vụ Nhân Nghĩa"
LEVELTIP_TITLE280 = "Thay vũ khí bậc một"
LEVELTIP_TITLE281 = "Thay áo bậc một"
LEVELTIP_TITLE282 = "Học kỹ năng sản xuất “Thợ Rèn”"
LEVELTIP_TITLE283 = "Học kỹ năng sản xuất “May Vá”"
LEVELTIP_TITLE284 = "Thay hộ cổ tay sơ cấp"
LEVELTIP_TITLE285 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE286 = "Thay đai lưng sơ cấp"
LEVELTIP_TITLE287 = "Thay hộ chân sơ cấp"
LEVELTIP_TITLE288 = "Học kỹ năng sản xuất “Nấu Ăn”"
LEVELTIP_TITLE289 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE290 = "Thay hộ vai sơ cấp"
LEVELTIP_TITLE291 = "Thay giày sơ cấp"
LEVELTIP_TITLE292 = "Học kỹ năng chiến đấu mới"
LEVELTIP_TITLE293 = "Thay áo sơ cấp"
LEVELTIP_TITLE294 = "Hoạt động hàng ngày: Thi Tài Thao Lược"
LEVELTIP_TITLE295 = "Hoạt động hàng ngày: Thiên Lý Truy Hung"
LEVELTIP_TITLE296 = "Trang bị vũ khí sơ cấp"

LEVELTIP_CONTENT1 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc mười."
LEVELTIP_CONTENT2 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc mười."
LEVELTIP_CONTENT3 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc mười."
LEVELTIP_CONTENT4 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc mười."
LEVELTIP_CONTENT5 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc mười."
LEVELTIP_CONTENT6 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc mười."
LEVELTIP_CONTENT7 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc mười."
LEVELTIP_CONTENT8 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc chín."
LEVELTIP_CONTENT9 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc chín."
LEVELTIP_CONTENT10 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc chín."
LEVELTIP_CONTENT11 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc chín."
LEVELTIP_CONTENT12 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc chín."
LEVELTIP_CONTENT13 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc chín."
LEVELTIP_CONTENT14 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc chín."
LEVELTIP_CONTENT15 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc tám."
LEVELTIP_CONTENT16 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc tám."
LEVELTIP_CONTENT17 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc tám."
LEVELTIP_CONTENT18 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc tám."
LEVELTIP_CONTENT19 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc tám."
LEVELTIP_CONTENT20 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc tám."
LEVELTIP_CONTENT21 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc tám."
LEVELTIP_CONTENT22 = "Bạn hiện tại có thể tham gia chiến trường Vô Song “Cổ Điện Lâu Lan” rồi!"
LEVELTIP_CONTENT23 = "Kỹ năng sản xuất “Dược Sư” có thể dùng để chế tạo thuốc viên hồi phục sinh lực ngay lập tức.\rCấp độ có thể học hiện tại：Thần Tượng\rNPC học：#1926#"
LEVELTIP_CONTENT24 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc bảy.\rVũ khí bậc tiếp theo cần cấp 80 mới có thể trang bị."
LEVELTIP_CONTENT25 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc bảy.\rÁo bậc tiếp theo cần cấp 80 mới có thể trang bị."
LEVELTIP_CONTENT26 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc bảy.\rHộ vai bậc tiếp theo cần cấp 80 mới có thể trang bị."
LEVELTIP_CONTENT27 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc bảy.\rHộ chân bậc tiếp theo cần cấp 80 mới có thể trang bị."
LEVELTIP_CONTENT28 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc bảy.\rGiày bậc tiếp theo cần cấp 80 mới có thể trang bị."
LEVELTIP_CONTENT29 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc bảy.\rĐai lưng bậc tiếp theo cần cấp 80 mới có thể trang bị."
LEVELTIP_CONTENT30 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc bảy.\rHộ cổ tay bậc tiếp theo cần cấp 80 mới có thể trang bị."
LEVELTIP_CONTENT31 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Ám Tập Định Quân Sơn” rồi!"
LEVELTIP_CONTENT32 = "Kỹ năng sản xuất “Thợ Rèn” có thể dùng để chế tạo vũ khí.\rCấp độ có thể học hiện tại：Thần Tượng\rNPC học：#1918#"
LEVELTIP_CONTENT33 = "Bạn hiện tại có thể tham gia chiến trường Vô Song “Ma Vực Hạng Vương” rồi!"
LEVELTIP_CONTENT34 = "Kỹ năng sản xuất “Cấp Cứu” có thể dùng để chế tạo thuốc mỡ có thể sử dụng trong chiến đấu.\rCấp độ có thể học hiện tại：Thần Tượng\rNPC học：#1930#"
LEVELTIP_CONTENT35 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Trận Công Phá Ích Châu” rồi!"
LEVELTIP_CONTENT36 = "Kỹ năng sản xuất “Nấu Ăn” có thể dùng để chế tạo thức ăn, rượu ngon và trà uống.\rCấp độ có thể học hiện tại：Thần Tượng\rNPC học：#1924#"
LEVELTIP_CONTENT37 = "Bạn cần đến #1910# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhong Đao Sứ^ffffff."
LEVELTIP_CONTENT38 = "Bạn cần đến #3365# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThánh Thương Sứ^ffffff."
LEVELTIP_CONTENT39 = "Bạn cần đến #3366# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXích Kích Sứ^ffffff."
LEVELTIP_CONTENT40 = "Bạn cần đến #3367# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHoàng Việt Sứ^ffffff."
LEVELTIP_CONTENT41 = "Bạn cần đến #3368# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cBá Xoa Sứ^ffffff."
LEVELTIP_CONTENT42 = "Bạn cần đến #3369# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXảo Côn Sứ^ffffff."
LEVELTIP_CONTENT43 = "Bạn cần đến #3370# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cNgạo Kiếm Sứ^ffffff."
LEVELTIP_CONTENT44 = "Bạn cần đến #3371# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCuồng Phủ Sứ^ffffff."
LEVELTIP_CONTENT45 = "Bạn cần đến #3372# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTật Câu Sứ^ffffff."
LEVELTIP_CONTENT46 = "Bạn cần đến #3373# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cLiệt Giản Sứ^ffffff."
LEVELTIP_CONTENT47 = "Bạn cần đến #3374# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cOanh Chùy Sứ^ffffff."
LEVELTIP_CONTENT48 = "Bạn cần đến #3375# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cLôi Trảo Sứ^ffffff."
LEVELTIP_CONTENT49 = "Bạn cần đến #3376# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKiên Thuẫn Sứ^ffffff."
LEVELTIP_CONTENT50 = "Bạn cần đến #3377# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cLinh Hoàn Sứ^ffffff."
LEVELTIP_CONTENT51 = "Bạn cần đến #3378# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHào Trượng Sứ^ffffff."
LEVELTIP_CONTENT52 = "Bạn cần đến #3379# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cDiệu Vũ Sứ^ffffff."
LEVELTIP_CONTENT53 = "Bạn cần đến #3380# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cDật Phiến Sứ^ffffff."
LEVELTIP_CONTENT54 = "Bạn cần đến #3381# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThiên Cung Sứ^ffffff."
LEVELTIP_CONTENT55 = "Bạn hiện tại có thể tham gia chiến trường Vô Song “Di Tích Hiên Viên” rồi!"
LEVELTIP_CONTENT56 = "Bạn cần đến #1910# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cĐao Thần^ffffff."
LEVELTIP_CONTENT57 = "Bạn cần đến #3365# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThương Thần^ffffff."
LEVELTIP_CONTENT58 = "Bạn cần đến #3366# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKích Thần^ffffff."
LEVELTIP_CONTENT59 = "Bạn cần đến #3367# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cViệt Thần^ffffff."
LEVELTIP_CONTENT60 = "Bạn cần đến #3368# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXoa Thần^ffffff."
LEVELTIP_CONTENT61 = "Bạn cần đến #3369# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCôn Tiên^ffffff."
LEVELTIP_CONTENT62 = "Bạn cần đến #3370# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKiếm Tiên^ffffff."
LEVELTIP_CONTENT63 = "Bạn cần đến #3371# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhủ Thần^ffffff."
LEVELTIP_CONTENT64 = "Bạn cần đến #3372# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCâu Thần^ffffff."
LEVELTIP_CONTENT65 = "Bạn cần đến #3373# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cGiản Thần^ffffff."
LEVELTIP_CONTENT66 = "Bạn cần đến #3374# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cChùy Thần^ffffff."
LEVELTIP_CONTENT67 = "Bạn cần đến #3375# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrảo Thần^ffffff."
LEVELTIP_CONTENT68 = "Bạn cần đến #3376# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThuẫn Tiên^ffffff."
LEVELTIP_CONTENT69 = "Bạn cần đến #3377# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHoàn Tiên^ffffff."
LEVELTIP_CONTENT70 = "Bạn cần đến #3378# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrượng Tiên^ffffff."
LEVELTIP_CONTENT71 = "Bạn cần đến #3379# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cVũ Tiên^ffffff."
LEVELTIP_CONTENT72 = "Bạn cần đến #3380# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhiến Tiên^ffffff."
LEVELTIP_CONTENT73 = "Bạn cần đến #3381# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCung Thần^ffffff."
LEVELTIP_CONTENT74 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc năm.\rVũ khí bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT75 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc năm.\rÁo bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT76 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc năm.\rHộ vai bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT77 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc năm.\rHộ chân bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT78 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc năm.\rGiày bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT79 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc năm.\rĐai lưng bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT80 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc năm.\rHộ cổ tay bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT81 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc sáu.\rVũ khí bậc tiếp theo cần cấp 70 mới có thể trang bị."
LEVELTIP_CONTENT82 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc sáu.\rÁo bậc tiếp theo cần cấp 70 mới có thể trang bị."
LEVELTIP_CONTENT83 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc sáu.\rHộ vai bậc tiếp theo cần cấp 70 mới có thể trang bị."
LEVELTIP_CONTENT84 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc sáu.\rHộ chân bậc tiếp theo cần cấp 70 mới có thể trang bị."
LEVELTIP_CONTENT85 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc sáu.\rGiày bậc tiếp theo cần cấp 70 mới có thể trang bị."
LEVELTIP_CONTENT86 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc sáu.\rĐai lưng bậc tiếp theo cần cấp 70 mới có thể trang bị."
LEVELTIP_CONTENT87 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc sáu.\rHộ cổ tay bậc tiếp theo cần cấp 70 mới có thể trang bị."
LEVELTIP_CONTENT88 = "Bạn hiện tại có thể tham gia chiến trường Chinh Chiến “Trận Bộc Dương” rồi!"
LEVELTIP_CONTENT89 = "Bạn hiện tại có thể tham gia chiến trường Vô Song “Loạn Khăn Vàng” rồi!"
LEVELTIP_CONTENT90 = "Bạn hiện tại có thể tham gia chiến trường Vô Song “Hổ Lao Quan Quần Anh Hội” rồi!"
LEVELTIP_CONTENT91 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Trận Hợp Phì” rồi!"
LEVELTIP_CONTENT92 = "^ff765cTranh Đoạt Ngũ Trượng Nguyên^ffffff：Phải gia nhập một trong ba phe Ngụy, Thục, Ngô."
LEVELTIP_CONTENT93 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc bốn.\rHộ cổ tay bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT94 = "Kỹ năng sản xuất “Thợ Rèn” có thể dùng để chế tạo vũ khí.\rCấp độ có thể học hiện tại：Đại Sư\rNPC học：#1918#"
LEVELTIP_CONTENT95 = "Kỹ năng sản xuất “May Vá” có thể dùng để chế tạo phòng cụ.\rCấp độ có thể học hiện tại：Đại Sư\rNPC học：#1920#"
LEVELTIP_CONTENT96 = "Kỹ năng sản xuất “Xảo Tượng” có thể dùng để chế tạo vật liệu cường hóa, tổng hợp Nguyên Thạch và Phù Ngọc.\rCấp độ có thể học hiện tại：Đặc cấp\rNPC học：#1928#"
LEVELTIP_CONTENT97 = "Bạn hiện tại có thể tham gia chiến trường Chinh Chiến “Trận Dĩnh Xuyên” rồi!"
LEVELTIP_CONTENT98 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Trận Thảo Phạt Trương Lương” rồi!"
LEVELTIP_CONTENT99 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Tào Tháo Truyện·Vương Lăng Quỷ Ảnh” rồi!"
LEVELTIP_CONTENT100 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Lưu Bị Truyện·Thoát Hiểm Từ Miệng Hổ” rồi!"
LEVELTIP_CONTENT101 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Điển Vi Truyện·Ác Lai Gào Thét” rồi!"
LEVELTIP_CONTENT102 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Tôn Quyền Truyện·Ký Sự Hồ Lô Sắt” rồi!"
LEVELTIP_CONTENT103 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Triệu Vân Truyện·Long Dược Trường Bản” rồi!"
LEVELTIP_CONTENT104 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc bốn.\rĐai lưng bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT105 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc bốn.\rHộ chân bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT106 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Lã Bố Truyện·Phi Tướng Hồi Thiên” rồi!"
LEVELTIP_CONTENT107 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc bốn.\rHộ vai bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT108 = "Kỹ năng sản xuất “Dược Sư” có thể dùng để chế tạo thuốc viên hồi phục sinh lực ngay lập tức.\rCấp độ có thể học hiện tại：Đại Sư\rNPC học：#1926#"
LEVELTIP_CONTENT109 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc bốn.\rGiày bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT110 = "Bạn cần đến #1910# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cĐao Thánh^ffffff."
LEVELTIP_CONTENT111 = "Bạn cần đến #3365# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThương Vương^ffffff."
LEVELTIP_CONTENT112 = "Bạn cần đến #3366# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKích Thánh^ffffff."
LEVELTIP_CONTENT113 = "Bạn cần đến #3367# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cViệt Thánh^ffffff."
LEVELTIP_CONTENT114 = "Bạn cần đến #3368# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXoa Thánh^ffffff."
LEVELTIP_CONTENT115 = "Bạn cần đến #3369# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCôn Vương^ffffff."
LEVELTIP_CONTENT116 = "Bạn cần đến #3370# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKiếm Thánh^ffffff."
LEVELTIP_CONTENT117 = "Bạn cần đến #3371# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhủ Vương^ffffff."
LEVELTIP_CONTENT118 = "Bạn cần đến #3372# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCâu Vương^ffffff."
LEVELTIP_CONTENT119 = "Bạn cần đến #3373# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cGiản Thánh^ffffff."
LEVELTIP_CONTENT120 = "Bạn cần đến #3374# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cChùy Thánh^ffffff."
LEVELTIP_CONTENT121 = "Bạn cần đến #3375# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrảo Thánh^ffffff."
LEVELTIP_CONTENT122 = "Bạn cần đến #3376# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThuẫn Vương^ffffff."
LEVELTIP_CONTENT123 = "Bạn cần đến #3377# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHoàn Thánh^ffffff."
LEVELTIP_CONTENT124 = "Bạn cần đến #3378# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrượng Vương^ffffff."
LEVELTIP_CONTENT125 = "Bạn cần đến #3379# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cVũ Vương^ffffff."
LEVELTIP_CONTENT126 = "Bạn cần đến #3380# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhiến Vương^ffffff."
LEVELTIP_CONTENT127 = "Bạn cần đến #3381# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCung Vương^ffffff."
LEVELTIP_CONTENT128 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc bốn.\rVũ khí bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT129 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc bốn.\rÁo bậc tiếp theo cần cấp 60 mới có thể trang bị."
LEVELTIP_CONTENT130 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Trận Lạc Phượng Pha” rồi!"
LEVELTIP_CONTENT131 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Trận Chiến Rút Lui Kinh Tương” rồi!"
LEVELTIP_CONTENT132 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc ba.\rHộ cổ tay bậc tiếp theo cần cấp 58 mới có thể trang bị."
LEVELTIP_CONTENT133 = "Kỹ năng sản xuất “Nấu Ăn” có thể dùng để chế tạo thức ăn, rượu ngon và trà uống.\rCấp độ có thể học hiện tại：Đại Sư\rNPC học：#1924#"
LEVELTIP_CONTENT134 = "Kỹ năng sản xuất “Thợ Rèn” có thể dùng để chế tạo vũ khí.\rCấp độ có thể học hiện tại：Đặc cấp\rNPC học：#1918#"
LEVELTIP_CONTENT135 = "Kỹ năng sản xuất “May Vá” có thể dùng để chế tạo phòng cụ.\rCấp độ có thể học hiện tại：Đặc cấp\rNPC học：#1920#"
LEVELTIP_CONTENT136 = "Kỹ năng sản xuất “Xảo Tượng” có thể dùng để chế tạo vật liệu cường hóa, tổng hợp Nguyên Thạch và Phù Ngọc.\rCấp độ có thể học hiện tại：Cao cấp\rNPC học：#1928#"
LEVELTIP_CONTENT137 = "Kỹ năng sản xuất “Cấp Cứu” có thể dùng để chế tạo thuốc mỡ có thể sử dụng trong chiến đấu.\rCấp độ có thể học hiện tại：Đại Sư\rNPC học：#1930#"
LEVELTIP_CONTENT138 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Tưởng Cán Truyện·Trộm Sách Ở Trại Ngô” rồi!"
LEVELTIP_CONTENT139 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc ba.\rĐai lưng bậc tiếp theo cần cấp 57 mới có thể trang bị."
LEVELTIP_CONTENT140 = "Kỹ năng sản xuất “Dược Sư” có thể dùng để chế tạo thuốc viên hồi phục sinh lực ngay lập tức.\rCấp độ có thể học hiện tại：Đặc cấp\rNPC học：#1926#"
LEVELTIP_CONTENT141 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc ba.\rHộ chân bậc tiếp theo cần cấp 56 mới có thể trang bị."
LEVELTIP_CONTENT142 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc ba.\rHộ vai bậc tiếp theo cần cấp 54 mới có thể trang bị."
LEVELTIP_CONTENT143 = "Bạn cần đến #1910# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cĐao Tướng^ffffff."
LEVELTIP_CONTENT144 = "Bạn cần đến #3365# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThương Tướng^ffffff."
LEVELTIP_CONTENT145 = "Bạn cần đến #3366# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKích Tướng^ffffff."
LEVELTIP_CONTENT146 = "Bạn cần đến #3367# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cViệt Tướng^ffffff."
LEVELTIP_CONTENT147 = "Bạn cần đến #3368# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXoa Tướng^ffffff."
LEVELTIP_CONTENT148 = "Bạn cần đến #3369# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCôn Tướng^ffffff."
LEVELTIP_CONTENT149 = "Bạn cần đến #3370# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKiếm Hào^ffffff."
LEVELTIP_CONTENT150 = "Bạn cần đến #3371# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhủ Tướng^ffffff."
LEVELTIP_CONTENT151 = "Bạn cần đến #3372# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCâu Hào^ffffff."
LEVELTIP_CONTENT152 = "Bạn cần đến #3373# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cGiản Hào^ffffff."
LEVELTIP_CONTENT153 = "Bạn cần đến #3374# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cChùy Tướng^ffffff."
LEVELTIP_CONTENT154 = "Bạn cần đến #3375# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrảo Hào^ffffff."
LEVELTIP_CONTENT155 = "Bạn cần đến #3376# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThuẫn Tướng^ffffff."
LEVELTIP_CONTENT156 = "Bạn cần đến #3377# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHoàn Tướng^ffffff."
LEVELTIP_CONTENT157 = "Bạn cần đến #3378# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrượng Tướng^ffffff."
LEVELTIP_CONTENT158 = "Bạn cần đến #3379# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cVũ Hào^ffffff."
LEVELTIP_CONTENT159 = "Bạn cần đến #3380# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhiến Tướng^ffffff."
LEVELTIP_CONTENT160 = "Bạn cần đến #3381# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCung Tướng^ffffff."
LEVELTIP_CONTENT161 = "^ff765cNhạc Phủ Thăm Hỏi^ffffff：Mỗi ngày một lần.\rBạn có thể nói chuyện với #3167# để tham gia hoạt động này."
LEVELTIP_CONTENT162 = "Kỹ năng sản xuất “Cấp Cứu” có thể dùng để chế tạo thuốc mỡ có thể sử dụng trong chiến đấu.\rCấp độ có thể học hiện tại：Đặc cấp\rNPC học：#1930#"
LEVELTIP_CONTENT163 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Trận Chiến Nghĩa Binh Tích Lương” rồi!"
LEVELTIP_CONTENT164 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc ba.\rGiày bậc tiếp theo cần cấp 52 mới có thể trang bị."
LEVELTIP_CONTENT165 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc ba.\rVũ khí bậc tiếp theo cần cấp 50 mới có thể trang bị."
LEVELTIP_CONTENT166 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc ba.\rÁo bậc tiếp theo cần cấp 50 mới có thể trang bị."
LEVELTIP_CONTENT167 = "Kỹ năng sản xuất “Nấu Ăn” có thể dùng để chế tạo thức ăn, rượu ngon và trà uống.\rCấp độ có thể học hiện tại：Đặc cấp\rNPC học：#1924#"
LEVELTIP_CONTENT168 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc hai.\rHộ cổ tay bậc tiếp theo cần cấp 48 mới có thể trang bị."
LEVELTIP_CONTENT169 = "Kỹ năng sản xuất “Thợ Rèn” có thể dùng để chế tạo vũ khí.\rCấp độ có thể học hiện tại：Cao cấp\rNPC học：#1918#"
LEVELTIP_CONTENT170 = "Kỹ năng sản xuất “May Vá” có thể dùng để chế tạo phòng cụ.\rCấp độ có thể học hiện tại：Cao cấp\rNPC học：#1920#"
LEVELTIP_CONTENT171 = "Kỹ năng sản xuất “Xảo Tượng” có thể dùng để chế tạo vật liệu cường hóa, tổng hợp Nguyên Thạch và Phù Ngọc.\rCấp độ có thể học hiện tại：Trung cấp\rNPC học：#1928#"
LEVELTIP_CONTENT172 = "Kỹ năng sản xuất “Dược Sư” có thể dùng để chế tạo thuốc viên hồi phục sinh lực ngay lập tức.\rCấp độ có thể học hiện tại：Cao cấp\rNPC học：#1926#"
LEVELTIP_CONTENT173 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc hai.\rĐai lưng bậc tiếp theo cần cấp 46 mới có thể trang bị."
LEVELTIP_CONTENT174 = "Bạn cần đến #1910# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cĐao Úy^ffffff."
LEVELTIP_CONTENT175 = "Bạn cần đến #3365# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThương Úy^ffffff."
LEVELTIP_CONTENT176 = "Bạn cần đến #3366# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKích Úy^ffffff."
LEVELTIP_CONTENT177 = "Bạn cần đến #3367# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cViệt Úy^ffffff."
LEVELTIP_CONTENT178 = "Bạn cần đến #3368# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXoa Úy^ffffff."
LEVELTIP_CONTENT179 = "Bạn cần đến #3369# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCôn Úy^ffffff."
LEVELTIP_CONTENT180 = "Bạn cần đến #3370# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKiếm Hiệp^ffffff."
LEVELTIP_CONTENT181 = "Bạn cần đến #3371# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhủ Úy^ffffff."
LEVELTIP_CONTENT182 = "Bạn cần đến #3372# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCâu Hiệp^ffffff."
LEVELTIP_CONTENT183 = "Bạn cần đến #3373# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cGiản Hiệp^ffffff."
LEVELTIP_CONTENT184 = "Bạn cần đến #3374# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cChùy Úy^ffffff."
LEVELTIP_CONTENT185 = "Bạn cần đến #3375# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrảo Hiệp^ffffff."
LEVELTIP_CONTENT186 = "Bạn cần đến #3376# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThuẫn Úy^ffffff."
LEVELTIP_CONTENT187 = "Bạn cần đến #3377# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHoàn Hiệp^ffffff."
LEVELTIP_CONTENT188 = "Bạn cần đến #3378# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrượng Hiệp^ffffff."
LEVELTIP_CONTENT189 = "Bạn cần đến #3379# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cVũ Sư^ffffff."
LEVELTIP_CONTENT190 = "Bạn cần đến #3380# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhiến Hiệp^ffffff."
LEVELTIP_CONTENT191 = "Bạn cần đến #3381# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCung Úy^ffffff."
LEVELTIP_CONTENT192 = "Bạn hiện tại có thể tham gia chiến trường Ngoại Truyện “Tôn Hương Truyện·Kỵ Quyến Hương Phong” rồi!"
LEVELTIP_CONTENT193 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc hai.\rHộ chân bậc tiếp theo cần cấp 43 mới có thể trang bị."
LEVELTIP_CONTENT194 = "Kỹ năng sản xuất “Cấp Cứu” có thể dùng để chế tạo thuốc mỡ có thể sử dụng trong chiến đấu.\rCấp độ có thể học hiện tại：Cao cấp\rNPC học：#1930#"
LEVELTIP_CONTENT195 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc hai.\rHộ vai bậc tiếp theo cần cấp 41 mới có thể trang bị."
LEVELTIP_CONTENT196 = "Bạn hiện tại có thể tham gia chiến trường Vô Song “Tây Lương Nhiễu Loạn” rồi!"
LEVELTIP_CONTENT197 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc hai.\rGiày bậc tiếp theo cần cấp 38 mới có thể trang bị."
LEVELTIP_CONTENT198 = "Kỹ năng sản xuất “Nấu Ăn” có thể dùng để chế tạo thức ăn, rượu ngon và trà uống.\rCấp độ có thể học hiện tại：Cao cấp\rNPC học：#1924#"
LEVELTIP_CONTENT199 = "Kỹ năng sản xuất “Dược Sư” có thể dùng để chế tạo thuốc viên hồi phục sinh lực ngay lập tức.\rCấp độ có thể học hiện tại：Trung cấp\rNPC học：#1926#"
LEVELTIP_CONTENT200 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc hai.\rVũ khí bậc tiếp theo cần cấp 36 mới có thể trang bị."
LEVELTIP_CONTENT201 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc hai.\rÁo bậc tiếp theo cần cấp 36 mới có thể trang bị."
LEVELTIP_CONTENT202 = "Kỹ năng sản xuất “Xảo Tượng” có thể dùng để chế tạo vật liệu cường hóa, tổng hợp Nguyên Thạch và Phù Ngọc.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1927#"
LEVELTIP_CONTENT203 = "Kỹ năng sản xuất “Thợ Công” có thể dùng để chế tạo bảo vật, Điểm Hóa Bí Văn Linh Châu.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1932#"
LEVELTIP_CONTENT204 = "Bạn cần đến #1910# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cĐao Kỵ^ffffff."
LEVELTIP_CONTENT205 = "Bạn cần đến #3365# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThương Kỵ^ffffff."
LEVELTIP_CONTENT206 = "Bạn cần đến #3366# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKích Kỵ^ffffff."
LEVELTIP_CONTENT207 = "Bạn cần đến #3367# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cViệt Kỵ^ffffff."
LEVELTIP_CONTENT208 = "Bạn cần đến #3368# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXoa Kỵ^ffffff."
LEVELTIP_CONTENT209 = "Bạn cần đến #3369# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCôn Kỵ^ffffff."
LEVELTIP_CONTENT210 = "Bạn cần đến #3370# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKiếm Sĩ^ffffff."
LEVELTIP_CONTENT211 = "Bạn cần đến #3371# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhủ Kỵ^ffffff."
LEVELTIP_CONTENT212 = "Bạn cần đến #3372# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCâu Sĩ^ffffff."
LEVELTIP_CONTENT213 = "Bạn cần đến #3373# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cGiản Sĩ^ffffff."
LEVELTIP_CONTENT214 = "Bạn cần đến #3374# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cChùy Kỵ^ffffff."
LEVELTIP_CONTENT215 = "Bạn cần đến #3375# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrảo Sĩ^ffffff."
LEVELTIP_CONTENT216 = "Bạn cần đến #3376# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThuẫn Kỵ^ffffff."
LEVELTIP_CONTENT217 = "Bạn cần đến #3377# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHoàn Sĩ^ffffff."
LEVELTIP_CONTENT218 = "Bạn cần đến #3378# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrượng Sĩ^ffffff."
LEVELTIP_CONTENT219 = "Bạn cần đến #3379# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cVũ Sĩ^ffffff."
LEVELTIP_CONTENT220 = "Bạn cần đến #3380# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhiến Sĩ^ffffff."
LEVELTIP_CONTENT221 = "Bạn cần đến #3381# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCung Kỵ^ffffff."
LEVELTIP_CONTENT222 = "Khi bạn đạt cấp 20, có thể đến #3352# hoặc #1915# học kỵ thuật."
LEVELTIP_CONTENT223 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay bậc một.\rHộ cổ tay bậc tiếp theo cần cấp 34 mới có thể trang bị."
LEVELTIP_CONTENT224 = "Kỹ năng sản xuất “Thuần Dưỡng” có thể dùng để nâng cấp tọa kỵ.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1915#"
LEVELTIP_CONTENT225 = "Kỹ năng sản xuất “Thợ Rèn” có thể dùng để chế tạo vũ khí.\rCấp độ có thể học hiện tại：Trung cấp\rNPC học：#1918#"
LEVELTIP_CONTENT226 = "Kỹ năng sản xuất “May Vá” có thể dùng để chế tạo phòng cụ.\rCấp độ có thể học hiện tại：Trung cấp\rNPC học：#1920#"
LEVELTIP_CONTENT227 = "Bạn hiện tại có thể tham gia chiến trường Diễn Nghĩa “Trận Chiến Hán Quân Bọc Hậu” rồi!"
LEVELTIP_CONTENT228 = "Kỹ năng sản xuất “Dược Sư” có thể dùng để chế tạo thuốc viên hồi phục sinh lực ngay lập tức.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1925#"
LEVELTIP_CONTENT229 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng bậc một.\rĐai lưng bậc tiếp theo cần cấp 32 mới có thể trang bị."
LEVELTIP_CONTENT230 = "Bạn có thể đến #1910# học kỹ năng chiến đấu Đao mới."
LEVELTIP_CONTENT231 = "Bạn có thể đến #3365# học kỹ năng chiến đấu Thương mới."
LEVELTIP_CONTENT232 = "Bạn có thể đến #3366# học kỹ năng chiến đấu Kích mới."
LEVELTIP_CONTENT233 = "Bạn có thể đến #3367# học kỹ năng chiến đấu Việt mới."
LEVELTIP_CONTENT234 = "Bạn có thể đến #3368# học kỹ năng chiến đấu Xoa mới."
LEVELTIP_CONTENT235 = "Bạn có thể đến #3369# học kỹ năng chiến đấu Côn mới."
LEVELTIP_CONTENT236 = "Bạn có thể đến #3370# học kỹ năng chiến đấu Kiếm mới."
LEVELTIP_CONTENT237 = "Bạn có thể đến #3371# học kỹ năng chiến đấu Phủ mới."
LEVELTIP_CONTENT238 = "Bạn có thể đến #3372# học kỹ năng chiến đấu Câu mới."
LEVELTIP_CONTENT239 = "Bạn có thể đến #3373# học kỹ năng chiến đấu Giản mới."
LEVELTIP_CONTENT240 = "Bạn có thể đến #3374# học kỹ năng chiến đấu Chùy mới."
LEVELTIP_CONTENT241 = "Bạn có thể đến #3375# học kỹ năng chiến đấu Trảo mới."
LEVELTIP_CONTENT242 = "Bạn có thể đến #3376# học kỹ năng chiến đấu Thuẫn mới."
LEVELTIP_CONTENT243 = "Bạn có thể đến #3377# học kỹ năng chiến đấu Hoàn mới."
LEVELTIP_CONTENT244 = "Bạn có thể đến #3378# học kỹ năng chiến đấu Trượng mới."
LEVELTIP_CONTENT245 = "Bạn có thể đến #3379# học kỹ năng chiến đấu Vũ mới."
LEVELTIP_CONTENT246 = "Bạn có thể đến #3380# học kỹ năng chiến đấu Phiến mới."
LEVELTIP_CONTENT247 = "Bạn có thể đến #3381# học kỹ năng chiến đấu Cung mới."
LEVELTIP_CONTENT248 = "^ff765cTìm Báu Vật Hàng Ngày^ffffff：Mỗi ngày một lần.\rBạn có thể nói chuyện với #9013# để tham gia hoạt động này."
LEVELTIP_CONTENT249 = "^ff765cCâu Cá Hàng Ngày^ffffff：Mở cả ngày.\rBạn có thể nói chuyện với #9163# để tham gia hoạt động này."
LEVELTIP_CONTENT250 = "^ff765cĐại Hội Câu Cá Cuối Tuần^ffffff：19:00-22:00 Chủ Nhật hàng tuần.\rBạn có thể nói chuyện với #9163# để tham gia hoạt động này."
LEVELTIP_CONTENT251 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân bậc một.\rHộ chân bậc tiếp theo cần cấp 29 mới có thể trang bị."
LEVELTIP_CONTENT252 = "Kỹ năng sản xuất “Nấu Ăn” có thể dùng để chế tạo thức ăn, rượu ngon và trà uống.\rCấp độ có thể học hiện tại：Trung cấp\rNPC học：#1924#"
LEVELTIP_CONTENT253 = "Kỹ năng sản xuất “Cấp Cứu” có thể dùng để chế tạo thuốc mỡ có thể sử dụng trong chiến đấu.\rCấp độ có thể học hiện tại：Trung cấp\rNPC học：#1930#"
LEVELTIP_CONTENT254 = "Bạn có thể đến #5075# học kỹ năng chiến đấu mới."
LEVELTIP_CONTENT255 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai bậc một.\rHộ vai bậc tiếp theo cần cấp 27 mới có thể trang bị."
LEVELTIP_CONTENT256 = "Bạn có thể đến #5075# học kỹ năng chiến đấu mới."
LEVELTIP_CONTENT257 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cĐao Binh^ffffff."
LEVELTIP_CONTENT258 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThương Binh^ffffff."
LEVELTIP_CONTENT259 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKích Binh^ffffff."
LEVELTIP_CONTENT260 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cViệt Binh^ffffff."
LEVELTIP_CONTENT261 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cXoa Binh^ffffff."
LEVELTIP_CONTENT262 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCôn Binh^ffffff."
LEVELTIP_CONTENT263 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cKiếm Khách^ffffff."
LEVELTIP_CONTENT264 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhủ Binh^ffffff."
LEVELTIP_CONTENT265 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCâu Khách^ffffff."
LEVELTIP_CONTENT266 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cGiản Khách^ffffff."
LEVELTIP_CONTENT267 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cChùy Binh^ffffff."
LEVELTIP_CONTENT268 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrảo Khách^ffffff."
LEVELTIP_CONTENT269 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cThuẫn Binh^ffffff."
LEVELTIP_CONTENT270 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cHoàn Thủ^ffffff."
LEVELTIP_CONTENT271 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cTrượng Sinh^ffffff."
LEVELTIP_CONTENT272 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cVũ Giả^ffffff."
LEVELTIP_CONTENT273 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cPhiến Khách^ffffff."
LEVELTIP_CONTENT274 = "Bạn cần đến #3996# hoàn thành nhiệm vụ binh chủng, mới có thể nâng cấp binh chủng chính lên giai đoạn tiếp theo: ^ff765cCung Thủ^ffffff."
LEVELTIP_CONTENT275 = "Bạn có thể đến #1882# học kỹ năng chiến đấu mới."
LEVELTIP_CONTENT276 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày bậc một.\rGiày bậc tiếp theo cần cấp 24 mới có thể trang bị."
LEVELTIP_CONTENT277 = "Kỹ năng sản xuất “Cấp Cứu” có thể dùng để chế tạo thuốc mỡ có thể sử dụng trong chiến đấu.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1929#"
LEVELTIP_CONTENT278 = "Bạn có thể đến #3348# học kỹ năng chiến đấu mới."
LEVELTIP_CONTENT279 = "^ff765cNhiệm Vụ Nhân Nghĩa^ffffff：Mở cả ngày.\rBạn có thể nói chuyện với #14873# để tham gia hoạt động này."
LEVELTIP_CONTENT280 = "Trang bị mới có thể thay ở cấp độ hiện tại là: vũ khí bậc một.\rVũ khí bậc tiếp theo cần cấp 22 mới có thể trang bị."
LEVELTIP_CONTENT281 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo bậc một.\rÁo bậc tiếp theo cần cấp 22 mới có thể trang bị."
LEVELTIP_CONTENT282 = "Kỹ năng sản xuất “Thợ Rèn” có thể dùng để chế tạo vũ khí.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1917#"
LEVELTIP_CONTENT283 = "Kỹ năng sản xuất “May Vá” có thể dùng để chế tạo phòng cụ.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1919#"
LEVELTIP_CONTENT284 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ cổ tay sơ cấp.\rHộ cổ tay bậc tiếp theo cần cấp 20 mới có thể trang bị."
LEVELTIP_CONTENT285 = "Bạn có thể đến #3348# học kỹ năng chiến đấu mới."
LEVELTIP_CONTENT286 = "Trang bị mới có thể thay ở cấp độ hiện tại là: đai lưng sơ cấp.\rĐai lưng bậc tiếp theo cần cấp 18 mới có thể trang bị."
LEVELTIP_CONTENT287 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ chân sơ cấp.\rHộ chân bậc tiếp theo cần cấp 15 mới có thể trang bị."
LEVELTIP_CONTENT288 = "Kỹ năng sản xuất “Nấu Ăn” có thể dùng để chế tạo thức ăn, rượu ngon và trà uống.\rCấp độ có thể học hiện tại：Sơ cấp\rNPC học：#1923#"
LEVELTIP_CONTENT289 = "Bạn có thể đến #3346# học kỹ năng chiến đấu mới."
LEVELTIP_CONTENT290 = "Trang bị mới có thể thay ở cấp độ hiện tại là: hộ vai sơ cấp.\rHộ vai bậc tiếp theo cần cấp 13 mới có thể trang bị."
LEVELTIP_CONTENT291 = "Trang bị mới có thể thay ở cấp độ hiện tại là: giày sơ cấp.\rGiày bậc tiếp theo cần cấp 10 mới có thể trang bị."
LEVELTIP_CONTENT292 = "Bạn có thể đến #3346# học kỹ năng chiến đấu mới."
LEVELTIP_CONTENT293 = "Trang bị mới có thể thay ở cấp độ hiện tại là: áo sơ cấp.\rÁo bậc tiếp theo cần cấp 8 mới có thể trang bị."
LEVELTIP_CONTENT294 = "^ff765cThi Tài Thao Lược^ffffff：Bắt đầu lúc 19:30 hàng ngày, online là có thể nhận được lời mời."
LEVELTIP_CONTENT295 = "^ff765cThiên Lý Truy Hung^ffffff：Bắt đầu từ 0 giờ hàng ngày, mỗi 2 giờ bắt đầu một lần."
LEVELTIP_CONTENT296 = "Bạn đã có một vũ khí sơ cấp, hiện tại có thể trang bị nó rồi!\rVũ khí bậc tiếp theo cần cấp 8 mới có thể trang bị."


--新手帮助
QuestpList = {
{pLv = 2, qLv = 2, qId = 867, Ptype = 0, Pprof = ""},
{pLv = 3, qLv = 3, qId = 662, Ptype = 0, Pprof = ""},
{pLv = 4, qLv = 4, qId = 672, Ptype = 0, Pprof = ""},
{pLv = 4, qLv = 4, qId = 899, Ptype = 0, Pprof = 1},
{pLv = 4, qLv = 4, qId = 900, Ptype = 0, Pprof = 2},
{pLv = 4, qLv = 4, qId = 901, Ptype = 0, Pprof = 3},
{pLv = 4, qLv = 4, qId = 902, Ptype = 0, Pprof = 4},
{pLv = 4, qLv = 4, qId = 903, Ptype = 0, Pprof = 5},
{pLv = 4, qLv = 4, qId = 904, Ptype = 0, Pprof = 6},
{pLv = 4, qLv = 4, qId = 905, Ptype = 0, Pprof = 7},
{pLv = 4, qLv = 4, qId = 906, Ptype = 0, Pprof = 8},
{pLv = 4, qLv = 4, qId = 907, Ptype = 0, Pprof = 9},
{pLv = 4, qLv = 4, qId = 908, Ptype = 0, Pprof = 10},
{pLv = 4, qLv = 4, qId = 909, Ptype = 0, Pprof = 11},
{pLv = 4, qLv = 4, qId = 910, Ptype = 0, Pprof = 12},
{pLv = 4, qLv = 4, qId = 911, Ptype = 0, Pprof = 13},
{pLv = 4, qLv = 4, qId = 912, Ptype = 0, Pprof = 14},
{pLv = 4, qLv = 4, qId = 913, Ptype = 0, Pprof = 15},
{pLv = 4, qLv = 4, qId = 914, Ptype = 0, Pprof = 16},
{pLv = 4, qLv = 4, qId = 915, Ptype = 0, Pprof = 17},
{pLv = 4, qLv = 4, qId = 916, Ptype = 0, Pprof = 18},
{pLv = 5, qLv = 5, qId = 921, Ptype = 0, Pprof = ""},
{pLv = 7, qLv = 6, qId = 472, Ptype = 0, Pprof = ""},
{pLv = 7, qLv = 7, qId = 870, Ptype = 0, Pprof = 1},
{pLv = 7, qLv = 7, qId = 871, Ptype = 0, Pprof = 2},
{pLv = 7, qLv = 7, qId = 872, Ptype = 0, Pprof = 3},
{pLv = 7, qLv = 7, qId = 873, Ptype = 0, Pprof = 4},
{pLv = 7, qLv = 7, qId = 874, Ptype = 0, Pprof = 5},
{pLv = 7, qLv = 7, qId = 875, Ptype = 0, Pprof = 6},
{pLv = 7, qLv = 7, qId = 876, Ptype = 0, Pprof = 7},
{pLv = 7, qLv = 7, qId = 877, Ptype = 0, Pprof = 8},
{pLv = 7, qLv = 7, qId = 878, Ptype = 0, Pprof = 9},
{pLv = 7, qLv = 7, qId = 879, Ptype = 0, Pprof = 10},
{pLv = 7, qLv = 7, qId = 880, Ptype = 0, Pprof = 11},
{pLv = 7, qLv = 7, qId = 881, Ptype = 0, Pprof = 12},
{pLv = 7, qLv = 7, qId = 882, Ptype = 0, Pprof = 13},
{pLv = 7, qLv = 7, qId = 883, Ptype = 0, Pprof = 14},
{pLv = 7, qLv = 7, qId = 884, Ptype = 0, Pprof = 15},
{pLv = 7, qLv = 7, qId = 885, Ptype = 0, Pprof = 16},
{pLv = 7, qLv = 7, qId = 886, Ptype = 0, Pprof = 17},
{pLv = 7, qLv = 7, qId = 887, Ptype = 0, Pprof = 18},
{pLv = 8, qLv = 8, qId = 477, Ptype = 0, Pprof = ""},
{pLv = 10, qLv = 9, qId = 492, Ptype = 0, Pprof = ""},
{pLv = 10, qLv = 11, qId = 489, Ptype = 0, Pprof = ""},
{pLv = 13, qLv = 13, qId = 514, Ptype = 0, Pprof = ""},
{pLv = 15, qLv = 14, qId = 532, Ptype = 0, Pprof = ""},
{pLv = 2, qLv = 1, qId = 20194, Ptype = 1, Pprof = ""},
{pLv = 3, qLv = 2, qId = 20195, Ptype = 1, Pprof = ""},
{pLv = 4, qLv = 2, qId = 20197, Ptype = 1, Pprof = ""},
{pLv = 4, qLv = 5, qId = 20198, Ptype = 1, Pprof = ""},
{pLv = 5, qLv = 6, qId = 20199, Ptype = 1, Pprof = ""},
{pLv = 6, qLv = 6, qId = 20200, Ptype = 1, Pprof = ""},
{pLv = 7, qLv = 7, qId = 21278, Ptype = 1, Pprof = ""},
{pLv = 7, qLv = 7, qId = 20204, Ptype = 1, Pprof = ""},
{pLv = 7, qLv = 8, qId = 20292, Ptype = 1, Pprof = ""},
{pLv = 8, qLv = 9, qId = 20211, Ptype = 1, Pprof = ""},
{pLv = 10, qLv = 10, qId = 21298, Ptype = 1, Pprof = ""},
{pLv = 13, qLv = 11, qId = 20214, Ptype = 1, Pprof = ""},
{pLv = 15, qLv = 14, qId = 20216, Ptype = 1, Pprof = ""},
{pLv = 18, qLv = 18, qId = 204, Ptype = 0, Pprof = ""},
{pLv = 20, qLv = 20, qId = 267, Ptype = 10, Pprof = ""},
{pLv = 20, qLv = 20, qId = 254, Ptype = 10, Pprof = ""},
{pLv = 20, qLv = 20, qId = 263, Ptype = 10, Pprof = ""},
{pLv = 22, qLv = 20, qId = 270, Ptype = 10, Pprof = ""},
{pLv = 24, qLv = 23, qId = 229, Ptype = 10, Pprof = ""},
{pLv = 29, qLv = 28, qId = 52, Ptype = 10, Pprof = ""},
{pLv = 30, qLv = 30, qId = 74, Ptype = 10, Pprof = ""},
{pLv = 30, qLv = 35, qId = 161, Ptype = 10, Pprof = ""},
{pLv = 30, qLv = 32, qId = 150, Ptype = 10, Pprof = ""},
{pLv = 30, qLv = 30, qId = 86, Ptype = 10, Pprof = ""},
{pLv = 38, qLv = 38, qId = 2166, Ptype = 10, Pprof = ""},
{pLv = 40, qLv = 40, qId = 2497, Ptype = 10, Pprof = ""},
{pLv = 40, qLv = 40, qId = 2521, Ptype = 10, Pprof = ""},
{pLv = 41, qLv = 42, qId = 2523, Ptype = 10, Pprof = ""},
{pLv = 48, qLv = 47, qId = 2867, Ptype = 10, Pprof = ""},
{pLv = 50, qLv = 50, qId = 2885, Ptype = 10, Pprof = ""},
{pLv = 54, qLv = 54, qId = 2664, Ptype = 10, Pprof = ""},
{pLv = 57, qLv = 57, qId = 2699, Ptype = 10, Pprof = ""},
{pLv = 58, qLv = 58, qId = 2716, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21318, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21319, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21040, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21041, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21249, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21250, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21222, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21223, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21227, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21228, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21231, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21232, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21233, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21236, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21237, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21238, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21246, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21247, Ptype = 10, Pprof = ""},
{pLv = 81, qLv = 85, qId = 21248, Ptype = 10, Pprof = ""},
{pLv = 96, qLv = 96, qId = 22711, Ptype = 20, Pprof = ""},
{pLv = 111, qLv = 111, qId = 22710, Ptype = 20, Pprof = ""}
}

TitlePList = {
{Tlevel = 2, TID = 8, Ptype = 0, TIdList = {658, 666, 899, 672, 4, 5, 7}},
{Tlevel = 2, TID = 9, Ptype = 0, TIdList = {658, 666, 899, 672, 4, 5, 7}},
{Tlevel = 2, TID = 20202, Ptype = 1, TIdList = {20198, 20201}},
{Tlevel = 12, TID = 20216, Ptype = 1, TIdList = {20216}},
{Tlevel = 15, TID = 512, Ptype = 0, TIdList = {481,500,502,503,504,512}},
{Tlevel = 17, TID = 233, Ptype = 0, TIdList = {207, 212, 216, 217, 233}},
{Tlevel = 20, TID = 2689, Ptype = 10, TIdList = {285, 286, 287, 288, 2685, 2686, 2687, 2688, 2689}},
{Tlevel = 20, TID = 2694, Ptype = 10, TIdList = {281, 282, 283, 284, 2690, 2691, 2692, 2693, 2694}},
{Tlevel = 20, TID = 273, Ptype = 10, TIdList = {270, 271, 272, 273}},
{Tlevel = 23, TID = 228, Ptype = 10, TIdList = {220, 222, 223, 224, 225, 226, 227, 228}},
{Tlevel = 24, TID = 258, Ptype = 10, TIdList = {255, 256, 257, 258}},
{Tlevel = 27, TID = 304, Ptype = 10, TIdList = {303, 304}},
{Tlevel = 29, TID = 87, Ptype = 10, TIdList = {60, 61, 62, 63, 64, 65, 66, 67, 68, 80, 86, 87}},
{Tlevel = 31, TID = 98, Ptype = 10, TIdList = {90, 91, 92, 93, 94, 95, 96, 97, 98}},
{Tlevel = 33, TID = 129, Ptype = 10, TIdList = {119, 120, 131, 121, 122, 123, 124, 125, 126, 127, 128, 129}},
{Tlevel = 33, TID = 346, Ptype = 10, TIdList = {119, 339, 343, 346}},
{Tlevel = 33, TID = 180, Ptype = 10, TIdList = {136, 1162, 1163, 174, 175, 176, 177, 178, 179, 180}},
{Tlevel = 34, TID = 157, Ptype = 10, TIdList = {152, 153, 154, 155, 156, 157}},
{Tlevel = 38, TID = 2174, Ptype = 10, TIdList = {2165, 2166, 2167, 2169, 2170, 2311, 2174}},
{Tlevel = 40, TID = 2511, Ptype = 10, TIdList = {2505, 2507, 2508, 2509, 2510, 2511}},
{Tlevel = 42, TID = 2522, Ptype = 10, TIdList = {2520, 2521, 2522}},
{Tlevel = 42, TID = 2533, Ptype = 10, TIdList = {2528, 2529, 2530, 2532, 2533}},
{Tlevel = 45, TID = 2597, Ptype = 10, TIdList = {2539, 2590, 2591, 2542, 2597}},
{Tlevel = 46, TID = 2856, Ptype = 10, TIdList = {2850, 2852, 2853, 2854, 2855, 2856}},
{Tlevel = 47, TID = 2947, Ptype = 10, TIdList = {2865, 2866, 2867, 2943, 2944, 2945, 2946, 2947}},
{Tlevel = 50, TID = 2892, Ptype = 10, TIdList = {2888, 2889, 2890, 2892}},
{Tlevel = 51, TID = 2925, Ptype = 10, TIdList = {2920, 2921, 2922, 2923, 2924, 2925}},
{Tlevel = 51, TID = 2919, Ptype = 10, TIdList = {2916, 2917}},
{Tlevel = 52, TID = 2942, Ptype = 10, TIdList = {2935, 2938, 2939, 2940, 2941, 2942}},
{Tlevel = 53, TID = 2641, Ptype = 10, TIdList = {2637, 2641}},
{Tlevel = 53, TID = 2650, Ptype = 10, TIdList = {2649, 2650}},
{Tlevel = 54, TID = 2662, Ptype = 10, TIdList = {2656, 2657, 2658, 2660, 2661, 2662}},
{Tlevel = 57, TID = 2700, Ptype = 10, TIdList = {2700}},
{Tlevel = 58, TID = 2978, Ptype = 0, TIdList = {2965, 2974, 2975, 2976, 2977, 2978}},
--{Tlevel = 60, TID = 2994, Ptype = 10, TIdList = {2988, 2989, 2992, 2993, 2994}}
}

RHelpList = {
{pLv = 1, title = " Trang bị", text = " Nhận thời trang tân thủ", content = "Hãy đến #1649# nhận nhiệm vụ Túi Bảo Tân Thủ, nhận thời trang tân thủ.", Ptype = 0},
{pLv = 1, title = " Trang bị (Xuyên Nam)", text = " Nhận thời trang tân thủ", content = "Hãy đến #64506# nhận nhiệm vụ Túi Bảo Tân Thủ, nhận thời trang tân thủ.", Ptype = 1},
{pLv = 2, title = " Kỹ năng (Xuyên Nam)", text = " Đề xuất học kỹ năng mới", content = "Đến #64500# học kỹ năng mới", Ptype = 1},
{pLv = 2, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #3346# học kỹ năng mới", Ptype = 0},
{pLv = 3, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #3346# học kỹ năng mới", Ptype = 0},
{pLv = 4, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #3346# học kỹ năng mới", Ptype = 0},
{pLv = 4, title = " Kỹ năng (Xuyên Nam)", text = " Đề xuất học kỹ năng mới", content = "Đến #64500# học kỹ năng mới", Ptype = 1},
{pLv = 5, title = " Sản xuất", text = " Thuật Nấu Ăn I", content = "Ở #1923# nhận nhiệm vụ Đầu Bếp và Ngư Ông, học Nấu Ăn sơ cấp.", Ptype = 0},
{pLv = 5, title = " Sản xuất", text = " Thuật Thu Thập I", content = "Ở #1921# nhận nhiệm vụ Thuật Thu Thập I, học Thu Thập sơ cấp.", Ptype = 0},
{pLv = 5, title = " Sản xuất (Xuyên Nam)", text = " Thuật Nấu Ăn I", content = "Ở #64541# nhận nhiệm vụ Thuật Nấu Ăn I, học Nấu Ăn sơ cấp.", Ptype = 1},
{pLv = 5, title = " Sản xuất (Xuyên Nam)", text = " Thuật Thu Thập I", content = "Ở #65169# nhận nhiệm vụ Thuật Thu Thập I, học Thu Thập sơ cấp.", Ptype = 1},
{pLv = 6, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #3346# học kỹ năng mới", Ptype = 0},
{pLv = 6, title = " Kỹ năng (Xuyên Nam)", text = " Đề xuất học kỹ năng mới", content = "Đến #64501# học kỹ năng mới", Ptype = 1},
{pLv = 8, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #3346# học kỹ năng mới", Ptype = 0},
{pLv = 9, title = " Sản xuất", text = " Thuật Cấp Cứu I", content = "Ở #1929# nhận nhiệm vụ Thuật Cấp Cứu I, học Cấp Cứu sơ cấp.", Ptype = 0},
{pLv = 9, title = " Sản xuất (Xuyên Nam)", text = " Thuật Cấp Cứu I", content = "Ở #64543# nhận nhiệm vụ Thuật Cấp Cứu I, học Cấp Cứu sơ cấp.", Ptype = 1},
{pLv = 10, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #1882# học kỹ năng mới", Ptype = 0},
{pLv = 10, title = " Kỹ năng (Xuyên Nam)", text = " Đề xuất học kỹ năng mới", content = "Đến #64501# học kỹ năng mới", Ptype = 1},
{pLv = 12, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #25444# học kỹ năng mới", Ptype = 0},
{pLv = 12, title = " Kỹ năng (Xuyên Nam)", text = " Đề xuất học kỹ năng mới", content = "Đến #64501# học kỹ năng mới", Ptype = 1},
{pLv = 14, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #25444# học kỹ năng mới", Ptype = 0},
{pLv = 14, title = " Sản xuất (Xuyên Nam)", text = " Thuật Cấp Cứu II", content = "Ở #64535# nhận nhiệm vụ Thuật Cấp Cứu II, học Cấp Cứu cấp hai.", Ptype = 1},
{pLv = 15, title = " Sản xuất", text = " Thuật Nấu Ăn II", content = "Ở #1924# nhận nhiệm vụ Thuật Nấu Ăn II, học Nấu Ăn cấp hai.", Ptype = 10},
{pLv = 15, title = " Sản xuất", text = " Thuật Cấp Cứu II", content = "Ở #1930# nhận nhiệm vụ Thuật Cấp Cứu II, học Cấp Cứu cấp hai.", Ptype = 10},
{pLv = 16, title = " Kỹ năng (Xuyên Nam)", text = " Đề xuất học kỹ năng mới", content = "Đến #64502# hoặc #64503# học kỹ năng mới", Ptype = 1},
{pLv = 18, title = " Kỹ năng (Xuyên Nam)", text = " Đề xuất học kỹ năng mới", content = "Đến #64502# hoặc #64503# học kỹ năng mới", Ptype = 1},
{pLv = 19, title = " Sản xuất", text = " Thuật Chế Thuốc I", content = "Ở #1925# nhận nhiệm vụ Thuật Dược Sư I, học Dược Sư sơ cấp.", Ptype = 10},
{pLv = 20, title = " Kỹ năng", text = " Đề xuất học kỹ năng mới", content = "Đến #3352# học kỵ thuật", Ptype = 0},
{pLv = 20, title = " Sản xuất", text = " Thuật Thuần Dưỡng I", content = "Ở #3352# nhận nhiệm vụ Thuật Thuần Dưỡng I, học Thuần Dưỡng sơ cấp.", Ptype = 10},
{pLv = 22, title = " Sản xuất", text = " Thuật Công Nghệ I", content = "Ở #1927# nhận nhiệm vụ Thuật Công Nghệ I, học Xảo Tượng sơ cấp.", Ptype = 10},
{pLv = 22, title = " Sản xuất", text = " Thuật Chế Tạo I", content = "Ở #1932# nhận nhiệm vụ Thuật Chế Tạo I, học Thợ Công sơ cấp.", Ptype = 10},
{pLv = 24, title = " Sản xuất", text = " Thuật Nấu Ăn III", content = "Ở #1924# nhận nhiệm vụ Thuật Nấu Ăn III, học Nấu Ăn cấp ba.", Ptype = 10},
{pLv = 23, title = " Sản xuất", text = " Thuật Chế Thuốc II", content = "Ở #1926# nhận nhiệm vụ Thuật Chế Thuốc II, học Dược Sư cấp hai.", Ptype = 10},
{pLv = 28, title = " Sản xuất", text = " Thuật Cấp Cứu III", content = "Ở #1930# nhận nhiệm vụ Thuật Cấp Cứu III, học Cấp Cứu cấp ba.", Ptype = 10},
{pLv = 34, title = " Sản xuất", text = " Thuật Công Nghệ II", content = "Ở #1928# nhận nhiệm vụ Thuật Công Nghệ II, học Xảo Tượng cấp hai.", Ptype = 10},
{pLv = 36, title = " Sản xuất", text = " Thuật Nấu Ăn IV", content = "Ở #1924# nhận nhiệm vụ Thuật Nấu Ăn IV, học Nấu Ăn cấp bốn.", Ptype = 10},
{pLv = 40, title = " Sản xuất", text = " Thuật Cấp Cứu IV", content = "Ở #1930# nhận nhiệm vụ Thuật Cấp Cứu IV, học Cấp Cứu cấp bốn.", Ptype = 10},
{pLv = 40, title = " Kỹ năng", text = " Có thể sử dụng tính năng PK", content = "Có thể tự do PK rồi, cài đặt cụ thể về bảo vệ PK và các cài đặt khác vui lòng nhấp vào nút kiếm bên cạnh hình đại diện của bạn.", Ptype = 0},
{pLv = 44, title = " Sản xuất", text = " Thuật Chế Thuốc IV", content = "Ở #1926# nhận nhiệm vụ Thuật Chế Thuốc IV, học Dược Sư cấp bốn.", Ptype = 10},
{pLv = 48, title = " Sản xuất", text = " Thuật Nấu Ăn V", content = "Ở #1924# nhận nhiệm vụ Thuật Nấu Ăn V, học Nấu Ăn cấp năm.", Ptype = 10},
{pLv = 48, title = " Sản xuất", text = " Thuật Công Nghệ III", content = "Ở #1928# nhận nhiệm vụ Thuật Công Nghệ III, học Xảo Tượng cấp ba.", Ptype = 10},
{pLv = 48, title = " Sản xuất", text = " Thuật Cấp Cứu V", content = "Ở #1930# nhận nhiệm vụ Thuật Cấp Cứu, học Cấp Cứu cấp năm.", Ptype = 10},
{pLv = 53, title = " Sản xuất", text = " Thuật Chế Thuốc V", content = "Ở #1926# nhận nhiệm vụ Thuật Chế Thuốc, học Dược Sư cấp bốn.", Ptype = 10},
{pLv = 58, title = " Sản xuất", text = " Thuật Công Nghệ IV", content = "Ở #1928# nhận nhiệm vụ Thuật Công Nghệ IV, học Xảo Tượng cấp bốn.", Ptype = 10},
{pLv = 60, title = " Sản xuất", text = " Thuật May Vá I", content = "Ở #1920# nhận nhiệm vụ Thuật May Vá I, học May Vá sơ cấp.", Ptype = 10},
{pLv = 60, title = " Sản xuất", text = " Thuật Rèn Đúc I", content = "Ở #1918# nhận nhiệm vụ Thuật Rèn Đúc I, học Thợ Rèn sơ cấp.", Ptype = 10},
{pLv = 63, title = " Sản xuất", text = " Thuật Nấu Ăn VI", content = "Ở #1924# nhận nhiệm vụ Thuật Nấu Ăn VI, học Nấu Ăn cấp sáu.", Ptype = 10},
{pLv = 65, title = " Sản xuất", text = " Thuật Cấp Cứu VI", content = "Ở #1930# nhận nhiệm vụ Thuật Cấp Cứu VI, học Cấp Cứu cấp sáu.", Ptype = 10},
{pLv = 71, title = " Sản xuất", text = " Thuật Chế Thuốc VI", content = "Ở #1926# nhận nhiệm vụ Thuật Chế Thuốc, học Dược Sư cấp sáu.", Ptype = 10},
{pLv = 81, title = " Sản xuất", text = " Thuật Chế Thuốc VII", content = "Ở #58520# nhận nhiệm vụ Thuật Chế Thuốc, học Dược Sư cấp bảy.", Ptype = 10},
{pLv = 81, title = " Sản xuất", text = " Thuật Nấu Ăn VII", content = "Ở #58510# nhận nhiệm vụ Thuật Nấu Ăn VII, học Nấu Ăn cấp bảy.", Ptype = 10},
{pLv = 81, title = " Sản xuất", text = " Thuật Cấp Cứu VII", content = "Ở #58522# nhận nhiệm vụ Thuật Cấp Cứu VII, học Cấp Cứu cấp bảy.", Ptype = 10},
{pLv = 96, title = " Sản xuất", text = " Thuật Công Nghệ V", content = "Ở #65250# nhận nhiệm vụ Thuật Công Nghệ V, học Xảo Tượng cấp năm.", Ptype = 10},
{pLv = 96, title = " Sản xuất", text = " Thuật Chế Tạo II", content = "Ở #64470# nhận nhiệm vụ Thuật Chế Tạo II, học Thợ Công cấp hai.", Ptype = 10},
{pLv = 115, title = " Sản xuất", text = " Thuật Chế Thuốc VIII", content = "Ở #58520# nhận nhiệm vụ Thuật Chế Thuốc, học Dược Sư cấp tám.", Ptype = 10},
{pLv = 115, title = " Sản xuất", text = " Thuật Nấu Ăn VIII", content = "Ở #58510# nhận nhiệm vụ Thuật Nấu Ăn VIII, học Nấu Ăn cấp tám.", Ptype = 10},
{pLv = 115, title = " Sản xuất", text = " Thuật Cấp Cứu VIII", content = "Ở #58522# nhận nhiệm vụ Thuật Cấp Cứu VIII, học Cấp Cứu cấp tám.", Ptype = 10}
}

LEVELHELP_TEXT1 = "^ff6fb3Tính năng bảo mật trong game：^ffffff\r^fedc40Tính năng Khóa An Toàn^ffffff\rĐề xuất sao: ★★★★\rTrong thời gian Khóa An Toàn có hiệu lực, sẽ chịu các giới hạn sau:\rKhông thể giao dịch với người chơi khác, không thể bày bán, không thể bán, không thể tiêu hủy, không thể gửi thư, không thể phân giải và cường hóa trang bị, không thể thao tác với Bí Văn và Phù Ngọc trên trang bị (gắn, xóa, chuyển, khảm và xóa), không thể sử dụng dịch vụ nâng cấp trang bị, không thể thực hiện thao tác khóa và mở khóa vật phẩm, không thể thực hiện thao tác giao dịch Nguyên Bảo (không thể gửi tiền và rút tiền, có thể thu mua và bán Nguyên Bảo)\r\r"
LEVELHELP_TEXT2 = "^fedc40Tính năng Khóa Vật Phẩm^ffffff\rĐề xuất sao: ★★★★★\rSử dụng Tím Kim Tỏa lên vật phẩm để khóa. Sau khi vật phẩm bị khóa không thể thực hiện bất kỳ thao tác nào, không thể tiêu hủy, giao dịch, gửi thư hoặc bán. Tính năng này rất hiệu quả để bảo vệ vật phẩm trong game, chúng tôi đặc biệt khuyên bạn nên sử dụng tính năng này để tăng cường tính an toàn cho vật phẩm.\r\r"
LEVELHELP_TEXT3 = "^ff6fb3Tính năng bảo vệ đăng nhập game：^ffffff\r^fedc40Tính năng Thẻ Bảo Mật^ffffff\rĐề xuất sao: ★★★★\rTính năng Thẻ Bảo Mật là một tính năng bảo mật đơn giản và hiệu quả, sau khi liên kết Thẻ Bảo Mật và mở dịch vụ Thẻ Bảo Mật, mỗi lần bạn đăng nhập game phải kết hợp với Thẻ Bảo Mật vật lý, và mật khẩu cần thiết cho mỗi lần đăng nhập đều khác nhau, điều này sẽ nâng cao đáng kể tính an toàn cho tài khoản của bạn.\r\r"
LEVELHELP_TEXT4 = "^fedc40Tính năng Hoàn Mỹ Thần Thuẫn^ffffff\rĐề xuất sao: ★★★★★\rHoàn Mỹ Thần Thuẫn (Personal Key) thuộc về bảo mật phần cứng, tiện lợi cho người dùng sử dụng, càng bảo vệ tài khoản người dùng, tránh bị đánh cắp. Hoàn Mỹ Thần Thuẫn (Personal Key) sử dụng hình thức USB, kết nối với cổng USB của máy tính, bằng hình thức phần cứng, thực hiện tác dụng bảo vệ tài khoản, sau khi tài khoản người dùng đã liên kết Hoàn Mỹ Thần Thuẫn (Personal Key), mỗi lần đăng nhập các sản phẩm game của Perfect World đều sẽ sử dụng Hoàn Mỹ Thần Thuẫn (Personal Key) này. Ưu điểm của nó rất rõ ràng, có thể ngăn chặn các hành vi đánh cắp tài khoản do Trojan, virus, lừa đảo, điện thoại ảo, v.v. gây ra.\r\r"
LEVELHELP_TEXT5 = "^fedc40Mẹo nhỏ về an toàn tài khoản^ffffff\rChúng tôi đặc biệt khuyên bạn nên sử dụng các tính năng bảo mật được giới thiệu ở trên, và cung cấp một số mẹo nhỏ về an toàn để bạn tham khảo và sử dụng:\rCủng cố hệ thống máy tính của bạn, thường xuyên theo dõi cập nhật của windows, tránh hệ điều hành tồn tại lỗ hổng.\r1. Cập nhật tường lửa và phần mềm diệt virus kịp thời, thường xuyên quét virus toàn bộ ổ đĩa.\r2. Không tùy tiện nhấp và đăng nhập vào các trang web lạ, tất cả hoạt động và thông tin chính thức sẽ được công bố trên trang web chính thức duy nhất của 《Xích Bích》: ^fff962[http://chibi.wanmei.com](http://chibi.wanmei.com)^ffffff\r3. Không đến các quán internet lạ hoặc quán internet đen. Cố gắng chọn quán internet lớn chính quy, tránh tài khoản bị tổn hại.\r4. Ngăn chặn người khác nhìn trộm khi nhập tài khoản mật khẩu. Đặc biệt chú ý ở các nơi truy cập internet đông người như quán internet.\r5. Thay đổi thứ tự nhập, làm cho Trojan thành “cục gỗ”. Không nhập theo thứ tự bình thường của mật khẩu, có thể tránh Trojan ghi lại thao tác bàn phím.\r6. Không sử dụng phần mềm game bên thứ ba không do chính thức phát hành. Các phần mềm này đều chứa chương trình virus Trojan, có vẻ dễ dàng kiếm lợi nhưng lại ẩn chứa nguy hiểm. Và chính thức nghiêm cấm các phần mềm bên thứ ba này.\r7. Thường xuyên thay đổi mật khẩu của bạn. Nếu bạn đã sử dụng Thẻ Bảo Mật, chúng tôi đề nghị thay đổi mỗi tháng một lần.\r8. Vui lòng không tin vào thông tin trúng thưởng do nhân viên giả mạo “hệ thống” hoặc chính thức phát hành. Thông tin trúng thưởng đều sẽ được công bố trên trang web chính thức.\r9. Nhận rõ trang web chính thức duy nhất của 《Xích Bích》^fff962[http://chibi.wanmei.com](http://chibi.wanmei.com)^ffffff, không đăng nhập vào các địa chỉ hoạt động do người khác cung cấp, rất có thể là tạo trang web giả mạo, lừa đảo tài khoản hoặc tiền bạc của bạn.\r"
LEVELHELP_TEXT6 = ", chúc mừng bạn đạt cấp 80! Vui lòng nâng cấp ^7fffffBinh Chủng Chính^ffffff của bạn lên ^ff9090Tôn Cấp Cửu Đoạn^ffffff, sau đó có thể thỉnh cầu #49145# tấn thăng thành ^ff9090Anh Hùng Cấp^ffffff, bước lên hành trình vinh quang mới."
LEVELHELP_TEXT7 = ", chúc mừng Binh Chủng Chính của bạn đã đạt Tôn Cấp Cửu Đoạn, hiện tại bạn có thể thỉnh cầu #49145# tấn thăng thành cấp Anh Hùng, bước lên hành trình vinh quang mới."
LEVELHELP_TEXT8 = "\rBinh chủng chính hiện tại vẫn chưa đạt"
LEVELHELP_TEXT9 = "Cửu Đoạn^e1e1e1。\r^fff600Lưu ý: Chỉ sau khi đạt cấp Anh Hùng, mới có thể nhận được kinh nghiệm mới là “Điểm Kinh Nghiệm Sống”."
LEVELHELP_TEXT10 = "^e1e1e1Khi chọn bất kỳ binh chủng nào đạt ^ff9090Tôn Cấp Cửu Đoạn^e1e1e1, bạn sẽ nhận được Mệnh Cách Anh Hùng, có thể thỉnh cầu #49145# ở thành Trường An tấn thăng thành cấp Anh Hùng, bước lên hành trình vinh quang mới."

LEVELTIP_TYPELIST = {"Tất cả", "Nhiệm vụ", "Chỉ dẫn", "Danh hiệu"}
LEVELTIP_EventTips = "^fff600Thanh Minh Tế Anh Hùng\r^fff600Thời gian:^ffffff 4 tháng 4 năm 2011 - 24 tháng 4 năm 2011\r^fff600Cấp độ:^ffffff 16+\r^fff600NPC: #71760#\r^ffffffMỗi ngày nhận nhiệm vụ ở Vân Thanh, đi đến Đại Vũ Miếu đối thoại với Ngu Kỳ, sau đó nhân vật nam có thể nhận được 2 “Hương Thanh Minh”, nhân vật nữ có thể nhận được 2 “Liễu Thanh Minh”, có thể giao dịch. Chuẩn bị đủ 1 “Hương Thanh Minh”, 1 “Liễu Thanh Minh”, mới có thể tế bái Anh Hồn Bi, có thể liên hệ với người khác giới để đổi vật phẩm.\r\r^fff600Lệ Anh Hùng\r^fff600Thời gian:^ffffff 4 tháng 4 năm 2011 - 24 tháng 4 năm 2011 (12:00 - 24:00)\r^fff600Cấp độ:^ffffff 16+\r^fff600NPC: #71760#\r^ffffffMỗi ngày có thể nhận nhiệm vụ ở Vân Thanh, yêu cầu đánh bại Anh Hùng Vong Hồn, nhiệm vụ giới hạn thời gian 1 giờ, tổ đội tiêu diệt hiệu quả hơn!\r^fff600Lưu ý:^ffffff Anh Hùng Vong Hồn sẽ lang thang ở Đại Vũ Miếu, ngoài cổng Nam Trường An và trong thành Trường An, làm mới ở địa điểm ngẫu nhiên, không dễ tìm!\r\r^fff600Bướm Lụa Gửi Tương Tư\r^fff600Thời gian:^ffffff 4 tháng 4 năm 2011 - 24 tháng 4 năm 2011 (12:00 - 24:00)\r^fff600Cấp độ:^ffffff 16+\rNgười chơi có “Bướm Lụa” có thể thả ở cổng Nam Trường An, người ở bên cạnh Bướm Lụa, cứ sau mỗi 15 giây sẽ nhận được một lần phần thưởng, mỗi ngày tối đa có thể nhận 10 lần phần thưởng!\rTrong lúc chờ phát thưởng mọi người có thể trò chuyện, bắn pháo hoa, kết bạn với nhau!! Biết đâu duyên phận sẽ đến với bạn ngay lúc này!\r\r^fff600Một Chén Say Giải Ngàn Sầu\r^fff600Thời gian:^ffffff 4 tháng 4 năm 2011 - 6 tháng 4 năm 2011 (18 giờ - 24 giờ)\r^fff600Cấp độ:^ffffff 16+\r^fff600NPC: #71760#\r^ffffffCó thể nhận Rượu ngon “Một Chén Say Giải Ngàn Sầu” ở Vân Thanh, giới hạn thời gian 2 giờ, đặt vật phẩm này trong túi đồ, cứ mỗi 10 phút có thể nhận được phần thưởng, người chơi cấp Anh Hùng còn có cơ hội nhận được Hỗn Độn Thần Thạch!!"
LEVELTIP_EventTips = "^fff600Quan Tâm Xích Bích\r^fff600Thời gian:^ffffff 25 tháng 4 năm 2011 - 19 tháng 6 năm 2011\r^fff600Cấp độ:^ffffff 16+\r^fff600NPC: #71814#\r^ffffffHoàn thành nhiệm vụ Huyền Thạch Anh Hùng, có thể nhận được 1 Thẻ May Mắn! Mỗi ngày có thể nhận 1 cái!\rDùng Thẻ May Mắn có thể đổi thưởng ở Hạ Tịch Nhan, muốn phần thưởng gì, bạn có thể tự mình chọn哦 (nhé)! Bất kể chọn phần thưởng nào, đều sẽ nhận được 1 Thẻ Quan Tâm Xích Bích!\rTừ 20 tháng 6 - 3 tháng 7, có thể dùng Thẻ Quan Tâm Xích Bích đổi thưởng ở Hạ Tịch Nhan! 50 thẻ có thể đổi 100 Tinh Chi Vi Trần! 40 thẻ có thể đổi 67 Tinh Chi Vi Trần! 30 thẻ có thể đổi 33 Tinh Chi Vi Trần! Tuyệt đối đáng giá!\r\r^fff600Thử Thách Võ Thánh\r^fff600Thời gian:^ffffff 25 tháng 4 năm 2011 - 19 tháng 6 năm 2011\r^fff600Cấp độ:^ffffff 16+\r^fff600NPC: #71811#\r^ffffffThậm chí có người giả mạo Võ Thánh! Ở Quan Vũ Vị Ương Cung có thể nhận nhiệm vụ, đi đến so tài với kẻ tự xưng “Võ Thánh” đó, xem họ còn dám tự xưng là Võ Thánh không!!\r\r^fff600Một Đời Một Kiếp\r^fff600Thời gian:^ffffff 16 tháng 5 năm 2011 - 5 tháng 6 năm 2011 (18:00 - 23:59)\r^fff600Cấp độ:^ffffff 5+\r^fff600NPC: #71812#\r^ffffffCó thể nhận nhiệm vụ Duyên Phận Giáng Lâm ở Liễu Tiểu Nguyệt, nhận được 1 loại trạng thái duyên phận! Người chơi nam nữ mang trạng thái khác nhau tổ đội, nam giới làm đội trưởng, có thể tìm Liễu Tiểu Nguyệt nhận nhiệm vụ “Một Đời Một Kiếp”!\rHoàn thành nhiệm vụ có thể nhận được bó hoa hồng, tặng cho người khác, đối phương sẽ nhận được một Huy Chương Nổi Tiếng! Mỗi người mỗi ngày chỉ có thể nhận được 1 Huy Chương Nổi Tiếng! Trong thời gian hoạt động tối đa có thể nhận 21 cái!\rThu thập đủ 21 Huy Chương Nổi Tiếng, có thể đổi Danh Hiệu Quý Hiếm Phiên Bản Giới Hạn ở Hạ Tịch Nhan trước ngày 3 tháng 7! Ngoài ra còn có Đại Khải Hoàn Thư (cấp Anh Hùng), 7 Tinh Chi Vi Trần (cấp Anh Hùng), 3 Tinh Chi Bảo Ngọc (cấp Anh Hùng 16 trở lên), Tinh Chi Tiên Hoa (cấp Anh Hùng 31 trở lên), lượng lớn kinh nghiệm!!!\r^fff600Lưu ý: Phần thưởng đều là chắc chắn nhận được, chứ không phải ngẫu nhiên nhận! Cơ hội hiếm có, đừng bỏ lỡ nhé!\r\r^fff600Cùng Nhau Gói Bánh Ú Đi\r^fff600Thời gian:^ffffff 6 tháng 6 năm 2011 - 19 tháng 6 năm 2011\r^fff600Cấp độ:^ffffff 16+\r^fff600NPC: #71949#\r^ffffffNhận nhiệm vụ ở Đoan Tiểu Tông, nhận được một quả bom! Yêu cầu đánh bại Nặc Mễ Tiểu Tặc, sử dụng bom lên Nặc Mễ Tiểu Tặc, có thể khiến lượng máu của nó giảm ngay lập tức 20%! Nếu tổ đội, mỗi người trong đội đều có thể sử dụng bom lên Nặc Mễ Tiểu Tặc, khiến nó chết nhanh hơn!! Mời bạn bè người thân cùng nhau đánh Nặc Mễ Tiểu Tặc đi!\rTrong thời gian hoạt động hoàn thành Tiêu Dao Đồng Du, Thử Thách Võ Thánh, đổi thưởng Thẻ May Mắn, đều có thể ngẫu nhiên nhận được một phần Đậu Sa, Thịt Tươi, Táo Đỏ, có thể tìm Đoan Tiểu Tông gói bánh ú nhé!"
--------------------------------------------------------------------
petst = {} ---Lời thoại nhàn rỗi
petst[1]="Dùng ba kiếp lửa khói của ta, đổi lấy một đời mờ ảo của bạn."
petst[2]="$name ngài anh minh vô song, tôi nguyện theo ngài đến khi tôi chết!"
petst[3]="Mệnh không thể tranh, vận có thể tạo, kẻ yếu chấp nhận mệnh, kẻ mạnh chống lại mệnh, người có năng lực cầu mệnh, người thông minh tạo ra mệnh."
petst[4]="Giang hồ hỗn loạn, nguyện cùng ngài tiến thoái."
petst[5]="Phong vân thiên hạ xuất từ đời ta, một khi bước vào giang hồ thì tháng năm thúc giục. Bá nghiệp đế vương nói cười giữa chừng, không bằng một cuộc say trong đời."
petst[6]="$name ngài anh minh vô song, ai muốn động đến ngài trước hết phải qua cửa ải của tôi!"
petst[7]="Được thì ca hát thua thì nghỉ, nhiều sầu nhiều hận cũng thế thôi. Hôm nay có rượu hôm nay say, ngày mai sầu đến ngày mai sầu."
petst[8]="Thắng, không quá mừng; bại, không quá sợ hãi; người trong lòng có sấm sét mà mặt ngoài như hồ nước phẳng lặng, có thể thành đại sự! $name, ngài chính là người như vậy."
petst[9]="Con đường dài đến mấy, từng bước cũng có thể đi hết; con đường ngắn đến mấy, không bước chân ra cũng không thể đến. $name, chúng ta cùng nhau bước đi mạnh mẽ nhé."
petst[10]="$name, tối nay chúng ta đối ẩm nói chuyện dưới trăng được không?"
petst[11]="Chúng ta cùng nhau mưu đồ thiên hạ, có phúc cùng hưởng, có họa cùng chịu, có cháo húp cháo, không có cháo cùng nhau chịu đói!"
petst[12]="Quá khứ của bạn tôi không thể tham gia, tương lai của bạn tôi sẽ đồng hành đến cùng!"
petst[13]="Một ý niệm nổi lên, vạn nước ngàn núi; một ý niệm tan biến, biển xanh hóa nương dâu."
petst[14]="Vài đoạn tiếc nuối vài kiếp bi hoan, đáng cười ta mệnh do ta không do trời."
petst[15]="Không chịu khổ luyện không phải hảo hán, không bị người ghen ghét là kẻ tầm thường."
petst[16]="Chủ nhân, tôi đói rồi…"
petst[17]="Chủ nhân, tôi đã mấy ngày không ăn thịt rồi…"
petst[18]="Chủ nhân, tôi thấy mình lại đẹp trai rồi, con hổ cái kia cứ nhìn chằm chằm tôi."
petst[19]="Tôi phát hiện hạnh phúc là một cấp độ so sánh, phải có thứ làm nền mới cảm nhận được."
petst[20]="Đời người như ván cờ, tôi nguyện làm tốt, hành động tuy chậm, nhưng ai gặp tôi cũng phải lùi một bước."
petst[21]="Có hẹn với ngài, mưa gió không đổi."
petst[22]="$name, tôi sợ nước, không thể xuất chiến trong thủy chiến Xích Bích, nhưng tôi có thể bảo vệ ngài thông qua chế độ hộ vệ."
petst[23]="$name, nếu thanh danh của tôi chưa đạt cấp tối đa, ngài có thể dùng Sách Công Trạng ở chỗ Bá Ngôn tại Vân Đài Trường An để nâng cao thanh danh của tôi."
petst[24]="Vinh Diệu Thạch có thể làm cho lực tấn công, kế sách và sinh lực của tôi tái sinh, còn Dịch Cân Hoàn có thể làm cho tư chất võ lực, tư chất trí lực và tư chất gân cốt của tôi tái sinh, đừng nhầm lẫn nhé!"
petst[25]="Khải Hoàn Thư có thể tăng một lượng sĩ khí hiện tại nhất định cho tôi."
petst[26]="Nếu ngài muốn giao phó tôi cho người đáng tin cậy khác, có thể dùng Vạn Thế Bút ở chỗ Bá Ngôn tại Vân Đài Trường An để quy phục, sau đó giao Thư Quy Phục của tôi cho người cần giao phó là được."
petst[27]="Thanh danh của tôi càng cao, thuộc tính tổng thể càng mạnh, và khi Dịch Cân càng có khả năng nhận được thiên tư cao hơn."
petst[28]="Có một số chiến trường tôi không thể triệu hồi ra, nhưng tôi có thể bảo vệ ngài thông qua chế độ hộ vệ."
petst[29]="Khi Quốc Chiến người đông mắt tạp, tôi sẽ không xuất chiến, nhưng tôi có thể bảo vệ ngài thông qua chế độ hộ vệ."
petst[30]="Gói Thưởng Công có thể tăng lòng trung thành của tôi."
petst[31]="Trong chế độ bị động, tôi sẽ không chủ động tấn công kẻ địch, nhưng nếu ngài hoặc tôi bị tấn công thì tôi đều sẽ phản công!"
petst[32]="Trong chế độ chủ động, tôi sẽ chủ động tấn công kẻ địch trong tầm nhìn của tôi."
petst[33]="Trong chế độ nghỉ ngơi, tôi sẽ không tấn công bất kỳ kẻ địch nào."
petst[34]="Mỗi khi thêm một điểm võ lực sẽ tăng lực tấn công của tôi, lượng tăng do tư chất võ lực của tôi quyết định."
petst[35]="Mỗi khi thêm một điểm trí lực sẽ tăng kế sách của tôi, lượng tăng do tư chất trí lực của tôi quyết định."
petst[36]="Mỗi khi thêm một điểm gân cốt sẽ tăng sinh lực của tôi, lượng tăng do tư chất gân cốt của tôi quyết định."
petst[37]="Mỗi khi tôi lên một cấp sẽ tăng 3 điểm tự do!"
petst[38]="Người không phạm tôi, tôi không phạm người; người nếu phạm tôi, nhường nhịn ba phần; người lại phạm tôi, tôi trả lại một kim; người vẫn phạm tôi, nhổ cỏ tận gốc."
petst[39]="Hoặc là tang lễ huy hoàng, hoặc là một bước lên trời."
petst[40]="Thay vì lấy lòng người khác, chi bằng tự vũ trang bản thân; thay vì trốn tránh hiện thực, chi bằng cười đối diện với đời; thay vì nghe gió nghe mưa, chi bằng ngẩng cao đầu xuất kích!"
petst[41]="Phong hoa là một chỉ cát trôi, già nua là một đoạn năm tháng."
petst[42]="Người đi đường, nghe theo thiên mệnh."
petst[43]="Nếu tên có thể quyết định vận mệnh, tôi muốn đổi tên là Tiền Đa Đa (Rất Nhiều Tiền)."
petst[44]="Người không phạm tôi, tôi không phạm người. Người nếu phạm tôi, tôi sẽ tức giận!"
petst[45]="Tôi phát hiện cái gọi là ngưỡng cửa, bước qua là cửa, không bước qua được sẽ thành rào cản."
petst[46]="Tục ngữ nói ‘Im lặng là vàng’, tại sao tôi im lặng lâu như vậy rồi mà vẫn chưa thành phú ông?"
petst[47]="Tự do không phải là muốn làm gì thì làm, mà là không muốn làm gì thì có thể không làm."
petst[48]="Trong thuận cảnh đối xử bình thản, trong nghịch cảnh đối xử thản nhiên."
petst[49]="Vạn trượng hồng trần ba chén rượu, ngàn thu đại nghiệp một ấm trà."
petst[50]="$name, đợi ngài lĩnh bổng lộc, dẫn tôi đi quán rượu gọi vài món ngon ăn nhé!"
petst[51]="Muốn học đánh nhau, phải học chịu đòn trước."
petst[52]="Một hoa một thế giới, một lá một kiếm tìm. Một khúc một tiếng than, một đời vì một người."
petst[53]="$name đi mệt rồi, chúng ta tìm một quán trọ nghỉ chân nhé? Vừa hay tôi hơi đói rồi…"
petst[54]="Cảnh sắc ao Tình Trú ở Tụ Hiền Cốc rất đẹp, có thời gian chúng ta đi xem nhé!"
petst[55]="Lâu rồi không đánh nhau, cũng nên hoạt động gân cốt một chút rồi!"
petst[56]="Chủ nhân, khi nào chúng ta đi bắt… à không… lùa cừu?"
petst[57]="Theo $name có thịt ăn!"
petst[58]="Tôi thấy gấu trên toàn thế giới đều cùng một kiểu gấu."
petst[59]="Thời tiết lạnh, $name nhớ mặc thêm quần áo khi ra ngoài nhé!"
petst[60]="Hỏi hoa hoa không nói, vì ai rụng? Vì ai nở? Tính xuân sắc ba phần, một nửa theo nước chảy, một nửa vào bụi trần."
petst[61]="Là hộ vệ của ngài, phải có chí khí và khí chất."
petst[62]="$name ăn Tết thế nào?"
petst[63]="Tết trôi qua nhanh quá, tôi còn chưa chơi đủ!"
petst[64]="$name hôm nay tâm trạng thế nào?"
petst[65]="$name phải vui vẻ mỗi ngày nhé!"
petst[66]="Thỏ con trắng, trắng lại trắng, thích ăn củ cải và rau xanh, nhảy nhót thật đáng yêu!"
petst[67]="Chủ nhân, tôi muốn ăn củ cải quá!"
petst[68]="Chủ nhân chủ nhân, chị Hằng đẹp quá! Ngài đã gặp chưa?"
petst[69]="Là một con thỏ, nhất định phải vác củ cải! Như vậy áp lực mới không lớn!"
petst[70]="Chủ nhân, tôi không với tới củ cải sau lưng, ngài giúp tôi đi!"
petst[71]="Chủ nhân, thực ra tôi cũng muốn nếm thử vị thịt là gì!"
petst[72]="Theo $name có củ cải ăn!"
petst[73]="Chủ nhân, tôi thấy mình lại đẹp trai rồi, con thỏ cái kia cứ nhìn chằm chằm tôi."
petst[74]="Nói ra ngài có thể không tin, chị Hằng từng ôm tôi đấy!"
petst[75]="Khi tôi còn là một chú thỏ nhỏ… từng có một cô bạn gái thanh mai trúc mã, sau này… thôi, không nói nữa…"
petst[76]="Chủ nhân, tôi thấy hộ vệ của ai đó là hổ, đáng sợ quá đi mất!"
petst[77]="Chủ nhân chủ nhân, có củ cải không?"
petst[78]="Chủ nhân, ngài cao quá!"
petst[79]="Nếu có ngày nào đó đi qua Thường Sơn, Tử Long nhất định sẽ mời ngài nếm bưởi Hồ, thưởng trà Ngân Hào."
petst[80]="Tử Long nguyện thề chết đi theo $name."
petst[81]="Tôi là người không bao giờ ghi hận, thường là có thù tôi báo ngay tại chỗ."
petst[82]="Có người sống, nhưng họ đã chết; có người sống, nhưng họ đáng lẽ phải chết từ lâu rồi."
petst[83]="Chuyện ngày mai, ngày kia chúng ta sẽ biết."
petst[84]="Cầm kiếm uống rượu luận giang sơn, đừng nhận chí lớn là kiêu ngạo."
petst[85]="Vân Trường nguyện thề chết đi theo $name."
petst[86]="Hà Đông là một nơi tốt."
petst[87]="$name có biết Hà Đông không? Đó là quê hương của Vân Trường."
petst[88]="Như vậy vậy, như thế thế…"
petst[89]="Ta là một võ phu, được $name đối đãi hậu hĩnh, Vân Trường nhất định không bội tín phản nghĩa!"
petst[90]="Chủ nhân, tôi muốn ăn thịt quá!"
petst[91]="Gầm gừ…"
petst[92]="Chủ nhân, tôi thèm thịt rồi, khi nào làm cho tôi vài miếng?"
petst[93]="Chủ nhân, tôi thấy mình lại đẹp trai rồi, con sói cái kia cứ nhìn chằm chằm tôi."
petst[94]="Khi tôi còn là một chú sói nhỏ… từng có một cô bạn gái thanh mai trúc mã, sau này… thôi, không nói nữa…"
petst[95]="Đừng nhìn vẻ ngoài hung dữ của tôi, thực ra tôi cũng có thể rất dịu dàng!"
petst[96]="Chủ nhân, ngài dẫn tôi đi oai phong đi! Ngài xem những người kia sợ đến nỗi không dám lại gần tôi!"
petst[97]="Tôi là một con sói đến từ phương Bắc…"
petst[98]="Chủ nhân, nghe nói hộ vệ của ai đó tên là “Khai Minh Hổ”, thật muốn gặp thử xem!"
petst[99]="Chủ nhân, thực ra tôi có thể làm bạn tốt với thỏ Tinh Hoa, thỏ Nguyệt Hoa… nhưng chúng hình như rất sợ tôi…"
petst[100]="Một cung trong tay, ai có thể ngăn cản tôi!"
petst[101]="Ai dám động đến một sợi lông của $name, cung của lão phu không cho phép đâu!"
petst[102]="$name đã từng đến Nam Dương chưa? Đó là quê hương của lão phu đó…"
petst[103]="Phong cảnh Nam Dương rất đẹp, $name có cơ hội nhất định phải đi xem."
petst[104]="Ai cũng nói lão phu dũng mãnh vô song, nhiều thanh niên không bằng, ngài nghĩ sao?"
petst[105]="Trong lòng lão phu $name mãi mãi là mạnh nhất!"
petst[106]="Ta gầm lên một tiếng, là có thể dọa kẻ địch quay đầu bỏ chạy!"
petst[107]="Ta Trương Dực Đức không sợ trời không sợ đất!"
petst[108]="Ta thích nhất là ra tay giúp đỡ kẻ yếu, ha ha ha!"
petst[109]="Ta ghét nhất cái bộ dạng chó săn ỷ thế hiếp người đó!"
petst[110]="Ai dám động đến $name! Ta không đồng ý đâu!"
petst[111]="$name, ta muốn uống rượu…"
petst[112]="Tộc nhân của tôi? Không còn ai nữa rồi…"
petst[113]="Tây Lương nằm ở nơi hẻo lánh, nhưng cát vàng vạn dặm, mang một vẻ hùng vĩ khác biệt."
petst[114]="Trước đây tôi và một ông râu quai nón mặc áo choàng đỏ đánh nhau, tôi nói bắt kẻ mặc áo đỏ, ông ta ném áo đi, tôi nói bắt kẻ râu quai nón, ông ta cắt râu đi…"
petst[115]="Hôm nay thời tiết đẹp quá!"
petst[116]="Người ta đâu có bán manh đâu"
petst[117]="Bụng đói rồi, ực…"
petst[118]="Người ta ghét nhất là cái kiểu bán manh này."
petst[119]="Nhìn gì mà nhìn, bạn là đồ nhà quê à?"
petst[120]="Ăn gì đây? Phải đưa ra một quyết định khó khăn…"
petst[121]="Tin Xuân Ca, được vĩnh sinh."
petst[122]="Sao không thèm để ý đến người ta, hứ!"
petst[123]="Nghỉ ngơi một ngày thật không dễ dàng, vừa tỉnh dậy, lại thấy đến lúc phải ngủ rồi."
petst[124]="Hai con hổ, hai con hổ, hẹn hò, hẹn hò, cả hai đều là đực, cả hai đều là đực, thật biến thái, thật biến thái…"
petst[125]="Tên mạng hay đến mấy cuối cùng cũng sẽ thua tên chú thích thôi."
petst[126]="Tôi biết bạn rất thông minh, 1+1=3, bạn hiểu mà"
petst[127]="Tôi ở đây, bạn sẽ không không có nhà đâu."
petst[128]="Chuyện ngày mai, ngày kia sẽ biết thôi."
petst[129]="Thời đại nào rồi, một chút ý thức lưu manh cũng không có…"
petst[130]="Nếu không phải đánh không lại bạn, người ta đã trở mặt với bạn từ lâu rồi."
petst[131]="Lời nói không kinh người chết không thôi."
petst[132]="Từ khi mắc bệnh tâm thần, tinh thần của tôi tốt hơn nhiều rồi."
petst[133]="Chỉ là đột nhiên có chút nhàm chán, nếu không đâu có bán manh, hix."
petst[134]="Suỵt— tuyệt đối đừng nói cho họ biết tôi đã làm việc tốt, điều này sẽ ảnh hưởng đến hình tượng của tôi."
petst[135]="Phiền phức của sô cô la là: bạn ăn nó, nó sẽ không còn nữa."
petst[136]="Nói cho bạn một bí mật, người nói chúc ngủ ngon đi ngủ, thường nửa tiếng sau vẫn còn đang khoe khoang."
petst[137]="Thế giới không nhìn rõ mới là đáng yêu nhất!"
petst[138]="Có nghe câu chuyện 'Heo lớn nói có, heo nhỏ nói không' chưa??"
petst[139]="Một tháng luôn có 30 ngày không muốn đọc sách…"
petst[140]="Ôi, lẽ nào tôi là kẹo dẻo? Đột nhiên chân mềm nhũn."
petst[141]="Có một hội chơi trốn tìm, hội trưởng của họ vẫn chưa được tìm thấy."
petst[142]="Nhớ lại Chu Du năm nào, Tiểu Kiều mới gả, anh dũng hiên ngang. Quạt lông khăn lụa, nói cười giữa chừng, đầu gối trúng một mũi tên…"
petst[143]="(*^__^*) Hi hi… Tôi đáng yêu không?"
petst[144]="Tôi có moe không? Có không??"
petst[145]="Sau này sinh con trai nhất định phải đặt tên là Lý Cương."
petst[146]="Chim sẻ tuy nhỏ, nhưng nó chơi là cả bầu trời."
petst[147]="Không ai nắm tay, người ta có thể đút túi mà."
petst[148]="Nghe nói mỗi người trong đời đều sẽ gặp một người tên là Hoa Nương, còn bạn thì sao?"
petst[149]="Bạn thích Gia Cát Lượng hay Gia Cát Ám (Tối)?"
petst[150]="Bạn có biết không, năm xưa Tào Tháo để khích lệ binh sĩ, nói gần đây có rừng mơ, bảo mọi người kiên trì, sau đó cuối cùng phát hiện ra nguồn nước, nhưng các binh sĩ lại nói: Không đi! Nhất định phải tìm thấy quả mơ… Phụt."
petst[151]="Có phải tôi nói nhiều quá không, người ta thích bạn mà O(∩_∩)O"
petst[152]="Nghỉ ngơi, nghỉ ngơi một chút o(>﹏<)o"
petst[153]="Bốn lý tưởng lớn của Đổng Trác: Lã Bố ngày ngày gọi cha, lão già Vương Doãn chết sớm. Điêu Thuyền không diễn Vô Gian Đạo, bách tính Trung Nguyên cười chào ta."
petst[154]="Bốn lý tưởng lớn của Tào Tháo: Con dân thiên hạ đều họ Tào, quân đội nhiều đến nỗi không cần. Lưu Bị không còn hát lời chống đối, Khổng Minh ngày mai biến thành ngốc."
petst[155]="Bốn lý tưởng lớn của Tôn Quyền: Đại Kiều không còn gây rối với ta, Tào Tháo đến nữa bị ta thiêu. Quan Vũ ngày mai chết toi, Kinh Châu trở về vòng tay ta."
petst[156]="Bốn lý tưởng lớn của Lưu Bị: Mọi người thiên hạ đều nói ta tốt, A Đẩu không còn làm trò ngu ngốc. Hiến Đế ngày ngày ban chiếu thư, bảo ta khởi binh đánh Tào Tháo."
petst[157]="Bốn lý tưởng lớn của Gia Cát Lượng: Vợ phẫu thuật thẩm mỹ cười trong mơ, giả ngầu phải phe phẩy quạt lông. Ngụy Diên phản xương ngày ngày gõ, Tư Mã biến thành đại yêu quái nữ."
petst[158]="Bốn lý tưởng lớn của Quan Vũ: Mãnh tướng thiên hạ vào đao ta, Tôn Quyền Lã Mông vào nhà lao ta. Gia Cát Thôn Phu bị ta cười nhạo, còn phải giúp đại ca phục hưng nhà Hán."
petst[159]="Bốn lý tưởng lớn của Chu Du: Khổng Minh bị ta cưỡi chạy, Tào Nhân giương cung gãy lưng. Mạnh Đức gặp nạn bị rơi xuống cỏ, Thiên Tử phái ta dẫn binh tiêu diệt."
petst[160]="Bốn lý tưởng lớn của Trương Phi: Mọi người Tam Quốc đều là ngốc, Tào Tháo thấy ta liền chạy. Mã Siêu ngày mai liền già, con trai không phải đồ bỏ đi."

petbt={} ---Lời thoại chiến đấu
petbt[1]="Đất trời mênh mông một kiếm hết đường lui, nơi nào phồn hoa tiếng ca rơi. Tựa nghiêng mây ngàn hồ che cô độc, mặc cho người khác cười nhạo ta."
petbt[2]="$name, trận chiến này nếu thắng, ngài có nguyện dẫn tôi đi chợ mua một cây trâm không?"
petbt[3]="Tôi một tay cũng có thể diệt hắn."
petbt[4]="Cứu mạng, có người đánh tôi!"
petbt[5]="Theo sự xem xét của tôi, hắn vô dụng!"
petbt[6]="Ái chà, bảo hắn tránh xa tôi một chút!"
petbt[7]="Cái hay hơn ở phía sau!"
petbt[8]="Nguy hiểm quá, tôi đứng xa một chút vậy…"
petbt[9]="Tôi giơ tay một cái chết một hàng, đẩy tay một cái chết một đống."
petbt[10]="$name, trận chiến này nếu thắng, ngài có nguyện dẫn tôi đi chợ mua một bình rượu ngon không?"
petbt[11]="Hắn không xứng so tài với ngài, để tôi đến gặp hắn một chút!"
petbt[12]="Ngài lên trước, tôi yểm trợ ngài!"
petbt[13]="Ai dám chọc giận ngài? Tôi sẽ khiến hắn chết một cách rất có tiết tấu."
petbt[14]="Đến đây, cho kẻ địch biết tôi đáng sợ đến mức nào!"
petbt[15]="Gầm gừ!"
petbt[16]="Để tôi ra tay! Cho kẻ địch thấy cơn thịnh nộ của tôi, vị vua của muôn loài!"
petbt[17]="Chủ nhân, trận chiến này mà thắng, ngài mua thêm thịt cho tôi ăn nhé!"
petbt[18]="Bình thường nói về hắn cũng được rồi, cứ phải đợi tôi đánh hắn, hắn mới biết tôi văn võ song toàn."
petbt[19]="Kẻ sĩ chết vì người tri kỷ."
petbt[20]="Nhìn thấy hắn, tôi đột nhiên nhớ đến con heo nhà tôi nuôi trước đây."
petbt[21]="Cứ để hắn cưỡi ngựa đến đây!"
petbt[22]="Dám thách đấu ngài, hắn là muốn chết hay không muốn sống nữa?"
petbt[23]="$name cẩn thận!"
petbt[24]="Tôi sẽ đánh hắn từ nay không dám nhìn thẳng vào ngài!"
petbt[25]="Hãy để tôi kết liễu hắn với thế nhanh như sét đánh không kịp bưng tai trộm chuông leng keng nhân từ không nhường nhịn thế giới tràn đầy tình yêu bạn không cần bàn cãi!"
petbt[26]="Chủ nhân cẩn thận!"
petbt[27]="Thỏ cũng sẽ nổi điên!"
petbt[28]="Nói ít thôi, xem kiếm đây!"
petbt[29]="Tử Long toàn thân là mật, nguyện vì $name xông pha lửa đạn."
petbt[30]="$name yên tâm, có Triệu Vân ở đây!"
petbt[31]="$name yên tâm, có Vân Trường ở đây!"
petbt[32]="Quan Vũ tại đây, bọn ngươi chịu chết đi!"
petbt[33]="Vân Trường nguyện vì $name xông pha lửa đạn!"
petbt[34]="Nói ít thôi, xem đao đây!"
petbt[35]="Đến đây! Cho kẻ địch thấy cơn thịnh nộ của tôi, con sói phương Bắc này!"
petbt[36]="Tôi cắn! Tôi cào! Tôi đánh!"
petbt[37]="Xem ta lợi hại đây!"
petbt[38]="Gần đây ăn ít thịt, nếu không tôi có thể uy mãnh hơn!"
petbt[39]="Sống là một đống thịt, chết là một đống đất."
petbt[40]="Xem Bách Bộ Xuyên Dương của ta!"
petbt[41]="Hừ, tôi không cần cung cũng có thể diệt hắn!"
petbt[42]="Oa ya ya ya ya ya!!!"
petbt[43]="Ta là Yến Nhân Trương Dực Đức đây!"
petbt[44]="$name yên tâm, có Mạnh Khởi ở đây!"
petbt[45]="Toàn quân tấn công! Ơ, người đâu rồi?"
petbt[46]="Cho hắn nếm thử đặc sản địa phương Tây Lương của chúng ta, đó chính là, một thương Hổ Đầu của Mã Mạnh Khởi tôi!"
petbt[47]="Thương là trùm của trăm loại binh khí, đấu là sự biến hóa khôn lường, khó lường. Võ nghệ của tên này cứng nhắc không chịu được, xem tôi đùa giỡn hắn một phen."

petsz={}----Lời thoại thời trang, trong ngoặc vuông điền id mô hình áo thời trang
petsz[3112]="$name ngài mặc chiếc áo này, tựa như hoa sen thơm ngát đứng thẳng trong đêm hè mát mẻ!"
petsz[4179]="$name ngài mặc chiếc áo này, tựa như thần lý bay lượn trong biển lửa!"
petsz[4180]="$name ngài khoác bộ giáp này, như mãnh thú đỏ rực kiêu hãnh đứng giữa nghìn quân vạn mã!"
petsz[3065]="$name ngài mặc chiếc áo giáp này, tựa như rồng thiêng gầm thét, vạn quân phải tránh!"
petsz[3053]="$name chiếc áo gấm lụa là quý phái, đai áo bay bổng này, thể hiện phong thái phi phàm."
petsz[3084]="$name chiếc áo thơm tinh tế, dây trang sức bay lượn này, rất hợp với khí chất của ngài."
petsz[3054]="$name bộ áo lụa này, trông quý phái vô cùng!"
petsz[3085]="$name chiếc áo lụa mềm mại này, tựa như sóng xuân nước biếc, thật khiến người ta dễ chịu!"
petsz[3086]="$name ngài mặc chiếc áo này, đứng thẳng dịu dàng, tựa như hoa sen trong thung lũng vắng, khí chất hơn người!"
petsz[3063]="$name ngài mặc chiếc áo giáp này, tựa như bạch long cuộn sóng lớn, vảy bạc rực rỡ dưới ánh mặt trời."
petsz[3114]="$name ngài mặc chiếc áo này,翩翩起舞 (phiên phiên khởi vũ), nhìn qua nhìn lại đầy duyên dáng, có thể khiến thành nghiêng nước đổ!"
petsz[4874]="$name ngài mặc áo袍 (bào) đỏ rực đón năm mới, nhất định sẽ cát tường như ý."
petsz[4876]="$name ngài mặc áo bào đỏ rực đón năm mới, nhất định sẽ cát tường như ý."
petsz[4920]="$name ngài mặc chiếc áo này, tựa như Lạc Thần đạp sóng đến, đẹp đến mức không thể tả!"
petsz[3066]="$name ngài mặc chiếc áo giáp này, tựa như bạch lang kiêu hãnh bước trên thảo nguyên, kẻ địch nhìn thấy phải khiếp sợ."
petsz[4981]="$name ngài mặc chiếc áo này, tựa như hồ ly bạc chợt hiện trên tuyết nguyên, kinh diễm hút hồn."
petsz[6033]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6035]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6037]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6039]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6048]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6050]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6052]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6054]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6056]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[6058]="Chúc mừng ngài tân hôn vui vẻ, trăm năm hạnh phúc!"
petsz[3109]="$name ngài mặc chiếc áo này, tựa như phượng hoàng vàng tung cánh giữa hoa sen đỏ dưới ánh dương xuân, khiến người ta hoa mắt thần hồn nát thần tính."
petsz[6460]="$name ngài mặc chiếc áo giáp này, tựa như hổ đỏ hóa thân của trung dũng tín nghĩa, khiến người ta ngưỡng mộ kính sợ."
petsz[6511]="$name ngài mặc áo gấm có hoa văn sóng xanh, mang đến hơi thở mát mẻ của mùa hè."
petsz[6515]="$name ngài mặc chiếc áo tựa như hoa sen ngủ trong hồ, mang đến hơi thở mát mẻ của mùa hè."
petsz[6539]="$name ngài mặc bộ áo lụa này rất có khí chất!"
petsz[6541]="$name ngài mặc bộ váy lụa này rất có khí chất!"
petsz[6617]="$name ngài khoác chiếc bào này, tựa như Ngọa Long nắm giữ sự huyền diệu của lục hợp thất tinh."
petsz[3111]="$name ngài mặc chiếc áo này, tựa như hoa mai đỏ tươi nở rộ trong buổi sáng lạnh giá."
petsz[7050]="$name bộ đồ công phu thêu hổ đỏ này của ngài, thật đẹp!"
petsz[7052]="$name bộ đồ công phu thêu hoa hồng phấn này của ngài, thật đẹp!"
petsz[7133]="$name bộ áo giáp như kỳ lân xanh này của ngài, nhìn thấy khiến người ta khiếp sợ."
petsz[7135]="$name bộ giáp váy như kỳ lân xanh này của ngài, nhìn thấy khiến người ta oai phong."
petsz[7997]="$name ngài mặc chiếc áo giáp này, tựa như thanh long thần võ giáng lâm đại địa, hơi thở phun ra vạn quân thối lui."
petsz[7999]="$name ngài mặc chiếc bào này, tựa như xích điểu đa mưu bay vút trời cao, tung hoành tám hướng."
petsz[7968]="$name ngài mặc chiếc áo này, dung nhan quốc sắc tựa như Tây Thi tái thế, có thể trầm ngư lạc nhạn."
petsz[8001]="$name ngài mặc chiếc áo này, tựa như Cửu Thiên Huyền Nữ hóa thành giai nhân, đẹp đến mức không thể tả."
petsz[8258]="$name ngài mặc chiếc áo giáp này, tựa như giao long trắng cuộn sóng lớn, vảy bạc rực rỡ dưới ánh mặt trời."
petsz[8256]="$name ngài mặc chiếc áo giáp này, tựa như mãnh hổ gầm thét trên núi Giang Đông, khiến kẻ địch phải kinh hồn bạt vía."
petsz[8384]="$name, bộ quần áo này thật hợp với ngài!"
petsz[8386]="$name, bộ quần áo này thật hợp với ngài!"
petsz[8423]="$name ngài khoác chiếc áo giáp này, tựa như Dạ Đế thống trị màn đêm."
petsz[8425]="$name ngài mặc chiếc áo này, tựa như Nữ Hoàng thống trị màn đêm."
petsz[8562]="$name ngài khoác chiếc áo giáp này, tựa như thủy long thống trị đại giang, nói cười giữa chừng cường địch tan thành mây khói."
petsz[8564]="$name ngài khoác chiếc áo giáp này, tựa như hỏa phượng vút bay trời cao, vạn quân phải tránh."
petsz[8744]="$name, bộ quần áo này thật hợp với ngài!"
petsz[8746]="$name, bộ quần áo này thật hợp với ngài!"
petsz[9197]="$name ngài khoác chiếc áo giáp này, tựa như thanh lộc ngăn chiến giáng lâm đại địa, phi nước đại đến vạn quân thối lui."
petsz[9199]="$name ngài khoác chiếc áo giáp này, tựa như thần điểu vỗ cánh bay lượn, nơi đi qua hóa thành biển lửa."
petsz[9269]="$name bộ trang phục này của ngài, khiến tôi nhớ đến một bài thơ. Bắc Đẩu thất tinh cao, người nào đêm mang đao. Cuồng ca trong huyết ảnh, cười xem ba ngàn sóng."
petsz[9271]="$name ngài mặc chiếc áo này, nhẹ nhàng lay động theo gió, duyên dáng uyển chuyển, khiến người ta nảy sinh lòng thương tiếc."
petsz[9274]="$name bộ trang phục này của ngài, quả thực là ‘Đạp nguyệt nhẹ hơn bóng hồng bay, đêm lạnh ẩn hương thơm tập kích người.’"
petsz[9296]="$name ngài mặc chiếc áo giáp này, tựa như quân thần dũng cảm và nghĩa khí, khiến kẻ địch nghe tin phải chạy xa."
petsz[9425]="$name ngài mặc chiếc áo giáp này, lấy đầu thú trên ngực làm biểu tượng, bá khí vương giả tự nhiên sinh ra."
petsz[9427]="$name chiếc váy da thú bó sát này của ngài thật đẹp, vừa anh dũng lại không kém phần quyến rũ."
petsz[9488]="$name bộ trang phục này của ngài, trông có vẻ lực lớn vô cùng!"
petsz[9490]="$name bộ trang phục này của ngài, trông có vẻ thần bí mê hoặc!"
petsz[9687]="$name ngài mặc chiếc áo giáp này, như bạch hổ giáng thế kiêu hãnh đứng trước trận địch."
petsz[9689]="$name ngài quả thực là thắt ngọc Lam Điền bên hông, giấc mộng đẹp giữa mây nước."
petsz[9691]="$name bộ trang phục này của ngài, khiến tôi nhớ đến một bài thơ. Một khúc thái bình người đều vui, ánh sáng vụt qua say mộng đỏ."
petsz[9693]="$name ngài khoác chiếc áo giáp này, như tử loan vỗ cánh giáng lâm trận địch, khiến kẻ địch phải kinh hồn bạt vía."
petsz[9745]="$name ngài mặc chiếc áo giáp này, khí phách dũng mãnh tự nhiên sinh ra, có thể khiến vạn quân thối lui."
petsz[9922]="$name bộ trang phục này của ngài, quả thực là ‘Tre xanh điểm thanh lạnh, đổ mực thành bóng núi. Ý chí quân tử khiêm tốn, phong thái nho nhã dịu dàng.’"
petsz[9924]="$name bộ trang phục này của ngài, quả thực là ‘Sương sen rơi tiếng trong trẻo, hương ngưng khoác áo tím. Một dòng nước chảy đi, nhớ ngài sáng rồi lại tối.’"
petsz[10054]="$name ngài khoác chiếc giáp này, tựa như bạch long cuộn mây biển, khiến kẻ địch phải kinh hồn bạt vía."
petsz[10056]="$name ngài khoác chiếc giáp này, tựa như bạch long cuộn tuyết sâu, khiến kẻ địch phải kinh hồn bạt vía."
petsz[10092]="$name bộ trang phục này của ngài, trông như thần tiên trên trời."
petsz[10094]="$name bộ trang phục này của ngài, trông như thần tiên trên trời."
petsz[10482]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[10484]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[10587]="$name ngài mặc chiếc áo này, phong thái lịch lãm như một quý tộc."
petsz[10589]="$name ngài mặc chiếc áo này, chuông lắc thể hiện sự đáng yêu của cô gái."
petsz[10646]="$name bộ trang phục này của ngài, quả là đài các trang nghiêm, dũng võ uy nghi, phong thái đại tướng, thần tuấn vô song."
petsz[10648]="$name bộ trang phục này của ngài, quả là dáng vẻ tiêu sái, thương hoa tuyệt đẹp, nữ tướng danh gia, phong hoa tuyệt đại."
petsz[10689]="$name ngài mặc chiếc bào này, anh tuấn tiêu sái như du long."
petsz[10691]="$name ngài mặc chiếc áo này, tôn quý ưu nhã như mẫu đơn."
petsz[10709]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[10710]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[10762]="$name ngài mặc chiếc áo giáp này, tựa như hắc long gầm thét, vạn quân phải tránh."
petsz[10763]="$name ngài mặc chiếc áo này,翩翩起舞 (phiên phiên khởi vũ), nhìn qua nhìn lại đầy duyên dáng, có thể khiến thành nghiêng nước đổ."
petsz[10775]="$name bộ trang phục này của ngài, trông như thần tiên trên trời."
petsz[10777]="$name bộ trang phục này của ngài, trông như thần tiên trên trời."
petsz[15629]="$name bộ trang phục này của ngài, có một luồng chính khí mạnh mẽ!"
petsz[15631]="$name bộ trang phục này của ngài, vừa chứa đựng ánh mắt vừa có thể cười, người khác hâm mộ sự xinh đẹp thướt tha của ngài."
petsz[15643]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[15654]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[15655]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[15640]="$name, bộ quần áo này của ngài thật đẹp!"
petsz[15813]="$name bộ trang phục này của ngài, quả là ngọc thụ lâm phong, phong lưu phóng khoáng."
petsz[15814]="$name bộ trang phục này của ngài, kinh diễm như công chúa xòe đuôi."
petsz[15883]="$name ngài mặc chiếc áo này, thanh nhã thoát tục, ung dung tự tại."
petsz[15882]="$name ngài mặc chiếc áo này, thanh nhã thoát tục, ung dung tự tại."






petzq={}----Lời thoại tọa kỵ, trong ngoặc vuông điền id mô hình tọa kỵ
petzq[4744]="$name tọa kỵ của ngài trắng như mỹ ngọc."
petzq[4747]="$name tọa kỵ của ngài nâu như khói mây."
petzq[4748]="$name tọa kỵ của ngài đen như sấm sét đêm."
petzq[4749]="$name tọa kỵ của ngài đỏ như son."
petzq[4750]="$name tọa kỵ của ngài vàng đen như sắt."
petzq[4745]="$name tọa kỵ của ngài toàn thân đỏ rực như than hồng, không có nửa cọng lông tạp. Hí lên gầm thét, có trạng thái bay lên trời lặn xuống biển."
petzq[4909]="$name tọa kỵ của ngài dưới mắt có rãnh lệ, trán có đốm trắng, là Lộc Mã trong truyền thuyết phải không?"
petzq[4532]="$name tọa kỵ của ngài thật oai phong."
petzq[4862]="$name con tuấn mã trắng này của ngài thật oai phong!"
petzq[4865]="$name con tuấn mã đỏ này của ngài thật oai phong!"
petzq[4863]="$name con tuấn mã nâu này của ngài thật oai phong!"
petzq[4866]="$name con tuấn mã vàng này của ngài thật oai phong!"
petzq[4864]="$name con tuấn mã đen này của ngài thật oai phong!"
petzq[4908]="$name tọa kỵ của ngài đen như cực đêm, khi phi nước đại ngay cả bóng ngựa cũng không đuổi kịp."
petzq[4746]="$name tọa kỵ của ngài móng dưới màu vàng đậm, phi như điện xẹt!"
petzq[4872]="$name tọa kỵ của ngài không tồi."
petzq[6030]="$name tọa kỵ của ngài là voi phải không? Thật là phong cách!"
petzq[6031]="$name tọa kỵ của ngài uy mãnh nhanh nhẹn, thật có linh tính."
petzq[6153]="Nghe nói tọa kỵ của ngài đến tối sẽ hóa thành mỹ nữ?"
petzq[6154]="$name tọa kỵ của ngài thật có linh tính, nơi dốc đứng như vậy cũng có thể nhảy qua."
petzq[6621]="Tọa kỵ của ngài thể hiện uy nghiêm của hỏa thần vượt trên mọi tuấn mã trên thế gian."
petzq[7341]="Tọa kỵ của ngài thể hiện uy nghiêm của thủy thần vượt trên mọi tuấn mã trên thế gian."
petzq[7340]="Tọa kỵ của ngài thể hiện uy nghiêm của lôi thần vượt trên mọi tuấn mã trên thế gian."
petzq[6622]="Tọa kỵ của ngài thể hiện uy nghiêm của phong thần vượt trên mọi tuấn mã trên thế gian."
petzq[7104]="$name chiến hùng của ngài thật lợi hại, xung phong vô cùng hung mãnh."
petzq[7932]="$name tọa kỵ của ngài không tồi."
petzq[8099]="$name tọa kỵ của ngài toàn thân phát ra ánh sáng vàng, thật đẹp trai!"
petzq[8098]="$name tọa kỵ của ngài tính tình nhanh nhẹn khó thuần hóa, ngài có thể thuần phục nó thật lợi hại!"
petzq[8177]="$name tọa kỵ của ngài tính khí nóng nảy khó thuần hóa, ngài có thể thuần phục nó thật lợi hại!"
petzq[8178]="$name con Lộc Vương Tuyết này của ngài thật phong cách!"
petzq[8392]="$name tọa kỵ của ngài là linh thú phải không? Thật là hiếm thấy."
petzq[8507]="$name tọa kỵ của ngài toàn thân bao phủ trong ánh sáng bảy màu. Thật đẹp!"
petzq[8671]="Trong truyền thuyết, sự xuất hiện của thánh thú Kỳ Lân của $name là điềm lành."
petzq[8766]="$name nơi tọa kỵ của ngài đặt chân đến cỏ không mọc được, thật lợi hại!"
petzq[8782]="$name tọa kỵ của ngài màu lông rực rỡ, đồng tử bao dung vạn vật, thân thể thần khí phi dương, nhìn là biết không đơn giản!"
petzq[9224]="Tọa kỵ của ngài thể hiện uy nghiêm của vũ thần vượt trên mọi mãnh thú trên thế gian."
petzq[9579]="Tọa kỵ của ngài thể hiện uy nghiêm của đông thần vượt trên mọi mãnh thú trên thế gian."
petzq[9219]="Tọa kỵ của ngài thể hiện uy nghiêm của chiến thần vượt trên mọi mãnh thú trên thế gian."
petzq[9671]="Tọa kỵ của ngài thể hiện uy nghiêm của thú vương vượt trên mọi mãnh thú trên thế gian"
petzq[9399]="$name tọa kỵ của ngài là linh thú phải không? Thật là hiếm thấy."
petzq[9398]="$name tọa kỵ của ngài là linh thú phải không? Thật là hiếm thấy."
petzq[9814]="$name tọa kỵ của ngài là linh thú phải không? Thật là hiếm thấy."
petzq[9815]="Nghe nói tọa kỵ của ngài đến tối sẽ hóa thành thiếu nữ trong trắng?"
petzq[9816]="$name tọa kỵ của ngài thật có linh tính, nơi dốc đứng như vậy cũng có thể nhảy qua."
petzq[9926]="Cảnh đẹp đêm dài uyên ương ngủ, lăng tuyết bay hoa bạch ngưu về."
petzq[9927]="Giẫm nát Thiên Hà ba ngàn dặm, ô ngưu có thể mong chờ kỳ xích kiều."
petzq[10066]="$name tọa kỵ của ngài là tiên thú phải không? Thật là dũng mãnh vô cùng!"
petzq[10067]="Nghe nói tọa kỵ của ngài đến tối sẽ hóa thành tuyệt sắc nữ tử?"
petzq[10068]="$name tọa kỵ của ngài thật có linh tính, nơi dốc đứng như vậy cũng có thể nhảy qua."
petzq[10480]="$name tọa kỵ của ngài linh hoạt hiếu động, thật đáng yêu."
petzq[10481]="$name tọa kỵ của ngài tứ chi khỏe mạnh, thật oai phong!"
petzq[10486]="Quỷ khí không che được hồn tuấn mã, đạp nát Hoàng Tuyền U Minh đến."
petzq[10633]="Một ngựa tuyệt trần hóa tuyết đi, chỉ còn mai hoa đầy sân thơm."
petzq[10592]="Một ngựa tuyệt trần theo gió đi, tử mẫu đạp tuyết đón xuân về."
petzq[10650]="$name tọa kỵ của ngài khoác trang phục diễn kịch, tràn đầy màu sắc vui vẻ."
petzq[10698]="$name tọa kỵ của ngài khoác trang phục lễ hội, tràn đầy màu sắc vui vẻ."
petzq[9194]="$name tọa kỵ của ngài cơ quan đầy đủ, một lần xuất phát không quay lại, thật oai phong!"
petzq[10742]="$name tọa kỵ của ngài khoác giáp vàng, thể hiện uy nghiêm của vũ thần vượt trên mọi mãnh thú trên thế gian."
petzq[10757]="$name sức mạnh thần thú của tọa kỵ của ngài đã hoàn toàn được phóng thích ra ngoài, vạn thú đều là con dân của nó!"
petzq[10765]="$name sức mạnh thần thú của tọa kỵ của ngài đã hoàn toàn được phóng thích ra ngoài, vạn thú đều là con dân của nó!"
petzq[10784]="Tọa kỵ của ngài thể hiện uy nghiêm của chiến thần vượt trên mọi mãnh thú trên thế gian."
petzq[10785]="Tọa kỵ của ngài thể hiện uy nghiêm của đông thần vượt trên mọi mãnh thú trên thế gian."
petzq[10890]="Tọa kỵ của ngài thể hiện uy nghiêm của hỏa thần vượt trên mọi tuấn mã trên thế gian."
petzq[10893]="Tọa kỵ của ngài thể hiện uy nghiêm của thủy thần vượt trên mọi tuấn mã trên thế gian."
petzq[10892]="Tọa kỵ của ngài thể hiện uy nghiêm của lôi thần vượt trên mọi tuấn mã trên thế gian."
petzq[10891]="Tọa kỵ của ngài thể hiện uy nghiêm của phong thần vượt trên mọi tuấn mã trên thế gian."
petzq[12566]="$name tọa kỵ của ngài không tồi."
petzq[15009]="Tọa kỵ của ngài màu lông rực rỡ, đồng tử bao dung vạn vật, thân thể thần khí phi dương, còn có thần tốc mà vạn mã không thể sánh kịp."
petzq[15627]="Tọa kỵ của ngài thể hiện uy nghiêm của dạ thần vượt trên mọi mãnh thú trên thế gian."
petzq[15841]="Tọa kỵ của ngài thể hiện uy nghiêm của thú vương vượt trên mọi mãnh thú trên thế gian."
petzq[15839]="Tọa kỵ của ngài thể hiện uy nghiêm của vũ thần vượt trên mọi mãnh thú trên thế gian."
petzq[15840]="Tọa kỵ của ngài thể hiện uy nghiêm của chiến thần vượt trên mọi mãnh thú trên thế gian."
petzq[15842]="Tọa kỵ của ngài thể hiện uy nghiêm của đông thần vượt trên mọi mãnh thú trên thế gian."
petzq[15627]="Nghe nói tọa kỵ của ngài đến tối sẽ hóa thành tuyệt sắc nữ tử?"
petzq[10900]="Tọa kỵ của ngài thể hiện uy nghiêm của sương hàn vượt trên mọi tuấn mã trên thế gian."


petfr={}----Lời thoại bạn bè, ký tự đại diện tên bạn bè $friend
petfr[1]="$friend ở đằng kia kìa! Có muốn qua chào một tiếng không?"
petfr[2]="Mau nhìn, đó không phải $friend sao?"
petfr[3]="$friend đến rồi, có muốn qua trò chuyện không?"

petmr={}----Lời thoại vợ chồng, $marry là tên người bạn đời của người chơi
petmr[1]="Nhìn kìa, đó không phải $marry sao?"
petmr[2]="$marry đến rồi, một ngày không gặp như cách ba thu, mau qua nói chuyện đi!"
petmr[3]="$marry ở gần đây đấy, mau tìm đi!"

pethp={}----Lời thoại khi máu hộ vệ quá thấp, đơn vị mặc định %
pethp[10]="$name, tôi sắp không chịu nổi rồi… Ngài tự bảo trọng…"
pethp[50]="Xem ra không thể coi thường đối thủ!"

ghosthp={}----Lời thoại khi máu chủ nhân quá thấp, đơn vị mặc định %
ghosthp[10]="$name cẩn thận, sinh lực của ngài quá thấp!"
ghosthp[30]="$name cẩn thận một chút, uống thuốc đi, tôi đến yểm trợ ngài!"


l_defaultString = {}	-- Nội dung lời thoại mặc định
l_defaultString[1] = "$name, đứng đây chán quá, đến trò chuyện đi."
l_defaultString[2] = "$name, đánh không lại, đến giúp một tay!"
l_defaultString[3] = "$name, áo quần của ngài thật đẹp."
l_defaultString[4] = "$name, tọa kỵ của ngài thật đẹp."
l_defaultString[5] = "$name, bạn của ngài đã xuất hiện gần đây."
l_defaultString[6] = "$name, bạn đời của ngài đã xuất hiện gần đây."
--------------------------------------------------------------------

---控制台命令---
ConsoleListType = {"常用","参数控制","军团","护卫","战魂","其他"}

ConsoleList = {}
--常用类--
ConsoleList[1] = {title = "提升等级", cate = "常用", command = "d_c2scmd 2010 ", parameter = 1, desc = "参数1：提升到的等级，参数1可不填，即为升一级"}
ConsoleList[2] = {title = "地图传送", cate = "常用", command = "d_c2scmd 2008 ", parameter = 3, desc = "参数1：地图ID；参数2：目标地图坐标X；参数3：目标地图坐标Z"}
ConsoleList[3] = {title = "移动加速", cate = "常用", command = "d_runspeed ", parameter = 1, desc = "参数1：移动速度。默认速度为5"}
ConsoleList[4] = {title = "获得一个物品", cate = "常用", command = "d_c2scmd 2001 ", parameter = 1, desc = "参数1：物品ID\r常用物品：GM武器134-151,千闪皮衣153,万血戒指166，其他防具154-165\r64884 测试_自杀药\r64885 测试_群怪药\r64886 测试_减CD药\r64887 测试_全加药\r64888 测试_减血10点\r64889 测试_减血100点\r64890 测试_减血1000点\r64891 测试_减血10000点\r64892 测试_直、间抗加10点\r64893 测试_加限制抗性5点\r64894 测试_加流失抗性5点\r64895 测试_加受伤抗性5点\r64896 测试_加暴击抗性5点\r64897 测试_加虚弱抗性5点\r64898 测试_加封印抗性5点\r64899 测试_加攻50点\r64900 测试_加防50点\r64901 测试_加命中10点\r64902 测试_加闪避10点\r64903 测试_加暴击5点"}
ConsoleList[5] = {title = "获得一组物品", cate = "常用", command = "d_c2scmd 3022 ", parameter = 1, desc = "参数1：物品ID。"}
ConsoleList[6] = {title = "重启单线", cate = "常用", command = "d_c2scmd 20000", parameter = 0, desc = "重启单线"}
ConsoleList[7] = {title = "显示当前不存在的排队人数", cate = "常用", command = "d_delcmd 512 0", parameter = 0, desc = "显示当前不存在的排队人数"}
ConsoleList[8] = {title = "给全服所有战场加n个排队人", cate = "常用", command = "d_delcmd 511 ", parameter = 1, desc = "参数1：人数"}
ConsoleList[9] = {title = "主兵种升级", cate = "常用", command = "d_c2scmd 5000", parameter = 0, desc = " "}
ConsoleList[10] = {title = "副兵种升级", cate = "常用", command = "d_c2scmd 5001", parameter = 0, desc = " "}
ConsoleList[11] = {title = "转种族", cate = "常用", command = "d_c2scmd 4014 ", parameter = 1, desc = "参数1：种族ID（0华夏，1南蛮）"}
ConsoleList[12] = {title = "转职", cate = "常用", command = "d_c2scmd 2011 ", parameter = 1, desc = "职业ID（1刀2枪3戟4钺5镗6棍7剑8斧9钩10锏11锤12爪13盾14环15杖16舞17扇18弓）"}
ConsoleList[13] = {title = "加经验", cate = "常用", command = "d_c2scmd 2012 ", parameter = 1, desc = "参数1：经验数"}
ConsoleList[14] = {title = "加阅历", cate = "常用", command = "d_c2scmd 2013 ", parameter = 1, desc = "参数1：阅历数"}
ConsoleList[15] = {title = "招怪", cate = "常用", command = "d_c2scmd 3011 ", parameter = 3, desc = "参数1：怪物ID；参数2：0；参数3：召出数量，不填为1只"}
ConsoleList[16] = {title = "加元宝", cate = "常用", command = "d_c2scmd 4012 ", parameter = 1, desc = "参数1：元宝数"}
ConsoleList[17] = {title = "获得称号", cate = "常用", command = "d_c2scmd 2016 ", parameter = 1, desc = "参数1：称号ID"}
ConsoleList[18] = {title = "转换阵营", cate = "常用", command = "d_c2scmd 3014 ", parameter = 1, desc = "参数1：0无,1魏,2蜀,3吴"}
ConsoleList[19] = {title = "获得个人声望", cate = "常用", command = "d_c2scmd 7000 ", parameter = 2, desc = "参数1：声望序号；参数2：数值"}
--控制类--
ConsoleList[20] = {title = "开关控制器", cate = "参数控制", command = "d_c2scmd 3020 ", parameter = 2, desc = "参数1：控制器ID；参数2：状态（0关闭，1打开）"}
ConsoleList[21] = {title = "变动场景参数至指定值", cate = "参数控制", command = "d_c2scmd 10900 ", parameter = 2, desc = "参数1：场景参数序号；参数2：数值"}
ConsoleList[22] = {title = "调整场景参数按数值", cate = "参数控制", command = "d_c2scmd 10901 ", parameter = 2, desc = "参数1：场景参数序号；参数2：数值"}
ConsoleList[23] = {title = "查看场景参数", cate = "参数控制", command = "d_c2scmd 10902 ", parameter = 1, desc = "参数1：场景参数序号"}
ConsoleList[24] = {title = "查看全局参数", cate = "参数控制", command = "d_c2scmd 8000 ", parameter = 1, desc = "参数1：index。"}
ConsoleList[25] = {title = "设置全局参数", cate = "参数控制", command = "d_c2scmd 8001 ", parameter = 2, desc = "参数1：index；参数2：值"}
ConsoleList[26] = {title = "获得或失去图鉴", cate = "常用", command = "d_c2scmd 11001 ", parameter = 2, desc = "参数1：index；参数2：值"}
ConsoleList[27] = {title = "答题活动开始", cate = "其他", command = "d_delcmd 15 0", parameter = 0, desc = " "}
ConsoleList[28] = {title = "答题活动结束", cate = "其他", command = "d_delcmd 16 0", parameter = 0, desc = " "}
--其他类--
ConsoleList[29] = {title = "查看FPS", cate = "其他", command = "d_fps ", parameter = 1, desc = "参数1：0关,1开"}
ConsoleList[30] = {title = "查看选中角色的ID", cate = "其他", command = "d_rtdebug ", parameter = 1, desc = "参数1：0关,1开"}
ConsoleList[31] = {title = "查看角色位置坐标", cate = "其他", command = "d_showpos ", parameter = 1, desc = "参数1：0关,1开"}
ConsoleList[32] = {title = "调整客户端游戏时间", cate = "其他", command = "d_settimeofday ", parameter = 2, desc = "参数1：小时；参数2：分钟"}
ConsoleList[33] = {title = "获取服务器时间", cate = "其他", command = "d_getservertime", parameter = 0, desc = " "}
ConsoleList[34] = {title = "清掉上次进战场时间", cate = "其他", command = "d_delcmd 103 1", parameter = 0, desc = " "}
ConsoleList[35] = {title = "增加名望增量", cate = "其他", command = "d_c2scmd 2020 ", parameter = 1, desc = "参数1：值"}
ConsoleList[36] = {title = "增加名望", cate = "其他", command = "d_c2scmd 7002 ", parameter = 1, desc = "参数1：值。物品：13141 增加军团统御度21818加10000名望"}
--军团类--
ConsoleList[37] = {title = "设置基地时间", cate = "军团", command = "d_delcmd 503 ", parameter = 1, desc = "参数1：0 置内服基地时间为当前时间，1 18：00，2 18：30，3 19：00，4 19：30，5 20：00，6 22：00，7 22：30，8 增加24小时，9 增加10分钟，10 查询现在基地时间，11 时间往回拽一天"}
ConsoleList[38] = {title = "军团基地刷新指令", cate = "军团", command = "d_c2scmd 7001 2 0 10000", parameter = 0, desc = " "}
ConsoleList[39] = {title = "刷活跃度", cate = "军团", command = "d_c2scmd 7004 2 0", parameter = 0, desc = " "}
ConsoleList[40] = {title = "查活跃度", cate = "军团", command = "d_c2scmd 7004 2 2", parameter = 0, desc = " "}
ConsoleList[41] = {title = "刷资源", cate = "军团", command = "d_c2scmd 3020 87237 1", parameter = 0, desc = " "}
ConsoleList[42] = {title = "资源置零", cate = "军团", command = "d_c2scmd 3020 93563 1", parameter = 0, desc = " "}
--护卫类--
ConsoleList[43] = {title = "抓捕护卫", cate = "护卫", command = "d_c2scmd 18100 ", parameter = 2, desc = "参数1：目标怪id；参数2：抓捕道具普通包裹索引"}
ConsoleList[44] = {title = "召唤护卫", cate = "护卫", command = "d_c2scmd 18101 ", parameter = 1, desc = " 参数1：护卫包裹索引"}
ConsoleList[45] = {title = "召回护卫", cate = "护卫", command = "d_c2scmd 18102", parameter = 0, desc = " "}
ConsoleList[46] = {title = "护卫升级", cate = "护卫", command = "d_c2scmd 18103 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：升级次数，不加默认升1级"}
ConsoleList[47] = {title = "改变护卫状态", cate = "护卫", command = "d_c2scmd 18104 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：0休闲 1主动 2被动 3合体"}
ConsoleList[48] = {title = "分配护卫自由属性点", cate = "护卫", command = "d_c2scmd 18105 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：0武力 1智力 2筋骨"}
ConsoleList[49] = {title = "护卫消耗历练", cate = "护卫", command = "d_c2scmd 18106 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：历练"}
ConsoleList[50] = {title = "护卫获得历练", cate = "护卫", command = "d_c2scmd 18107 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：历练"}
ConsoleList[51] = {title = "护卫补充士气", cate = "护卫", command = "d_c2scmd 18108 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：要补充的士气值"}
ConsoleList[52] = {title = "护卫补充缺损士气", cate = "护卫", command = "d_c2scmd 18109 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：要补充的缺损士气值"}
ConsoleList[53] = {title = "护卫放生", cate = "护卫", command = "d_c2scmd 18110 ", parameter = 1, desc = "参数1：护卫包裹索引"}
ConsoleList[54] = {title = "护卫私有", cate = "护卫", command = "d_c2scmd 18111 ", parameter = 1, desc = "参数1：护卫包裹索引"}
ConsoleList[55] = {title = "护卫易筋", cate = "护卫", command = "d_c2scmd 18112 ", parameter = 2, desc = "参数1：护卫包裹索引；参数2：易筋丸或荣耀石普通包裹索引"}
ConsoleList[56] = {title = "护卫=>投诚书", cate = "护卫", command = "d_c2scmd 18202 ", parameter = 4, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：投诚道具普通包裹索引；参数4：投诚道具模板ID"}
ConsoleList[57] = {title = "护卫束缚", cate = "护卫", command = "d_c2scmd 18203 ", parameter = 4, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：束缚道具普通包裹索引；参数4：束缚道具模板ID"}
ConsoleList[58] = {title = "护卫解除束缚", cate = "护卫", command = "d_c2scmd 18204 ", parameter = 4, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：解除束缚道具普通包裹索引；参数4：解除束缚道具模板ID"}
ConsoleList[59] = {title = "护卫卸甲", cate = "护卫", command = "d_c2scmd 18207 ", parameter = 4, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：卸甲道具普通包裹索引；参数4：卸甲道具模板ID"}
ConsoleList[60] = {title = "护卫成长（升官）", cate = "护卫", command = "d_c2scmd 18208 ", parameter = 4, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：成长道具普通包裹索引；参数4：成长道具模板ID"}
ConsoleList[61] = {title = "护卫升品", cate = "护卫", command = "d_c2scmd 18209 ", parameter = 4, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：升品道具普通包裹索引；参数4：升品道具模板ID"}
ConsoleList[62] = {title = "护卫学习技能", cate = "护卫", command = "d_c2scmd 18210 ", parameter = 4, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：技能书普通包裹索引；参数4：技能书道具模板ID"}
ConsoleList[63] = {title = "护卫升级技能", cate = "护卫", command = "d_c2scmd 18211 ", parameter = 3, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：技能ID"}
ConsoleList[64] = {title = "护卫遗忘技能", cate = "护卫", command = "d_c2scmd 18212 ", parameter = 3, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：技能ID"}
ConsoleList[65] = {title = "扩充护卫技能格数", cate = "护卫", command = "d_c2scmd 18213 ", parameter = 3, desc = "参数1：护卫包裹索引；参数2：护卫模板ID；参数3：技能格数"}
ConsoleList[66] = {title = "护卫释放技能", cate = "护卫", command = "d_c2scmd 18300 ", parameter = 1, desc = "参数1：技能托盘索引"}
ConsoleList[67] = {title = "打印护卫基础随机属性", cate = "护卫", command = "d_c2scmd 18400", parameter = 0, desc = " "}
ConsoleList[68] = {title = "清掉护卫相关CD", cate = "护卫", command = "d_c2scmd 18401", parameter = 0, desc = " "}
--战魂类--
ConsoleList[69] = {title = "装备、取消装备战魂", cate = "战魂", command = "d_c2scmd 10010 ", parameter = 1, desc = "参数1：战魂在包裹中的位置"}
ConsoleList[70] = {title = "战魂觉醒", cate = "战魂", command = "d_c2scmd 10011", parameter = 0, desc = "要求战魂已装备，并且元神值达到上限的50%"}
ConsoleList[71] = {title = "战魂取消觉醒", cate = "战魂", command = "d_c2scmd 10012", parameter = 0, desc = "要求战魂已装备。元神值衰减为0时自动触发，可手工执行"}
ConsoleList[72] = {title = "增加元神值", cate = "战魂", command = "d_c2scmd 10013 ", parameter = 1, desc = "要求战魂已装备。参数1：增加的值：正为加；负为减"}
ConsoleList[73] = {title = "查看战魂元神值/觉醒状态", cate = "战魂", command = "d_c2scmd 10014", parameter = 0, desc = "要求战魂已装备。在聊天窗口打印当前装备的战魂的觉醒状态、元神值、元神值上限"}
ConsoleList[74] = {title = "战魂获得成长度", cate = "战魂", command = "d_c2scmd 10015 ", parameter = 2, desc = "要求战魂已装备。参数2：代表是否受模板每次获得成长度的限制。1受限制；0不受限制"}
ConsoleList[75] = {title = "战魂服务测试命令", cate = "战魂", command = "d_c2scmd 10020 ", parameter = 3, desc = "参数1：0炼魂，1重修战魂，2洗战魂资质；参数2：战魂在包裹里的位置索引，0起始；参数3：必须材料在包裹里的位置索引，0起始"}
ConsoleList[76] = {title = "战魂转化服务命令", cate = "战魂", command = "d_c2scmd 10021 ", parameter = 0, desc = "参数1：战魂在包裹里的位置索引，0起始"}

ConsoleList[77] = {title = "获得100玉", cate = "常用", command = "d_c2scmd 2988", parameter = 0, desc = "玉，就是玉。（此条应张薷心mm要求添加）"}
---------------------------------------------------------------------
--竞技赛指引
---------------------------------------------------------------------
FightGuide={}
--什么是竞技赛
FightGuide[1] = {text="Nhà Hán suy tàn, quần hùng nổi dậy, thiên hạ chiến tranh liên miên. Thế hệ chúng ta tài năng xuất chúng, đều mong tỏa sáng trên sân khấu lịch sử này. Mười tám loại binh khí trong tay, ai có thể một ngựa địch ngàn, ai có thể vạn phu không địch lại. Hãy cùng nhau lập thành đội chiến, so tài võ nghệ, xem rốt cuộc ai là thiên hạ vô song thực sự.\rBây giờ vào chiều Chủ Nhật hàng tuần, sẽ tổ chức một trận đấu trường. Tất cả người chơi đạt cấp Anh Hùng đều có thể tham gia sự kiện này, thông qua việc lập thành đội chiến để so tài võ nghệ với các đội chiến khác tham gia. Thông qua từng vòng đấu, tranh giành chức vô địch cuối cùng.\rTất cả người chơi tham gia sự kiện này, không chỉ có thể nâng cao kỹ năng, chứng minh thực lực của mình, mà còn đều nhận được phần thưởng phong phú. Đừng chần chừ nữa, mau triệu tập chiến hữu mạnh mẽ bên cạnh, cầm vũ khí trong tay, tham gia vào sự kiện này đi."}
--Làm thế nào để tạo đội chiến
FightGuide[2] = {text="^ff6fb3Điều kiện cần:^ffffff\rTừ 0 giờ thứ Hai đến 0 giờ thứ Bảy hàng tuần, người chơi nằm trong top 500 của Bảng Xếp Hạng Đánh Giá Tổng Hợp Cá Nhân và đạt cấp Anh Hùng, đều có quyền tạo một đội đấu trường.\r\r^ff6fb3NPC liên quan:^ffffff\rỞ Sân Võ Luyện Tây Thị Trường An, tìm Sứ Giả Đội Đấu Trường #72210#, đăng ký tạo đội đấu trường.\r\r^ff6fb3Chiêu mộ đồng đội:^ffffff\rSau khi có đội đấu trường, có thể chiêu mộ bất kỳ người chơi đạt cấp Anh Hùng nào làm đồng đội, mỗi đội tối đa 9 người. \rCách một: Chuột phải vào hình đại diện người chơi, chọn chiêu mộ.\rCách hai: Thông qua Chiêu Mộ Đồng Đội trong bảng điều khiển đội đấu trường, nhập tên đối phương.\rCách ba: Chuột phải vào tên người chơi trong cửa sổ chat, chọn chiêu mộ.\r\r^ff6fb3Giải tán đội đấu trường:^ffffff\rChỉ đội trưởng mới có thể thực hiện tính năng này, khi muốn giải tán đội đấu trường, ở Sân Võ Luyện Tây Thị Trường An, tìm Sứ Giả Đội Đấu Trường -#72210#, chọn giải tán đội đấu trường. Giải tán đội đấu trường có 7 ngày đệm. Trong thời gian này, đội trưởng có thể hủy bỏ yêu cầu này bất cứ lúc nào thông qua lệnh Hủy Giải Tán Đội Đấu Trường trên bảng điều khiển đội đấu trường. Sau 7 ngày, đội đấu trường sẽ bị giải tán.\r"}
--Làm thế nào để đăng ký Đấu Trường
FightGuide[3] = {text="^ff6fb3Điều kiện cần:^ffffff\rKhi đội trưởng online, đội trưởng phụ trách xếp hàng; khi đội trưởng không online, phó đội trưởng thực hiện xếp hàng.\r\r^ff6fb3Thời gian đăng ký:^ffffff\rThứ Bảy 19:00 - Chủ Nhật 13:50, trong đó 19:00 Thứ Bảy - 13:00 Chủ Nhật là thời gian đăng ký thông thường, 13:00 - 13:50 Chủ Nhật là thời gian đăng ký nghiêm ngặt. Trong thời gian đăng ký nghiêm ngặt, đội có số người online dưới 3 người, sẽ bị hủy tư cách đăng ký. Cuộc thi chính thức bắt đầu lúc 14:00.\r\r^ff6fb3NPC liên quan:^ffffff\rỞ Sân Võ Luyện Tây Thị Trường An, tìm Quan Viên Đấu Trường #72209#. Chọn đăng ký đấu trường.\r\r^ff6fb3Liên quan đến xếp hàng:^ffffff\rĐấu trường tối đa có thể chấp nhận 128 đội tham gia, khi số đội đăng ký vượt quá 128 đội, sẽ căn cứ vào đánh giá tổng hợp của đội và thời gian xếp hàng, quyết định 128 đội được chọn cuối cùng.\r\r^ff6fb3Chọn thành viên tham chiến:^ffffff\rSau khi đăng ký thành công, có thể thông qua Chọn Thành Viên Tham Chiến trên giao diện, đánh dấu chọn người vào chiến đấu, tối thiểu 3 người, tối đa 6 người. ^ff0000Từ 13 giờ trưa Chủ Nhật đến khi kết thúc cuộc thi, cần có ít nhất 3 người online mới có thể tham gia cuộc thi. Nếu không sẽ bị hủy tư cách tham gia.\r\r^ff6fb3Xem bảng đấu:^ffffff\rSau 19:00 Thứ Bảy hàng tuần, có thể thông qua nút bên phải màn hình, mở Xem Bảng Đấu trên giao diện xếp hàng đấu trường, xem tình hình đối đầu cuối cùng.\rBảng đấu có thể xem tình hình thăng cấp và chi tiết chiến đấu của mỗi đội. Lưu ý: Trong chiến đấu, nhấn phím U, có thể xem chi tiết chiến đấu ngay lập tức.\r"}
--Quy trình Đấu Trường
FightGuide[4] = {text="^ff6fb3Quy trình tổng thể:^ffffff\rĐấu trường gồm 128 đội, mỗi vòng tiến hành loại trực tiếp, thông qua tổng cộng 7 vòng đấu, tranh giành chức vô địch cuối cùng. Mỗi vòng đấu kéo dài 15 phút, đội được miễn đấu, sau khi vào sân sẽ thắng trực tiếp, vào vòng tiếp theo. \rKhi mỗi vòng đấu bắt đầu, hệ thống sẽ nhắc nhở đội đủ tư cách vào sân, hoặc thông qua nút Vào Đấu Trường trên bảng điều khiển.\r\r^ff6fb3Quy trình mỗi vòng:^ffffff\rMỗi vòng đấu lại được chia thành 3 ván nhỏ, mỗi ván tối đa 4 phút. Khi mỗi ván bắt đầu, hai bên đều được truyền tống đến điểm vào sân với trạng thái đầy máu để tiến hành ván đấu này. Cuối cùng căn cứ vào điều kiện thắng thua quyết định đội được vào vòng tiếp theo.\r"}
--Điều kiện thắng thua của cuộc thi
FightGuide[5] = {text="^ff6fb3Điều kiện thắng thua của mỗi ván:^ffffff\r1. Giết chết tất cả thành viên đối phương, thì đội này thắng ván đấu này.\r2. Khi thời gian mỗi ván đấu kết thúc là 4 phút, nếu cả hai bên đều còn thành viên sống sót, thì so sánh lượng máu cờ đội của hai đội, đội có lượng máu nhiều hơn sẽ thắng.\r3. Nếu lượng máu cờ đội vẫn bằng nhau, thì so sánh số người sống sót, đội có số người sống sót nhiều hơn sẽ thắng.\r4. Nếu các điều kiện trên đều không thể phân định thắng thua của ván đấu này, thì phán định cả hai đội đều thua.\r\r^ff6fb3Điều kiện thắng thua của mỗi vòng:^ffffff\r1. Trong mỗi vòng đấu, tất cả thành viên đối phương đều rời chiến trường, thì phe ta thắng\r2. Đội giành được 2 trận thắng trước sẽ thắng vòng đấu.\r3. Khi 3 ván đấu kết thúc, đội có số ván thắng nhiều hơn sẽ thắng.\r4. Nếu thông qua 3 ván đấu vẫn không thể phân định thắng thua, thì phán định cả hai đội đều thua, đều không vào vòng tiếp theo.\r"}
--Thuộc tính đấu trường cá nhân
FightGuide[6] = {text="^ff6fb3Xem thuộc tính đấu trường của bản thân:^ffffff\rThông qua nút tương ứng trên bảng điều khiển nhân vật, mở bảng điều khiển thuộc tính đấu trường cá nhân.\r\r^ff6fb3Xem thuộc tính đấu trường của người khác:^ffffff\rChuột phải vào hình đại diện đối phương, nhấp vào nút Đấu Trường, xem bảng điều khiển thuộc tính đấu trường của người khác.\r\r^ff6fb3Giải thích thuộc tính:^ffffff\r^fffd44Giá trị Võ Đấu:^ffffff Giá trị Võ Đấu của người chơi hiện tại, giá trị này nhận được thông qua việc tham gia cuộc thi, dùng để đổi thưởng.\r^fffd44Hạng cá nhân đấu trường:^ffffff Hạng cá nhân đấu trường của người chơi hiện tại, cũng có thể tra cứu thông qua bảng xếp hạng.\r^fffd44Đánh giá tổng hợp cá nhân:^ffffff Giá trị đánh giá tổng hợp trang bị cá nhân.\r^fffd44Kỷ lục chiến thắng cuối tuần:^ffffff Thành tích tốt nhất trong lịch sử nhận được khi tham gia đấu trường.\r^fffd44Tổng số lần tiêu diệt:^ffffff Tổng số kẻ địch đã tiêu diệt trong đấu trường.\r^fffd44Tổng tỷ lệ thắng:^ffffff Tỷ lệ thắng khi tham gia đấu trường.\r^fffd44Tổng số lần tham chiến:^ffffff Tổng số lần tham gia đấu trường.\r^fffd44Tổng số lần thắng:^ffffff Tổng số lần thắng khi tham gia đấu trường.\r^fffd44Tổng số lần thất bại:^ffffff Tổng số lần thất bại khi tham gia đấu trường.\r^fffd44Cấp độ đấu trường:^ffffff Cấp độ đấu trường cá nhân hiện tại.\r^fffd44Danh hiệu cấp độ:^ffffff Danh hiệu đấu trường cá nhân. Nhận được khi cấp độ đấu trường cá nhân tăng lên.\r^fffd44Kinh nghiệm hiện tại:^ffffff Kinh nghiệm đấu trường cá nhân hiện tại, nhận được thông qua việc tham gia đấu trường.\r^fffd44Tên đội đấu trường trực thuộc:^ffffff Tên đội đấu trường mà người chơi đang ở.\r"}
--Thuộc tính đấu trường đội
FightGuide[7] = {text="^ff6fb3Xem thuộc tính đội:^ffffff\rThông qua Thuộc Tính Đội trong bảng điều khiển đấu trường cá nhân hoặc nút Đấu Trường trên giao diện.\r\r^fffd44Giải thích thuộc tính:^ffffff\r^fffd44Đội trưởng đội đấu trường:^ffffff Tên đội trưởng đội đấu trường này\r^fffd44Hạng đội đấu trường:^ffffff Hạng hiện tại của đội đấu trường. Cũng có thể tra cứu thông qua bảng xếp hạng.\r^fffd44Cấp độ đội đấu trường:^ffffff Cấp độ hiện tại của đội đấu trường.\r^fffd44Danh hiệu đội đấu trường:^ffffff Danh hiệu của đội đấu trường.\r^fffd44Đánh giá tổng hợp đội:^ffffff Đánh giá tổng hợp của đội. Điểm này do tổng điểm của 6 người có đánh giá tổng hợp cá nhân cao nhất quyết định. Điểm này cũng là một trong những căn cứ để xác định kết quả chia nhóm đăng ký cuối cùng.\r^fffd44Kinh nghiệm đội hiện tại:^ffffff Kinh nghiệm đội hiện tại, nhận được thông qua việc tham gia đấu trường.\r^fffd44Danh sách thành viên đội chiến:^ffffff Hiển thị thông tin đồng đội trong đội chiến.\r^fffd44Sửa đổi thông báo:^ffffff Mỗi đội đấu trường đều có thông báo riêng, đội trưởng có thể sửa đổi và phát hành.\r^fffd44Chiêu mộ đồng đội^ffffff: Nút này dùng để chiêu mộ chiến hữu bằng cách nhập tên.\r^fffd44Loại bỏ đồng đội:^ffffff Đội trưởng có thể sử dụng nút này để đá người chơi ra khỏi đội này.\r^fffd44Bổ nhiệm phó đội trưởng:^ffffff Chọn phó đội trưởng. Mỗi đội chỉ có một phó đội trưởng.\r^fffd44Hủy phó đội trưởng:^ffffff Hủy phó đội trưởng đã chọn.\r^fffd44Hủy giải tán đội đấu trường:^ffffff Trong thời gian đệm giải tán đội đấu trường, có thể thông qua nút này để hủy yêu cầu giải tán.\r^fffd44Rời đội:^ffffff Ngoài đội trưởng ra, các thành viên khác có thể nhấp vào nút này để rời đội đấu trường này.\r"}
--Phần thưởng và Đổi thưởng
FightGuide[8] = {text="^ff6fb3Làm thế nào để nhận phần thưởng:^ffffff\rMỗi lần tham gia đấu trường, sẽ tự động phát thưởng cho người chơi dựa trên kết quả thi đấu của đội. Hạng cuối cùng càng cao, phần thưởng nhận được càng phong phú.\r\r^ff6fb3Nội dung phần thưởng:^ffffff\rGiá trị Võ Đấu: Điểm nhận được thông qua đấu trường, điểm này dùng để đổi thưởng.\rDanh hiệu: Khi cấp độ đấu trường cá nhân của người chơi tăng lên, sẽ nhận được phần thưởng danh hiệu, biểu tượng của thực lực.\rKinh nghiệm sống: Kinh nghiệm cần thiết để nâng cấp.\rKim tệ: Tiền tệ có thể lưu thông trong Xích Bích.\r\r^ff6fb3Làm thế nào để đổi thưởng:^ffffff\rThông qua Giá trị Võ Đấu nhận được, có thể tìm NPC Thương Nhân Đội Đấu Trường #72211# ở Sân Võ Luyện Tây Thị Trường An để xem và đổi phần thưởng.\r"}
--Bảng xếp hạng đấu trường
FightGuide[9] = {text="^ff6fb3Cách xem:^ffffff\rThông qua nút Bảng Xếp Hạng trên thanh công cụ mở ra và chọn trang Bảng Xếp Hạng Đấu Trường.\r\r^ff6fb3Phần thưởng danh hiệu:^ffffff\r5 người chơi đứng đầu trên Bảng Xếp Hạng Kinh Nghiệm Đấu Trường Cá Nhân trong tháng sẽ nhận được phần thưởng danh hiệu.\r"}

--------------------------------------------------------------------

--------------------------------------------------------------------

---------------------------------------------------------------------
--Chỉ dẫn Đấu Trường Thiên Hạ liên quan
---------------------------------------------------------------------
GangGuide={}
--Đấu Trường Thiên Hạ là gì
GangGuide[1] = {text="^ff6fb3Giải thích:^ffffff\rĐấu Trường Thiên Hạ là nơi tranh tài của người chơi từ các server khác nhau. Người chơi của các server có thể thông qua Sứ Giả Dịch Chuyển Đấu Trường Thiên Hạ Võ Thánh (83,110) ở thành Trường An để vào Đấu Trường Thiên Hạ.\r\r^ff6fb3Cách chơi:^ffffff\rMáy chủ Đấu Trường Thiên Hạ hiện tại bao gồm nhiều sự kiện đấu trường, có Hào Mông Quan nơi nhiều người tham gia tranh giành tài nguyên, Quần Anh Hội đấu trường cá nhân, và Giải Đấu Trường Quân Đoàn theo đơn vị quân đoàn.\r\rĐể thể hiện sự công bằng của đấu trường, hiện tại chiến trường Quần Anh Hội và chiến trường Hào Mông Quan đều áp dụng tính năng ghép đôi hoàn toàn mới để chia nhóm cho người tham gia, Giải Đấu Trường Quân Đoàn là một sự kiện quy mô lớn được tổ chức theo đơn vị quân đoàn.\r\rTin rằng bạn là người yêu thích đấu trường đã sớm nóng lòng muốn thử sức, vậy thì đừng chần chừ mà hãy bước lên hành trình chinh phục Đấu Trường Thiên Hạ đi."}
--Tính năng ghép đôi
GangGuide[2] = {text="^ff6fb3Giải thích:^ffffff\rMục đích của tính năng ghép đôi là để người chơi khi tham gia chiến trường PVP, có thể cạnh tranh với người chơi có thực lực gần tương đương.\r\rKhi người chơi xếp hàng tham gia chiến trường, hệ thống sẽ ghép đôi chia phe cho người chơi, khi số người chơi trong hàng đợi ghép đôi đủ số người tham gia chiến trường, sẽ hoàn thành việc ghép đôi này, mở chiến trường. Hiện tại chế độ tham gia của các chiến trường áp dụng tính năng ghép đôi bao gồm ghép đôi đội, ghép đôi cá nhân, không giới hạn ghép đôi.\r\rHai chiến trường Quần Anh Hội và Hào Mông Quan trên Đấu Trường Thiên Hạ đều áp dụng tính năng ghép đôi để vào sân. Chiến trường Quần Anh Hội áp dụng cách mở giới hạn thời gian, người chơi sẽ tiến hành đối chiến ghép đôi trong khoảng thời gian cố định, chế độ của chiến trường này là ghép đôi cá nhân, người tham gia cần xếp hàng theo đơn vị cá nhân.\r\rHào Mông Quan là chiến trường mở cả ngày, do yêu cầu số lượng người chơi tham gia tương đối nhiều, trong trường hợp số người trong hàng đợi ghép đôi không đủ số người mở chiến trường, chiến trường sẽ không thể mở.\r\rĐề nghị người chơi tổ chức theo nhóm tham gia chiến trường vào một số khoảng thời gian nhất định, ví dụ như 9 giờ sáng - 11 giờ sáng, 3 giờ chiều - 5 giờ chiều, Hào Mông Quan áp dụng chế độ không giới hạn, người chơi có thể xếp hàng theo đơn vị cá nhân hoặc đội."}
--Thể lệ Giải Đấu Trường Quân Đoàn
GangGuide[3] = {text="^ff6fb3Điều kiện đăng ký:^ffffff\rHoạt động Đấu Trường Quân Đoàn ^ffff00cách tuần^ffffff mở, mỗi lần mở, tuần đầu tiên là thời gian các quân đoàn chạy đua lên bảng xếp hạng, tuần thứ hai sẽ căn cứ vào bảng xếp hạng mức tăng cống hiến quân đoàn của tuần trước để xếp hạng, và bắt đầu đăng ký Đấu Trường Quân Đoàn vào tối thứ Hai. Đoàn trưởng của 100 quân đoàn đứng đầu bảng xếp hạng có quyền đăng ký, lấy 32 quân đoàn đăng ký trước vào chia nhóm.\r\r^ff6fb3Thời gian đăng ký và thi đấu mỗi vòng:^ffffff\rThứ Hai 19:00-20:00 đăng ký\rThứ Ba 21:00-23:00 vòng 1 32 vào 16\rThứ Tư 21:00-23:00 vòng 2 16 vào 8\rThứ Năm 21:00-23:00 vòng 3 8 vào 4\rThứ Sáu 21:00-23:00 vòng 4 4 vào 2\rThứ Bảy 21:00-23:00 vòng 5 chung kết\r\rĐấu Trường Quân Đoàn áp dụng thể thức loại trực tiếp một trận, sau năm vòng đấu sẽ chọn ra nhà vô địch cuối cùng, thành viên quân đoàn tham gia mỗi trận đấu kết thúc đều sẽ nhận được phần thưởng tương ứng và phần thưởng thêm khi thăng cấp."}
--Quy trình Chiến Trường Đấu Trường Quân Đoàn
GangGuide[4] = {text="^ff6fb3Quy trình:^ffffff\rChiến trường Đấu Trường Quân Đoàn mỗi bên giao chiến có thể có 80 thành viên vào, trong thời gian 120 phút tiêu diệt chủ tướng đối phương hoặc gây sát thương cho hắn nhiều nhất có thể để giành chiến thắng chiến trường.\r\rKhu vực chính của chiến trường là căn cứ của hai bên công và thủ và ba khu vực chiến đấu trung tâm, người chơi hai bên có thể chiếm lĩnh ba đại doanh trong chiến trường bằng cách cướp cờ, nhưng chiếm lĩnh sẽ không tạo ra điểm tích lũy.\r\rNgười chơi thông qua việc chiếm lĩnh đại doanh làm mới Đăng Vân Xa để leo lên Đài Phong Hỏa trung tâm đại doanh, mở Phong Hỏa sẽ làm suy yếu các thuộc tính khác nhau của chủ tướng đối phương, từ đó đạt được mục đích tiêu diệt chủ tướng đối phương.\r\rĐăng Vân Xa sẽ đi từ căn cứ chính của bên chiếm lĩnh đến đại doanh đó, trên đường đi người chơi đối phương có thể phá hủy nó, ngăn cản Đăng Vân Xa tiếp cận Đài Phong Hỏa; tương tự nếu Đăng Vân Xa thành công đến dưới Đài Phong Hỏa, tinh binh phe ta ẩn náu trong Đăng Vân Xa cũng sẽ nhảy ra hỗ trợ người chơi phe ta tiêu diệt kẻ địch.\r\rMở Phong Hỏa ở các đại doanh khác nhau, sẽ làm suy yếu các thuộc tính khác nhau của chủ tướng đối phương, như giảm lực tấn công, tăng sát thương trực tiếp và sát thương gián tiếp phải chịu, người chơi có thể tùy tình hình mà lựa chọn.\r\rTrong chiến trường còn có các Thuyền Chiến qua lại giữa ba đại doanh, người chơi có thể lái nó để vận chuyển người chơi phe ta thực hiện bố trí chiến lược, tăng cường tính hợp tác và chiến lược chiến trường giữa người chơi."}
--Thể lệ Quần Anh Hội
GangGuide[5] = {text="^ff6fb3Định vị binh chủng:^ffffff\rMỗi lần người chơi có thể chọn một binh chủng chính tham gia cuộc thi, một khi tiến hành ghép đôi lần đầu tiên, binh chủng chính tham gia của người chơi sẽ được định vị, trong tuần này tham gia Quần Anh Hội chỉ có thể sử dụng binh chủng đã định vị lần đầu. Tình hình binh chủng đã định vị sẽ hiển thị trong “Chi tiết xếp hạng điểm tích lũy” trên giao diện xếp hàng.\r\r^ff6fb3Sắp xếp lịch thi đấu:^ffffff\rQuy trình thi đấu chia làm ba vòng, thứ Tư, thứ Năm, thứ Bảy là ngày thi đấu, cách tuần là một chu kỳ, tuần sau sẽ xóa kết quả thi đấu của tuần trước. Thời gian sắp xếp cụ thể như sau\r1) Vòng sơ loại server đơn:\rMở cuộc thi vào tối thứ Tư 21:00-22:30. Người chơi theo đơn vị cá nhân ghép đôi đối thủ theo binh chủng trong khoảng thời gian này, sau khi ghép đôi thành công sẽ tiến hành thi đấu 1V1.\rSau 22:30, căn cứ vào điểm tích lũy thắng trận cá nhân chọn ra 5 người đứng đầu mỗi binh chủng trên server đơn, ngày hôm sau trên liên server sẽ gửi vé vào vòng phục đấu qua thư.\r2) Vòng phục đấu liên server:\rMở cuộc thi vào tối thứ Năm 21:00-22:30. Người chơi nhận được vé vào vòng phục đấu của mỗi server, sau khi vào liên server trong khoảng thời gian mở cuộc thi, tiến hành đối chiến ghép đôi theo binh chủng.\rSau 22:30, căn cứ vào điểm tích lũy thắng trận chọn ra 1 người đứng đầu mỗi binh chủng, khi liên server mở vào Thứ Bảy, sẽ gửi vé vào vòng chung kết qua thư.\r3) Vòng chung kết liên server:\rMở cuộc thi vào tối thứ Bảy 22:00-23:30. Người đứng đầu mỗi binh chủng tiến hành ghép đôi không giới hạn binh chủng trong khoảng thời gian này, trong trận chung kết cuối cùng, mỗi lần đều có khả năng gặp phải địch thủ mạnh mẽ của các binh chủng khác nhau, sau khi ghép đôi thành công, sẽ tiến hành thi đấu 1V1.\rSau 23:30 cuộc thi sẽ căn cứ vào điểm tích lũy thắng trận chọn ra quán quân, á quân, quý quân. Ngày hôm sau khi liên server mở, sẽ gửi thưởng qua thư cho họ. Cách tuần sẽ lặp lại quy trình thi đấu của tuần này."}
--Quy trình Chiến Trường Quần Anh Hội
GangGuide[6] = {text= "^ff6fb3Giải thích:^ffffff\rMỗi thứ Hai, tại Võ Sư Đấu Trường Thiên Hạ thứ nhất #85961# ở thành Trường An, sẽ phát vé tham gia cuộc thi Quần Anh Hội. Sau khi sử dụng vé có thể xếp hàng tham gia cuộc thi trong thời gian quy định. Khi hoàn thành ghép đôi người chơi bằng tính năng ghép đôi, chiến trường sẽ được mở. Người chơi vào chiến trường tiến hành thi đấu 1 chọi 1, cuộc thi sẽ áp dụng thể thức ba ván thắng hai, quy tắc thắng thua như sau:\r\r1. Trong thời gian hiệp đấu, nếu một bên người chơi tử vong, thì phán định là thua, số hiệp thắng của người chơi đối phương cộng một.\r2. Khi thời gian hiệp đấu kết thúc, nếu cả hai bên người chơi đều chưa tử vong, thì phán định lượng sát thương tích lũy phải chịu, bên chịu sát thương nhiều hơn là thua, số hiệp thắng của người chơi đối phương cộng một.\r3. Nếu các điều kiện trên đều không thỏa mãn, thì cả hai bên đều thua, số hiệp thắng của cả hai bên đều không tăng.\r4. Người giành được hai ván thắng sẽ là người thắng cuộc cuối cùng."}

--Phần thưởng và Đổi thưởng Quần Anh Hội
GangGuide[7] = {text="^ff6fb3Làm thế nào để nhận phần thưởng:^ffffff\rMỗi lần tham gia một trận đấu, người thắng và người thua đều sẽ nhận được một lượng Điểm Huân Quần Anh Hội nhất định. Vòng sơ loại trên mỗi server, chọn ra 5 người đứng đầu mỗi binh chủng, họ sẽ nhận được 100 Điểm Huân Quần Anh Hội và vé vào vòng phục đấu, hệ thống sẽ gửi qua thư khi liên server mở vào Thứ Năm. Vòng phục đấu Đấu Trường Thiên Hạ trên server liên server, sẽ chọn ra 1 người đứng đầu mỗi binh chủng, người đứng đầu sẽ nhận được 200 Điểm Huân và vé vào vòng chung kết, hệ thống sẽ gửi qua thư khi liên server mở vào Thứ Bảy, vòng chung kết Đấu Trường Thiên Hạ trên server liên server, sẽ chọn ra 3 người đứng đầu, họ sẽ nhận được 300 Điểm Huân.\rLàm thế nào để đổi thưởng:\r    Điểm Huân Quần Anh Hội có thể dùng để đổi thưởng, có thể xem chi tiết phần thưởng ở chỗ Võ Sư Đấu Trường Thiên Hạ thứ nhất #85961# ở thành Trường An."}
--Phần thưởng và Đổi thưởng
GangGuide[8] = {text="Null"}
--Bảng xếp hạng đấu trường
GangGuide[9] = {text="Null"}

--------------------------------------------------------------------

--------------------------------------------------------------------


--[[护卫百科全卷用表
1,护卫遣散指引
2,护卫绑定指引
3,护卫易筋指引
4,护卫训练指引
5,护卫投诚指引
6,护卫锁定指引
7,护卫洗点指引
8,护卫晋升官阶指引
9,护卫提高声望服务指引
10,护卫技能学习服务指引
11,护卫技能升级服务指引
12,护卫技能遗忘服务指引
13,护卫士气系统指引
14,护卫属性详细介绍
--]]

PetGuide = {}
PetGuide[1] = {text="^ff6fb3Giải Tán Hộ Vệ\r\r^ffffffBạn có thể giải tán hộ vệ không còn cần thiết, hộ vệ bị giải tán sẽ biến mất vĩnh viễn, vui lòng sử dụng cẩn thận!\r\rNếu không gian hộ vệ của bạn không đủ nhưng lại không muốn giải tán, có thể sử dụng gửi hộ vệ, hoặc chuyển hộ vệ ở trạng thái chưa ràng buộc thành Thư Quy Phục.\r\rCó thể nhấp vào nút Giải Tán trên bảng điều khiển hộ vệ để giải tán hộ vệ.\r\r", image="CB\\图片\\护卫指引图片\\指引遣散.tga"}
PetGuide[2] = {text="^ff6fb3Ràng Buộc Hộ Vệ\r\r^ffffffHộ vệ ở trạng thái chưa ràng buộc có thể chuyển thành Thư Quy Phục để trao đổi với người khác, nhưng không thể tấn thăng quan giai.\r\rHộ vệ ở trạng thái ràng buộc không thể chuyển thành Thư Quy Phục, nên không thể trao đổi với người khác, nhưng có thể tấn thăng quan giai.\r\rMột khi ràng buộc sẽ không thể trở lại trạng thái chưa ràng buộc.\r\rCó thể nhấp vào nút Ràng Buộc trên bảng điều khiển hộ vệ để tiến hành ràng buộc.\r\r", image="CB\\图片\\护卫指引图片\\指引绑定.tga"}
PetGuide[3] = {text="^ff6fb3Dịch Cân Hộ Vệ\r\r^ffffffThiên tư hộ vệ được chia thành tám giai đoạn: ^a8a8a8Kém phẩm^ffffff, ^ffffffSơ phẩm^ffffff, ^72fe00Thứ phẩm^ffffff, ^0184ffTrân phẩm^ffffff, ^a800ffTuyệt phẩm^ffffff, ^ff7d2fTiên phẩm^ffffff, ^fff962Thần phẩm^ffffff, ^ff4ca4Hoàn mỹ^ffffff.\r\rThiên tư thuộc tính của hộ vệ càng cao, có nghĩa là không gian trưởng thành thuộc tính đó của hộ vệ càng lớn.\r\rDịch Cân hộ vệ sẽ thay đổi thiên tư của hộ vệ, và hộ vệ có thanh danh càng cao, càng có khả năng nhận được thiên tư cao hơn.\r\r^00ff00Vinh Diệu Thạch^ffffff có thể làm cho lực tấn công, kế sách và sinh lực của hộ vệ tái sinh, còn ^00ff00Dịch Cân Hoàn^ffffff có thể làm cho tư chất võ lực, tư chất trí lực và tư chất gân cốt của hộ vệ tái sinh.\r\rCó thể nhấp vào nút Dịch Cân trên bảng điều khiển hộ vệ để vào giao diện Dịch Cân.\r\r", image="CB\\图片\\护卫指引图片\\指引易筋.tga"}
PetGuide[4] = {text="^ff6fb3Huấn Luyện Hộ Vệ\r\r^ffffffThông thường, hộ vệ có thể được chia thành bốn loại: ^8d76ffHướng Cân Bằng^ffffff, ^ff4ca4Hướng Võ Tướng^ffffff, ^40b4a0Hướng Kế Sách^ffffff và ^ceff8aHướng Trung Hậu^ffffff.\r\rHộ vệ Hướng Cân Bằng sẽ thể hiện các loại khác nhau trong khuynh hướng trưởng thành dựa trên các thiên tư khác nhau.\r\rBạn có thể huấn luyện hộ vệ của mình thành loại hướng khác.\r\rSau khi huấn luyện, thuộc tính, đánh giá và tính cách của hộ vệ sẽ thay đổi, trong khi kinh nghiệm, cấp độ, quan giai, thanh danh, phương án phân bổ thuộc tính và trạng thái sĩ khí sẽ giữ nguyên.\r\rChọn các hướng huấn luyện hộ vệ khác nhau có thể cần các vật phẩm khác nhau.\r\rMột số hộ vệ đặc biệt không có loại khác, nên không thể huấn luyện.\r\rCó thể sử dụng vật phẩm liên quan tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định để tiến hành huấn luyện.\r\r", image="CB\\图片\\护卫指引图片\\指引训练.tga"}
PetGuide[5] = {text="^ff6fb3Quy Phục Hộ Vệ\r\r^ffffffHộ vệ phải được chuyển thành Thư Quy Phục, mới có thể giao dịch với người khác.\r\rSau khi quy phục thuộc tính của hộ vệ sẽ không thay đổi, tên sẽ trở về tên ban đầu khi nhận được.\r\rHộ vệ ở trạng thái ràng buộc không thể quy phục.\r\rHộ vệ ở trạng thái khóa vui lòng giải khóa trước khi quy phục.\r\rHộ vệ chưa ràng buộc và chưa khóa có thể sử dụng ^00ff00Vạn Thế Bút^ffffff tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định để tiến hành quy phục.\r\r", image="CB\\图片\\护卫指引图片\\指引投诚.tga"}
PetGuide[6] = {text="^ff6fb3Khóa Hộ Vệ\r\r^ffffffHộ vệ sau khi khóa không thể quy phục và giải tán, và khi giải khóa cần nhập mật khẩu kho nhân vật.\r\rNếu hộ vệ bạn đã chọn hiện tại đang ở trạng thái khóa, dịch vụ này sẽ tự động chuyển thành dịch vụ giải khóa.\r\rNếu hiện tại chưa đặt mật khẩu kho, thì phải đặt trước khi khóa.\r\rGiải khóa hộ vệ không có thời gian chờ đợi.\r\rCó thể sử dụng ^00ff00Hồng Quân Tỏa^ffffff và ^00ff00Nữ Oa Thạch^ffffff tại #69417# ở Vân Đài Trường An để tiến hành khóa và giải khóa hộ vệ.\r\r", image="CB\\图片\\护卫指引图片\\指引锁定.tga"}
PetGuide[7] = {text="^ff6fb3Đặt Lại Điểm Thuộc Tính Hộ Vệ\r\r^ffffffNếu bạn không hài lòng với việc phân bổ điểm thuộc tính của hộ vệ, có thể sử dụng Đặt Lại Điểm Thuộc Tính Hộ Vệ để khôi phục các điểm thuộc tính hộ vệ đã phân bổ cho võ lực, trí lực và gân cốt thành điểm thuộc tính tự do.\r\rCó thể sử dụng ^00ff00Hằng Hà Thủy^ffffff tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định để tiến hành đặt lại điểm.\r\r", image="CB\\图片\\护卫指引图片\\指引洗点.tga"}
PetGuide[8] = {text="^ff6fb3Tấn Thăng Quan Giai Hộ Vệ\r\r^ffffffHộ vệ ban đầu là quan giai cửu phẩm, sau đó mỗi lần hộ vệ đạt cấp 100 có thể tấn thăng.\r\rSau khi tấn thăng quan giai, sự trưởng thành thuộc tính của hộ vệ sẽ được nâng cao đáng kể, nhưng cấp độ, kinh nghiệm hiện tại, điểm thuộc tính đã phân bổ sẽ được đặt lại về 0, trong khi sĩ khí tổn thất sẽ được giữ lại, sĩ khí hiện tại trở thành 100 điểm, điểm thuộc tính tự do được thêm 20 điểm.\r\rSau khi tấn thăng quan giai, kinh nghiệm cần thiết để lên cấp của từng cấp độ hộ vệ sẽ tăng lên tương ứng, trong khi sĩ khí cần thiết để lên cấp không đổi.\r\rQuan giai hiện tại của hộ vệ càng cao, tiền và kinh nghiệm cần thiết để tấn thăng quan giai càng nhiều.\r\rHộ vệ ở trạng thái ràng buộc khi đạt cấp 100 có thể tấn thăng quan giai tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định.\r\r", image="CB\\图片\\护卫指引图片\\指引晋升官阶.tga"}
PetGuide[9] = {text="^ff6fb3Nâng Cao Thanh Danh Hộ Vệ\r\r^ffffffThanh danh hộ vệ hiện tại được chia thành sáu giai đoạn: Vô Danh Tiểu Tốt, ^72fe00Hơi Nổi Danh^ffffff, ^0184ffDanh Tiếng Một Vùng^ffffff, ^a800ffLừng Lẫy Danh Tiếng^ffffff, ^ff7d2fAnh Danh Lan Xa^ffffff, ^fff962Danh Tiếng Bốn Biển^ffffff.\r\rThanh danh hộ vệ càng cao, thuộc tính tổng thể càng mạnh, và khi Dịch Cân càng có khả năng nhận được thiên tư cao hơn.\r\rMỗi lần nâng cao thanh danh có thể tăng 1 điểm thanh danh cho hộ vệ, đồng thời còn có một xác suất nhất định trực tiếp nâng cấp thanh danh hộ vệ lên cấp tiếp theo. Sau khi trực tiếp nâng cấp thanh danh hiện tại của hộ vệ sẽ trở về 0.\r\rKhi thanh danh hộ vệ đạt đến giá trị tối đa của cấp độ hiện tại, lần nâng cao thanh danh tiếp theo chắc chắn sẽ làm thanh danh hộ vệ tăng lên một cấp.\r\rThanh danh hộ vệ sẽ không thay đổi do các thao tác khác như huấn luyện hộ vệ, tấn thăng quan giai.\r\rHộ vệ có thanh danh chưa đạt cấp tối đa có thể sử dụng ^00ff00Chiến Công Thư^ffffff tại #69417# ở Vân Đài Trường An với một khoản tiền nhất định để nâng cao thanh danh.\r\rHộ vệ quan chức cửu phẩm cao nhất chỉ có thể đạt đến Lừng Lẫy Danh Tiếng.", image="CB\\图片\\护卫指引图片\\指引提高声望.tga"}
PetGuide[10] = {text="^ff6fb3Kỹ Năng Hộ Vệ\r\r^fffd441．Học Kỹ Năng Hộ Vệ:^ffffff\r\rThông qua dịch vụ học kỹ năng có thể làm cho hộ vệ lĩnh ngộ kỹ năng mới, có thực lực mạnh hơn.\r\rHọc kỹ năng cần Sách Kỹ Năng tương ứng, hiệu quả của kỹ năng đã học sẽ hiển thị trong khung bên phải giao diện.\r\rSách Kỹ Năng có thể nhận được thông qua tham gia hoạt động, nhiệm vụ, v.v.\r\rMột số kỹ năng có giới hạn đặc biệt, hộ vệ cận chiến không thể học kỹ năng giới hạn cận chiến có thể học, và ngược lại.\r\rKỹ năng đã học không thể học lại.\r\rHiệu quả kỹ năng có thể được nâng cao thông qua dịch vụ “Nâng cấp kỹ năng”.\r\rCó thể sử dụng vật phẩm liên quan tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định để tiến hành học.\r\r^fffd442．Nâng Cấp Kỹ Năng Hộ Vệ:\r\r^ffffffNâng cấp kỹ năng có thể nâng cao hiệu quả của kỹ năng đã học.\r\rKéo kỹ năng cần nâng cấp vào khung tương ứng dưới “Kỹ Năng”, khung tương ứng dưới “Vật phẩm cần thiết” sẽ tự động điền vật phẩm cần thiết để nâng cấp kỹ năng đó.\r\rVật phẩm nâng cấp kỹ năng có thể nhận được thông qua tham gia nhiệm vụ, hoạt động, v.v.\r\rCó thể sử dụng vật phẩm liên quan tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định để tiến hành nâng cấp.\r\r^fffd443．Quên Kỹ Năng Hộ Vệ:\r\r^ffffffThông qua dịch vụ quên kỹ năng, có thể loại bỏ kỹ năng không mong muốn.\r\rCó thể sử dụng ^00ff00Hương Mất Trí^ffffff tại #69417# ở Vân Đài Trường An với một khoản tiền nhất định để tiến hành quên.\r\r", image="CB\\图片\\护卫指引图片\\指引技能学习.tga"}
PetGuide[11] = {text="^ff6fb3Truyền Thừa Hộ Vệ\r\r^ffffffTruyền thừa hộ vệ là chuyển một phần thuộc tính của một hộ vệ (người truyền thừa) cho một hộ vệ khác (người kế thừa), sử dụng các vật phẩm khác nhau có thể chuyển các thuộc tính khác nhau. Yêu cầu người truyền thừa và người kế thừa đều đã ràng buộc, và quan giai của người truyền thừa không thấp hơn bát phẩm.\r\r^fffd44 1．Truyền Thừa Cấp Độ:\r\r^ffffffKhi sử dụng ^00ff00Thụy Thiên Hoàn^ffffff, quan giai và cấp độ của người truyền thừa sẽ được chuyển cho người kế thừa. Yêu cầu quan giai của người truyền thừa cao hơn người kế thừa, hoặc quan giai của người truyền thừa bằng người kế thừa nhưng cấp độ cao hơn người kế thừa.\r\rSau khi truyền thừa, quan giai của người truyền thừa trở về cửu phẩm, cấp độ, tất cả điểm thuộc tính, sĩ khí tổn thất và kinh nghiệm hiện tại được đặt lại về 0, sĩ khí hiện tại trở thành 100 điểm; quan giai, cấp độ, tình trạng phân bổ điểm thuộc tính, sĩ khí tổn thất và kinh nghiệm hiện tại của người kế thừa kế thừa giá trị của người truyền thừa, sĩ khí hiện tại không đổi.\r\r^fffd44 2．Truyền Thừa Thanh Danh:\r\r^ffffffKhi sử dụng ^00ff00Tung Thiên Thạch^ffffff, cấp độ thanh danh và đánh giá thiên tư của người truyền thừa sẽ được chuyển cho người kế thừa. Yêu cầu cấp độ thanh danh của người truyền thừa không thấp hơn cấp độ thanh danh của người kế thừa.\r\rSau khi truyền thừa, cấp độ thanh danh của người truyền thừa trở về Vô Danh Tiểu Tốt, giá trị thanh danh trở thành 0, tất cả đánh giá thiên tư được đặt lại; cấp độ thanh danh, giá trị thanh danh và đánh giá thiên tư của người kế thừa kế thừa giá trị của người truyền thừa.\r\r", image="CB\\图片\\护卫指引图片\\指引技能升级.tga"}
PetGuide[12] = {text="", image="CB\\图片\\护卫指引图片\\指引技能遗忘.tga"}
PetGuide[13] = {text="^ff6fb3Hệ Thống Sĩ Khí Hộ Vệ\r\r^ffffffTrạng thái sĩ khí của hộ vệ sẽ ảnh hưởng nhất định đến thuộc tính tổng thể của hộ vệ.\r\r^fffd441．Sĩ Khí Hiện Tại:^ffffff\r\rMỗi lần hộ vệ lên cấp đều cần tiêu hao một lượng sĩ khí hiện tại nhất định.\r\rKhi sĩ khí hiện tại cao hơn sĩ khí cần thiết để lên cấp, hộ vệ lên cấp sẽ nhận thêm thuộc tính cộng thêm; khi sĩ khí hiện tại không đủ để lên cấp hộ vệ, giá trị sĩ khí thiếu hụt sẽ được tính vào sĩ khí tổn thất.\r\rKhi huấn luyện hộ vệ, sĩ khí hiện tại không đổi; khi tấn thăng quan giai, sĩ khí hiện tại trở thành 100 điểm.\r\rBạn có thể sử dụng ^00ff00Khải Hoàn Thư^ffffff để tăng giá trị sĩ khí hiện tại của hộ vệ, giới hạn trên là 1000 điểm.\r\r^fffd442．Sĩ Khí Cần Thiết Để Lên Cấp:^ffffff\r\rSĩ khí hiện tại cần tiêu hao khi hộ vệ lên cấp.\r\rCấp độ hộ vệ càng cao, sĩ khí cần thiết để lên cấp càng nhiều.\r\r^fffd443．Sĩ Khí Tổn Thất:^ffffff\r\rKhi sĩ khí hiện tại không đủ để lên cấp hộ vệ, giá trị sĩ khí thiếu hụt sẽ được tính vào sĩ khí tổn thất.\r\rBạn có thể sử dụng ^00ff00Huy Chương Vinh Dự^ffffff để tăng sĩ khí tổn thất của hộ vệ.\r\r", image="CB\\图片\\护卫指引图片\\指引士气系统.tga"}
PetGuide[14] = {text="^ff6fb3Giải Thích Chi Tiết Thuộc Tính Hộ Vệ\r\r^fffd441．Giá Trị Thống Suất:^ffffff\r\rCó thể mua vật phẩm liên quan đến hộ vệ trong Cửa Hàng Thống Suất.\r\rCó thể nhận được trong hoạt động Tụ Hiền Cốc.\r\r^fffd442．Thanh Danh Hộ Vệ:^ffffff\r\rThanh danh hộ vệ hiện tại được chia thành sáu giai đoạn: Vô Danh Tiểu Tốt, ^72fe00Hơi Nổi Danh^ffffff, ^0184ffDanh Tiếng Một Vùng^ffffff, ^a800ffLừng Lẫy Danh Tiếng^ffffff, ^ff7d2fAnh Danh Lan Xa^ffffff, ^fff962Danh Tiếng Bốn Biển^ffffff.\r\rThanh danh hộ vệ càng cao, thuộc tính tổng thể càng mạnh, và khi Dịch Cân càng có khả năng nhận được thiên tư cao hơn.\r\rHộ vệ có thanh danh chưa đạt cấp tối đa có thể sử dụng ^00ff00Chiến Công Thư^ffffff tại #69417# ở Vân Đài Trường An với một khoản tiền nhất định để nâng cao thanh danh.\r\r^fffd443．Ràng Buộc:^ffffff\r\rHộ vệ ở trạng thái chưa ràng buộc có thể chuyển thành Thư Quy Phục để trao đổi với người khác, nhưng không thể tấn thăng quan giai.\r\rHộ vệ ở trạng thái ràng buộc không thể chuyển thành Thư Quy Phục, nên không thể trao đổi với người khác, nhưng có thể tấn thăng quan giai.\r\rMột khi ràng buộc sẽ không thể trở lại trạng thái chưa ràng buộc.\r\rCó thể nhấp vào nút Ràng Buộc trên bảng điều khiển hộ vệ để tiến hành ràng buộc.\r\r^fffd444．Khóa:^ffffff\r\rHộ vệ sau khi khóa không thể quy phục và giải tán, và khi giải khóa cần nhập mật khẩu kho nhân vật.\r\rNếu hiện tại chưa đặt mật khẩu kho, thì phải đặt trước khi khóa.\r\rGiải khóa hộ vệ không có thời gian chờ đợi.\r\rCó thể sử dụng ^00ff00Hồng Quân Tỏa^ffffff và ^00ff00Nữ Oa Thạch^ffffff tại #69417# ở Vân Đài Trường An để tiến hành khóa và giải khóa hộ vệ.\r\r^fffd445．Độ Quý Hiếm:^ffffff\r\rĐộ quý hiếm của hộ vệ hiện tại tổng cộng có năm loại: Tư Chất Bình Thường, ^72fe00Khó Tìm Với Giá Cao^ffffff, ^0184ffTrăm Năm Khó Gặp^ffffff, ^a800ffNgàn Năm Khó Gặp^ffffff, ^ff7d2fVạn Người Mới Có Một^ffffff.\r\rĐộ quý hiếm của hộ vệ càng cao, thuộc tính tổng thể của hộ vệ càng tốt.\r\rĐộ quý hiếm thuộc về thuộc tính bẩm sinh của hộ vệ, hiện tại không thể thay đổi.\r\r^fffd446．Cấp Độ:^ffffff\r\rCấp độ hiện tại của hộ vệ, tối đa 100 cấp.\r\rHộ vệ ở trạng thái ràng buộc khi đạt cấp 100 có thể tấn thăng quan giai, sau đó cấp độ trở về 0.\r\rKhi nâng cấp hộ vệ sẽ tiêu hao kinh nghiệm hiện tại và sĩ khí hiện tại.\r\r^fffd447．Quan Giai:^ffffff\r\rHộ vệ ban đầu là quan giai cửu phẩm, sau đó mỗi lần hộ vệ đạt cấp 100 có thể tấn thăng.\r\rSau khi tấn thăng quan giai, sự trưởng thành thuộc tính của hộ vệ sẽ được nâng cao đáng kể, nhưng cấp độ, kinh nghiệm hiện tại, điểm thuộc tính đã phân bổ sẽ được đặt lại về 0, trong khi sĩ khí tổn thất sẽ được giữ lại, sĩ khí hiện tại trở thành 100 điểm, điểm thuộc tính tự do được thêm 20 điểm.\r\rSau khi tấn thăng quan giai, kinh nghiệm cần thiết để lên cấp của từng cấp độ hộ vệ sẽ tăng lên tương ứng, trong khi sĩ khí cần thiết để lên cấp không đổi.\r\rHộ vệ ở trạng thái ràng buộc khi đạt cấp 100 có thể tấn thăng quan giai tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định.\r\r^fffd448．Lòng Trung Thành:^ffffff\r\rTrong trạng thái hộ vệ được triệu hồi ra trận hoặc hộ vệ, lòng trung thành của hộ vệ sẽ giảm sau khi hộ vệ hoặc người chơi tử vong. Cấp độ hộ vệ càng cao, lòng trung thành giảm càng nhiều.\r\rKhi lòng trung thành bằng 0, hộ vệ không thể triệu hồi ra trận.\r\rKhi lòng trung thành dưới 100, hộ vệ không thể vào trạng thái hộ vệ.\r\rKhi lòng trung thành trên 100, tỷ lệ bạo kích của hộ vệ sẽ được tăng cường.\r\rCó thể bổ sung bằng cách sử dụng Gói Thưởng Công.\r\r^fffd449．Kinh Nghiệm Hiện Tại và Kinh Nghiệm Cần Thiết Để Lên Cấp:^ffffff\r\r^00fffcNhận Kinh Nghiệm^ffffff\r\rKhi hộ vệ đang ở trạng thái hộ vệ hoặc triệu hồi ra trận, bất kể chủ nhân hoàn thành hoạt động hàng ngày hay chủ nhân hoặc hộ vệ tiêu diệt quái vật, chủ nhân và hộ vệ đều có thể nhận được kinh nghiệm và kinh nghiệm sống giống nhau cũng như vật phẩm rơi ra.\r\rQuái vật bị giết có cấp độ chênh lệch càng lớn với chủ nhân, kinh nghiệm nhận được càng ít.\r\rGiết một số quái vật đặc biệt sẽ không nhận được kinh nghiệm.\r\r^00fffcTích Lũy Kinh Nghiệm^ffffff\r\rGiới hạn tích lũy kinh nghiệm của hộ vệ trước cấp 60 là 2 lần kinh nghiệm cần thiết để lên cấp cấp 60, giới hạn tích lũy của hộ vệ từ cấp 60 trở lên là 2 lần kinh nghiệm cần thiết để lên cấp cấp độ hiện tại.\r\rKhi kinh nghiệm hộ vệ bằng hoặc vượt quá giới hạn trên sẽ không nhận được thêm, đồng thời không thể sử dụng vật phẩm tăng kinh nghiệm cho nó.\r\r^fffd4410．Ô Kỹ Năng:^ffffff\r\rCác kỹ năng hộ vệ có thể sử dụng sẽ hiển thị ở ô kỹ năng.\r\rÔ kỹ năng chưa mở có thể được mở bằng cách sử dụng vật phẩm liên quan.\r\r^fffd4411．Sinh Lực:^ffffff\r\rKhi ở trạng thái hộ vệ sẽ được cộng thêm vào sinh lực của chủ nhân theo một tỷ lệ nhất định.\r\rCó thể xem đánh giá thiên tư trong giao diện Dịch Cân hộ vệ.\r\rSinh lực của hộ vệ có thể hồi phục nhanh hơn khi thu hồi, hồi phục chậm hơn khi xuất chiến, không hồi phục ở trạng thái hộ vệ.\r\rNếu muốn hồi phục nhanh chóng có thể sử dụng vật phẩm hồi máu hộ vệ.\r\r^fffd4412．Lực Tấn Công:^ffffff\r\rKhi ở trạng thái hộ vệ sẽ được cộng thêm vào sát thương phụ thêm của chủ nhân theo một tỷ lệ nhất định.\r\rCó thể xem đánh giá thiên tư trong giao diện Dịch Cân hộ vệ.\r\r^fffd4413．Kế Sách:^ffffff\r\rCứ mỗi 2 điểm kế sách sẽ tăng 1 điểm sát thương phụ thêm cho hộ vệ.\r\rKhi ở trạng thái hộ vệ sẽ được cộng thêm vào điểm trị liệu của chủ nhân theo một tỷ lệ nhất định.\r\rCó thể xem đánh giá thiên tư trong giao diện Dịch Cân hộ vệ.\r\r^fffd4414．Ba Tư Chất:^ffffff\r\rTư chất võ lực sẽ ảnh hưởng đến lực tấn công tăng lên của mỗi điểm võ lực\r\rTư chất trí lực sẽ ảnh hưởng đến kế sách tăng lên của mỗi điểm trí lực\r\rTư chất gân cốt sẽ ảnh hưởng đến sinh lực tăng lên của mỗi điểm gân cốt\r\rCó thể xem đánh giá thiên tư trong giao diện Dịch Cân hộ vệ.\r\r^fffd4415．Khuynh Hướng Trưởng Thành:^ffffff\r\rTổng cộng có ba hướng trưởng thành: ^ff4ca4Kiểu Võ Tướng^ffffff, ^40b4a0Kiểu Kế Sách^ffffff và ^ceff8aKiểu Trung Hậu^ffffff.\r\rKhuynh hướng trưởng thành của hộ vệ là hướng mà hộ vệ có không gian phát triển lớn nhất.\r\rVí dụ, hộ vệ kiểu võ tướng sẽ có lực tấn công tăng lên nhiều hơn khi mỗi lần lên cấp và mỗi lần phân bổ một điểm võ lực.\r\r^fffd4416．Võ Lực, Trí Lực, Gân Cốt:^ffffff\r\rCó thể tự do phân bổ điểm còn lại cho ba thuộc tính này\r\rMỗi điểm võ lực sẽ tăng lực tấn công, lượng tăng do tư chất võ lực quyết định\r\rMỗi điểm trí lực sẽ tăng kế sách, lượng tăng do tư chất trí lực quyết định\r\rMỗi điểm gân cốt sẽ tăng sinh lực, lượng tăng do tư chất gân cốt quyết định\r\rNếu không hài lòng với cách phân bổ, có thể sử dụng ^00ff00Hằng Hà Thủy^ffffff tại #69417# ở Vân Đài Trường An với một khoản tiền và kinh nghiệm nhân vật nhất định để tiến hành đặt lại điểm.\r\r^fffd4417．Điểm Còn Lại:^ffffff\r\rMỗi lần hộ vệ lên cấp sẽ tăng thêm 3 điểm tự do.\r\rSau khi hộ vệ tấn thăng quan giai sẽ xóa tất cả điểm đã phân bổ và chưa phân bổ, đồng thời mỗi lần tấn thăng quan giai được thêm 20 điểm tự do.\r\r^fffd4418．Điểm Thiên Tư:^ffffff\r\rTổng hợp từ đánh giá thiên tư của sáu thuộc tính: lực tấn công, kế sách, sinh lực, tư chất võ lực, tư chất trí lực, tư chất gân cốt.\r\rĐánh giá thiên tư khuynh hướng trưởng thành sẽ chiếm tỷ trọng tổng hợp lớn hơn.\r\rCó thể sử dụng Dịch Cân cho hộ vệ để đặt lại, hộ vệ có thanh danh cao hơn càng có khả năng nhận được điểm thiên tư cao hơn.\r\r^fffd4419．Tư Chất Cốt Lõi:^ffffff\r\rĐánh giá thiên tư trên khuynh hướng trưởng thành của hộ vệ, số sao càng cao, có nghĩa là thiên tư của hộ vệ ở khuynh hướng trưởng thành càng tốt.\r\rVí dụ, hộ vệ kiểu võ tướng có số sao tư chất cốt lõi càng cao, thiên tư của hắn ở lực tấn công và tư chất võ lực càng tốt.\r\r^fffd4420．Tiềm Lực Trưởng Thành:^ffffff\r\rTiềm lực trưởng thành của hộ vệ sẽ ảnh hưởng tổng thể đến sự trưởng thành của lực tấn công, kế sách, sinh lực của hộ vệ khi mỗi lần lên cấp và mỗi lần phân bổ một điểm thuộc tính.\r\rThanh danh hộ vệ càng cao, quan giai càng cao, số sao tiềm lực trưởng thành càng cao.\r\r^fffd4421．Sĩ Khí:^ffffff\r\rTrạng thái sĩ khí của hộ vệ sẽ ảnh hưởng nhất định đến thuộc tính tổng thể của hộ vệ.\r\r^fff600Sĩ Khí Hiện Tại:^ffffff\r\rMỗi lần hộ vệ lên cấp đều cần tiêu hao một lượng sĩ khí hiện tại nhất định.\r\rKhi sĩ khí hiện tại cao hơn sĩ khí cần thiết để lên cấp, hộ vệ lên cấp sẽ nhận thêm thuộc tính cộng thêm; khi sĩ khí hiện tại không đủ để lên cấp hộ vệ, giá trị sĩ khí thiếu hụt sẽ được tính vào sĩ khí tổn thất.\r\rKhi huấn luyện hộ vệ, sĩ khí hiện tại không đổi; khi tấn thăng quan giai, sĩ khí hiện tại trở thành 100 điểm.\r\rBạn có thể sử dụng ^00ff00Khải Hoàn Thư^ffffff để tăng giá trị sĩ khí hiện tại của hộ vệ, giới hạn trên là 1000 điểm.\r\r^fff600Sĩ Khí Cần Thiết Để Lên Cấp:^ffffff\r\rSĩ khí hiện tại cần tiêu hao khi hộ vệ lên cấp.\r\rCấp độ hộ vệ càng cao, sĩ khí cần thiết để lên cấp càng nhiều.\r\r^fff600Sĩ Khí Tổn Thất:^ffffff\r\rKhi sĩ khí hiện tại không đủ để lên cấp hộ vệ, giá trị sĩ khí thiếu hụt sẽ được tính vào sĩ khí tổn thất.\r\rBạn có thể sử dụng ^00ff00Huy Chương Vinh Dự^ffffff để tăng sĩ khí tổn thất của hộ vệ.\r\r^fffd4422．Tính Cách:^ffffff Tính cách hộ vệ chia làm năm loại: Dũng mãnh, Linh hoạt, Trí tuệ, Nhiệt huyết, Chuyên chú, tổng của năm tính cách này là 100%, mỗi hộ vệ đều đồng thời có đủ năm tính cách này, chỉ là khuynh hướng hơi khác nhau.\r\r^00fffcDũng Mãnh:^ffffff\rKhí nuốt vạn tượng, càn quét nghìn quân như cuốn chiếu. Khuynh hướng tăng lực tấn công bản thân hộ vệ và giới hạn lực tấn công đối với kẻ địch.\r\r^00fffcLinh Hoạt:^ffffff\rThân pháp linh hoạt, khiến kẻ địch trở tay không kịp. Khuynh hướng làm suy yếu kháng sát thương, kháng chế ngự, kháng phong ấn, kháng suy yếu, kháng mất máu đối với kẻ địch.\r\r^00fffcTrí Tuệ:^ffffff\rThần cơ diệu toán, mưu trí hơn người. Khuynh hướng trị liệu và ảnh hưởng hiệu quả trị liệu đối với kẻ địch.\r\r^00fffcNhiệt Huyết:^ffffff\rNhiệt huyết tràn đầy, biết khó mà tiến lên. Khuynh hướng bạo kích bản thân và ảnh hưởng bạo kích đối với kẻ địch.\r\r^00fffcChuyên Chú:^ffffff \rTập trung tinh thần, chuyên tâm chế địch. Khuynh hướng giới hạn phòng ngự và kháng trực gián tiếp đối với kẻ địch.\r\r", image="CB\\图片\\护卫指引图片\\指引属性详细.tga"}
PetGuide[15] = {text="^ff6fb3Chiến Đấu Hộ Vệ\r\r^fffd441．Chế Độ Chiến Đấu Của Hộ Vệ:^ffffff\r\rChế độ chiến đấu của hộ vệ chia làm triệu hồi xuất chiến và hộ vệ.\r\r^00fffcTriệu Hồi Xuất Chiến:^ffffff\r\rSau khi hộ vệ được triệu hồi ra trận có ba chế độ chiến đấu—Chủ động, Bị động và Nghỉ ngơi.\r\rTrong chế độ Chủ động, hộ vệ sẽ chủ động tấn công kẻ địch trong tầm nhìn của mình;\r\rTrong chế độ Bị động, hộ vệ sẽ không chủ động tấn công kẻ địch, nhưng khi bị tấn công sẽ tự động phản công, còn sẽ hỗ trợ chủ nhân tấn công kẻ địch;\r\rTrong chế độ Nghỉ ngơi, hộ vệ sẽ không tấn công bất kỳ kẻ địch nào.\r\r^00fffcHộ Vệ:^ffffff\r\rTrong trạng thái hộ vệ, hộ vệ không trực tiếp xuất hiện, mà sẽ cộng thêm thuộc tính bản thân vào người chơi theo tỷ lệ.\r\rLực tấn công của hộ vệ cộng thêm thành sát thương phụ thêm của người chơi;\r\rKế sách của hộ vệ cộng thêm thành điểm trị liệu của người chơi;\r\rSinh lực của hộ vệ cộng thêm thành sinh lực của người chơi.\r\r^fffd442．Hộ Vệ và Chiến Đấu Giữa Người Chơi:^ffffff\r\rHộ vệ ở trạng thái triệu hồi xuất chiến gây sát thương cho người chơi là 30%, thuộc tính hộ vệ cộng thêm cho người chơi ở trạng thái hộ vệ sẽ không suy giảm khi PK\r\r^fffd443．Giới Hạn Triệu Hồi Xuất Chiến Hộ Vệ:^ffffff\r\rMột số bản đồ và chiến trường cấm triệu hồi xuất chiến hộ vệ, khi triệu hồi hộ vệ, hộ vệ sẽ tự động vào trạng thái hộ vệ.\r\r^00fffcBản đồ cấm triệu hồi xuất chiến hộ vệ:^ffffff\r\r^ff80ffBản đồ Quốc Chiến  Bản đồ Thủy Chiến Xích Bích  Sân Trường Quân^ffffff\r\r^00fffcChiến trường cấm triệu hồi xuất chiến hộ vệ:^ffffff\r\r^ff80ffTrường Đua Ngựa  Tôn Hương Truyện  Ma Vực Hạng Vương  Thương Sở Ly Ca  Cổ Điện Lâu Lan  Ảo Tưởng Bát Trận Đồ^ffffff\r\r", image="CB\\图片\\护卫指引图片\\指引护卫战斗.tga"}

--------------------------------------------------------------------
--Nội dung chữ chỉ dẫn chiến trường, tập tin giao diện BattleGuide.xml
--BattleGuide[X]：X là ID mẫu kịch bản
--903：Bát Trận Đồ Khai Môn
--905：Bát Trận Đồ Khai Môn Thủ Lĩnh
--------------------------------------------------------------------
BattleGuide = {}
BattleGuide[903] = {
	{text = "Bước một: Thu thập rương báu, nhận ^0078f0Ngọc Bát Quái^3a1f01.\r\r\rLưu ý:\r1. Ngọc Bát Quái có thể giao dịch, nhưng rời chiến trường sẽ biến mất.\r2. Ngoài bên cạnh Hoàng Thừa Ngạn ra, trong các cửa ải cụ thể cũng sẽ rơi rương báu.\r3. Trong 3 ải sau, trồng cây hái tiền có thể tạo ra rương báu.", image = "CB\\图片\\战场指引图\\八阵开门1.tga"},
	{text = "Bước hai: Sử dụng Ngọc Bát Quái, mua ^0078f0Linh Kiện Cơ Quan^3a1f01 ở chỗ tượng đá.\r\r\rLưu ý:\r1. Linh Kiện Cơ Quan rời chiến trường biến mất.\r2. Mỗi khi qua một ải, chỗ tượng đá sẽ có linh kiện mới được bán.", image = "CB\\图片\\战场指引图\\八阵开门2.tga"},
	{text = "Bước ba: Sử dụng Linh Kiện Cơ Quan, biến ^0078f0Lệnh Kỳ Bát Trận^3a1f01 thành cơ quan, tấn công quân địch xông trận.\r\rLưu ý:\r1. Tất cả kẻ địch tử vong thì qua ải, tượng đá trấn trận tử vong thì thất bại.\r2. Thất bại thì thách đấu lại ải hiện tại là được.\r3. Giao một Ngọc Bát Quái cho cơ quan đã kích hoạt, có thể tháo dỡ cơ quan.", image = "CB\\图片\\战场指引图\\八阵开门3.tga"},
	{text = "Giải thích khác:\r1. Mỗi ải có 4 đợt kẻ địch xâm phạm, mỗi đợt đến sẽ có một dấu hiệu cầm cờ.\r2. Tối đa có thể liên tục qua 4 ải, lần lượt là Trận Tốt, Trận Sĩ, Trận Pháo, Trận Tướng.\r3. Mỗi khi qua một ải đều có thể nhận thưởng kinh nghiệm sống.\r4. Sau khi qua 4 ải, số lần thất bại càng ít thì phần thưởng càng tốt.\r5. Mỗi ải đều có 2 phe quân địch xâm phạm, sẽ ngẫu nhiên vào một trong số đó.", image = ""}
}
BattleGuide[905] = {
	{text = "Bước một: Thu thập rương báu, nhận ^0078f0Ngọc Bát Quái^3a1f01.\r\r\rLưu ý:\r1. Ngọc Bát Quái có thể giao dịch, nhưng rời chiến trường sẽ biến mất.\r2. Ngoài bên cạnh Hoàng Thừa Ngạn ra, trong các cửa ải cụ thể cũng sẽ rơi rương báu.\r3. Trong 3 ải sau, trồng cây hái tiền có thể tạo ra rương báu.", image = "CB\\图片\\战场指引图\\八阵开门1.tga"},
	{text = "Bước hai: Sử dụng Ngọc Bát Quái, mua ^0078f0Linh Kiện Cơ Quan^3a1f01 ở chỗ tượng đá.\r\r\rLưu ý:\r1. Linh Kiện Cơ Quan rời chiến trường biến mất.\r2. Mỗi khi qua một ải, chỗ tượng đá sẽ có linh kiện mới được bán.", image = "CB\\图片\\战场指引图\\八阵开门2.tga"},
	{text = "Bước ba: Sử dụng Linh Kiện Cơ Quan, biến ^0078f0Lệnh Kỳ Bát Trận^3a1f01 thành cơ quan, tấn công quân địch xông trận.\r\rLưu ý:\r1. Tất cả kẻ địch tử vong thì qua ải, tượng đá trấn trận tử vong thì thất bại.\r2. Thất bại thì thách đấu lại ải hiện tại là được.\r3. Giao một Ngọc Bát Quái cho cơ quan đã kích hoạt, có thể tháo dỡ cơ quan.", image = "CB\\图片\\战场指引图\\八阵开门3.tga"},
	{text = "Giải thích khác:\r1. Mỗi ải có 4 đợt kẻ địch xâm phạm, mỗi đợt đến sẽ có một dấu hiệu cầm cờ.\r2. Tối đa có thể liên tục qua 4 ải, lần lượt là Trận Tốt, Trận Sĩ, Trận Pháo, Trận Tướng.\r3. Mỗi khi qua một ải đều có thể nhận thưởng kinh nghiệm sống.\r4. Sau khi qua 4 ải, số lần thất bại càng ít thì phần thưởng càng tốt.\r5. Mỗi ải đều có 2 phe quân địch xâm phạm, sẽ ngẫu nhiên vào một trong số đó.", image = ""}
}
--Chỉ dẫn chiến trường Binh Xa Hành·Xe Chiến Vô Song
BattleGuide[947] = {
	{text = "^dd006fChỉ dẫn chiến trường^3a1f01\r\rChào mừng đến với “Binh Xa Hành·Xe Chiến Vô Song”, chỉ dẫn chiến trường này không chỉ giới thiệu chi tiết mọi mặt của chiến trường PVP mới ra mắt của Xích Bích, mà còn giải thích về việc sử dụng xe chiến. Chỉ dẫn này bao gồm hai phần sau:\r\rMột、Chiến lược chiến trường\rHai、Giới thiệu xe chiến\r\rLưu ý: Bất cứ lúc nào cũng có thể nhấp vào nút “Chỉ Dẫn Chiến Trường” ở góc dưới bên trái để xem chỉ dẫn này.", image = "CB\\图片\\战车指引图\\封面.tga"},
	{text = "^dd006fChiến lược chiến trường^3a1f01\r\r1, Chiếm lĩnh điểm mỏ để nhận tài nguyên\rSau khi chiến đấu bắt đầu, có thể đi chiếm lĩnh mỏ sắt và mỏ lưu huỳnh, khi điểm mỏ bị chiếm lĩnh thì tất cả người chơi phe ta sẽ nhận được tài nguyên định kỳ.\r2, Chiếm lĩnh bãi chế tạo xe để nhận xe chiến\r^00b800Tây Sơn Bảo^3a1f01 và ^00b800Đông Hồ Thiết Lô^3a1f01 có cách chiếm lĩnh giống nhau, sau khi chiếm lĩnh cờ sẽ lần lượt sản xuất hai chiếc ^a800ffDạ Ưng^3a1f01 và ^a800ffThần Công^3a1f01. ^00b800Đài Phong Hỏa^3a1f01 cần phải tiêu diệt tướng lĩnh lính canh trước, sau khi cờ Đài Phong Hỏa xuất hiện thì chiếm lĩnh có thể sản xuất hai chiếc ^e66700Thiên Binh^3a1f01.", image = "CB\\图片\\战车指引图\\战场攻略.tga"},
	{text = "^3a1f013, Phá hủy kiến trúc đối phương\rCác kiến trúc có thể bị phá hủy bao gồm tháp tên, hàng rào ở cửa ải, tháp tên ngoài thành, tháp tên trung tâm, thủy tinh trung tâm, quản lý xe chiến trong thành. Trong đó:\r●Cung vệ phòng thủ ở cửa ải ở trạng thái vô địch trước khi hàng rào bị phá hủy;\r●Tháp tên ngoài thành ở trạng thái vô địch trước khi tháp tên ở cửa ải tương ứng bị phá hủy;\r●Sau khi bất kỳ tháp tên ngoài thành nào bị phá hủy, tháp tên trung tâm sẽ giải trừ trạng thái vô địch;\r●Sau khi cả hai tháp tên trung tâm đều bị phá hủy, thủy tinh trung tâm mới có thể bị tấn công.", image = "CB\\图片\\战车指引图\\战场攻略.tga"},
	{text = "^3a1f014, Giành chiến thắng\rChiến trường áp dụng chế độ tính điểm, phá hủy kiến trúc đối phương sẽ nhận được phần thưởng điểm tích lũy, phá hủy thủy tinh trung tâm đối phương, chiến trường sẽ kết thúc ngay lập tức, nếu hết thời gian chiến trường, mà thủy tinh trung tâm của cả hai bên đều chưa bị phá hủy, thì sẽ căn cứ vào điểm tích lũy của hai bên để quyết định thắng thua hòa.", image = "CB\\图片\\战车指引图\\战场攻略.tga"},
	{text = "^dd006fNhận tài nguyên^3a1f01\r\rTài nguyên chiến trường chia làm hai loại là mỏ sắt và mỏ lưu huỳnh, chúng có thể nhận được bằng các cách sau:\r1, Hoàn thành nhiệm vụ ^e66700Chỉ Dẫn Chiến Trường^3a1f01 và nhiệm vụ ^0184ffChiến Công Lừng Lẫy^3a1f01;\r2, Chiếm lĩnh điểm mỏ sắt và mỏ lưu huỳnh, tất cả thành viên phe ta có thể nhận được tài nguyên định kỳ. Chiếm lĩnh điểm mỏ sắt mỗi phút có thể nhận được 3 khối quặng sắt, điểm mỏ lưu huỳnh là 1 khối quặng lưu huỳnh mỗi phút;\r3, Lần đầu tiên chiếm lĩnh điểm mỏ, người chơi gần đó có thể nhận được phần thưởng tài nguyên;", image = "CB\\图片\\战车指引图\\战场资源.tga"},
	{text = "^3a1f014, Giết chết người chơi và binh lính đối phương;\r5, Mở rương báu xuất hiện sau khi chiếm lĩnh Đài Phong Hỏa;\r6, Ngoài ra mỗi phút tất cả người chơi sẽ nhận được một lượng tài nguyên cố định.", image = "CB\\图片\\战车指引图\\战场资源.tga"},
	{text = "^dd006fLái xe chiến^3a1f01\r\rTrong chiến trường tổng cộng có 5 loại xe chiến, mỗi phe tối đa có thể lái 14 chiếc xe chiến, trước khi xe chiến cũ bị phá hủy, sẽ không sản xuất xe chiến mới.\r\r^0184ffHổ Vương^3a1f01\rNơi sản xuất: Căn cứ chính phe ta\rTài nguyên tiêu tốn: 48 Quặng Sắt, 16 Quặng Lưu Huỳnh\r^0184ffHậu Nghệ^3a1f01\rNơi sản xuất: Căn cứ chính phe ta\rTài nguyên tiêu tốn: 48 Quặng Sắt, 16 Quặng Lưu Huỳnh", image = "CB\\图片\\战车指引图\\封面.tga"},
	{text = "^a800ffDạ Ưng^3a1f01\rNơi sản xuất: Tây Sơn Bảo\rTài nguyên tiêu tốn: 30 Quặng Sắt, 10 Quặng Lưu Huỳnh\r^a800ffThần Công^3a1f01\rNơi sản xuất: Đông Hồ Thiết Lô\rTài nguyên tiêu tốn: 30 Quặng Sắt, 10 Quặng Lưu Huỳnh\r^e66700Thiên Binh^3a1f01\rNơi sản xuất: Đài Phong Hỏa\rTài nguyên tiêu tốn: 72 Quặng Sắt, 24 Quặng Lưu Huỳnh", image = "CB\\图片\\战车指引图\\封面.tga"},
	{text = "^dd006fPhần thưởng chiến trường^3a1f01\r\rTrong chiến trường có thể nhận được “^00b800Điểm Huân Xe Chiến^3a1f01”, dùng nó có thể đổi phần thưởng chiến trường ở chỗ Xe Chiến Nương. “^00b800Điểm Huân Xe Chiến^3a1f01” có thể nhận được bằng các cách:\r1, Hoàn thành nhiệm vụ ^ffffffThắng Trận Đầu Tiên^3a1f01 (2 điểm)\r2, Người đầu tiên chiếm lĩnh điểm mỏ, bãi chế tạo xe (1 điểm)\r3, Người đầu tiên phá hủy tháp tên cửa ải (1 điểm)\r4, Người đầu tiên phá hủy tháp tên ngoài thành (1 điểm)\r5, Người đầu tiên phá hủy tháp tên trung tâm (1 điểm)\r6, Giành chiến thắng chiến trường (4 điểm)", image = "CB\\图片\\战车指引图\\战场物品.tga"},
	{text = "^3a1f017, Mang theo 2 “Lệnh Chinh Chiến” và hoàn thành chiến trường (4 điểm)\r8, Mang theo 2 “Lệnh Chinh Chiến” và 1 “Tử Hà Thiểm Châu” và hoàn thành chiến trường (15 điểm)", image = "CB\\图片\\战车指引图\\战场物品.tga"},
	{text = "^dd006fGiới thiệu xe chiến^3a1f01\r\rTrong phần này, sẽ giới thiệu giao diện lái xe chiến, thao tác, sử dụng kỹ năng và loại xe chiến, v.v.\rXe chiến là vũ khí mạnh mẽ trong chiến tranh, trong chiến trường Binh Xa Hành tổng cộng có 5 loại xe chiến, bao gồm 4 xe một người và 1 xe nhiều người, chúng là:\r^0184ffHổ Vương^3a1f01、^0184ffHậu Nghệ^3a1f01、^a800ffDạ Ưng^3a1f01、^a800ffThần Công^3a1f01、^e66700Thiên Binh^3a1f01", image = "CB\\图片\\战车指引图\\封面.tga"},
	{text = "^dd006fGiao diện lái xe chiến^3a1f01\r\rSau khi thành công nhận được xe chiến, sẽ lập tức lên xe, và xuất hiện giao diện lái xe chiến, từ trái sang phải lần lượt là:\rKỹ năng: Tổng cộng 4 kỹ năng\rMời: Người lái Thiên Binh có thể sử dụng chức năng này, mời người chơi khác lên xe\rXuống xe: Nhấp vào là xuống xe, đối với xe chiến nhiều người, nếu người lái xuống xe thì tất cả mọi người đều xuống xe", image = "CB\\图片\\战车指引图\\战车驾驶界面.tga"},
	{text = "^dd006fĐiều khiển xe chiến^3a1f01\r\rTiến lên lùi lại: Sử dụng các phím ^00b800W^3a1f01, ^00b800S^3a1f01 trên bàn phím để di chuyển\rQuay trái phải: Sử dụng các phím ^00b800A^3a1f01, ^00b800D^3a1f01 trên bàn phím để quay, cũng có thể dùng chuột phải kéo để quay\rTấn công: Nhấp vào kỹ năng tấn công, hoặc sử dụng phím tắt tương ứng ^3a1f011~4^3a1f01", image = "CB\\图片\\战车指引图\\战车操控.tga"},
	{text = "^dd006fKỹ năng xe chiến^3a1f01\r\rMỗi loại xe chiến tối đa có 4 kỹ năng, kỹ năng xe chiến là chỉ số quan trọng phân biệt đặc điểm xe chiến, trong đó:\rKỹ năng 1: Kỹ năng tấn công thường, có thể chuột phải vào biểu tượng kỹ năng, làm cho nó ở ^00b800trạng thái tự động sử dụng^3a1f01, chuột phải lại lần nữa để hủy trạng thái này.\rKỹ năng 4: Kỹ năng kết liễu, có sát thương rất mạnh, nhưng thời gian hồi chiêu cũng dài hơn tương ứng.", image = "CB\\图片\\战车指引图\\战车技能.tga"},
	{text = "^dd006fGiới hạn trên xe chiến^3a1f01\r\rKhi đang ở trên xe chiến, sẽ bị cấm sử dụng một số chức năng:\r●Không thể sử dụng kỹ năng ban đầu\r●Không thể sử dụng bất kỳ vật phẩm nào\r●Không thể bày bán, dựa vào nhau, quyết đấu, sử dụng biểu cảm hành động, giao dịch\r●Xe chiến nhiều người không thể truyền tống\r●Không thể sử dụng hộ vệ và chiến hồn", image = "CB\\图片\\战车指引图\\战车限制.tga"},
	{text = "^0184ffHổ Vương^3a1f01 \rXe chiến một người\rXe chiến cận chiến mạnh mẽ, giáp dày, là lực lượng nòng cốt đáng tin cậy.\r\rHỏa lực: ^ffffffBình thường^3a1f01\rTầm bắn: ^ff0000Khá gần^3a1f01\rGiáp: ^00b800Rất cao^3a1f01\rCơ động: ^ffffffBình thường^3a1f01\r\rKỹ năng:\rLong Viêm Đạn, Yến Phản Xung, Hãn Địa Kích, Song Tập Xạ Kích", image = "CB\\图片\\战车指 dẫn图\\虎王.tga"},
	{text = "^0184ffHậu Nghệ^3a1f01 \rXe chiến một người\rCó khả năng tấn công tầm xa xuất sắc, nhược điểm là tốc độ chậm, và dễ bị tổn thương.\r\rHỏa lực: ^00b800Xuất sắc^3a1f01\rTầm bắn: ^00b800Rất xa^3a1f01\rGiáp: ^ff0000Khá yếu^3a1f01\rCơ động: ^ff0000Khá kém^3a1f01\r\rKỹ năng:\rTốc Xạ, Tật Phong Xạ, Liên Hoàn Xạ, Thiên Nguyên Nhất Kích", image = "CB\\图片\\战车指引图\\后羿.tga"},
	{text = "^a800ffDạ Ưng^3a1f01 \rXe chiến một người\rCó khả năng cơ động xuất sắc mà các xe chiến khác không thể sánh bằng,擅长 (giỏi) tấn công bất ngờ.\r\rHỏa lực: ^ffffffBình thường^3a1f01\rTầm bắn: ^ff0000Khá gần^3a1f01\rGiáp: ^ffffffBình thường^3a1f01\rCơ động: ^00b800Rất mạnh^3a1f01\r\rKỹ năng:\rPhi Trảm, Song Dực Tập, Dực Dương Trảm, Bát Phương Phong Vũ", image = "CB\\图片\\战车指引图\\夜鹰.tga"},
	{text = "^a800ffThần Công^3a1f01 \rXe chiến một người\rXe chiến duy nhất có khả năng hồi phục và hỗ trợ, là cưng của chiến trường.\r\rHỏa lực: ^ff0000Rất kém^3a1f01\rTầm bắn: ^ffffffBình thường^3a1f01\rGiáp: ^ff0000Khá yếu^3a1f01\rCơ động: ^ffffffBình thường^3a1f01\r\rKỹ năng:\rCổ Vũ, Phấn Chiến Cổ, Nhiệt Huyết Minh, Phấn Khởi Xung Kích", image = "CB\\图片\\战车指引图\\神工.tga"},
	{text = "^e66700Thiên Binh^3a1f01 \rXe chiến nhiều người\rVũ khí tối thượng có thể chở 3 người cùng lúc, mạnh mẽ về mọi mặt.\r\rHỏa lực: ^00b800Xuất sắc^3a1f01\rTầm bắn: ^00b800Khá xa^3a1f01\rGiáp: ^00b800Rất cao^3a1f01\rCơ động: ^ffffffBình thường^3a1f01\r\rKỹ năng người lái: Xung Phong\rKỹ năng pháo thủ: Tiễn Tập, Liên Hoàn Tập, Tật Phong Tập, Duệ Phong Điểm Xạ", image = "CB\\图片\\战车指引图\\天兵.tga"},
}
--Chỉ dẫn chiến trường Lái Thử Xe Chiến·Sa Hải Kỳ Binh
BattleGuide[948] = {
	{text = "^dd006fChỉ dẫn xe chiến^3a1f01\r\rChào mừng bạn sử dụng chỉ dẫn xe chiến, trong cuốn chỉ dẫn này, sẽ giới thiệu giao diện lái xe chiến, thao tác, sử dụng kỹ năng và loại xe chiến, v.v.\rXe chiến là vũ khí mạnh mẽ trong chiến tranh, muốn trải nghiệm xe chiến có thể đến chiến trường Lái Thử Xe Chiến·Sa Hải Kỳ Binh và chiến trường Binh Xa Hành·Xe Chiến Vô Song mới ra mắt.\rNếu có thắc mắc về xe chiến và chiến trường, có thể nhấp vào nút Chỉ Dẫn Chiến Trường ở góc dưới bên trái bất cứ lúc nào để xem trợ giúp.", image = "CB\\图片\\战车指引图\\封面.tga"},
	{text = "^dd006fGiao diện lái xe chiến^3a1f01\r\rSau khi thành công nhận được xe chiến, sẽ lập tức lên xe, và xuất hiện giao diện lái xe chiến, từ trái sang phải lần lượt là:\rKỹ năng: Tổng cộng 4 kỹ năng\rMời: Người lái Thiên Binh có thể sử dụng chức năng này, mời người chơi khác lên xe\rXuống xe: Nhấp vào là xuống xe, đối với xe chiến nhiều người, nếu người lái xuống xe thì tất cả mọi người đều xuống xe", image = "CB\\图片\\战车指引图\\战车驾驶界面.tga"},
	{text = "^dd006fĐiều khiển xe chiến^3a1f01\r\rTiến lên lùi lại: Sử dụng các phím ^00b800W^3a1f01, ^00b800S^3a1f01 trên bàn phím để di chuyển\rQuay trái phải: Sử dụng các phím ^00b800A^3a1f01, ^00b800D^3a1f01 trên bàn phím để quay, cũng có thể dùng chuột phải kéo để quay\rTấn công: Nhấp vào kỹ năng tấn công, hoặc sử dụng phím tắt tương ứng ^3a1f011~4^3a1f01", image = "CB\\图片\\战车指引图\\战车操控.tga"},
	{text = "^dd006fKỹ năng xe chiến^3a1f01\r\rMỗi loại xe chiến tối đa có 4 kỹ năng, kỹ năng xe chiến là chỉ số quan trọng phân biệt đặc điểm xe chiến, trong đó:\rKỹ năng 1: Kỹ năng tấn công thường, có thể chuột phải vào biểu tượng kỹ năng, làm cho nó ở ^00b800trạng thái tự động sử dụng^3a1f01, chuột phải lại lần nữa để hủy trạng thái này.\rKỹ năng 4: Kỹ năng kết liễu, có sát thương rất mạnh, nhưng thời gian hồi chiêu cũng dài hơn tương ứng.", image = "CB\\图片\\战车指引图\\战车技能.tga"},
	{text = "^dd006fGiới hạn trên xe chiến^3a1f01\r\rKhi đang ở trên xe chiến, sẽ bị cấm sử dụng một số chức năng:\r●Không thể sử dụng kỹ năng ban đầu\r●Không thể sử dụng bất kỳ vật phẩm nào\r●Không thể bày bán, dựa vào nhau, quyết đấu, sử dụng biểu cảm hành động, giao dịch\r●Xe chiến nhiều người không thể truyền tống\r●Không thể sử dụng hộ vệ và chiến hồn", image = "CB\\图片\\战车指引图\\战车限制.tga"},
	{text = "^0184ffHổ Vương^3a1f01 \rXe chiến một người\rXe chiến cận chiến mạnh mẽ, giáp dày, là lực lượng nòng cốt đáng tin cậy.\r\rHỏa lực: ^ffffffBình thường^3a1f01\rTầm bắn: ^ff0000Khá gần^3a1f01\rGiáp: ^00b800Rất cao^3a1f01\rCơ động: ^ffffffBình thường^3a1f01\r\rKỹ năng:\rLong Viêm Đạn, Yến Phản Xung, Hãn Địa Kích, Song Tập Xạ Kích", image = "CB\\图片\\战车指 dẫn图\\虎王.tga"},
	{text = "^0184ffHậu Nghệ^3a1f01 \rXe chiến một người\rCó khả năng tấn công tầm xa xuất sắc, nhược điểm là tốc độ chậm, và dễ bị tổn thương.\r\rHỏa lực: ^00b800Xuất sắc^3a1f01\rTầm bắn: ^00b800Rất xa^3a1f01\rGiáp: ^ff0000Khá yếu^3a1f01\rCơ động: ^ff0000Khá kém^3a1f01\r\rKỹ năng:\rTốc Xạ, Tật Phong Xạ, Liên Hoàn Xạ, Thiên Nguyên Nhất Kích", image = "CB\\图片\\战车指引图\\后羿.tga"},
	{text = "^a800ffDạ Ưng^3a1f01 \rXe chiến một người\rCó khả năng cơ động xuất sắc mà các xe chiến khác không thể sánh bằng, giỏi tấn công bất ngờ.\r\rHỏa lực: ^ffffffBình thường^3a1f01\rTầm bắn: ^ff0000Khá gần^3a1f01\rGiáp: ^ffffffBình thường^3a1f01\rCơ động: ^00b800Rất mạnh^3a1f01\r\rKỹ năng:\rPhi Trảm, Song Dực Tập, Dực Dương Trảm, Bát Phương Phong Vũ", image = "CB\\图片\\战车指引图\\夜鹰.tga"},
	{text = "^a800ffThần Công^3a1f01 \rXe chiến một người\rXe chiến duy nhất có khả năng hồi phục và hỗ trợ, là cưng của chiến trường.\r\rHỏa lực: ^ff0000Rất kém^3a1f01\rTầm bắn: ^ffffffBình thường^3a1f01\rGiáp: ^ff0000Khá yếu^3a1f01\rCơ động: ^ffffffBình thường^3a1f01\r\rKỹ năng:\rCổ Vũ, Phấn Chiến Cổ, Nhiệt Huyết Minh, Phấn Khởi Xung Kích", image = "CB\\图片\\战车指引图\\神工.tga"},
	{text = "^e66700Thiên Binh^3a1f01 \rXe chiến nhiều người\rVũ khí tối thượng có thể chở 3 người cùng lúc, mạnh mẽ về mọi mặt.\r\rHỏa lực: ^00b800Xuất sắc^3a1f01\rTầm bắn: ^00b800Khá xa^3a1f01\rGiáp: ^00b800Rất cao^3a1f01\rCơ động: ^ffffffBình thường^3a1f01\r\rKỹ năng người lái: Xung Phong\rKỹ năng pháo thủ: Tiễn Tập, Liên Hoàn Tập, Tật Phong Tập, Duệ Phong Điểm Xạ", image = "CB\\图片\\战车指引图\\天兵.tga"},
}

--英雄志许褚传
BattleGuide[950] = {
	{text = "^dd006fChọn độ khó^3a1f01\rChiến trường Hào Mông Quan áp dụng phương thức chiếm lĩnh điểm tài nguyên mới, khi số người sống sót của một bên trong khu vực điểm tài nguyên nhiều hơn bên kia, thanh chiếm lĩnh bắt đầu di chuyển, sau khi di chuyển đến điểm cuối thì bên đó chiếm lĩnh thành công, khi số người hai bên bằng nhau thì thanh chiếm lĩnh tạm dừng di chuyển, cho đến khi một bên giành lại ưu thế về số người.", image = "CB\\图片\\战场指引图\\许褚传1.tga"},
	{text = "^dd006fThử thách độ khó ẩn 5 sao^3a1f01\r    1、Sau khi thành công thử thách bất kỳ 1 trận trong 4 sao độ khó trước của Hứa Chử Truyện, đều có cơ hội nhận được “Vé thần bí Hứa Chử Truyện”, vật phẩm này là vật phẩm then chốt để mở độ khó 5 sao.\r    2、Sau khi chọn độ khó 5 sao, sẽ xuất hiện người nhận nhiệm vụ thử thách—Mã Siêu, đối thoại với hắn, dựa vào “Vé thần bí Hứa Chử Truyện” có thể mở ải ẩn.\r    3、Khi chọn độ khó 5 sao, đội phải có ít nhất một người chơi sở hữu “Vé thần bí Hứa Chử Truyện” mới có thể hoàn thành nhiệm vụ thử thách lần này.", image = "CB\\图片\\战场指引图\\许褚传2.tga"},
}

--Chí Anh Hùng Cam Ninh Truyện
BattleGuide[952] = {
	{text = "^dd006f1、Ải độ khó thấp và ải độ khó ẩn^3a1f01\rThử thách lần này sau khi kết thúc 2 phút chuẩn bị, sẽ mở ngẫu nhiên một trong 4 ải độ khó thấp để đội người chơi thử thách, nếu nhận nhiệm vụ ải ẩn, sẽ mở thử thách ải ẩn.\r^dd006f2、Chỉ dẫn hoạt hình chuyển cảnh^3a1f01\rTất cả các ải của “Cam Ninh Truyện” lần này đều diễn ra trên ba thân thuyền, sau khi kết thúc 2 phút chờ đợi, con đường đội người chơi cần đi sẽ được chỉ dẫn bằng các hoạt hình mở màn khác nhau.\r", image ="CB\\图片\\战场指引图\\甘宁传1.tga"},
	{text = "^dd006f3、Thử thách ải độ khó ẩn^3a1f01\rSau khi thông quan bất kỳ ải nào trong 4 ải độ khó thấp ngẫu nhiên trước của “Cam Ninh Truyện”, đều có cơ hội nhận được “Vé thần bí Cam Ninh Truyện”, mang vật phẩm này, có thể thông qua Tả Từ nhận nhiệm vụ thử thách độ khó ẩn.\rSau khi nhận nhiệm vụ, sẽ xuất hiện người nhận nhiệm vụ thử thách—Cam Ninh, đối thoại với hắn, dựa vào “Vé thần bí Cam Ninh Truyện” có thể mở ải ẩn.\rĐội phải có ít nhất một người chơi sở hữu “Vé thần bí Cam Ninh Truyện” mới có thể tiến hành nhiệm vụ thử thách lần này.", image = "CB\\图片\\战场指引图\\甘宁传2.tga"},
}

--Chí Anh Hùng Hoàng Trung Truyện
BattleGuide[1007] = {
	{text = "^dd006f1、Cách chơi khinh công^3a1f01\rHoàng Trung Truyện lần này sẽ giới thiệu khái niệm phụ bản khinh công, cách thao tác khinh công là kích hoạt tổ hợp bàn phím, nhấp đúp “w”, vào trạng thái khinh công, sau khi sử dụng phím cách, nhân vật sẽ thực hiện ba đoạn nhảy. Sau khi bay một đoạn khoảng cách, người chơi đáp xuống đất, lúc này có thể sử dụng khinh công lại.\rPhụ bản lần này kết hợp chặt chẽ cách chơi BOSS với đặc điểm khinh công, cho phép người chơi thông qua khinh công, né tránh tấn công của BOSS ngay lập tức, ngăn cản BOSS chạy trốn. Trải nghiệm cách chơi phụ bản mới lạ.\r", image ="CB\\图片\\战场指引图\\黄忠传1.tga"},
	{text = "^dd006f2、Ải độ khó thấp và ải độ khó ẩn^3a1f01\rThử thách lần này sau khi kết thúc 2 phút chuẩn bị, sẽ mở ngẫu nhiên một trong 4 ải độ khó thấp để đội người chơi thử thách, nếu nhận nhiệm vụ ải ẩn, sẽ mở thử thách ải ẩn.", image = "CB\\图片\\战场指引图\\黄忠传2.tga"},
	{text = "^dd006f3、Thử thách ải độ khó ẩn^3a1f01\rSau khi thông quan bất kỳ ải nào trong 4 ải độ khó thấp ngẫu nhiên trước của “Hoàng Trung Truyện”, đều có cơ hội nhận được “Vé thần bí Hoàng Trung Truyện”.\rSau khi chọn độ khó 5 sao xong, sẽ xuất hiện người nhận nhiệm vụ thử thách—Hoàng Trung, đối thoại với hắn, dựa vào “Vé thần bí Hoàng Trung Truyện” có thể mở ải ẩn.\rĐội phải có ít nhất một người chơi sở hữu “Vé thần bí Hoàng Trung Truyện” mới có thể tiến hành thử thách độ khó 5 sao.", image = "CB\\图片\\战场指引图\\黄忠传3.tga"},
}

--Chiến trường liên server Hào Mông Quan
BattleGuide[1009] = {
	{text = "^dd006f1、Phương thức chiếm lĩnh^3a1f01\rChiến trường Hào Mông Quan áp dụng phương thức chiếm lĩnh điểm tài nguyên mới, khi số người sống sót của một bên trong khu vực điểm tài nguyên nhiều hơn bên kia, thanh chiếm lĩnh bắt đầu di chuyển, di chuyển đến điểm cuối thì bên đó chiếm lĩnh thành công, khi số người hai bên bằng nhau thì thanh chiếm lĩnh tạm dừng di chuyển, cho đến khi một bên giành lại ưu thế về số người.\r", image ="CB\\图片\\战场指引图\\葭萌关1.tga"},
	{text = "^dd006f2、Chiếm lĩnh điểm tài nguyên^3a1f01\rĐiểm tài nguyên trung tâm sẽ cung cấp 1.5 lần điểm tích lũy so với các điểm tài nguyên xung quanh, đồng thời còn làm mới Xe Ngựa Vật Tư cung cấp điểm tích lũy thêm, điểm tài nguyên Kho Quân Khí và Thất Tinh Đàn ngoài việc cung cấp điểm tích lũy còn ảnh hưởng đến Cầu Phao và thời tiết, ngoài ra điểm buff làm mới ngẫu nhiên định kỳ trong chiến trường cũng ảnh hưởng nhất định đến thắng thua.", image = "CB\\图片\\战场指引图\\葭萌关2.tga"},
	{text = "^dd006f3、Tiêu diệt kẻ địch^3a1f01\rTiêu diệt người chơi đối phương hoặc hỗ trợ đều nhận được phần thưởng Điểm Huân Hào Mông Quan, ngoài ra lần đầu tiên giết địch, giết mười kẻ địch và chiến thắng chiến trường đều sẽ nhận được lượng lớn Điểm Huân, sau khi chiến trường kết thúc có thể dựa vào Điểm Huân để đổi danh hiệu chiến trường và các phần thưởng đặc biệt khác ở chỗ NPC Đại Tướng Quân.", image = "CB\\图片\\战场指引图\\葭萌关3.tga"},
}


--Chiến trường liên server Hào Mông Quan giới hạn thời gian
BattleGuide[1068] = {
	{text = "^dd006f1、Phương thức chiếm lĩnh^3a1f01\rChiến trường Hào Mông Quan áp dụng phương thức chiếm lĩnh điểm tài nguyên mới, khi số người sống sót của một bên trong khu vực điểm tài nguyên nhiều hơn bên kia, thanh chiếm lĩnh bắt đầu di chuyển, di chuyển đến điểm cuối thì bên đó chiếm lĩnh thành công, khi số người hai bên bằng nhau thì thanh chiếm lĩnh tạm dừng di chuyển, cho đến khi một bên giành lại ưu thế về số người.\r", image ="CB\\图片\\战场指引图\\葭萌关1.tga"},
	{text = "^dd006f2、Chiếm lĩnh điểm tài nguyên^3a1f01\rĐiểm tài nguyên trung tâm sẽ cung cấp 1.5 lần điểm tích lũy so với các điểm tài nguyên xung quanh, đồng thời còn làm mới Xe Ngựa Vật Tư cung cấp điểm tích lũy thêm, điểm tài nguyên Kho Quân Khí và Thất Tinh Đàn ngoài việc cung cấp điểm tích lũy còn ảnh hưởng đến Cầu Phao và thời tiết, ngoài ra điểm buff làm mới ngẫu nhiên định kỳ trong chiến trường cũng ảnh hưởng nhất định đến thắng thua.", image = "CB\\图片\\战场指引图\\葭萌关2.tga"},
	{text = "^dd006f3、Tiêu diệt kẻ địch^3a1f01\rTiêu diệt người chơi đối phương hoặc hỗ trợ đều nhận được phần thưởng Điểm Huân Hào Mông Quan, ngoài ra lần đầu tiên giết địch, giết mười kẻ địch và chiến thắng chiến trường đều sẽ nhận được lượng lớn Điểm Huân, sau khi chiến trường kết thúc có thể dựa vào Điểm Huân để đổi danh hiệu chiến trường và các phần thưởng đặc biệt khác ở chỗ NPC Đại Tướng Quân.", image = "CB\\图片\\战场指引图\\葭萌关3.tga"},
}

--Chiến liên server
BattleGuide[1036] = {
	{text = "^3a1f01\rPhương thức thắng lợi mà chiến trường liên server áp dụng là tiêu diệt boss đối phương, nhưng thuộc tính ban đầu của chủ tướng hai bên khá cao, khó bị tiêu diệt.\r\rThông qua việc đốt các đống lửa phong hỏa trên đài cao ở ba điểm chiến trường trung tâm, có thể lần lượt giảm ba loại thuộc tính của chủ tướng đối phương, chủ tướng đối phương với sĩ khí thấp sẽ trở nên yếu ớt và dễ bị tiêu diệt hơn.\r", image ="CB\\图片\\战场指引图\\跨服战场1.tga"},
	{text = "^3a1f01\rBa đài cao ở ba điểm chiến trường trung tâm không thể leo lên trực tiếp, cần hai bên tranh giành cờ trong điểm chiến trường để đạt được sự chiếm lĩnh khu vực.\r\rSau khi nhổ cờ chiếm lĩnh khu vực thành công, căn cứ của bên đó sẽ làm mới Vân Thang (thang mây) chạy về phía đài cao tương ứng, trên đường đi chú ý người chơi đối phương phá hủy Vân Thang. Vân Thang đến đích sẽ trở nên vô địch, nhanh chóng leo lên Vân Thang mới có thể lên đài đốt lửa phong hỏa.", image = "CB\\图片\\战场指引图\\跨服战场2.tga"},
	{text = "^3a1f01\rThành trì trong chiến loạn tan hoang, hào bảo và tường thành đã thay đổi hoàn toàn, dẫn đến điểm chiến trường trung tâm và đại doanh đông tây không thể thông suốt, chỉ có thể qua lại bằng Thuyền Chiến ở bờ sông, Thuyền Chiến mỗi lần chỉ có thể chở 10 người, ghi nhớ vị trí neo đậu của Thuyền Chiến và tận dụng tốt, sẽ đạt được hiệu quả binh lính bất ngờ.", image = "CB\\图片\\战场指引图\\跨服战场3.tga"},
}

--Chiến liên server
BattleGuide[1047] = {
	{text = "^3a1f01\rPhương thức thắng lợi mà chiến trường liên server áp dụng là tiêu diệt boss đối phương, nhưng thuộc tính ban đầu của chủ tướng hai bên khá cao, khó bị tiêu diệt.\r\rThông qua việc đốt các đống lửa phong hỏa trên đài cao ở ba điểm chiến trường trung tâm, có thể lần lượt giảm ba loại thuộc tính của chủ tướng đối phương, chủ tướng đối phương với sĩ khí thấp sẽ trở nên yếu ớt và dễ bị tiêu diệt hơn.\r", image ="CB\\图片\\战场指引图\\跨服战场1.tga"},
	{text = "^3a1f01\rBa đài cao ở ba điểm chiến trường trung tâm không thể leo lên trực tiếp, cần hai bên tranh giành cờ trong điểm chiến trường để đạt được sự chiếm lĩnh khu vực.\r\rSau khi nhổ cờ chiếm lĩnh khu vực thành công, căn cứ của bên đó sẽ làm mới Vân Thang chạy về phía đài cao tương ứng, trên đường đi chú ý người chơi đối phương phá hủy Vân Thang. Vân Thang đến đích sẽ trở nên vô địch, nhanh chóng leo lên Vân Thang mới có thể lên đài đốt lửa phong hỏa.", image = "CB\\图片\\战场指引图\\跨服战场2.tga"},
	{text = "^3a1f01\rThành trì trong chiến loạn tan hoang, hào bảo và tường thành đã thay đổi hoàn toàn, dẫn đến điểm chiến trường trung tâm và đại doanh đông tây không thể thông suốt, chỉ có thể qua lại bằng Thuyền Chiến ở bờ sông, Thuyền Chiến mỗi lần chỉ có thể chở 10 người, ghi nhớ vị trí neo đậu của Thuyền Chiến và tận dụng tốt, sẽ đạt được hiệu quả binh lính bất ngờ.", image = "CB\\图片\\战场指引图\\跨服战场3.tga"},
}

--Chiến liên server
BattleGuide[1053] = {
	{text = "^3a1f01\rPhương thức thắng lợi mà chiến trường liên server áp dụng là tiêu diệt boss đối phương, nhưng thuộc tính ban đầu của chủ tướng hai bên khá cao, khó bị tiêu diệt.\r\rThông qua việc đốt các đống lửa phong hỏa trên đài cao ở ba điểm chiến trường trung tâm, có thể lần lượt giảm ba loại thuộc tính của chủ tướng đối phương, chủ tướng đối phương với sĩ khí thấp sẽ trở nên yếu ớt và dễ bị tiêu diệt hơn.\r", image ="CB\\图片\\战场指引图\\跨服战场1.tga"},
	{text = "^3a1f01\rBa đài cao ở ba điểm chiến trường trung tâm không thể leo lên trực tiếp, cần hai bên tranh giành cờ trong điểm chiến trường để đạt được sự chiếm lĩnh khu vực.\r\rSau khi nhổ cờ chiếm lĩnh khu vực thành công, căn cứ của bên đó sẽ làm mới Vân Thang chạy về phía đài cao tương ứng, trên đường đi chú ý người chơi đối phương phá hủy Vân Thang. Vân Thang đến đích sẽ trở nên vô địch, nhanh chóng leo lên Vân Thang mới có thể lên đài đốt lửa phong hỏa.", image = "CB\\图片\\战场指引图\\跨服战场2.tga"},
	{text = "^3a1f01\rThành trì trong chiến loạn tan hoang, hào bảo và tường thành đã thay đổi hoàn toàn, dẫn đến điểm chiến trường trung tâm và đại doanh đông tây không thể thông suốt, chỉ có thể qua lại bằng Thuyền Chiến ở bờ sông, Thuyền Chiến mỗi lần chỉ có thể chở 10 người, ghi nhớ vị trí neo đậu của Thuyền Chiến và tận dụng tốt, sẽ đạt được hiệu quả binh lính bất ngờ.", image = "CB\\图片\\战场指引图\\跨服战场3.tga"},
}


--Chiến liên server
BattleGuide[1054] = {
	{text = "^3a1f01\rPhương thức thắng lợi mà chiến trường liên server áp dụng là tiêu diệt boss đối phương, nhưng thuộc tính ban đầu của chủ tướng hai bên khá cao, khó bị tiêu diệt.\r\rThông qua việc đốt các đống lửa phong hỏa trên đài cao ở ba điểm chiến trường trung tâm, có thể lần lượt giảm ba loại thuộc tính của chủ tướng đối phương, chủ tướng đối phương với sĩ khí thấp sẽ trở nên yếu ớt và dễ bị tiêu diệt hơn.\r", image ="CB\\图片\\战场指引图\\跨服战场1.tga"},
	{text = "^3a1f01\rBa đài cao ở ba điểm chiến trường trung tâm không thể leo lên trực tiếp, cần hai bên tranh giành cờ trong điểm chiến trường để đạt được sự chiếm lĩnh khu vực.\r\rSau khi nhổ cờ chiếm lĩnh khu vực thành công, căn cứ của bên đó sẽ làm mới Vân Thang chạy về phía đài cao tương ứng, trên đường đi chú ý người chơi đối phương phá hủy Vân Thang. Vân Thang đến đích sẽ trở nên vô địch, nhanh chóng leo lên Vân Thang mới có thể lên đài đốt lửa phong hỏa.", image = "CB\\图片\\战场指引图\\跨服战场2.tga"},
	{text = "^3a1f01\rThành trì trong chiến loạn tan hoang, hào bảo và tường thành đã thay đổi hoàn toàn, dẫn đến điểm chiến trường trung tâm và đại doanh đông tây không thể thông suốt, chỉ có thể qua lại bằng Thuyền Chiến ở bờ sông, Thuyền Chiến mỗi lần chỉ có thể chở 10 người, ghi nhớ vị trí neo đậu của Thuyền Chiến và tận dụng tốt, sẽ đạt được hiệu quả binh lính bất ngờ.", image = "CB\\图片\\战场指引图\\跨服战场3.tga"},
}

--Chiến liên server
BattleGuide[1055] = {
	{text = "^3a1f01\rPhương thức thắng lợi mà chiến trường liên server áp dụng là tiêu diệt boss đối phương, nhưng thuộc tính ban đầu của chủ tướng hai bên khá cao, khó bị tiêu diệt.\r\rThông qua việc đốt các đống lửa phong hỏa trên đài cao ở ba điểm chiến trường trung tâm, có thể lần lượt giảm ba loại thuộc tính của chủ tướng đối phương, chủ tướng đối phương với sĩ khí thấp sẽ trở nên yếu ớt và dễ bị tiêu diệt hơn.\r", image ="CB\\图片\\战场指引图\\跨服战场1.tga"},
	{text = "^3a1f01\rBa đài cao ở ba điểm chiến trường trung tâm không thể leo lên trực tiếp, cần hai bên tranh giành cờ trong điểm chiến trường để đạt được sự chiếm lĩnh khu vực.\r\rSau khi nhổ cờ chiếm lĩnh khu vực thành công, căn cứ của bên đó sẽ làm mới Vân Thang chạy về phía đài cao tương ứng, trên đường đi chú ý người chơi đối phương phá hủy Vân Thang. Vân Thang đến đích sẽ trở nên vô địch, nhanh chóng leo lên Vân Thang mới có thể lên đài đốt lửa phong hỏa.", image = "CB\\图片\\战场指引图\\跨服战场2.tga"},
	{text = "^3a1f01\rThành trì trong chiến loạn tan hoang, hào bảo và tường thành đã thay đổi hoàn toàn, dẫn đến điểm chiến trường trung tâm và đại doanh đông tây không thể thông suốt, chỉ có thể qua lại bằng Thuyền Chiến ở bờ sông, Thuyền Chiến mỗi lần chỉ có thể chở 10 người, ghi nhớ vị trí neo đậu của Thuyền Chiến và tận dụng tốt, sẽ đạt được hiệu quả binh lính bất ngờ.", image = "CB\\图片\\战场指引图\\跨服战场3.tga"},
}


--Chiến liên server
BattleGuide[1056] = {
	{text = "^3a1f01\rPhương thức thắng lợi mà chiến trường liên server áp dụng là tiêu diệt boss đối phương, nhưng thuộc tính ban đầu của chủ tướng hai bên khá cao, khó bị tiêu diệt.\r\rThông qua việc đốt các đống lửa phong hỏa trên đài cao ở ba điểm chiến trường trung tâm, có thể lần lượt giảm ba loại thuộc tính của chủ tướng đối phương, chủ tướng đối phương với sĩ khí thấp sẽ trở nên yếu ớt và dễ bị tiêu diệt hơn.\r", image ="CB\\图片\\战场指引图\\跨服战场1.tga"},
	{text = "^3a1f01\rBa đài cao ở ba điểm chiến trường trung tâm không thể leo lên trực tiếp, cần hai bên tranh giành cờ trong điểm chiến trường để đạt được sự chiếm lĩnh khu vực.\r\rSau khi nhổ cờ chiếm lĩnh khu vực thành công, căn cứ của bên đó sẽ làm mới Vân Thang chạy về phía đài cao tương ứng, trên đường đi chú ý người chơi đối phương phá hủy Vân Thang. Vân Thang đến đích sẽ trở nên vô địch, nhanh chóng leo lên Vân Thang mới có thể lên đài đốt lửa phong hỏa.", image = "CB\\图片\\战场指引图\\跨服战场2.tga"},
	{text = "^3a1f01\rThành trì trong chiến loạn tan hoang, hào bảo và tường thành đã thay đổi hoàn toàn, dẫn đến điểm chiến trường trung tâm và đại doanh đông tây không thể thông suốt, chỉ có thể qua lại bằng Thuyền Chiến ở bờ sông, Thuyền Chiến mỗi lần chỉ có thể chở 10 người, ghi nhớ vị trí neo đậu của Thuyền Chiến và tận dụng tốt, sẽ đạt được hiệu quả binh lính bất ngờ.", image = "CB\\图片\\战场指引图\\跨服战场3.tga"},
}


--------------------------------
--Trợ giúp Hệ thống quan chức
--------------------------------
PositionHelp = "^ff6fb3Giải thích chi tiết Hệ thống quan chức:^ffffff\r\r^ff6fb3Cấp 10^ffffff：\rỞ #2484# Tân Binh nhập ngũ; Tân Binh nhập ngũ cần hoàn thành nhiệm vụ “Nhận Quan Giai - Tân Binh” trước, NPC phát nhiệm vụ là #3270#.\r\r^ff6fb3Cấp 20^ffffff：\rGiá trị công huân đạt 50, ở #2485# tấn thăng Quân Giai - Binh Tốt.\r\r^ff6fb3Cấp 30^ffffff：\rGiá trị công huân đạt 100, ở #2219# tấn thăng Quân Giai - Binh Trưởng.\r\r^ff6fb3Cấp 40^ffffff：\rỞ #2488# nhận nhiệm vụ chỉ dẫn, chọn Văn Quan Chi Lộ (cần 200 Văn Huân) hoặc Võ Quan Chi Lộ (cần 200 Võ Huân).\rVăn Quan tìm #2490#, Võ Quan tìm #2489#, có thể nhận được “Quan Chức Cửu Phẩm”.\rSau đó, mỗi ngày có thể đến hai người này nhận bổng lộc quan chức. Và tấn thăng quan chức sau khi thỏa mãn điều kiện cao hơn.\rSau khi tấn thăng quan chức sẽ nhận được Danh Hiệu Quan Chức tương ứng, tăng thuộc tính vĩnh viễn. Và sau khi có Danh Hiệu Quan Chức, mỗi ngày còn có thể tham gia Nhiệm Vụ Hàng Ngày Quan Chức, nhận được nhiều Văn Huân hoặc Võ Huân hơn. Sau khi thăng lên quan chức cao, có thể mua Bảo Vật Quan Ấn có thuộc tính mạnh mẽ.\r\r^fffd44Cấp 40——tìm #7339# nhận\rCấp 44——tìm #7340# nhận\rCấp 46——tìm #7118# nhận\rCấp 50——tìm #7126# nhận\rCấp 53——tìm #6820# nhận\rCấp 57——tìm #6837# nhận^ffffff\r\rĐiều kiện thăng quan tiếp theo:\r\r^ff6fb3Cấp 50^ffffff：\rGiá trị huân đạt 600, có thể thăng Bát Phẩm.\r\r^ff6fb3Cấp 60^ffffff：\rGiá trị huân đạt 2000, có thể thăng Thất Phẩm.\r\rQuan chức từ Lục Phẩm trở lên có nhiều loại, người chơi có thể tự do lựa chọn.\r\r^ff6fb3Sau cấp 60^ffffff nâng Văn Võ Huân, cần tiến hành ở các thành chủ của phe Ngụy, Thục, Ngô. Nhận Nhiệm Vụ Hàng Ngày Quan Chức, nhiệm vụ Hoàng Bảng đều được. Nhưng cần lưu ý, cấp 61 mới có thể vào các thành chủ phe phái."

--------------------------------
--Giải thích điểm hoạt động
--------------------------------
HelpEvent2 = "1, Trong hoạt động thành viên có thể cùng nhau nỗ lực để quân đoàn nhận được điểm hoạt động. “Vận Cốc” một lần tích lũy 1 điểm, “Trừ Tặc” một lần tích lũy 2 điểm, tiêu diệt một “Kẻ quấy rối quân địch” tích lũy 5 điểm.\r\r2, Khi điểm hoạt động đạt ^00ff40500^ffffff, tên trộm rau xuất hiện, xe vận cốc sẽ rời đi, thành viên quân đoàn có thể hợp lực tiêu diệt tên trộm rau.\r\r3, Khi điểm hoạt động đạt ^00ff40800^ffffff, xe vận cốc sẽ quay lại. Thành viên quân đoàn có thể phân công hợp tác, tự nguyện chọn “Vận Cốc” hoặc “Trừ Tặc”.\r\r4, Khi điểm hoạt động đạt ^00ff401000^ffffff, “Kẻ quấy rối quân địch” xuất hiện, sẽ từng bước áp sát Quan Thu Hoạch Rau Quân Đoàn, chúng sẽ giết Quan Thu Hoạch Rau Quân Đoàn. Cần dùng “Hỏa Lôi” để đối phó “Kẻ quấy rối quân địch”.\r\rHỏa Lôi\rRàng buộc sau khi nhặt\rYêu cầu cấp 1\rVật phẩm giúp mọi người đối phó kẻ quấy rối quân địch.\rNgười chơi cấp 1-80, và phụ nữ ở mọi cấp độ mỗi ngày có thể nhận 1 cái ở chỗ ^fff600Quan Thu Hoạch Rau Quân Đoàn^ffffff.^fff600\rMỗi lần ném vật phẩm này vào “Kẻ quấy rối quân địch” có thể khiến nó giảm 50% máu!^ffffff\r\rLưu ý: Thành viên quân đoàn cấp 1-80, và thành viên nữ ở mọi cấp độ, mỗi ngày có thể nhận 1 “Hỏa Lôi” ở chỗ Quan Thu Hoạch Rau Quân Đoàn.\r\r5, Khi điểm hoạt động đạt ^00ff401500^ffffff, Tuyết Mai (-49, 76 căn cứ phe ta) xuất hiện, Đô Đốc, Phó Tướng, Quản Lý Hoạt Động có thể chọn võ tướng muốn thách đấu.\rVõ tướng tổng cộng chia làm 5 cấp, độ khó khác nhau, cần căn cứ vào thực lực quân đoàn của mình để lựa chọn cẩn thận. Mỗi ngày chỉ có thể thách đấu một lần.\r\r6, Khi điểm hoạt động đạt ^00ff401000^ffffff, ^00ff402000^ffffff, ^00ff403000^ffffff, để cảm ơn sự nỗ lực của mọi người, lần lượt sẽ có Sứ Giả Phát Thưởng mang đến phần thưởng cho tất cả thành viên quân đoàn, thành viên trong căn cứ quân đoàn sẽ tự động nhận được phần thưởng."


--------------------------------
--五虎将资料片公告，寻径用文字
--------------------------------
Board1 = "#72209#"
Board2 = "Ở #27047# nhận Lệnh Thám Hiểm Bắc Mang sau đó có thể đi thám hiểm."
Board3 = "Ở #72211# và những người khác có thể đổi phần thưởng phong phú bằng điểm tích lũy nhận được khi tham gia cuộc thi!"


--------------------------------
--角色交易说明文字
--------------------------------
TradeCharGuide =
{
	"^ff6fb31. 角色出售条件^ffffff\r出售角色需满足以下条件：\r^fffd44◆等级不低于英雄1级\r◆有结义长职位的必须先传给别人\r◆有军团长职位的必须先传给别人\r◆没有师徒关系\r◆不在竞技队中\r◆账号或角色未处于封禁或被禁言状态\r◆脱离跨服竞技军团\r^ffffff\r\r^ff6fb32. 登记角色^ffffff\r首先，卖方需先在我这里选择“登记出售该角色”，我们会检测该角色是否满足出售条件，如果不满足条件则给与相应提示。售出条件均满足则角色进入登记期，登记期长为7天。\r在登记期间该角色可以正常游戏，玩家的角色选择列表上会显示该角色处于“已登记”状态。您如果想取消登记，可随时回来找我，选择“取消登记该角色”来终止出售登记。\r\r^ff6fb33. 出售角色^ffffff\r登记期满7天之后，便可在我这里正式出售您的角色了。如果超过3天的缓冲期仍未选择“出售角色”，则该角色会自动取消登记状态。\r当选择“出售角色”且验证满足条件后，该名角色便正式进入了“公示期”。此时会自动返回角色选择画面，看到该角色处于“待售中”状态。\r\r^ff6fb34. 公示期^ffffff\r处于“公示期”的角色将被冻结，无法登录。这时可以在《赤壁》的寻宝天行官方寄售页面上查看处于公示期的角色。公示期持续3天。\r进入公示期后，将给以下关系发送消息，告知您的角色开始出售：\r^fffd44◆结义、军团在线的人收到在线消息\r◆对应夫妻收到邮件通知\r◆好友收到邮件通知^ffffff\r\r^ff6fb35. 出售期^ffffff\r经过3天公示期后，如果没有收到申诉举报等，则将该角色进入正式可交易的“出售期”，进入出售期后便可以在寻宝天行上操作出售该角色了。但若该角色始终没有被购买走，则出售期结束后，网站自动将角色取消出售，稍后便可在游戏内登录使用了。\r^fffd44总寄售期=缓冲期+公示期+出售期^ffffff。缓冲期是从登记期结束后开始计算的3天时间，公示期是选择“出售角色”后开始计算的3天，正式出售期公示期结束后开始计算的最长7天，所以总寄售期最长为^fffd443+3+7=13^ffffff天。\r\r^ff6fb36. 取消寄售^ffffff\r处于寄售期的角色，在角色选择画面会始终以“待售中”状态显示。在此期间，如果希望取消寄售该角色，则需要先登录《赤壁》寻宝天行主页手动下架该角色，然后在角色选择画面通过点击角色旁边的“取消寄售”按钮来取消寄售。",
"要购买某角色，买方需登录《赤壁》寻宝天行页面，浏览“角色”目录下的待售角色，然后指定给买方账号下的“被覆盖角色”，来完成角色购买。\r卖方角色的大部分属性会转移给买方“被覆盖角色”，而未被覆盖的属性保持不变。卖方角色在交易结束后，还将进行一些处理。\r\r^ff6fb31. 准备买方角色^ffffff\r首先买方需在游戏中有一名角色，该角色被称为“被覆盖角色”，他必须符合以下条件：\r^fffd44◆等级不高于15级\r◆包裹和仓库中总金钱数不超过5玉\r◆包裹中总物品数少于10件\r◆仓库中不得有任何物品\r◆性别与购买的角色需一致\r◆种族不限（会被覆盖）^ffffff\r买方通过寻宝天行官方网页，浏览商品“角色”，选中想购买的角色后，指定给自己账号下的一名可被覆盖的角色，此时判断该角色是否满足以上条件，如果满足，则购买成功。\r\r^ff6fb32. 属性转移^ffffff\r卖方角色的大部分属性将转移至买方“被覆盖角色”身上，但也会保留一小部分属性。买方角色同样，大部分属性将被覆盖，但仍保留部分属性。\r卖方角色保留的属性包括：\r^fffd44◆角色名\r◆性别、种族\r◆好友、仇人\r◆结义、军团、夫妻\r◆消费积分、军团结义贡献、元宝、军团参数^ffffff\r除了以上所列的属性，其他所有属性均从卖方角色转移至买方被覆盖角色身上。\r\r^ff6fb33. 角色交易后的处理^ffffff\r角色交易成功后，卖方角色变为15级低级号，买方角色被覆盖成出售的角色。\r\r^ff6fb34. 手续费的计算^ffffff\r^fffd44手续费 = 售价×10%+50^ffffff\r举例：售价100元的角色，手续费 = 100×10%+50 = 60\r注意：这60元手续费由卖方支付，买方只支付100元的角色售价，卖方扣除手续费后，实际到手为40元。\r\r^ff6fb35. 购买失败处理^ffffff\r如果买方角色不符合要求，则视为购买失败，支付款项后会通知该情况。此时请等待系统退款，交易结束。",
	"^ff6fb3卖方（出售方）：^ffffff\r出售角色的玩家，实际上出售的是该账号下的指定角色。\r\r^ff6fb3买方（购买方）：^ffffff\r购买角色的玩家，买方玩家需要指定一名用于交易的低级号角色，即“被覆盖角色”。\r\r^ff6fb3角色出售登记：^ffffff\r玩家在游戏功能NPC处提交“角色出售登记”的行为。\r\r^ff6fb3登记期：^ffffff\r用来给卖方反悔以及盗号安全方面考虑的时期，该时期内玩家并未实际开始贩卖角色。此时段中玩家可以登录和正常游戏。玩家上线后系统会通知该角色距离登记期结束的倒计时提醒。登记期最少7天，最多10天（加上缓冲期），玩家进行角色出售登记后第7天开始可以进行“角色出售”出售该角色。如果玩家进行角色出售登记后第10天仍没有出售该角色，则该角色自动解除登记状态。\r\r^ff6fb3角色出售：^ffffff\r玩家在游戏功能NPC处提交“角色出售”的行为。玩家角色出售时将做出售合法性检查，检查不合法则不允许出售，退回到未登记状态。检查合法则进入“公示期”。\r\r^ff6fb3冻结期：^ffffff\r指出售角色处于公示期和出售期这一段时间，此时段中，该角色不能登陆游戏。\r\r^ff6fb3公示期：^ffffff\r在网站上显示角色资料给大众，供其他玩家浏览和举报用。角色还在展示期，还没有开始出售。\r\r^ff6fb3出售期：^ffffff\r角色正式出售，处于随时可以被购买的时期，可以进行实际的现金买卖。\r\r^ff6fb3出售角色：^ffffff\r将角色从游戏内转移至交易中心，卖家可在网站上进行特定操作。\r\r^ff6fb3上架：^ffffff\r将角色设定好价格进行出售的过程。\r\r^ff6fb3下架：^ffffff\r将角色取消上架状态，停止出售，但此时角色仍在交易中心存放。\r\r^ff6fb3取消寄售：^ffffff\r将存放在交易中心中未上架的角色取回游戏的操作。\r\r^ff6fb3角色出售成功：^ffffff\r角色出售成功时将进行数据的转移。"
}


--游戏已开放信息--
--等级上限
Max_Level = 80
--职业等级上限
Max_ProfLevel = 72
--职业阶段上限
Max_iLevel = 9
--可以选副职业的最低主职业等级
SelSubLv = 52
--开始获得专精点数的最低副职业等级
DowerSubLv = 37
--已开放装备为几阶（0为初阶，1为一阶）
Max_EquipLevel = 8
--已开放官品的level（参考position_desc.lua，军队为0，九品为1）

--等级封印信息
SealInfo = {

{ Level = 81, Stage = "Kiêu Hùng Loạn Thế", Detail = "Trong loạn thế, ai có thể độc bá một phương? Tranh giành kiêu hùng, kéo màn mở ra!", Next = 95},
{ Level = 95, Stage = "Quần Hùng Nổi Dậy", Detail = "Đây là thời đại quần hùng nổi dậy, các anh hùng hào kiệt bắt đầu tỏa sáng, cạnh tranh gia tăng!", Next = 110},
{ Level = 110, Stage = "Chư Hầu Tranh Đấu", Detail = "Đấu đá nội bộ, lừa đảo dối trá, ai có thể cười đến cuối cùng trong loạn thế này?", Next = 125},
{ Level = 125, Stage = "Thiên Hạ Vô Song", Detail = "Thành vương bại khấu, từ xưa đến nay đều như vậy, vậy thì, ai sẽ là vương, ai sẽ là cướp?", Next = 130},
{ Level = 130, Stage = "Ngạo Thị Cửu Châu", Detail = "Ngạo nghễ thiên hạ, khinh thường Cửu Châu, tất cả đã nằm trong tầm kiểm soát!", Next = -1},

}

--Touch 充值奖励信息
TouchInfo = {
{Money = 100, RPoint = 5000},
{Money = 300, RPoint = 15000},
{Money = 500, RPoint = 20000},
{Money = 1000, RPoint = 30000},
{Money = 2000, RPoint = 60000},
{Money = 5000, RPoint = 100000},
{Money = 10000, RPoint = 200000},
}



--Max_PositionLevel = 9
--LDG_PicNum：“aX.dds”格式的loading图数量






LDG_PicNum = 14

--未整理文本






TEXT_ENTERWAIT = "LouLx Game: Đang vào Xích Bích…";


-- 资料片公告弹版
if showBoardMain == nil then
	showBoardMain = true
end


-- 普通的花娘引导文本

FlowerGuide = {}
FlowerGuide[1] 	  = "花娘：欢迎来到赤壁的世界，点击受伤的NPC-安何生开始游戏吧！"
FlowerGuide[10]   = "花娘：你升级好快呀！继续加油哦！我会陪着你一起升级！"
FlowerGuide[20]   = "花娘：装备的品质分为，劣品，良品，珍品，最高是神品，遇到好装备一定要赶紧装备！"
FlowerGuide[30]   = "花娘：你“上”了坐骑，看起来萌！萌！哒！"
FlowerGuide[40]   = "花娘：穿上时装一下就高大上了~高级时装不光好看，还有属性哟！"
FlowerGuide[41]   = "花娘：穿上时装一下就高大上了~高级时装不光好看，还有属性哟！"
FlowerGuide[50]   = "花娘：听说你还不会轻功呀？快速按两下W，之后按空格键就能使用轻功啦！"
FlowerGuide[60]   = "花娘：恭喜你达到9级！再升1级，你就可以获得官职了！官阶俸禄每日领取！更有特殊属性加成的官阶称号哦！"
FlowerGuide[70]   = "花娘：主兵种升级后就可以升级专精技能啦，快来看看吧！^tip"
FlowerGuide[80]   = "花娘：哟呵~一不小心就升官啦！以后多做一些功勋任务，官职不同还有不同称号哟~"
FlowerGuide[90]   = "花娘：恭喜你达到11级！将等级提升至17级，就可以获得一个奖励哦！"
FlowerGuide[100]  = "花娘：当前适合的挂机地图为：河北，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
FlowerGuide[110]  = "花娘：恭喜你达到15级！再升1级，你就可以参加英雄玄石活动啦！还有缤纷的节日活动等你参与，海量奖励拿到手软！"
FlowerGuide[120]  = "花娘：恭喜你达到16级！你现在可以参加英雄玄石、桃园告急等等高奖励日常活动啦！点击下面的活动日历即可知道详情哦！"
FlowerGuide[130]  = "花娘：英雄玄石活动为每日12点后，领取英雄玄石，完成任务获得丰富奖励！"
FlowerGuide[140]  = "花娘：桃园告急活动为每日14:00、16:00、18:00、20:00、22:00，完成任务获得海量奖励！"
FlowerGuide[150]  = "花娘：当前适合的挂机地图为：西凉，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
FlowerGuide[160]  = "花娘：恭喜你达到21级！一个人升级是否觉得无聊呢？你可以拜个师傅，有他的帮助，你可以更快的升级哦！"
FlowerGuide[170]  = "花娘：恭喜你达到22级！可以找到各地巧匠了解装备相关功能哦！"
FlowerGuide[180]  = "花娘：恭喜你达到28级！乱世不平，何不找个伴侣，携伴江湖？"
FlowerGuide[190]  = "花娘：当前适合的挂机地图为：巴蜀，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
FlowerGuide[200]  = "花娘：恭喜你达到32级！你可以查看你的成就列表哦！"
FlowerGuide[210]  = "花娘：恭喜你达到35级！觉得升级慢吗？参加桃园告急活动可获得海量历练哦！"
FlowerGuide[220]  = "花娘：你有军团吗？花娘推荐你加入军团哦！这样可以和朋友们一起去更快的完成任务和活动！可点击交友平台寻找军团哦！"
FlowerGuide[230]  = "花娘：当前适合的挂机地图为：南蛮，通过点击迷你地图上的挂机按钮即可开始挂机哦！"
FlowerGuide[240]  = "花娘：现在你可以学习如何招纳护卫了，若有缘，你可以招纳花娘作为你的护卫！帮你一起战斗，共闯天下！乱世——有你不寂寞。"
FlowerGuide[250]  = "花娘：装备是有耐久的，不要光顾挂机，忽略了装备的感受哟~"

-- 与玩家等级对比，不满足时出提示，对比内容是玩家等级和兵种等级

FlowerGuide[1000] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1010] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1020] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1030] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1040] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1050] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1060] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1070] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"
FlowerGuide[1080] = "花娘：亲~你的兵种等级有点低了哟~平时除了升级偶尔也要升级一下兵种~"

--以下是与玩家等级对比，不满足时出提示，对比内容是玩家等级和官职等级

FlowerGuide[2010] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2020] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2030] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2040] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2050] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2060] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2070] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2080] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2090] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2100] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2110] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"
FlowerGuide[2120] = "花娘：亲~你的官职等级有点低了哟~官职越高每日俸禄就越高哟~"




--图鉴翻牌获得次数途径
CardAssist = 
"^ffffff前往#6243#处完成^fffd44结义任务\r^ffffff前往#3355#处完成^fffd44惩凶平叛^ffffff任务\r在各地寻找分局镖头完成^fffd44押镖护送^ffffff任务\r前往#69297#处完成^fffd44聚贤谷密函^ffffff任务\r前往洛阳、草原、东海完成^fffd44神舟探宝^ffffff任务\r前往#12820#处完成^fffd44每日红豆采摘^ffffff任务\r完成^fffd44每日点卯\r^ffffff前往#51467#处完成^fffd44煮酒舞剑莫问今朝^ffffff任务\r前往白帝城完成^fffd44振奋斗志^ffffff任务\r参与^fffd44濮阳之战（英雄级）\r参与^fffd44虎牢关之战（英雄级）\r参与^fffd44合肥之战（英雄级）\r参与^fffd44英雄志系列战场"

--图鉴翻牌获得次数途径
CardInfo = 
"^ea8015翻牌次数：\r^ffffff达到^fffd44英雄1级^ffffff之后，完成特定每日任务和活动即可获得翻牌次数。^fffd44某些任务快捷完成时不会获得次数奖励^ffffff。\r^ea8015获得奖励：\r^ffffff翻开两张图鉴之后，如果图案一致，则配对成功。如果图案不一致，则匹配失败，图鉴扣回。\r^ea8015刷新:\r^ffffff图鉴每天0点重置，重置后所有图鉴扣回，但是翻牌次数不变。玩家也可以使用道具^fffd44图鉴至宝^ffffff刷新图鉴。\r^ea8015对对碰积分:\r^ffffff每成功配对一次，即可获得对对碰积分，配对数量越多，获得积分也越多。对对碰积分可在#95704#处购买各种图鉴礼包。\r^ea8015其他：\r如果任务列表已满，可能会导致积分无法获得。请玩家在进行对对碰之前，适当清理任务列表。"