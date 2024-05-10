-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 16, 2023 lúc 11:07 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sneakershop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiet_pn`
--

CREATE TABLE `tbl_chitiet_pn` (
  `id_pn` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `id_size` int(11) DEFAULT NULL,
  `soluong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitiet_pn`
--

INSERT INTO `tbl_chitiet_pn` (`id_pn`, `id_pro`, `dongia`, `id_size`, `soluong`) VALUES
(4, 5, 50000, 4, '50'),
(4, 5, 50000, 9, '80'),
(4, 5, 50000, 10, '60'),
(5, 6, 90000000, 1, '100'),
(5, 6, 90000000, 2, '50'),
(5, 6, 90000000, 3, '17'),
(5, 6, 90000000, 4, '24'),
(5, 6, 90000000, 6, '33'),
(5, 6, 90000000, 8, '42'),
(5, 6, 90000000, 10, '55'),
(5, 6, 90000000, 11, '60'),
(6, 8, 5555555, 1, '3'),
(6, 8, 5555555, 2, '45'),
(6, 8, 5555555, 3, '23'),
(6, 8, 5555555, 4, '88'),
(6, 8, 5555555, 5, '93'),
(6, 8, 5555555, 7, '56'),
(6, 8, 5555555, 9, '115'),
(6, 8, 5555555, 11, '74'),
(6, 16, 555888, 2, '25'),
(6, 16, 555888, 4, '666'),
(6, 16, 555888, 5, '2'),
(6, 16, 555888, 6, '244'),
(6, 16, 555888, 8, '56'),
(6, 16, 555888, 9, '6'),
(6, 16, 555888, 10, '88'),
(6, 16, 555888, 11, '55'),
(6, 16, 555888, 12, '2'),
(7, 11, 7888888, 3, '55'),
(7, 11, 7888888, 5, '66'),
(7, 11, 7888888, 6, '44'),
(7, 11, 7888888, 7, '7'),
(7, 11, 7888888, 8, '7'),
(7, 11, 7888888, 9, '77'),
(7, 11, 7888888, 11, '88'),
(7, 11, 7888888, 12, '55'),
(8, 26, 555, 10, '55'),
(8, 26, 555, 11, '77');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chitiet_px`
--

