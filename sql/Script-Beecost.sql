-- Drop user first if they exist
DROP USER if exists 'ecommerce'@'%' ;

-- Now create user with prop privileges
CREATE USER 'ecommerce'@'%' IDENTIFIED BY 'ecommerce';

GRANT ALL PRIVILEGES ON * . * TO 'ecommerce'@'%';



CREATE DATABASE  IF NOT EXISTS `beecost`;
USE `beecost`;


-- Table structure for table `product`
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_category_id` int not null,
  `product_name` varchar(1000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(4000),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



-- Table structure for table `product_category`
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int not null,
  `product_category_name` varchar(500) DEFAULT NULL,
  `description` varchar(4000),
  `level` int default null,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- Data table product_category
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(1, -1, 'ROOT', 'ROOT', 0);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(2, 1, 'Thời Trang Nữ', 'Thời Trang Nữ', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(3, 1, 'Giày Dép Nam', 'Giày Dép Nam', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(4, 1, 'Túi Ví Nam', 'Túi Ví Nam', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(5, 1, 'Sắc Đẹp', 'Sắc Đẹp', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(6, 1, 'Chăm Sóc Thú Cưng', 'Chăm Sóc Thú Cưng', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(7, 1, 'Thời trang trẻ em & trẻ sơ sinh', 'Thời trang trẻ em & trẻ sơ sinh', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(8, 1, 'Mẹ & Bé', 'Mẹ & Bé', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(9, 1, 'Thể Thao & Dã Ngoại', 'Thể Thao & Dã Ngoại', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(10, 1, 'Nhà cửa & Đời sống', 'Nhà cửa & Đời sống', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(11, 1, 'Mô tô, xe máy', 'Mô tô, xe máy', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(12, 1, 'Máy tính & Laptop', 'Máy tính & Laptop', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(13, 1, 'Sách & Tạp Chí', 'Sách & Tạp Chí', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(14, 1, 'Sức Khỏe', 'Sức Khỏe', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(15, 1, 'Voucher & Dịch vụ', 'Voucher & Dịch vụ', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(16, 1, 'Thiết Bị Điện Gia Dụng', 'Thiết Bị Điện Gia Dụng', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(17, 1, 'Đồng Hồ', 'Đồng Hồ', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(18, 1, 'Thời Trang Nam', 'Thời Trang Nam', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(19, 1, 'Túi Ví Nữ', 'Túi Ví Nữ', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(20, 1, 'Giày Dép Nữ', 'Giày Dép Nữ', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(21, 1, 'Điện Thoại & Phụ Kiện', 'Điện Thoại & Phụ Kiện', 1);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(22, 2, 'Áo len', 'Áo len', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(23, 2, 'Quần jeans', 'Quần jeans', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(24, 2, 'Váy cưới', 'Váy cưới', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(25, 2, 'Đồ hóa trang', 'Đồ hóa trang', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(26, 2, 'Khác', 'Khác', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(27, 2, 'Đầm', 'Đầm', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(28, 2, 'Váy', 'Váy', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(29, 2, 'Áo', 'Áo', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(30, 2, 'Quần', 'Quần', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(31, 2, 'Quần đùi', 'Quần đùi', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(32, 2, 'Đồ liền thân', 'Đồ liền thân', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(33, 2, 'Áo khoác', 'Áo khoác', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(34, 2, 'Hoodie và Áo nỉ', 'Hoodie và Áo nỉ', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(35, 2, 'Bộ', 'Bộ', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(36, 2, 'Đồ lót', 'Đồ lót', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(37, 2, 'Đồ ngủ', 'Đồ ngủ', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(38, 2, 'Đồ Bầu', 'Đồ Bầu', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(39, 2, 'Đồ truyền thống', 'Đồ truyền thống', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(40, 2, 'Vải', 'Vải', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(41, 2, 'Vớ/ Tất', 'Vớ/ Tất', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(42, 3, 'Giày Oxfords & Giày buộc dây', 'Giày Oxfords & Giày buộc dây', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(43, 3, 'Giày thể thao/ Sneakers', 'Giày thể thao/ Sneakers', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(44, 3, 'Giày sục', 'Giày sục', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(45, 3, 'Khác', 'Khác', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(46, 3, 'Giày tây lười', 'Giày tây lười', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(47, 3, 'Bốt', 'Bốt', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(48, 3, 'Xăng-đan & Dép', 'Xăng-đan & Dép', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(49, 3, 'Phụ kiện giày dép', 'Phụ kiện giày dép', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(50, 12, 'Phụ Kiện Máy Tính', 'Phụ Kiện Máy Tính', 2);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(51, 50, 'Đế Tản Nhiệt', 'Đế Tản Nhiệt', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(52, 50, 'Bộ Sạc Laptop', 'Bộ Sạc Laptop', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(53, 50, 'Bộ chia cổng USB & Đọc thẻ nhớ', 'Bộ chia cổng USB & Đọc thẻ nhớ', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(54, 50, 'Webcam', 'Webcam', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(55, 50, 'Bàn Di Chuột', 'Bàn Di Chuột', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(56, 50, 'Thiết Bị Truyền Hình Hội Nghị', 'Thiết Bị Truyền Hình Hội Nghị', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(57, 50, 'Khác', 'Khác', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(58, 50, 'Miếng Dán Bàn Phím', 'Miếng Dán Bàn Phím', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(59, 50, 'Pin Laptop', 'Pin Laptop', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(60, 50, 'Miếng Dán & Ốp Laptop', 'Miếng Dán & Ốp Laptop', 3);
INSERT INTO beecost.product_category (id, parent_id, product_category_name, description, `level`) VALUES(61, 50, 'Bàn Laptop', 'Bàn Laptop', 3);