-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2021 lúc 04:31 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `name1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `mail` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `date1` datetime NOT NULL,
  `totals_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `name1`, `phone`, `mail`, `address1`, `date1`, `totals_price`) VALUES
(9, 'a', 965074842, 'phamthutrahoak27@gmail.com', 'Thai Nguyen', '2021-12-08 22:16:58', 31798000),
(10, 'Việt Anh', 562151223, 'anh.nv187292@sis.hust.edu.vn', 'Hoang Van Thu', '2021-12-08 22:19:08', 26999000),
(11, 'Việt Anh', 982111111, 'admin@gmail.com', 'Hoang Van Thu', '2021-12-08 22:37:54', 15899000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(2, 'Acer'),
(1, 'Asus'),
(5, 'Avita'),
(3, 'Dell'),
(9, 'Fujitsu'),
(10, 'Gigabyte'),
(4, 'HP'),
(7, 'Lenovo'),
(6, 'Macbook'),
(8, 'MSI'),
(11, 'Surface');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `comm_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_date` datetime NOT NULL,
  `comm_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comm_id`, `prd_id`, `comm_name`, `comm_mail`, `comm_date`, `comm_details`) VALUES
(1, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(2, 2, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(3, 3, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(4, 4, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(5, 5, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(6, 6, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(7, 7, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(8, 8, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(9, 9, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(10, 10, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(11, 11, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(12, 12, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(13, 13, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(14, 14, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(15, 15, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(16, 16, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(17, 17, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(18, 18, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(19, 19, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(20, 20, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(21, 21, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(22, 22, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(23, 23, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt'),
(24, 24, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt'),
(25, 25, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2021-11-11 20:59:56', 'Sản phẩm chất lượng tốt. chi tiết đẹp'),
(26, 26, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(27, 27, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(28, 28, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(29, 29, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(30, 30, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '2018-12-12 20:59:56', 'Đây thực sự là một sản phẩm tuyệt vời'),
(57, 25, 'Nguyễn Việt Anh', 'anh.nv187292@sis.hust.edu.vn', '2021-11-28 16:59:12', '<p>aaaa</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `details`
--

CREATE TABLE `details` (
  `details_id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `prd_count` int(10) NOT NULL,
  `prd_price` int(20) NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `details`
--

INSERT INTO `details` (`details_id`, `ord_id`, `prd_id`, `prd_count`, `prd_price`, `quantity`) VALUES
(1, 1, 2, 2, 18690000, 3738000),
(2, 1, 3, 1, 18000000, 36100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_new` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_featured` int(1) NOT NULL,
  `prd_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_warranty`, `prd_accessories`, `prd_new`, `prd_promotion`, `prd_status`, `prd_featured`, `prd_details`) VALUES
(1, 11, 'Laptop Surface Go Core i5', '55966_surface_laptop_go_i5_1035g1_4gb_ram_64gb_ssd_12_4_cam_ung_win_10_bac_6.png', 18690000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV \r\n', 1, 1, '✦ Bộ vi xử lý Intel Core i5-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(2, 1, 'Laptop Asus TUF Gaming FX516PM', 'techzones-asus-rog-flow-x13-ultra-slim-2-in-1-11.jpg', 32990100, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 1, ''),
(3, 1, 'Laptop Asus ZenBook', 'Laptop Lenovo 100e Gen 2.jpg', 41999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(4, 1, 'Laptop Asus FLow Gaming', 'teLaptop Asus FLow Gaming.jpg', 39999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(5, 3, 'Laptop Dell Inspiron N3510 Pentium', 'Laptop Dell Inspiron N3510 Pentium.jpg', 11699000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, '✦ Bộ vi xử lý Intel Core i7-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(6, 3, 'Laptop Dell Vostro V3400 i5', 'Laptop Dell Vostro V3400 i5.jpg', 18899000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 1, 1, '✦ Bộ vi xử lý Intel Core i5-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(7, 3, 'Laptop Dell Inspiron N3502', 'Laptop Dell Inspiron N3502.jpg', 15999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 1, 1, '✦ Bộ vi xử lý Intel Core i7-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(8, 3, 'Laptop Dell Vostro V3405 R5', 'Laptop Dell Vostro V3405 R5.jpg', 18499000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 1, 0, '✦ Bộ vi xử lý Intel Core i7-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(9, 6, 'MacBook Pro 13', 'MacBook Pro 2020 Touch Bar 2GHz Core i5 512GB.png', 46999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(10, 6, 'MacBook Air 13\" 2020 M1 256GB', 'MacBook Air 2020 M1 256GB.jpg', 28999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, '✦ Bộ vi xử lý Intel Core i7-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(11, 4, 'Laptop HP 15s-fq2602TU/Core i5', 'Laptop HP 15s-fq2602TU1.jpg', 15999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 1, 1, '✦ Bộ vi xử lý Intel Core i5-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(12, 7, 'Laptop Lenovo 100e Gen 2', 'Laptop Lenovo 100e Gen 2.jpg', 7499000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(13, 7, 'Laptop Lenovo IdeaPad Slim 3', 'Laptop Lenovo IdeaPad Slim 3 15ADA05 R5.jpg', 13699000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(14, 2, 'Laptop Acer Nitro Gaming', 'Laptop Acer Nitro Gaming AN515-57-720A i7.png', 30499000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(15, 2, 'Laptop Acer Aspire Gaming', '637514134169686991_acer-aspire-gaming-a715-42g-den-1.jpg', 18999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(16, 5, 'Laptop Avita Liber ', '637515753387998832_avita-liber-v14-vang-1.jpg', 17999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 1, ''),
(17, 8, 'Laptop MSI Gaming GF63 Thin', 'msi-gf63-thin-10scxr-10.jpg', 22999000, '24 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(18, 10, 'Laptop Gigabyte Gaming G5 GD i5', 'gigabyte-gaming-g5-i5-md51s.jpg', 26999000, ' 24 Tháng', ' Thân máy, bộ sạc, sách hướng dẫn sử dụng', ' Máy Mới 100%', ' Balo Gaming Predator Acer SUV ', 1, 0, '✦ Bộ vi xử lý Intel Core i5-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(19, 7, 'lenovo-yoga-duet-7', 'lenovo-yoga-duet-7-13itl6-i5-82ma000pvn-2-1.jpg', 23799000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(20, 3, 'Laptop Dell Inspiron N3501 i5', 'dell-inspiron-3501-5.jpg', 22499000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 1, 0, '✦ Bộ vi xử lý Intel Core i7-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(21, 3, 'Laptop Dell Vostro V3405 R5', 'teLaptop Asus FLow Gaming.jpg', 18499000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 1, ''),
(22, 4, 'Laptop HP Pavilion Gaming 15', '08bbe7b1383a11e96d0530b5f1c2465e.jpg', 29999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 0, 0, ''),
(23, 3, 'Laptop Dell Inspiron N3501 i5', 'dell-3501_1.png', 21839000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 1, 0, '✦ Bộ vi xử lý Intel Core i7-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>'),
(24, 3, 'Laptop Dell Inspiron N5510 i5', '61273_laptop_dell_inspiron_5510_4.jpg', 22999000, '24 Tháng', 'Thân máy, Bộ sạc điện, Sách hướng dẫn sử dụng', 'Máy Mới 100%', 'Balo Gaming Predator Acer SUV ', 1, 0, '✦ Bộ vi xử lý Intel Core i7-1135G7 xử lý công việc văn phòng nhanh chóng <br>\r\n✦ RAM 4GB DDR4 giúp laptop đa nhiệm ổn định, hạn chế tình trạng giật lag <br>\r\n✦ Ổ cứng SSD 512GB giúp khởi động máy nhanh hơn, lưu trữ dữ liệu tốt <br>\r\n✦ Trải nghiệm hình ảnh sắc nét, màu sắc sống động trên màn hình 14\'\' FHD <br>\r\n✦ Công nghệ Anti-Glare giúp chống chói khi sử dụng ở nơi ánh sáng cao <br>\r\n✦ Công nghệ âm thanh Stereo speakers mang đến chất âm rõ ràng, chi tiết <br>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(1, 'Nguyễn Văn Hoàng Anh', 'zshop@gmail.com', '1', 1),
(2, 'Nguyễn Việt Anh', 'admin@gmail.com', '123456', 1),
(3, 'Nguyễn Van A', 'nguyenvana@gmail.com', '123456', 2),
(4, 'Nguyễn Phúc Tuấn', 'nguyenphuctuan@gmail.com', '123456', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comm_id`);

--
-- Chỉ mục cho bảng `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`details_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `details`
--
ALTER TABLE `details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `product` (`prd_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`prd_id`) REFERENCES `comment` (`comm_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