CREATE TABLE `tbl_chitiet_px` (
  `id_px` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `id_size` int(11) DEFAULT NULL,
  `soluong` varchar(50) NOT NULL,
  `giaban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chitiet_px`
--

INSERT INTO `tbl_chitiet_px` (`id_px`, `id_pro`, `id_size`, `soluong`, `giaban`) VALUES
(11, 5, 4, '8', 1990000),
(11, 5, 9, '2', 1990000),
(11, 5, 10, '2', 1990000),
(12, 6, 1, '9', 2850000),
(12, 4, 1, '3', 2750000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_dm` int(11) NOT NULL,
  `danhmuc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `daxoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_dm`, `danhmuc`, `daxoa`) VALUES
(1, 'Giày sân cỏ nhân tạo', 0),
(2, 'Giày sân đá banh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_img_product`
--

CREATE TABLE `tbl_img_product` (
  `id_pro` int(11) NOT NULL,
  `src_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaitk`
--

CREATE TABLE `tbl_loaitk` (
  `id_loaitk` int(11) NOT NULL,
  `ten_loaitk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaitk`
--

INSERT INTO `tbl_loaitk` (`id_loaitk`, `ten_loaitk`) VALUES
(1, 'Khách Hàng'),
(2, 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mangxh`
--

CREATE TABLE `tbl_mangxh` (
  `tenmxh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_mangxh`
--

INSERT INTO `tbl_mangxh` (`tenmxh`, `url`) VALUES
('Facebook', '@sneakershoes.fp'),
('Twitter', '@sneakershoes.tt'),
('LinkedIn', '@sneakershoes.lk'),
('YouTube', '@sneakershoes.you'),
('Instagram', '@sneakershoes.asdas'),
('WhatsApp', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhacungcap`
--

CREATE TABLE `tbl_nhacungcap` (
  `id_ncc` int(11) NOT NULL,
  `ten_ncc` varchar(100) NOT NULL,
  `daxoa` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhacungcap`
--

INSERT INTO `tbl_nhacungcap` (`id_ncc`, `ten_ncc`, `daxoa`) VALUES
(1, 'Hoàng Hà', 0),
(2, 'Khải Lợi', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhanhieu`
--

CREATE TABLE `tbl_nhanhieu` (
  `id_nh` int(11) NOT NULL,
  `nhanhieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `daxoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhanhieu`
--

INSERT INTO `tbl_nhanhieu` (`id_nh`, `nhanhieu`, `daxoa`) VALUES
(1, 'NIKE', 0),
(2, 'ADIDAS', 0),
(3, 'DESPORTE', 0),
(4, 'MIZUNO', 0),
(5, 'ASICS', 0),
(6, 'GRAND SPORT', 0),
(7, 'PUMA', 0),
(8, 'KAMITO', 0),
(10, 'JOMA', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhomquyen`
--

CREATE TABLE `tbl_nhomquyen` (
  `nhomquyen` varchar(255) NOT NULL,
  `daxoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhomquyen`
--

INSERT INTO `tbl_nhomquyen` (`nhomquyen`, `daxoa`) VALUES
('Admin', 0),
('Nhân viên', 0),
('Quản lý', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phanquyen`
--

CREATE TABLE `tbl_phanquyen` (
  `nhomquyen` varchar(255) NOT NULL,
  `quyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phanquyen`
--

INSERT INTO `tbl_phanquyen` (`nhomquyen`, `quyen`) VALUES
('Quản lý', 'sp-xem'),
('Quản lý', 'sp-them'),
('Quản lý', 'sp-sua'),
('Quản lý', 'sp-xoa'),
('Quản lý', 'dh-xem'),
('Quản lý', 'dh-xacnhan'),
('Quản lý', 'slider-xem'),
('Quản lý', 'tk-xem'),
('Quản lý', 'tk-dtt'),
('Nhân viên', 'sp-xem'),
('Nhân viên', 'sp-them'),
('Nhân viên', 'sp-sua'),
('Nhân viên', 'sp-xoa'),
('Nhân viên', 'dh-xem'),
('Nhân viên', 'dh-xacnhan'),
('Nhân viên', 'tke-xem'),
('Nhân viên', 'dabo-xem'),
('Admin', 'sp-xem'),
('Admin', 'sp-them'),
('Admin', 'sp-sua'),
('Admin', 'sp-xoa'),
('Admin', 'dh-xem'),
('Admin', 'dh-xacnhan'),
('Admin', 'slider-xem'),
('Admin', 'slider-them'),
('Admin', 'slider-sua'),
('Admin', 'slider-xoa'),
('Admin', 'cds-xem'),
('Admin', 'cds-them'),
('Admin', 'cds-xoa'),
('Admin', 'tk-xem'),
('Admin', 'tk-dtt'),
('Admin', 'mxh-xem'),
('Admin', 'mxh-sua'),
('Admin', 'cdw-xem'),
('Admin', 'cdw-sua'),
('Admin', 'tke-xem'),
('Admin', 'dabo-xem');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phieunhap`
--

CREATE TABLE `tbl_phieunhap` (
  `id_pn` int(11) NOT NULL,
  `id_nv` int(11) DEFAULT NULL,
  `tongtien` varchar(50) NOT NULL,
  `ngaynhap` date DEFAULT NULL,
  `tinhtrang` int(1) NOT NULL,
  `id_ncc` int(11) NOT NULL,
  `tongsl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phieunhap`
--

INSERT INTO `tbl_phieunhap` (`id_pn`, `id_nv`, `tongtien`, `ngaynhap`, `tinhtrang`, `id_ncc`, `tongsl`) VALUES
(1, 1, '9500000', '2023-05-09', 0, 1, 190),
(2, 1, '9500000', '2023-05-09', 0, 1, 190),
(3, 1, '9500000', '2023-05-09', 0, 1, 190),
(4, 1, '9500000', '2023-05-09', 0, 1, 190),
(5, 1, '34290000000', '2023-05-09', 0, 1, 381),
(6, 1, '3397046707', '2023-05-09', 0, 1, 1641),
(7, 1, '3147666312', '2023-05-09', 0, 1, 399),
(8, 1, '73260', '2023-05-09', 0, 1, 132);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phieuxuat`
--

CREATE TABLE `tbl_phieuxuat` (
  `id_px` int(11) NOT NULL,
  `id_kh` int(11) DEFAULT NULL,
  `id_nv` int(11) DEFAULT NULL,
  `tongtien` varchar(50) NOT NULL,
  `ngaydat` date DEFAULT NULL,
  `daxoa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tongsl` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phieuxuat`
--

INSERT INTO `tbl_phieuxuat` (`id_px`, `id_kh`, `id_nv`, `tongtien`, `ngaydat`, `daxoa`, `tongsl`, `trangthai`) VALUES
(11, 5, 1, '23880000', '2023-05-09', '', 12, 1),
(12, 5, 1, '33900000', '2023-05-09', '', 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_pro` int(11) NOT NULL,
  `ten_pro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_nh` int(11) NOT NULL,
  `id_dm` int(11) NOT NULL,
  `giacu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `giamoi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_view` int(11) NOT NULL,
  `mota` text DEFAULT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `daxoa` int(11) NOT NULL,
  `pro_new` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id_pro`, `ten_pro`, `id_nh`, `id_dm`, `giacu`, `giamoi`, `total_view`, `mota`, `hinhanh`, `daxoa`, `pro_new`) VALUES
(4, 'NIKE ZOOM MERCURIAL VAPOR 15 PRO TF - DR5940-580 - SPECIAL EDITION', 1, 1, '50000', '2750000', 182, '<p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><strong>NIKE ZOOM MERCURIAL VAPOR - GIÀY ĐÁ BÓNG SÂN CỎ NHÂN TẠO</strong></p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Tháng 6/2022, Nike chính thức trình làng thế hệ tiếp theo của dòng giày Mercurial mang tên&nbsp;<strong>Air Zoom Mercurial</strong>. Cải tiến lớn nhất trên thế hệ này nằm ở bộ đệm Zoom Air được thiết kế độc quyền cho bóng đá. Bên cạnh đó, mọi chi tiết trên đôi giày lần này đều được thiết kế nhằm tối ưu hoá lối chơi tốc độ.&nbsp;</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><strong>Thông số kỹ thuật:</strong></p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Mẫu giày đá bóng&nbsp;<strong>ZOOM</strong>&nbsp;<strong>MERCURIAL VAPOR 15 PRO TF</strong>&nbsp;là mẫu giày đá bóng đế TF dành cho sân cỏ nhân tạo 5-7 người.</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><strong>Phân khúc</strong>: Pro (Chuyên nghiệp).</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><strong>Upper</strong>&nbsp;làm từ da tổng hợp cao cấp và sợi dệt. Trên bề mặt upper là các vân&nbsp;<strong>Hyperscreen 3D</strong>&nbsp;được thiết kế để mang lại cảm giác thật chân khi chạm và rê bóng ở tốc độ cao.&nbsp;</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Ở thế hệ 15 này, hãng đã phủ thêm lớp&nbsp;<strong>NikeSkin&nbsp;</strong>trên bề mặt upper làm tăng độ bám bóng, từ đó có thể kiểm soát bóng và rê bóng tốt hơn. Cấu trúc<strong>&nbsp;Speed Cage</strong>&nbsp;bên dưới bề mặt upper được làm từ chất liệu mỏng nhưng cực kỳ chắc chắn sẽ mang đến sự ôm chân vừa khít, đồng thời hạn chế sự xê dịch chân trong giày khi thi đấu ở cường độ cao.</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Phần<strong>&nbsp;lưỡi gà liền và cổ giày&nbsp;</strong>với chất liệu vải dệt có độ co giãn cao, hạn chế tình trạng tức vùng mu bàn chân đối với những anh em có mu bàn chân dày.&nbsp;</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><strong>Lớp lót gót&nbsp;</strong>giày được làm từ vải nhung, mang lại cảm giác ôm chân thoải mái.</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><strong>Bộ đệm</strong>&nbsp;vẫn giữ nguyên công nghệ&nbsp;<strong>Zoom Air&nbsp;</strong>như ở đời 14. Bộ đệm này không chỉ làm giảm phản lực từ bề mặt sân cứng lên các khớp gối, mà còn mang lại cảm giác êm ái và đàn hồi cho đôi chân. Đây là&nbsp;<strong>bộ đệm Zoom Air</strong>&nbsp;đầu tiên được thiết kế dành riêng cho bóng đá.</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><strong>Đế ngoài&nbsp;</strong>làm từ chất liệu cao su cao cấp với các đinh dạng Elip lớn nhỏ khác nhau, hỗ trợ khả năng xử lý bóng bằng gầm và tăng cường độ bám sân.</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Phù hợp với&nbsp;<strong>thiên hướng</strong>&nbsp;sử dụng kỹ thuật, tốc độ và dứt điểm.&nbsp;</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Các cầu thủ nổi tiếng đang mang trên chân dòng giày đá bóng&nbsp;<strong>Mercurial</strong>: Cristiano Ronaldo, Kylian Mbappe, Robert Lewandowski, Bruno Fernandes, Joshua Kimmich, Vinicius Jr…</p><p style=\"font-family: \" roboto=\"\" condensed\";=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Bộ sưu tập:&nbsp;<strong>Special Edition (11/2022).</strong></p>', 'product-featured-4.jpg', 0, 0),
(5, 'NIKE ZOOM MERCURIAL VAPOR 15 ACADEMY TF - DR5949-810 - WORLD CUP', 1, 1, '2150000', '1990000', 29, NULL, 'product-featured-5.jpg', 0, 0),
(6, 'NIKE ZOOM MERCURIAL VAPOR 15 PRO TF - DJ5605-146 - TRẮNG/XANH', 1, 1, '', '2850000', 10, '<p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE ZOOM MERCURIAL VAPOR 15 PRO TF - GIÀY ĐÁ BÓNG SÂN CỎ NHÂN TẠO</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Tháng 6/2022, Nike chính thức trình làng thế hệ tiếp theo của dòng giày Mercurial mang tên&nbsp;<strong>Air Zoom Mercurial</strong>. Cải tiến lớn nhất trên thế hệ này nằm ở bộ đệm Zoom Air được thiết kế độc quyền cho bóng đá. Bên cạnh đó, mọi chi tiết trên đôi giày lần này đều được thiết kế nhằm tối ưu hoá lối chơi tốc độ.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Nike khởi đầu năm 2023 với bộ sưu tập “Blast Pack” hoàn toàn mới. Ở lần phát hành này, nhà Swoosh đã giới thiệu những phiên bản Phantom GX cùng với Air Zoom Mercurial Superfly 9 và Vapor 15 trong phối màu trắng xanh vô cùng năng động.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thông số kỹ thuật:</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Mẫu giày đá bóng&nbsp;<strong>ZOOM</strong>&nbsp;<strong>MERCURIAL VAPOR 15 PRO TF</strong>&nbsp;là mẫu giày đá bóng đế TF dành cho sân cỏ nhân tạo 5-7 người.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phân khúc</strong>: Pro (Chuyên nghiệp).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Upper</strong>&nbsp;làm từ da tổng hợp cao cấp và sợi dệt. Trên bề mặt upper là các vân&nbsp;<strong>Hyperscreen 3D</strong>&nbsp;được thiết kế để mang lại cảm giác thật chân khi chạm và rê bóng ở tốc độ cao.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Ở thế hệ 15 này, hãng đã phủ thêm lớp&nbsp;<strong>NikeSkin&nbsp;</strong>trên bề mặt upper làm tăng độ bám bóng, từ đó có thể kiểm soát bóng và rê bóng tốt hơn. Cấu trúc<strong>&nbsp;Speed Cage</strong>&nbsp;bên dưới bề mặt upper được làm từ chất liệu mỏng nhưng cực kỳ chắc chắn sẽ mang đến sự ôm chân vừa khít, đồng thời hạn chế sự xê dịch chân trong giày khi thi đấu ở cường độ cao.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phần<strong>&nbsp;lưỡi gà liền và cổ giày&nbsp;</strong>với chất liệu vải dệt có độ co giãn cao, hạn chế tình trạng tức vùng mu bàn chân đối với những anh em có mu bàn chân dày.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Lớp lót gót&nbsp;</strong>giày được làm từ vải nhung, mang lại cảm giác ôm chân thoải mái.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Bộ đệm</strong>&nbsp;vẫn giữ nguyên công nghệ&nbsp;<strong>Zoom Air&nbsp;</strong>như ở đời 14. Bộ đệm này không chỉ làm giảm phản lực từ bề mặt sân cứng lên các khớp gối, mà còn mang lại cảm giác êm ái và đàn hồi cho đôi chân. Đây là&nbsp;<strong>bộ đệm Zoom Air</strong>&nbsp;đầu tiên được thiết kế dành riêng cho bóng đá.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Đế ngoài&nbsp;</strong>làm từ chất liệu cao su cao cấp với các đinh dạng Elip lớn nhỏ khác nhau, hỗ trợ khả năng xử lý bóng bằng gầm và tăng cường độ bám sân.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phù hợp với&nbsp;<strong>thiên hướng</strong>&nbsp;sử dụng kỹ thuật, tốc độ và dứt điểm.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Các cầu thủ nổi tiếng đang mang trên chân dòng giày đá bóng&nbsp;<strong>Mercurial</strong>: Cristiano Ronaldo, Kylian Mbappe, Robert Lewandowski, Bruno Fernandes, Joshua Kimmich, Vinicius Jr…</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ sưu tập:<strong>&nbsp;The Blast Pack</strong>&nbsp;(01/2023).</p>', 'product-featured-6.jpg', 0, 0),
(7, 'NIKE ZOOM MERCURIAL VAPOR 15 ACADEMY TF - DJ5635-780 - VÀNG/HỒNG', 1, 1, '', '2150000', 2, '<p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE MERCURIAL VAPOR 15&nbsp;ACADEMY TF - GIÀY ĐÁ BÓNG SÂN CỎ NHÂN TẠO</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Tháng 6/2022, Nike chính thức trình làng thế hệ tiếp theo của dòng giày Mercurial mang tên&nbsp;<strong>Air Zoom Mercurial</strong>. Cải tiến lớn nhất trên thế hệ này nằm ở bộ đệm Zoom Air được thiết kế độc quyền cho bóng đá. Bên cạnh đó, mọi chi tiết trên đôi giày lần này đều được thiết kế nhằm tối ưu hoá lối chơi tốc độ.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Nike đã chính thức ra mắt bộ sưu tập giày đá banh đầu tiên trong mùa giải 2022/23. Mang tên&nbsp;<strong>“Lucent Pack”</strong>&nbsp;- đây là bộ sưu tập sẽ mang đến những phối màu hoàn toàn mới dành cho 3 silo chính của hãng là Air Zoom Mercurial, Phantom GT 2 và Tiempo.&nbsp;Một mùa giải mới, một khởi đầu hoàn toàn mới cần những điều tươi mới để thúc đẩy động lực thành công. Vì thế, thương hiệu thể thao hàng đầu xứ sở Cờ Hoa đã không ngần ngại chọn các gam màu cực kỳ bắt mắt và sống động cho những “đứa con cưng” của mình.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thông số kỹ thuật</strong><br>Mẫu giày đá bóng&nbsp;<strong>MERCURIAL ZOOM VAPOR 15 ACADEMY TF</strong>&nbsp;là mẫu giày đá bóng đế TF dành cho sân cỏ nhân tạo 5-7 người.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phân khúc</strong>: Academy (Tầm trung).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Upper</strong>&nbsp;làm từ da tổng hợp mềm mại giúp tăng cảm giác bóng. Ở thế hệ 15 này, hãng đã phủ thêm lớp&nbsp;<strong>NikeSkin</strong>&nbsp;trên bề mặt upper làm tăng độ bám bóng, từ đó có thể kiểm soát bóng và rê bóng tốt hơn.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Cấu trúc&nbsp;<strong>Speed Cage</strong>&nbsp;bên dưới bề mặt upper được làm từ chất liệu mỏng nhưng cực kỳ chắc chắn sẽ mang đến sự ôm chân vừa khít, đồng thời hạn chế sự xê dịch chân trong giày khi thi đấu ở cường độ cao.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Lưỡi gà</strong>&nbsp;được thiết kế cố định ở phần nửa trên sẽ không gây ra tình trạng lệch lưỡi gà. &nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Gót giày</strong>&nbsp;được làm từ vải nhung, mang lại cảm giác ôm chân thoải mái.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Cải tiến lớn nhất trên thế hệ này chính là sự xuất hiện của<strong>&nbsp;bộ đệm Zoom Air&nbsp;</strong>ở phần gót giày. Bộ đệm này không chỉ làm giảm phản lực từ bề mặt sân cứng lên các khớp gối, mà còn mang lại cảm giác êm ái và đàn hồi cho đôi chân.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Đế ngoài</strong>&nbsp;làm từ chất liệu cao su cao cấp với các đinh dạng Elip lớn nhỏ khác nhau, hỗ trợ khả năng xử lý bóng bằng gầm và tăng cường độ bám sân.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phù hợp với&nbsp;<strong>thiên hướng&nbsp;</strong>sử dụng kỹ thuật, tốc độ và dứt điểm.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Các cầu thủ nổi tiếng đang mang trên chân dòng giày đá bóng&nbsp;<strong>Mercurial</strong>: Cristiano Ronaldo, Kylian Mbappe, Robert Lewandowski, Bruno Fernandes, Joshua Kimmich, Vinicius Jr…</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ sưu tập:&nbsp;<strong>The Lucent Pack (08/2022).</strong></p>', 'product-featured-7.jpg', 0, 0),
(8, 'NIKE TIEMPO LEGEND 9 ACADEMY TF - DA1191-146 - TRẮNG XÁM/XANH', 1, 1, '', '1850000', 0, '<p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE TIEMPO LEGEND 9 ACADEMY TF&nbsp;- GIÀY ĐÁ BÓNG SÂN CỎ NHÂN TẠO</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Đầu tháng 07/2021, Nike đã cho ra mắt&nbsp;thế hệ thứ tiếp theo của dòng giày đá bóng huyền thoại&nbsp;của mình đó là giày đá bóng Nike Tiempo Legend 9. Ngoài việc kế thừa&nbsp;lại những đặc tính&nbsp;tốt nhất từ các thế hệ đàn anh đi trước, đôi Nike Tiempo Legend 9 còn được giới thiệu với&nbsp;thiết kế mới cực kỳ tiên tiến. Đây được xem là thế hệ giày Nike Tiempo&nbsp;nhẹ nhất từ trước đến nay của nhà&nbsp;Swoosh.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Nike khởi đầu năm 2023 với bộ sưu tập “Blast Pack” hoàn toàn mới. Ở lần phát hành này, nhà Swoosh đã giới thiệu những phiên bản Phantom GX cùng với Air Zoom Mercurial Superfly 9 và Vapor 15 trong phối màu trắng xanh vô cùng năng động.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thông số kỹ thuật:</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Dòng sản phẩm dành cho bề mặt sân cỏ nhân tạo (Đế TF).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phân khúc: Academy&nbsp;(Tầm trung).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Upper: Được làm từ da&nbsp;Bê (Calfskin). Ở Tiempo 9, Nike đã bỏ đi thiết kế vân kim cương trên bề mặt như người tiền nhiệm, thay vào đó là các cấu trúc được làm nổi lên bởi những foam pods (các phần tử bọt khí) ở những vùng tiếp xúc bóng chủ yếu, hỗ trợ tốt hơn khả năng rê dắt, chuyền và sút bóng.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ đệm&nbsp;cao su cao cấp cho khả năng đàn hồi khi dậm nhảy. Phần gót giày cũng được làm bằng chất liệu vả&nbsp;đem lại sự thoải mái khi mang vào chân.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Đế giày: Được làm từ chất liệu cao su cao cấp.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Thiết kế đinh giày: Các đinh cao su nhỏ trải đều khắp bề mặt đế giày, cho khả năng phân bố lực bám đều khắp cả bàn chân.&nbsp;Thiết kế đinh cũng khá đặc biệt khi Nike cũng đã thay đổi hình dạng từ các đinh có hình chữ nhật thành những đinh tròn, đinh eclipse với nhiều kích thước khác nhau đem lại khả năng linh hoạt trong từng bước di chuyển.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Độ ôm chân: Ôm vừa.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Thiên hướng sử dụng: Kỹ thuật, tranh chấp bóng.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ sưu tập:<strong>&nbsp;The Blast Pack</strong>&nbsp;(01/2023).</p>', 'product-featured-8.jpg', 0, 0),
(9, 'NIKE TIEMPO REACT LEGEND 9 PRO TF - DA1192-810 - VÀNG ĐỒNG', 1, 1, '', '2690000', 2, '<p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE TIEMPO LEGEND 9 PRO TF -&nbsp;GIÀY ĐÁ BÓNG SÂN CỎ NHÂN TẠO</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Đầu tháng 07/2021, Nike đã cho ra mắt&nbsp;thế hệ thứ tiếp theo của dòng giày đá bóng huyền thoại&nbsp;của mình đó là giày đá bóng Nike Tiempo Legend 9. Ngoài việc kế thừa&nbsp;lại những đặc tính&nbsp;tốt nhất từ các thế hệ đàn anh đi trước, đôi Nike Tiempo Legend 9 còn được giới thiệu với&nbsp;thiết kế mới cực kỳ tiên tiến. Đây được xem là thế hệ giày Nike Tiempo&nbsp;nhẹ nhất từ trước đến nay của nhà&nbsp;Swoosh.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thông số kỹ thuật:</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE TIEMPO REACT LEGEND 9 PRO TF</strong>&nbsp;là mẫu giày đá bóng đế TF dành cho sân cỏ nhân tạo từ 5-7 người.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phân khúc:</strong>&nbsp;Pro (chuyên nghiệp).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phần Upper&nbsp;</strong>được cấu thành từ da bê cao cấp, mềm và dày hơn đáng kể so với người tiền nhiệm, mang lại cảm giác bóng tốt nhất cho người chơi. Trên bề mặt upper là các cấu trúc được làm nổi lên bởi những foam pods (các phần tử bọt khí) ở những vùng tiếp xúc bóng chủ yếu, làm tăng diện tích bề mặt tiếp xúc, giúp xử lý bóng tốt hơn và tạo lực cho các pha sút và chuyền bóng.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Lưỡi gà&nbsp;</strong>liền được làm từ chất liệu vải thun thoáng khí, giúp hỗ trợ tản nhiệt cho bàn chân khi chơi bóng. Ngoài ra, phần lưỡi gà còn có độ co giãn cao, thích hợp với những người có mu bàn chân cao và dày.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Gót giày&nbsp;</strong>được làm từ da tổng hợp, mang lại sự êm ái và vừa vặn cho bàn chân. Phần gót đã được làm mềm hơn, hạn chế tình trạng đau hoặc xước gót thường gặp trên Tiempo 8.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Bộ đệm React&nbsp;</strong>trứ danh đã được Nike tích hợp trên thế hệ thứ 9 này. React chính là midsole có độ êm ái và đàn hồi nhất trong số các bộ đệm thuộc nhà Swoosh, hỗ trợ tối đa các tình huống bứt tốc và di chuyển ở cường độ cao, đặc biệt là trong các pha xoay trở nhanh thường gặp khi chơi bóng ở sân 5,7.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Bộ đế và đinh giày</strong>&nbsp;được làm từ chất liệu cao su cao cấp. Các đinh có hình dáng elíp với nhiều kích thước khác nhau, phủ đều mặt đế. Đặc biệt là với thiết kế và độ cao tương đối của các đinh, người chơi có thể di chuyển linh hoạt hơn và dễ dàng xử lý bóng hơn bằng gầm giày.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phù hợp với thiên hướng kiểm soát bóng, sử dụng kỹ thuật và đánh chặn.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Các cầu thủ nổi tiếng</strong>&nbsp;mang trên chân dòng giày đá bóng Tiempo Legend 9: Virgil Van Dijk, Jorginho, Thibaut Courtois, Jordan Henderson, Lucas Hernandez…</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Độ ôm chân</strong>: Ôm vừa, phù hợp cho chân bè.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ sưu tập:&nbsp;<strong>Special Edition (11/2022).</strong></p>', 'product-featured-9.jpg', 0, 0),
(10, 'NIKE ZOOM MERCURIAL VAPOR 15 PRO TF - DJ5605-001 - ĐEN/TRẮNG', 1, 1, ' 3050000', '2590000', 0, '<p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE ZOOM MERCURIAL VAPOR 15 PRO TF</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Tháng 6/2022, Nike chính thức trình làng thế hệ tiếp theo của dòng giày Mercurial mang tên&nbsp;<strong>Air Zoom Mercurial</strong>. Cải tiến lớn nhất trên thế hệ này nằm ở bộ đệm Zoom Air được thiết kế độc quyền cho bóng đá. Bên cạnh đó, mọi chi tiết trên đôi giày lần này đều được thiết kế nhằm tối ưu hoá lối chơi tốc độ.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Có lẽ không phải ai trong chúng ta cũng đều ấn tượng với những phối màu bắt mắt thường xuất hiện trên chân cầu thủ. Một số người không thích trở thành tâm điểm trên sân với những đôi giày có phối màu sặc sỡ, thay vào đó họ sẽ để lối chơi của mình khẳng định bản thân họ. Nhưng bên cạnh đó, họ vẫn muốn được tận hưởng những công nghệ mới nhất từ các đôi giày. Thấu hiểu được tâm tư đó, các hãng thể thao vẫn thỉnh thoảng cho ra mắt những bộ sưu tập giày đá banh với gam màu đen chủ đạo. Và lần này là phiên bản mới nhất của&nbsp;<strong>“SHADOW PACK”</strong>. Bộ sưu tập lần này của nhà Swoosh sẽ mang đến cơ hội đầu tiên cho những ai theo đuổi phong cách tối giản muốn trải nghiệm một Air Zoom Mercurial hoàn toàn mới, ở cả hai phiên bản Superfly 9 và Vapor 15.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thông số kỹ thuật:</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Mẫu giày đá bóng&nbsp;<strong>MERCURIAL ZOOM VAPOR 15 PRO TF</strong>&nbsp;là mẫu giày đá bóng đế TF dành cho sân cỏ nhân tạo 5-7 người.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phân khúc</strong>: Pro (Chuyên nghiệp).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Upper</strong>&nbsp;làm từ da tổng hợp cao cấp và sợi dệt. Trên bề mặt upper là các vân&nbsp;<strong>Hyperscreen 3D</strong>&nbsp;được thiết kế để mang lại cảm giác thật chân khi chạm và rê bóng ở tốc độ cao.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Ở thế hệ 15 này, hãng đã phủ thêm lớp&nbsp;<strong>NikeSkin&nbsp;</strong>trên bề mặt upper làm tăng độ bám bóng, từ đó có thể kiểm soát bóng và rê bóng tốt hơn. Cấu trúc<strong>&nbsp;Speed Cage</strong>&nbsp;bên dưới bề mặt upper được làm từ chất liệu mỏng nhưng cực kỳ chắc chắn sẽ mang đến sự ôm chân vừa khít, đồng thời hạn chế sự xê dịch chân trong giày khi thi đấu ở cường độ cao.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phần<strong>&nbsp;lưỡi gà liền và cổ giày&nbsp;</strong>với chất liệu vải dệt có độ co giãn cao, hạn chế tình trạng tức vùng mu bàn chân đối với những anh em có mu bàn chân dày.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Lớp lót gót&nbsp;</strong>giày được làm từ vải nhung, mang lại cảm giác ôm chân thoải mái.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Bộ đệm</strong>&nbsp;vẫn giữ nguyên công nghệ&nbsp;<strong>Zoom Air&nbsp;</strong>như ở đời 14. Bộ đệm này không chỉ làm giảm phản lực từ bề mặt sân cứng lên các khớp gối, mà còn mang lại cảm giác êm ái và đàn hồi cho đôi chân. Đây là&nbsp;<strong>bộ đệm Zoom Air</strong>&nbsp;đầu tiên được thiết kế dành riêng cho bóng đá.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Đế ngoài&nbsp;</strong>làm từ chất liệu cao su cao cấp với các đinh dạng Elip lớn nhỏ khác nhau, hỗ trợ khả năng xử lý bóng bằng gầm và tăng cường độ bám sân.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phù hợp với&nbsp;<strong>thiên hướng</strong>&nbsp;sử dụng kỹ thuật, tốc độ và dứt điểm.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Các cầu thủ nổi tiếng đang mang trên chân dòng giày đá bóng&nbsp;<strong>Mercurial</strong>: Cristiano Ronaldo, Kylian Mbappe, Robert Lewandowski, Bruno Fernandes, Joshua Kimmich, Vinicius Jr…</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ sưu tập:&nbsp;<strong>Shadow Pack (07/2022).</strong></p>', 'product-featured-10.jpg', 0, 0),
(11, 'NIKE ZOOM MERCURIAL VAPOR 15 ACADEMY TF - DJ5635-146 - TRẮNG/XANH', 1, 1, '', '2190000', 0, '<p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE MERCURIAL VAPOR 15&nbsp;ACADEMY TF - GIÀY ĐÁ BÓNG SÂN CỎ NHÂN TẠO</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Tháng 6/2022, Nike chính thức trình làng thế hệ tiếp theo của dòng giày Mercurial mang tên&nbsp;<strong>Air Zoom Mercurial</strong>. Cải tiến lớn nhất trên thế hệ này nằm ở bộ đệm Zoom Air được thiết kế độc quyền cho bóng đá. Bên cạnh đó, mọi chi tiết trên đôi giày lần này đều được thiết kế nhằm tối ưu hoá lối chơi tốc độ.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Nike khởi đầu năm 2023 với bộ sưu tập “Blast Pack” hoàn toàn mới. Ở lần phát hành này, nhà Swoosh đã giới thiệu những phiên bản Phantom GX cùng với Air Zoom Mercurial Superfly 9 và Vapor 15 trong phối màu trắng xanh vô cùng năng động.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thông số kỹ thuật</strong><br>Mẫu giày đá bóng&nbsp;<strong>MERCURIAL ZOOM VAPOR 15 ACADEMY TF</strong>&nbsp;là mẫu giày đá bóng đế TF dành cho sân cỏ nhân tạo 5-7 người.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phân khúc</strong>: Academy (Tầm trung).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Upper</strong>&nbsp;làm từ da tổng hợp mềm mại giúp tăng cảm giác bóng. Ở thế hệ 15 này, hãng đã phủ thêm lớp&nbsp;<strong>NikeSkin</strong>&nbsp;trên bề mặt upper làm tăng độ bám bóng, từ đó có thể kiểm soát bóng và rê bóng tốt hơn.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Cấu trúc&nbsp;<strong>Speed Cage</strong>&nbsp;bên dưới bề mặt upper được làm từ chất liệu mỏng nhưng cực kỳ chắc chắn sẽ mang đến sự ôm chân vừa khít, đồng thời hạn chế sự xê dịch chân trong giày khi thi đấu ở cường độ cao.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Lưỡi gà</strong>&nbsp;được thiết kế cố định ở phần nửa trên sẽ không gây ra tình trạng lệch lưỡi gà. &nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Gót giày</strong>&nbsp;được làm từ vải nhung, mang lại cảm giác ôm chân thoải mái.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Cải tiến lớn nhất trên thế hệ này chính là sự xuất hiện của<strong>&nbsp;bộ đệm Zoom Air&nbsp;</strong>ở phần gót giày. Bộ đệm này không chỉ làm giảm phản lực từ bề mặt sân cứng lên các khớp gối, mà còn mang lại cảm giác êm ái và đàn hồi cho đôi chân.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Đế ngoài</strong>&nbsp;làm từ chất liệu cao su cao cấp với các đinh dạng Elip lớn nhỏ khác nhau, hỗ trợ khả năng xử lý bóng bằng gầm và tăng cường độ bám sân.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phù hợp với&nbsp;<strong>thiên hướng&nbsp;</strong>sử dụng kỹ thuật, tốc độ và dứt điểm.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Các cầu thủ nổi tiếng đang mang trên chân dòng giày đá bóng&nbsp;<strong>Mercurial</strong>: Cristiano Ronaldo, Kylian Mbappe, Robert Lewandowski, Bruno Fernandes, Joshua Kimmich, Vinicius Jr…</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ sưu tập:<strong>&nbsp;The Blast Pack</strong>&nbsp;(01/2023).</p>', 'product-featured-11.jpg', 0, 0),
(12, 'NIKE TIEMPO REACT LEGEND 9 PRO TF - DA1192-146 - TRẮNG/XANH', 1, 1, '', '2690000', 1, '<p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE TIEMPO LEGEND 9 PRO TF -&nbsp;GIÀY ĐÁ BÓNG SÂN CỎ NHÂN TẠO</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Đầu tháng 07/2021, Nike đã cho ra mắt&nbsp;thế hệ thứ tiếp theo của dòng giày đá bóng huyền thoại&nbsp;của mình đó là giày đá bóng Nike Tiempo Legend 9. Ngoài việc kế thừa&nbsp;lại những đặc tính&nbsp;tốt nhất từ các thế hệ đàn anh đi trước, đôi Nike Tiempo Legend 9 còn được giới thiệu với&nbsp;thiết kế mới cực kỳ tiên tiến. Đây được xem là thế hệ giày Nike Tiempo&nbsp;nhẹ nhất từ trước đến nay của nhà&nbsp;Swoosh.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Nike khởi đầu năm 2023 với bộ sưu tập “Blast Pack” hoàn toàn mới. Ở lần phát hành này, nhà Swoosh đã giới thiệu những phiên bản Phantom GX cùng với Air Zoom Mercurial Superfly 9 và Vapor 15 trong phối màu trắng xanh vô cùng năng động.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thông số kỹ thuật:</strong></p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>NIKE TIEMPO REACT LEGEND 9 PRO TF</strong>&nbsp;là mẫu giày đá bóng đế TF dành cho sân cỏ nhân tạo từ 5-7 người.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phân khúc:</strong>&nbsp;Pro (chuyên nghiệp).</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Phần Upper&nbsp;</strong>được cấu thành từ da bê cao cấp, mềm và dày hơn đáng kể so với người tiền nhiệm, mang lại cảm giác bóng tốt nhất cho người chơi. Trên bề mặt upper là các cấu trúc được làm nổi lên bởi những foam pods (các phần tử bọt khí) ở những vùng tiếp xúc bóng chủ yếu, làm tăng diện tích bề mặt tiếp xúc, giúp xử lý bóng tốt hơn và tạo lực cho các pha sút và chuyền bóng.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Lưỡi gà&nbsp;</strong>liền được làm từ chất liệu vải thun thoáng khí, giúp hỗ trợ tản nhiệt cho bàn chân khi chơi bóng. Ngoài ra, phần lưỡi gà còn có độ co giãn cao, thích hợp với những người có mu bàn chân cao và dày.&nbsp;</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Gót giày&nbsp;</strong>được làm từ da tổng hợp, mang lại sự êm ái và vừa vặn cho bàn chân. Phần gót đã được làm mềm hơn, hạn chế tình trạng đau hoặc xước gót thường gặp trên Tiempo 8.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Bộ đệm React&nbsp;</strong>trứ danh đã được Nike tích hợp trên thế hệ thứ 9 này. React chính là midsole có độ êm ái và đàn hồi nhất trong số các bộ đệm thuộc nhà Swoosh, hỗ trợ tối đa các tình huống bứt tốc và di chuyển ở cường độ cao, đặc biệt là trong các pha xoay trở nhanh thường gặp khi chơi bóng ở sân 5,7.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Bộ đế và đinh giày</strong>&nbsp;được làm từ chất liệu cao su cao cấp. Các đinh có hình dáng elíp với nhiều kích thước khác nhau, phủ đều mặt đế. Đặc biệt là với thiết kế và độ cao tương đối của các đinh, người chơi có thể di chuyển linh hoạt hơn và dễ dàng xử lý bóng hơn bằng gầm giày.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Phù hợp với thiên hướng kiểm soát bóng, sử dụng kỹ thuật và đánh chặn.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Các cầu thủ nổi tiếng</strong>&nbsp;mang trên chân dòng giày đá bóng Tiempo Legend 9: Virgil Van Dijk, Jorginho, Thibaut Courtois, Jordan Henderson, Lucas Hernandez…</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Độ ôm chân</strong>: Ôm vừa, phù hợp cho chân bè.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\"><strong>Thiên hướng sử dụng:</strong>&nbsp;Kỹ thuật, tranh chấp bóng.</p><p style=\"font-family: &quot;Roboto Condensed&quot;; font-size: 14px; color: rgb(0, 0, 0);\">Bộ sưu tập:<strong>&nbsp;The Blast Pack</strong>&nbsp;(01/2023).</p>', 'product-featured-12.jpg', 0, 0),
(13, 'NIKE TIEMPO REACT LEGEND 9 PRO TF - DR5984-510 - WORLD CUP', 1, 1, '', '2690000', 0, NULL, 'product-featured-13.jpg', 0, 0),
(14, 'ADIDAS X SPEEDPORTAL.1 TF - GZ2440 - HỒNG/ĐEN', 2, 1, ' 2850000', '2650000', 3, NULL, 'product-featured-14.jpg', 0, 0),
(15, 'ADIDAS X SPEEDPORTAL.3 TF - GZ2470 - HỒNG/ĐEN', 2, 1, '', '1850000', 0, NULL, 'product-featured-15.jpg', 0, 0),
(16, 'ADIDAS X SPEEDFLOW MESSI.1 TF - GW3864 - VÀNG/ĐEN', 2, 1, '2850000', '255000', 1, NULL, 'product-featured-16.jpg', 0, 0),
(17, 'ADIDAS X SPEEDPORTAL MESSI.3 TF - GZ5142 - CAM/ĐEN', 2, 1, '', '1890000', 0, NULL, 'product-featured-17.jpg', 0, 0),
(18, 'ADIDAS PREDATOR EDGE.3 TF - GW9999 - XANH/TRẮNG', 2, 1, '2150000', '1890000', 0, NULL, 'product-featured-18.jpg', 0, 0),
(19, 'ADIDAS PREDATOR EDGE.1 TF - GW0952 - CAM/ĐỎ', 2, 1, '', '2990000', 7, NULL, 'product-featured-19.jpg', 0, 0),
(20, 'ADIDAS PREDATOR EDGE.3 TF - GV8536 - CAM/ĐỎ', 2, 1, '215000', '1950000', 0, NULL, 'product-featured-20.jpg', 0, 0),
(21, 'ADIDAS PREDATOR ACCURACY.1 TF - GW4633 - HỒNG/ĐEN', 2, 1, '', '2750000', 54, NULL, 'product-featured-21.jpg', 0, 0),
(22, 'ADIDAS X SPEEDPORTAL.1 TF - GW8973 - XANH LÁ MẠ', 2, 1, '', '2850000', 3, NULL, 'product-featured-22.jpg', 0, 0),
(23, 'ADIDAS PREDATOR ACCURACY.3 L TF - GW4640 - ĐEN/HỒNG', 2, 1, '', '1900000', 3, NULL, 'product-featured-23.jpg', 0, 0),
(24, 'NIKE STREET GATO - DC8466-146 - TRẮNG/XANH', 1, 2, '2150000', '1950000', 0, NULL, 'product-featured-24.jpg', 0, 0),
(25, 'NIKE STREET GATO - DC8466-437 - XANH HOÀNG GIA', 1, 2, '2150000', '1950000', 0, NULL, 'product-featured-25.jpg', 0, 0),
(26, 'NIKE STREET GATO - DC8466-611 - ĐỎ', 1, 2, ' 2150000', '1950000', 0, NULL, 'product-featured-26.jpg', 0, 0),
(27, 'NIKE TIEMPO LEGEND 9 ACADEMY IC - DR5981-510 - WORLD CUP', 1, 2, '1850000', '1750000', 0, NULL, 'product-featured-27.jpg', 0, 0),
(28, 'NIKE REACT TIEMPO LEGEND 9 PRO IC - DA1183-810 - VÀNG ĐỒNG', 1, 2, ' 2690000', '2550000', 0, NULL, 'product-featured-28.jpg', 0, 0),
(29, 'NIKE TIEMPO LEGEND 9 ACADEMY IC - DA1190-001 - ĐEN/TRẮNG', 1, 2, '', '1850000', 0, NULL, 'product-featured-29.jpg', 0, 0),
(30, 'NIKE STREET GATO - DC8466-171 - TRẮNG/VÀNG', 1, 2, '', '2150000', 0, NULL, 'product-featured-30.jpg', 0, 0),
(31, 'NIKE STREET GATO - DC8466-010 - ĐEN/TRẮNG', 1, 2, '2150000', '1950000', 0, NULL, 'product-featured-31.jpg', 0, 0),
(32, 'NIKE STREET GATO - DC8466-081 - ĐEN/CAM', 1, 2, ' 2150000', '1950000', 0, NULL, 'product-featured-32.jpg', 0, 0),
(33, 'NIKE LUNAR GATO II - 580456-061 - ĐEN/TRẮNG/ĐỎ', 1, 2, '', '2350000', 1, NULL, 'product-featured-33.jpg', 0, 0),
(36, 'ấdajsdnaks', 2, 1, '3000', '50000', 0, 'âsdasds', 'product-featured-36.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_pro_soluong`
--

CREATE TABLE `tbl_pro_soluong` (
  `id_pro` int(11) NOT NULL,
  `id_size` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_pro_soluong`
--

INSERT INTO `tbl_pro_soluong` (`id_pro`, `id_size`, `soluong`) VALUES
(4, 1, 7),
(4, 6, 0),
(5, 4, 18),
(5, 9, 72),
(5, 10, 60),
(6, 1, 91),
(6, 2, 50),
(6, 3, 17),
(6, 4, 24),
(6, 6, 33),
(6, 8, 42),
(6, 10, 55),
(6, 11, 60),
(8, 1, 3),
(8, 2, 45),
(8, 3, 23),
(8, 4, 88),
(8, 5, 93),
(8, 7, 56),
(8, 9, 115),
(8, 11, 74),
(16, 2, 25),
(16, 4, 666),
(16, 5, 2),
(16, 6, 244),
(16, 8, 56),
(16, 9, 6),
(16, 10, 88),
(16, 11, 55),
(16, 12, 2),
(11, 3, 55),
(11, 5, 66),
(11, 6, 44),
(11, 7, 7),
(11, 8, 7),
(11, 9, 77),
(11, 11, 88),
(11, 12, 55),
(26, 10, 55),
(26, 11, 77);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_quyen`
--

CREATE TABLE `tbl_quyen` (
  `quyen` varchar(255) NOT NULL,
  `daxoa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_quyen`
--

INSERT INTO `tbl_quyen` (`quyen`, `daxoa`) VALUES
('cds-sua', '0'),
('cds-them', '0'),
('cds-xem', '0'),
('cds-xoa', '0'),
('cdw-sua', '0'),
('cdw-xem', '0'),
('dabo-xem', '0'),
('dh-xacnhan', '0'),
('dh-xem', '0'),
('dh-xoa', '0'),
('mxh-sua', '0'),
('mxh-xem', '0'),
('pq-sua', '0'),
('pq-xem', '0'),
('pq-xoa', '0'),
('slider-sua', '0'),
('slider-them', '0'),
('slider-xem', '0'),
('slider-xoa', '0'),
('sp-sua', '0'),
('sp-them', '0'),
('sp-xem', '0'),
('sp-xoa', '0'),
('tk-dtt', '0'),
('tk-xem', '0'),
('tk-xoa', '0'),
('tke-xem', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_map_iframe` varchar(255) NOT NULL,
  `footer_copyright` varchar(255) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `footer_about` varchar(255) NOT NULL,
  `id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_setting`
--

INSERT INTO `tbl_setting` (`logo`, `favicon`, `contact_email`, `contact_phone`, `contact_map_iframe`, `footer_copyright`, `contact_address`, `footer_about`, `id`) VALUES
('', '', '', '', '', '', '', '', 0),
('logo.png', 'favicon.png', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id_size` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `daxoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`id_size`, `size`, `daxoa`) VALUES
(1, '39', 0),
(2, '40', 0),
(3, '41', 0),
(4, '42', 0),
(5, '43', 0),
(6, '44', 0),
(7, '45', 0),
(8, '46', 0),
(9, '47', 0),
(10, '48', 0),
(11, '49', 0),
(12, '50', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sliders`
--

CREATE TABLE `tbl_sliders` (
  `id_sliders` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sliders`
--

INSERT INTO `tbl_sliders` (`id_sliders`, `photo`) VALUES
(1, 'slider-0.jpg'),
(2, 'slider-1.jpg'),
(3, 'slider-2.jpg'),
(4, 'slider-3.jpg'),
(5, 'slider-4.jpg'),
(6, 'slider-5.jpg'),
(7, 'slider-6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_spbanchay`
--

CREATE TABLE `tbl_spbanchay` (
  `id_pro` int(11) NOT NULL,
  `sldaban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(11) NOT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `ten_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `sodth` varchar(50) NOT NULL,
  `diachi` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `trangthai` int(1) NOT NULL,
  `nhomquyen` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT '0',
  `active_token` varchar(50) DEFAULT NULL,
  `reset_token` varchar(50) DEFAULT NULL,
  `id_loaitk` int(1) DEFAULT 1,
  `daxoa` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `matkhau`, `ten_user`, `email`, `sodth`, `diachi`, `avatar`, `trangthai`, `nhomquyen`, `is_active`, `active_token`, `reset_token`, `id_loaitk`, `daxoa`) VALUES
(1, '12345', 'Administrator', 'admin@gmail.com', '0123789456', '273 An Dương Vương', 'user-1.jpg', 0, 'Admin', '1', '', NULL, 2, 0),
(2, '12345', 'Nguyen Van A', 'nva@gmail.com', '0147258369', 'Chua co nha', 'user-2.jpg', 0, 'Nhân viên', '1', '', NULL, 2, 0),
(3, '000000', 'Hữu Kiên', 'nguhuukien03@gmail.com', '0123456780', 'hóc môn', '', 0, 'Admin', '1', '', NULL, 2, 0),
(5, '12345', 'Lê Tân', 'nvb@gmail.com', '0231232239', 'TP Hồ Chí Minh', 'user-5.jpg', 0, NULL, '1', '', NULL, 1, 0),
(35, '123456789', 'abc', 'nguhuukien01@gmail.com', '0147258369', 'Tp Hồ chi minh', NULL, 0, NULL, '1', NULL, NULL, 1, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_chitiet_pn`
--
ALTER TABLE `tbl_chitiet_pn`
  ADD KEY `id_size` (`id_size`),
  ADD KEY `id_pn` (`id_pn`);

--
-- Chỉ mục cho bảng `tbl_chitiet_px`
--
ALTER TABLE `tbl_chitiet_px`
  ADD KEY `id_pro` (`id_pro`),
  ADD KEY `id_size` (`id_size`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  ADD KEY `id_pro` (`id_pro`);

--
-- Chỉ mục cho bảng `tbl_loaitk`
--
ALTER TABLE `tbl_loaitk`
  ADD PRIMARY KEY (`id_loaitk`);

--
-- Chỉ mục cho bảng `tbl_nhacungcap`
--
ALTER TABLE `tbl_nhacungcap`
  ADD PRIMARY KEY (`id_ncc`);

--
-- Chỉ mục cho bảng `tbl_nhanhieu`
--
ALTER TABLE `tbl_nhanhieu`
  ADD PRIMARY KEY (`id_nh`);

--
-- Chỉ mục cho bảng `tbl_nhomquyen`
--
ALTER TABLE `tbl_nhomquyen`
  ADD PRIMARY KEY (`nhomquyen`);

--
-- Chỉ mục cho bảng `tbl_phanquyen`
--
ALTER TABLE `tbl_phanquyen`
  ADD KEY `nhomquyen` (`nhomquyen`),
  ADD KEY `quyen` (`quyen`);

--
-- Chỉ mục cho bảng `tbl_phieunhap`
--
ALTER TABLE `tbl_phieunhap`
  ADD PRIMARY KEY (`id_pn`),
  ADD KEY `id_nv` (`id_nv`);

--
-- Chỉ mục cho bảng `tbl_phieuxuat`
--
ALTER TABLE `tbl_phieuxuat`
  ADD PRIMARY KEY (`id_px`),
  ADD KEY `id_kh` (`id_kh`),
  ADD KEY `id_nv` (`id_nv`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `id_nh` (`id_nh`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Chỉ mục cho bảng `tbl_pro_soluong`
--
ALTER TABLE `tbl_pro_soluong`
  ADD KEY `id_pro` (`id_pro`),
  ADD KEY `id_size` (`id_size`);

--
-- Chỉ mục cho bảng `tbl_quyen`
--
ALTER TABLE `tbl_quyen`
  ADD PRIMARY KEY (`quyen`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id_size`);

--
-- Chỉ mục cho bảng `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  ADD PRIMARY KEY (`id_sliders`);

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `nhomquyen` (`nhomquyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_loaitk`
--
ALTER TABLE `tbl_loaitk`
  MODIFY `id_loaitk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_nhacungcap`
--
ALTER TABLE `tbl_nhacungcap`
  MODIFY `id_ncc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_nhanhieu`
--
ALTER TABLE `tbl_nhanhieu`
  MODIFY `id_nh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_phieunhap`
--
ALTER TABLE `tbl_phieunhap`
  MODIFY `id_pn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_phieuxuat`
--
ALTER TABLE `tbl_phieuxuat`
  MODIFY `id_px` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  MODIFY `id_sliders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_chitiet_pn`
--
ALTER TABLE `tbl_chitiet_pn`
  ADD CONSTRAINT `tbl_chitiet_pn_ibfk_3` FOREIGN KEY (`id_size`) REFERENCES `tbl_size` (`id_size`),
  ADD CONSTRAINT `tbl_chitiet_pn_ibfk_4` FOREIGN KEY (`id_pn`) REFERENCES `tbl_phieunhap` (`id_pn`);

--
-- Các ràng buộc cho bảng `tbl_chitiet_px`
--
ALTER TABLE `tbl_chitiet_px`
  ADD CONSTRAINT `tbl_chitiet_px_ibfk_1` FOREIGN KEY (`id_px`) REFERENCES `tbl_phieuxuat` (`id_px`),
  ADD CONSTRAINT `tbl_chitiet_px_ibfk_2` FOREIGN KEY (`id_pro`) REFERENCES `tbl_product` (`id_pro`),
  ADD CONSTRAINT `tbl_chitiet_px_ibfk_3` FOREIGN KEY (`id_size`) REFERENCES `tbl_size` (`id_size`);

--
-- Các ràng buộc cho bảng `tbl_img_product`
--
ALTER TABLE `tbl_img_product`
  ADD CONSTRAINT `tbl_img_product_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `tbl_product` (`id_pro`);

--
-- Các ràng buộc cho bảng `tbl_phanquyen`
--
ALTER TABLE `tbl_phanquyen`
  ADD CONSTRAINT `tbl_phanquyen_ibfk_1` FOREIGN KEY (`nhomquyen`) REFERENCES `tbl_nhomquyen` (`nhomquyen`),
  ADD CONSTRAINT `tbl_phanquyen_ibfk_2` FOREIGN KEY (`quyen`) REFERENCES `tbl_quyen` (`quyen`);

--
-- Các ràng buộc cho bảng `tbl_phieunhap`
--
ALTER TABLE `tbl_phieunhap`
  ADD CONSTRAINT `tbl_phieunhap_ibfk_1` FOREIGN KEY (`id_nv`) REFERENCES `tbl_users` (`id_user`);

--
-- Các ràng buộc cho bảng `tbl_phieuxuat`
--
ALTER TABLE `tbl_phieuxuat`
  ADD CONSTRAINT `tbl_phieuxuat_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `tbl_users` (`id_user`),
  ADD CONSTRAINT `tbl_phieuxuat_ibfk_2` FOREIGN KEY (`id_nv`) REFERENCES `tbl_users` (`id_user`);

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_nh`) REFERENCES `tbl_nhanhieu` (`id_nh`),
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`id_dm`) REFERENCES `tbl_danhmuc` (`id_dm`);

--
-- Các ràng buộc cho bảng `tbl_pro_soluong`
--
ALTER TABLE `tbl_pro_soluong`
  ADD CONSTRAINT `tbl_pro_soluong_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `tbl_product` (`id_pro`),
  ADD CONSTRAINT `tbl_pro_soluong_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `tbl_size` (`id_size`);

--
-- Các ràng buộc cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`nhomquyen`) REFERENCES `tbl_nhomquyen` (`nhomquyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
