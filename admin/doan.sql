-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 11, 2024 lúc 09:52 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `idbn` int(11) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`idbn`, `name`, `pro_id`) VALUES
(1, 'ban1', 5),
(2, 'ban2', 3),
(3, 'ban3', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cate_id` int(10) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`, `status`) VALUES
(1, 'Dong ho nam', 0),
(2, 'Dong ho nu', 0),
(3, 'Smart watch', 1),
(4, 'G Shock', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `cmt_id` int(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `u_id` int(10) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`cmt_id`, `pro_id`, `u_id`, `content`, `date_time`) VALUES
(1, 2, 1, 'san pham dep', '2023-06-12 16:13:23'),
(2, 2, 2, 'san pham tot', '2023-06-12 16:13:23'),
(3, 2, 1, 'hmm', '2023-06-12 16:15:52'),
(4, 3, 1, 'acb', '2023-06-12 05:09:38'),
(5, 3, 1, 'kkkkkk', '2023-06-12 17:33:32'),
(6, 3, 2, 'sp tot', '2023-06-12 17:34:20'),
(7, 3, 2, 'sp tot', '2023-06-12 17:43:34'),
(8, 7, 2, 'lua chon tot', '2023-06-12 17:43:59'),
(9, 2, 1, 'muon', '2023-06-12 17:44:37'),
(10, 2, 1, 'jjjjj', '2023-06-12 17:45:52'),
(11, 4, 1, 'lakjaj', '2023-06-14 16:13:21'),
(12, 4, 1, 'jsahaaha', '2023-06-14 16:13:30'),
(13, 4, 1, 'ffffff', '2023-06-14 16:14:07'),
(14, 15, 1, 'ahuhu', '2024-01-08 17:10:22'),
(15, 15, 1, 'Sản phẩm tốt', '2024-01-27 13:10:15'),
(16, 15, 1, 'Sản phẩm hữu ichs', '2024-01-27 13:14:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `fb_id` int(11) NOT NULL,
  `ct_name` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`fb_id`, `ct_name`, `tel`, `email`, `content`) VALUES
(1, 'hmm', 'sadg@gmail.com', '93352', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu sử dụng sách của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
(2, 'hmm', '93352', 'sadg@gmail.com', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu sử dụng sách của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
(4, 'hmm', '0924053524', 'sadg@gmail', 'Quý khách vui lòng để lại thông tin để nhân viên tư vấn liên hệ cho bạn sớm nhất!\r\n\r\n'),
(5, 'ssad', '0924053524', 'sadg@gmail.com', 'Quý khách vui lòng để lại thông tin để nhân viên tư vấn liên hệ cho bạn sớm nhất!\r\n\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `o_id` int(10) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `image` varchar(10) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `quantity` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date_time` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`o_id`, `pro_id`, `u_id`, `fullname`, `image`, `pro_name`, `quantity`, `price`, `address`, `date_time`, `status`) VALUES
(1, 5, 1, 'nvh', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'hanoi', '2023-06-13', 1),
(2, 3, 1, 'nvh', '6.jpg', 'Đồng hồ Casio GA-110JT-2A', 5, 8000000, 'hanoi', '2023-06-13', 1),
(3, 3, 1, 'noname', '6.jpg', 'Đồng hồ Casio GA-110JT-2A', 5, 8000000, 'sao hoa', '2023-06-13', 2),
(4, 4, 1, '', '7.jpg', 'Đồng hồ Casio GMA-S110SG-7A', 1, 8500000, 'sao hoa', '2023-06-13', 2),
(5, 8, 1, '', '11.jpg', 'Đồng hồ Casio GMA-S110TB-8A', 4, 40000000, 'hmm', '2023-06-13', 2),
(6, 5, 1, 'hmm', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'hmm', '2023-06-13', 2),
(7, 5, 2, 'bvh', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'hanoi', '2023-06-13', 0),
(8, 5, 1, 'nvh', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 4, 32000000, 'hanoi', '2023-06-14', 2),
(9, 4, 1, 'noname', '7.jpg', 'Đồng hồ Casio GMA-S110SG-7A', 3, 25500000, 'sao hoa', '2023-06-14', 2),
(10, 3, 2, 'aaa', '6.jpg', 'Đồng hồ Casio GA-110JT-2A', 3, 4800000, 'hanoi', '2023-06-14', 0),
(11, 16, 1, 'ascd', '14.png', 'Đồng hồ Apple Watch SE 2022 GPS 40mm', 5, 29925000, 'hcm', '2023-06-18', 2),
(12, 4, 1, 'aaa', '7.jpg', 'Đồng hồ Casio GMA-S110SG-7A', 1, 8500000, 'hanoi', '2023-07-01', 2),
(13, 4, 1, 'nvh', '7.jpg', 'Đồng hồ Casio GMA-S110SG-7A', 1, 8500000, 'han', '2023-07-01', 2),
(14, 9, 1, 'lvd', '12.jpg', 'Đồng hồ Casio GM-S5600YS-1', 3, 12150000, 'hcm', '2023-07-01', 2),
(15, 5, 1, 'a', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 4, 32000000, 'a', '2024-01-11', 2),
(16, 5, 1, 'Lê Văn Dương', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 3, 24000000, 'Viet Nam', '2024-01-11', 0),
(17, 18, 1, 'Lê Văn Dương', '16.png', 'Đồng hồ Apple Watch SE', 1, 11610000, 'Viet Nam', '2024-01-11', 0),
(18, 5, 1, 'Lê Văn Dương', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'Viet Nam', '2024-01-11', 0),
(19, 5, 1, 'Lê Văn Dương', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'Viet Nam', '2024-01-11', 0),
(20, 18, 1, 'Lê Văn Dương', '16.png', 'Đồng hồ Apple Watch SE', 1, 11610000, 'Viet Nam', '2024-01-11', 0),
(21, 5, 1, 'Lê Văn Dương', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'Viet Nam', '2024-01-11', 0),
(22, 15, 1, 'Lê Văn Dương', '5.jpg', 'Đồng hồ Casio GA-114RE-1A', 1, 10000000, 'Viet Nam', '2024-01-11', 0),
(23, 16, 1, 'Lê Văn Dương', '14.png', 'Đồng hồ Apple Watch SE 2022 GPS 40mm', 1, 5985000, 'Viet Nam', '2024-01-11', 0),
(24, 5, 1, 'Lê Văn Dương', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'Viet Nam', '2024-01-11', 0),
(25, 15, 1, 'Lê Văn Dương', '5.jpg', 'Đồng hồ Casio GA-114RE-1A', 1, 10000000, 'Viet Nam', '2024-01-27', 0),
(26, 5, 1, 'Lê Văn Dương', '8.jpg', 'Đồng hồ Casio GLX-S5600-3', 1, 8000000, 'Viet Nam', '2024-01-29', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `pro_id` int(10) NOT NULL,
  `cate_id` int(10) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `quantity` int(5) NOT NULL,
  `dateadd` date NOT NULL,
  `price` int(20) NOT NULL,
  `sold` int(5) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sale` int(10) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`pro_id`, `cate_id`, `pro_name`, `quantity`, `dateadd`, `price`, `sold`, `image`, `sale`, `description`, `status`) VALUES
(3, 4, 'Đồng hồ Casio GA-110JT-2A', 97, '2023-06-01', 20000000, 10, '6.jpg', 25, 'aaa', 0),
(4, 4, 'Đồng hồ Casio GMA-S110SG-7A', 95, '2023-06-01', 10000000, 10, '7.jpg', 15, 'Làm mới diện mạo của bạn với mẫu đồng hồ G-SHOCK quyến rũ, tỏa sáng như mùa hè Mặt đồng hồ lấp lánh màu vàng nguyên chất nhờ phương pháp lắng đọng hơi kim loại rạng rỡ, tương phản với dây đeo trong mờ tạo nên phong cách thiết kế hoàn thiện, lấp lánh, trông như phụ kiện thời trang bằng vàng. Bạn có thể chọn mẫu đồng hồ GMA-S110 hoặc GMA-S120 vốn được ưa chuộng, hoặc mẫu GMD-S5600 với diện mạo bát giác cổ điển.', 1),
(5, 4, 'Đồng hồ Casio GLX-S5600-3', 86, '2023-06-01', 10000000, 19, '8.jpg', 20, 'Đồng hồ Casio G Shock GLX-S5600-3DR dành cho nam, nữ với dây đeo bằng nhựa màu xanh kết hợp mặt vuông cùng đồ thị thủy triều, Size mặt 40,5mm nằm trong bộ sưu tập đồng hồ G-Shock G-Lide mới nhất hiện nay.\r\nGLX-S5600, mỏng, nhỏ gọn và có khả năng gắn kết cao, được sử dụng làm mô hình cơ sở. G-LIDE mới có tông màu đậm trên khuôn mặt với màu cơ bản trông giống retro của hương vị lướt sóng của thập niên 90. \r\n', 1),
(6, 4, 'Đồng hồ Casio GLX-S6600-3', 100, '2023-06-01', 2000000, 7, '9.jpg', 11, 'Đồng hồ Casio G Shock GLX-S6600-3DR dành cho nam, nữ với dây đeo bằng nhựa màu xanh kết hợp mặt vuông cùng đồ thị thủy triều, Size mặt 40,5mm nằm trong bộ sưu tập đồng hồ G-Shock G-Lide mới nhất hiện nay.\r\nGLX-S5600, mỏng, nhỏ gọn và có khả năng gắn kết cao, được sử dụng làm mô hình cơ sở. G-LIDE mới có tông màu đậm trên khuôn mặt với màu cơ bản trông giống retro của hương vị lướt sóng của thập niên 90. \r\n', 0),
(7, 4, 'Đồng hồ Casio GMA-S2100BS-7A', 100, '2023-06-01', 2000000, 7, '10.jpg', 12, 'Đồng hồ Casio G-Shock GMA-S2100BS-7A thuộc đồng hồ g shock nữ với dây nhựa màu trắng, cấu trúc lõi Carbon, kim - số tiêu chuẩn, chống nước 200m, chống va đập, tuổi thọ pin 3 năm, đèn led đôi, 5 chế độ báo thức nằm trong bộ sưu tập Casio G Shock mới nhất.\r\nTừ mẫu kết hợp kỹ thuật số/analog phổ biến, dòng GMA-S2100, mẫu này sử dụng màu sắc của mùa hè. Mặt số phẳng và thiết kế đế vạch chỉ số đơn giản sử dụng nhiều màu sắc khác nhau cho từng bộ phận để tạo nên bầu không khí vui nhộn. Hoàn hảo cho thời trang hợp thời trang đầy màu sắc và tươi sáng, mẫu này cũng có thể được sử dụng như một điểm nhấn để phối đồ.\r\n', 0),
(8, 4, 'Đồng hồ Casio GMA-S110TB-8A', 96, '2023-06-01', 10000000, 9, '11.jpg', 16, 'Đồng hồ Casio G Shock GMA-S110TB-8ADR dây nhựa trong dành cho nam, nữ, thiết kế thể thao, chống từ, chống va đập, chống nước WR20BAR nằm trong bộ sưu tập Casio G-Shock phiên bản màu đặc biệt.\r\nThể hiện phong cách màu xanh lam sành điệu, đơn giản và tinh tế với mẫu đồng hồ GMA-S110 và GMA-S120 mới. Mỏng, nhỏ gọn và thoải mái. Những chiếc đồng hồ kết hợp kim-số này có dây đeo và vỏ màu xám trong mờ tinh tế, với các điểm nhấn mặt số màu xanh lam kim loại bắt mắt.\r\n', 0),
(9, 4, 'Đồng hồ Casio GM-S5600YS-1', 200, '2023-06-02', 5000000, 6, '12.jpg', 19, 'Đồng hồ G-Shock GM-S5600YS-1DR thuộc đồng hồ Casio nữ, dây nhựa + dây đi kèm, mặt vuông điện tử viền kim loại, thiết kế thể thao, chống nước 200m, bảo hành 5 năm nằm trong bộ sưu tập đồng hồ G Shock nữ mới nhất.\r\nĐồng hồ GM-S5600YS-1 là mẫu kết hợp giữa G-SHOCK với sự mệnh không ngừng trong việc đạt được độ bền tối đa và Y’s, thương hiệu đầu tiên được ra mắt bởi nhà thiết kế nổi tiếng thế giới Yohji Yamamoto.\r\n', 1),
(10, 4, 'Đồng hồ Casio GMA-S110SG-8A', 200, '2023-06-02', 5000000, 6, '13.jpg', 12, 'Thể hiện phong cách màu xanh lam sành điệu, đơn giản và tinh tế với mẫu đồng hồ GMA-S110 và GMA-S120 mới. Mỏng, nhỏ gọn và thoải mái. Những chiếc đồng hồ kết hợp kim-số này có dây đeo và vỏ màu xám trong mờ tinh tế, với các điểm nhấn mặt số màu xanh lam kim loại bắt mắt.', 1),
(11, 4, 'Đồng hồ Casio GM-110CL-6A', 125, '2023-06-13', 1400000, 1, '3.jpg', 13, 'Đồng hồ Casio G Shock GM-110CL-6A thuộc Casio nam dây nhựa, vỏ kim loại mạ ion, chống từ, chống va đập, chống nước WR20BAR, thiết kế đậm chất thể thao nằm trong bộ sưu tập Casio G-Shock mới nhất bảo hành 5 năm.\r\nG-SHOCK tiếp tục phát triển để theo đuổi sự dẻo dai. Dòng OFF-ROAD CLASSY với hình ảnh phong cách sang trọng trên đường địa hình. Mẫu cơ bản là dòng GM-110 được bọc kim loại với vỏ lớn.\r\n', 1),
(15, 4, 'Đồng hồ Casio GA-114RE-1A', 48, '2023-06-01', 10000000, 17, '5.jpg', 0, 'Đồng hồ Casio G-Shock GA-114RE-1ADR thuộc Casio nam, dây nhựa màu đen, kim - số tiêu chuẩn, phiên bản giới hạn, chống nước 200M, chống từ, chống va đập, size mặt 51,2mm nằm trong bộ sưu tập đồng hồ G Shock mới nhất.\r\nDòng sản phẩm giới hạn \"G-SHOCK 40th Anniversary REMASTER BLACK\" của G-SHOCK sẽ kỷ niệm 40 năm thành lập vào năm 2023. Trong hình ảnh các cột mốc và tượng đài bằng đá, tên của các mô hình kế tiếp của 40 năm qua được khắc trên dây đeo, và toàn bộ được hoàn thiện bằng màu đen.\r\n', 1),
(16, 3, 'Đồng hồ Apple Watch SE 2022 GPS 40mm', 142, '2023-06-02', 6300000, 11, '14.png', 5, 'Đồng hồ thông minh Apple Watch SE (2022) 40mm (GPS) là sản phẩm mới ra mắt gần đây sở hữu thiết kế sang trọng đẳng cấp cùng nhiều tính năng hiện đại hứa hẹn đem đến trải nghiệm tuyệt với cho người dùng.', 1),
(17, 1, 'Rolex Datejust 31 278271', 70, '2023-06-28', 18020000, 0, '15.jpg', 12, 'Phụ nữ ngày nay không chỉ yêu cái đẹp đơn thuần, phụ nữ ngày nay yêu cái đẹp có chọn lọc quả thực đúng đắn khi đặt vào thế giới của những cỗ máy thời gian. Là một thương hiệu đồng hồ có sức ảnh hưởng lớn trong thị trường đồng hồ cao cấp, Rolex luôn đem đến những phiên bản đồng hồ nữ thỏa mãn yêu cầu của các quý cô hiện đại. Chiếc đồng hồ Rolex Datejust 31 278271 Mặt Số Vỏ Trai Trắng có mặt tại cửa hàng được coi là một trong những kiệt tác mà họ đã tạo ra trong thế kỷ XXI.', 1),
(18, 3, 'Đồng hồ Apple Watch SE', 120, '2023-06-02', 12900000, 12, '16.png', 10, 'Apple Watch SE (2022)\r\nApple Watch SE (2022) ra mắt vào năm 2022 với nhiều cải tiến vượt bậc. Chạy trên hệ điều hành WatchOS 9.0 kết hợp con chip Apple S8 hỗ trợ xử lý mạnh mẽ trên mọi tác vụ.\r\nVới hiệu năng không kém cạnh, Apple Watch SE có giá tốt hơn Series 6. Đánh giá cao về thiết kế gọn nhẹ, tương thích cao, dễ dàng sử dụng. Thiết bị đang được xếp hạng TOP AW bán chạy nhất thời điểm hiện tại. \r\n', 1),
(19, 3, 'Đồng hồ Apple Watch Series 3 42 mm', 45, '2023-06-02', 5600000, 6, '17.png', 8, 'Apple Watch Series 3 là thế hệ cuối cùng có thiết kế vuông thành sát cạnh với núm xoay Digital Crown và phím vật lý như các thế hệ tiền nhiệm. Những phím này được thiết kế ép sát với thân đồng hồ, phím bấm rất đơn giản  dễ dàng dù cho bạn lần đầu sử dụng Apple Watch. Mặt kính của Apple Watch Series 3 được bo cong 3D cho vừa với viền tạo nên 1 thiết kế nguyên khối, liền mạch nhưng vẫn giữ được độ mỏng cần thiết cho một thiết bị đeo thông minh.', 1),
(20, 3, 'Đồng hồ Apple Watch Series 4 42 mm', 112, '2023-06-09', 4520000, 10, '19.png', 6, 'Apple Watch Series 4 là một chiếc đồng hồ kết hợp giữa ĐẲNG CẤP và CÔNG NGHỆ hiện đại, đây chính xác là những gì bạn cần để khiến người khác phải ngưỡng mộ với các tính năng và theo dõi sức khoẻ nhiều nhất với nhiều chế độ tập luyện thể thao. Làm chủ thời gian và làm chủ công nghệ không hề khó khi sở hữu cực phẩm Apple Watch S4, hiển thị thông báo và tương tác với thông báo từ iPhone tốt nhất. Hỗ trợ tập luyện thể thao đơn giản nhất. ', 1),
(21, 3, 'Đồng hồ Apple Watch Series 2 42 mm', 148, '2023-06-09', 6300000, 6, '18.png', 17, 'Apple Watch S2 42 mm với nhiều cải tiến về tính năng như chống nước vượt trội, định vị GPS, cảm biến đo nhịp tim, hỗ trợ tốt cho thể thao… ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `u_id` int(10) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `email`, `password`, `status`) VALUES
(1, 'nvh', 'nvh@gmail.com', '123', 1),
(2, 'bvh', 'bvh@gmail.com', '123', 1),
(3, 'duong', 'dlevanhp@gmail.com', '123', 1),
(4, 'admin', 'admin@gmail.com', '123', 0),
(5, 'susan2601', 'user1@gmail.com', '123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vote`
--

CREATE TABLE `vote` (
  `vote_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vote`
--

INSERT INTO `vote` (`vote_id`, `pro_id`, `u_id`, `star`) VALUES
(1, 3, 1, 5),
(2, 3, 1, 5),
(3, 3, 1, 5),
(4, 3, 1, 5),
(5, 3, 1, 5),
(6, 3, 1, 5),
(7, 3, 1, 4),
(8, 3, 1, 3),
(9, 3, 1, 3),
(10, 3, 1, 4),
(11, 3, 1, 5),
(12, 3, 1, 5),
(13, 3, 1, 4),
(14, 3, 1, 5),
(15, 3, 1, 5),
(16, 16, 1, 5),
(17, 16, 1, 5),
(18, 16, 1, 5),
(19, 16, 1, 4),
(20, 16, 1, 5),
(21, 4, 1, 5),
(22, 4, 1, 5),
(23, 4, 1, 5),
(24, 4, 1, 5),
(25, 4, 1, 5),
(26, 4, 1, 4),
(27, 4, 1, 4),
(28, 4, 1, 5),
(29, 4, 1, 5),
(30, 4, 1, 5),
(31, 4, 1, 5),
(32, 4, 1, 5),
(33, 4, 1, 5),
(34, 4, 1, 5),
(35, 4, 1, 3),
(36, 4, 1, 5),
(37, 4, 1, 5),
(38, 4, 1, 5),
(39, 4, 1, 5),
(40, 11, 1, 5),
(41, 11, 1, 5),
(42, 11, 1, 4),
(43, 17, 1, 4),
(44, 8, 1, 3),
(45, 8, 1, 4),
(46, 15, 1, 4),
(47, 8, 1, 5),
(48, 8, 1, 5),
(49, 15, 1, 5),
(50, 15, 1, 4),
(51, 5, 1, 4),
(52, 5, 1, 5),
(53, 5, 1, 5),
(54, 5, 1, 4),
(55, 5, 1, 4),
(56, 11, 1, 4),
(57, 10, 1, 3),
(58, 10, 1, 4),
(59, 9, 1, 4),
(60, 9, 1, 5),
(61, 3, 1, 1),
(62, 15, 1, 4),
(63, 15, 1, 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idbn`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fb_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`o_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Chỉ mục cho bảng `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `idbn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `cmt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vote`
--
ALTER TABLE `vote`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
