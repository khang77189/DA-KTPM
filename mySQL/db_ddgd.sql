-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2021 lúc 11:00 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Cơ sở dữ liệu: `db_ddgd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `country`, `phone`, `pincode`, `user_id`) VALUES
(1, 'TP.HCM', 'TP.HCM', 'TP.HCM', 'Hoc Mon', 'Viet Nam', '0327070875', 911, 1),
(2, 'Q.12', 'Q.12', 'TP.HCM', 'Q.12', 'Viet Nam', '0376311569', 911, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Nồi Cơm Điện'),
(2, 'Ti Vi'),
(3, 'Tủ Lạnh'),
(4, 'Máy Lạnh'),
(5, 'Máy Giặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 7, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'Nồi cơm điện Sharp KSH-D1010V', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/282/10034281-noi-com-dien-sharp-10-lit-ksh-d1010v-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/282/10034281-noi-com-dien-sharp-10-lit-ksh-d1010v-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/628/10034281-noi-com-dien-sharp-10-lit-ksh-d1010v-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/628/10034281-noi-com-dien-sharp-10-lit-ksh-d1010v-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/637/10034281-noi-com-dien-sharp-10-lit-ksh-d1010v-4.jpg', 'Nồi cơm cơ, nắp rời với công suất 2750W. Dung tích 10 lít thích hợp gia đình đông người. Lòng nồi bằng hợp kim nhôm dẫn nhiệt nhanh. Vỏ nồi màu trắng trang nhã, dễ dàng vệ sinh. Nồi có khả năng giữ cơm ấm lâu đến 5 giờ. Thiết kế nhỏ gọn, không chiếm nhiều diện tích', 4200000, 10, '', 1),
(2, 'Nồi cơm điện Sharp KS-NR181STV', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/159/10024824-noi-com-dien-sharp-ks-nr181stv-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/159/10024824-noi-com-dien-sharp-ks-nr181stv-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/159/10024824-noi-com-dien-sharp-ks-nr181stv-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/159/10024824-noi-com-dien-sharp-ks-nr181stv-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/159/10024824-noi-com-dien-sharp-ks-nr181stv-4.jpg', 'Nồi có dung tích 1.8 lít, có thể đáp ứng được nhu cầu 4 - 6 người. Nấu cơm nhanh hơn, tiết kiệm điện năng với công nghệ nấu 3D. Lòng nồi phủ lớp chống dính, dễ dàng vệ sinh, an toàn sức khỏe. Nồi giữ nóng cơm đến 12 giờ, cơm nóng thơm ngon luôn sẵn sàng. Công suất 700 W giúp nấu cơm chín nhanh hơn và ít tốn điện', 1450000, 20, '', 1),
(3, 'Nồi cơm điện Sharp KS-TH18', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/516/10006620-noi-com-dien-sharp-1-8l-ks-th18-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/516/10006620-noi-com-dien-sharp-1-8l-ks-th18-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/516/10006620-noi-com-dien-sharp-1-8l-ks-th18-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/516/10006620-noi-com-dien-sharp-1-8l-ks-th18-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/516/10006620-noi-com-dien-sharp-1-8l-ks-th18-4.jpg', 'Thiết kế sang trọng nổi bật giúp tô điểm hông gian bếp. Dung tích 1.8 lít thích hợp cho gia đình 4 - 5 thành viên. Thiết kế lòng nồi và nắp nồi dày giúp giữ nhiệt tốt hơn. Bảng điều khiển rõ ràng trực quan cho thao tác dễ dàng. Công nghệ 3D giúp nấu cơm chín đều, thơm ngon. Đa dạng hóa bữa cơm gia đình với 8 thực đơn tự động. Lòng nồi cao cấp, bền bỉ, chống dính, dễ dàng vệ sinh', 1790000, 12, '', 1),
(4, 'Tivi Casper 50UG6100', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/712/10048571-android-tivi-casper-4k-50-inch-50ug6100-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/712/10048571-android-tivi-casper-4k-50-inch-50ug6100-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/712/10048571-android-tivi-casper-4k-50-inch-50ug6100-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/712/10048571-android-tivi-casper-4k-50-inch-50ug6100-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/712/10048571-android-tivi-casper-4k-50-inch-50ug6100-4.jpg', 'Màn hình vô cực, góc cạnh tinh tế sang trọng tô điểm không gian nội thất\r\nĐộ phân giải 4K Ultra HD hiển thị hình ảnh sắc nét đến từng chi tiết\r\nChế độ hiển thị HDR tái tạo hình ảnh chân thực, tăng cường độ tương phản\r\nHệ điều hành Android 9.0 Pie với kho ứng dụng giải trí phong phú đa dạng\r\nTrợ lý ảo Google Assistant, tìm kiếm bằng giọng nói hỗ trợ Tiếng Việt\r\nRemote thông minh, có sẵn phím truy cập nhanh vào Netflix và Youtube', 14300000, 0, '', 2),
(5, 'Tivi TCL 50P618', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/681/10047251-android-tivi-tcl-4k-50-inch-50p618-1_uem0-15.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/681/10047251-android-tivi-tcl-4k-50-inch-50p618-1_uem0-15.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/681/10047251-android-tivi-tcl-4k-50-inch-50p618-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/681/10047251-android-tivi-tcl-4k-50-inch-50p618-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/681/10047251-android-tivi-tcl-4k-50-inch-50p618-4.jpg', 'Màn hình tivi TCL 50 inch mở ra trải nghiệm nhìn hoàn hảo\r\nCông nghệ phân giải hình ảnh chất lượng 4K UHD\r\nTrang bị các cổng kết hỗ trợ nhu cầu chia sẻ của bạn\r\nTích hợp tiện ích tìm kiếm bằng giọng nói thông minh\r\nThiết kế hiện đại, tăng thêm vẻ tinh tế cho không gian', 11990000, 10, '', 2),
(6, 'Tivi Samsung UA43AU9000KXXV', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/716/10048778-smart-tivi-samsung-crystal-uhd-4k-43-inch-ua43au9000kxxv-1_ehqa-4g.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/716/10048778-smart-tivi-samsung-crystal-uhd-4k-43-inch-ua43au9000kxxv-1_ehqa-4g.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/716/10048778-smart-tivi-samsung-crystal-uhd-4k-43-inch-ua43au9000kxxv-2_w6n6-b6.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/716/10048778-smart-tivi-samsung-crystal-uhd-4k-43-inch-ua43au9000kxxv-3_so4z-an.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/716/10048778-smart-tivi-samsung-crystal-uhd-4k-43-inch-ua43au9000kxxv-4_thgp-nn.jpg', 'Màn hình Airslim UHD 4K (3840 x 2160) hiển thị hình ảnh sắc nét\r\nCông nghệ Crystal 4K tối ưu hóa nâng cấp độ chi tiết của từng gam màu\r\nCảm nhận chi tiết và sắc thái hoàn mỹ được hỗ trợ công nghệ HDR10+\r\nCông nghệ UHD Dimming tăng cường độ chi tiết hiển thị của hình ảnh\r\nTrải nghiệm hình ảnh mượt mà với công nghệ Motion Xcelerator Turbo\r\nTận hưởng âm thanh vòm theo từng chuyển động nhờ Công nghệ OTS Lite\r\nTivi tích hợp Google Assistant Tiếng Việt, kết nối Apple TV và AirPlay 2', 15000000, 25, '', 2),
(7, 'Tủ lạnh Samsung Inverter RT20HAR8DBU', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-4.jpg', 'Dung tích 208 lít thích hợp cho gia đình từ 2 - 3 thành viên\r\nCông nghệ Digital Inverter hoạt động êm ái, tiết kiệm điện \r\nBộ lọc than hoạt tính Deodorizer giúp kháng khuẩn, khử mùi\r\nCông nghệ làm lạnh đa chiều, thực phẩm bảo quản tươi ngon\r\nNgăn đựng rau quả duy trì độ ẩm tốt, giữ thực phẩm tươi ngon', 6890000, 50, '', 3),
(8, 'Tủ lạnh Samsung Inverter RB27N4170BU', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045346-tu-lanh-samsung-inverter-276l-rb27n4170bu-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045346-tu-lanh-samsung-inverter-276l-rb27n4170bu-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045346-tu-lanh-samsung-inverter-276l-rb27n4170bu-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045346-tu-lanh-samsung-inverter-276l-rb27n4170bu-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/640/10045346-tu-lanh-samsung-inverter-276l-rb27n4170bu-4.jpg', 'Dung tích 276 lít thích hợp cho gia đình từ 2 - 3 thành viên\r\nCửa mặt ngoài bằng gương mờ hiện đại, sang trọng\r\nCông nghệ Digital Inverter hoạt động êm ái, tiết kiệm điện \r\nBộ lọc khử mùi than hoạt tính loại bỏ mùi hôi, lọc không khí\r\nCông nghệ làm lạnh vòm, thực phẩm bảo quản tươi lâu hơn', 12460000, 50, '', 3),
(9, 'Tủ Lạnh Toshiba Inverter GR-A28VM', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/657/10045892-tu-lanh-toshiba-inverter-233l-gr-a28vm-ukg1-1_7sma-12.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/657/10045892-tu-lanh-toshiba-inverter-233l-gr-a28vm-ukg1-1_7sma-12.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/657/10045892-tu-lanh-toshiba-inverter-233l-gr-a28vm-ukg1-2_vxdv-80.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/657/10045892-tu-lanh-toshiba-inverter-233l-gr-a28vm-ukg1-3_di4c-7n.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/657/10045892-tu-lanh-toshiba-inverter-233l-gr-a28vm-ukg1-4_t761-zr.jpg', 'Tủ lạnh Inverter vận hành êm ái, bền bỉ theo thời gian\r\nCông nghệ Inverter tiết kiệm đến 45% điện năng tiêu thụ\r\nNgăn rau củ dung tích lớn trữ được nhiều thực phẩm hơn\r\nCấp đông mềm Ultra Cooling Zone giữ thực phẩm tươi ngon\r\nTủ lạnh có dung tích 233L phù hợp với gia đình 3 -5 người\r\nHệ thống khử mùi và diệt khuẩn Ag Bio chất lượng cao', 8600000, 42, '', 3),
(10, 'Máy lạnh Hitachi Inverter RAS-XJ10CKV', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/718/10048786-may-lanh-hitachi-inverter-1-hp-ras-xj10ckv-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/718/10048786-may-lanh-hitachi-inverter-1-hp-ras-xj10ckv-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/718/10048786-may-lanh-hitachi-inverter-1-hp-ras-xj10ckv-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/718/10048786-may-lanh-hitachi-inverter-1-hp-ras-xj10ckv-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/718/10048786-may-lanh-hitachi-inverter-1-hp-ras-xj10ckv-4.jpg', 'Máy lạnh có công suất 1HP thích hợp sử dụng cho phòng khoảng dưới 15m2\r\nCông nghệ Inverter giảm rung ồn, tăng tuổi thọ và tiết kiệm điện đến 50%\r\nTính năng Frost Wash loại bỏ bụi bẩn vi khuẩn trên bề mặt trao đổi nhiệt\r\nDàn trao đổi nhiệt 100% bằng đồng làm lạnh sâu hơn, tuổi thọ cao hơn\r\nChức năng Air Sleep Timer yên tĩnh, tối ưu nhiệt độ cho có giấc ngủ ngon\r\nCánh trao đổi nhiệt dàn nóng được phủ một lớp chống ăn mòn, bền bỉ\r\nMáy lạnh sử dụng gas R32 giúp làm lạnh sâu, thân thiện với môi trường', 7990000, 42, '', 4),
(11, 'Máy lạnh Toshiba Inverter RAS-H10H2KCVG-V', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/628/10044924-may-lanh-toshiba-inverter-1-hp-ras-h10h2kcvg-v-1_7ddg-8z.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/628/10044924-may-lanh-toshiba-inverter-1-hp-ras-h10h2kcvg-v-1_7ddg-8z.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/654/10044926-may-lanh-toshiba-inverter-1-hp-ras-h10d2kcvg-v-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/674/10044926-may-lanh-toshiba-inverter-1-hp-ras-h10d2kcvg-v-4.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/636/10044924-may-lanh-toshiba-inverter-1-hp-ras-h10h2kcvg-v-3_fg1b-ay.jpg', 'Công nghệ Hybrid Inverter và chế độ Eco tiết kiệm điện năng\r\nLàm lạnh nhanh Hi-Power tạo cảm giác mát lạnh ngay tức thì\r\nCông nghệ chống bám bẩn độc quyền Magic Coil hoạt động tối ưu\r\nBộ lọc IAQ và bộ lọc chống nấm mốc mang không khí trong lành\r\nTự khởi động lại khi có điện, ghi nhớ các chế độ hiện có trước đó\r\nGas R32 thân thiện với môi trường, an toàn sức khỏe người dùng', 9990000, 24, '', 4),
(12, 'Máy lạnh Samsung Inverter AR10TYHYCWKNSV', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/660/10046305-may-lanh-samsung-inverter-1-hp-ar10tyhycwknsv-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/660/10046305-may-lanh-samsung-inverter-1-hp-ar10tyhycwknsv-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/660/10046305-may-lanh-samsung-inverter-1-hp-ar10tyhycwknsv-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/660/10046305-may-lanh-samsung-inverter-1-hp-ar10tyhycwknsv-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/660/10046305-may-lanh-samsung-inverter-1-hp-ar10tyhycwknsv-4.jpg', 'Bộ lọc Tri-Care loại bỏ 99% virus, vi khuẩn và bụi siêu mịn \r\nCông suất 1 HP thích hợp với không gian phòng dưới 15m2\r\nCông nghệ Digital Inverter Boost giúp tiết kiệm điện 73%\r\nLưới lọc Easy Filter Plus giúp vệ sinh bụi bẩn dễ dàng\r\nTinh năng tự động làm sạch Auto Clean, bảo vệ sức khỏe \r\nSử dụng gas R32 làm lạnh sâu, thân thiện với môi trường', 8650000, 52, '', 4),
(13, 'Máy giặt Electrolux Inverter EWF8025BQWA', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/549/10038401-may-giat-electrolux-inverter-8kg-ewf8025bqwa-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/549/10038401-may-giat-electrolux-inverter-8kg-ewf8025bqwa-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/549/10038401-may-giat-electrolux-inverter-8kg-ewf8025bqwa-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/549/10038401-may-giat-electrolux-inverter-8kg-ewf8025bqwa-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/549/10038401-may-giat-electrolux-inverter-8kg-ewf8025bqwa-4.jpg', 'Máy giặt 8kg EWF8025BQWA có khối lượng giặt thích hợp cho gia đình 3-5 người\r\nCông nghệ Inverter giúp máy giặt vận hành êm, tiết kiệm điện\r\nCông nghệ VapourCare giúp loại bỏ vi khuẩn, chất dị ứng\r\nThêm quần áo tiện lợi ngay cả khi máy đã khởi động 15 phút\r\nChu trình giặt nhanh 15 phút tiết kiệm thời gian giặt giũ\r\nLấy và bỏ áo quần dễ dàng nhờ cửa máy giặt rộng cỡ 3XL', 7990000, 52, '', 5),
(14, 'Máy giặt Samsung Inverter WW85T4040CE/SV', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/727/10048924-may-giat-samsung-inverter-8-5-kg-ww85t4040ce-sv-1.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/727/10048924-may-giat-samsung-inverter-8-5-kg-ww85t4040ce-sv-1.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/727/10048924-may-giat-samsung-inverter-8-5-kg-ww85t4040ce-sv-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/727/10048924-may-giat-samsung-inverter-8-5-kg-ww85t4040ce-sv-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/727/10048924-may-giat-samsung-inverter-8-5-kg-ww85t4040ce-sv-4.jpg', 'Máy giặt cửa trước có khối lượng giặt 8.5 kg thích hợp cho gia đình 3 - 5 người\r\nCỗ máy EcoBubble tạo bong bóng siêu mịn thẩm thấu nhanh, đánh bật vết bẩn\r\nCông nghệ Sạch siêu tốc QuickDrive đảm bảo giặt sạch sâu chỉ trong 39 phút\r\nGiặt giũ êm ái với công nghệ VRT Plus giảm rung ồn đến 30% trong quá trình giặt\r\nĐộng cơ Digital Inverter giúp máy giặt vận hành êm ái, tiết kiệm điện năng', 7490000, 52, '', 5),
(15, 'Máy giặt Electrolux Inverter EWW1042AEWA', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/607/10042913-may-giat-electrolux-inverter-10kg-eww1042aewa-1_oy36-c6.jpg', 'https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/607/10042913-may-giat-electrolux-inverter-10kg-eww1042aewa-1_oy36-c6.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/609/10042913-may-giat-electrolux-inverter-10kg-eww1042aewa-2.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/609/10042913-may-giat-electrolux-inverter-10kg-eww1042aewa-3.jpg;https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/609/10042913-may-giat-electrolux-inverter-10kg-eww1042aewa-4.jpg', 'Khối lượng giặt 10 kg thích hợp cho gia đình trên 6 người\r\nCông nghệ Inverter giảm ồn, tiết kiệm điện nước vượt trội\r\nCông nghệ UltraMix giữ quần áo bền màu như mới\r\nCông nghệ Vapour Care diệt vi khuẩn và tác nhân gây dị ứng\r\nCông nghệ Vapour Refresh làm mới và giảm nhăn quần áo\r\nCảm biến SensorWash tự động đo lường độ bẩn của quần áo\r\nThêm quần áo tiện lợi, hẹn giờ giặt xong, khóa trẻ em', 15490000, 52, '', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT 18,
  `role` int(10) DEFAULT 555,
  `photoUrl` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'Van An', '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'nva@gmail.com', 'vanan2k', 'vanan2k', 23, 777, '', 'local');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
