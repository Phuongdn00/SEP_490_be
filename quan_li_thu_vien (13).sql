-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 05:41 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quan_li_thu_vien`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
('93c64b99-6ea4-4a8f-8620-baf7d6469dc2', 'A12345'),
('dsadfsd-fafs-a-wf-d-gst-ea', 'Timothy Ferriss'),
('sdfad-ffs-ds-fse-sads0a', 'Nhiều tác giả'),
('sdfse-a3-sd-3-d-a23-ard-asd', 'Dale Carnegie'),
('sf-fd-ad-dfg-sgh-sda-s', 'Og Mandino');

-- --------------------------------------------------------

--
-- Table structure for table `author_book`
--

CREATE TABLE `author_book` (
  `author_id` varchar(255) NOT NULL,
  `book_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`) VALUES
('sdfad-ffs-ds-fse-sads0a', '7c9d5b6a-8217-4195-883a-4db85d0e8915'),
('Kinh dị', '476e1caa-abc9-4592-b38c-c79beff383dc'),
('Drama', '476e1caa-abc9-4592-b38c-c79beff383dc'),
('Mystery', '476e1caa-abc9-4592-b38c-c79beff383dc'),
('Drama', 'a807d851-ffc7-4aa1-bcd3-2dcad0977f31'),
('Mystery', 'a807d851-ffc7-4aa1-bcd3-2dcad0977f31'),
('Kinh dị', 'a807d851-ffc7-4aa1-bcd3-2dcad0977f31');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `time_created` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `content`, `time_created`, `title`, `image`) VALUES
(4, '<p>Xin chào mọi người</p>', '2023-03-25T10:22:52.056Z', '', ''),
(5, '<p>Xin chào mọi người</p>', '2023-03-25T10:22:56.939Z', '', ''),
(6, '<p><u>asasaassasasa<span class=\"ql-cursor\">﻿</span></u></p>', '2023-03-25T10:23:22.754Z', '', ''),
(7, '<p>asa</p>', '2023-03-25T10:25:17.512Z', '', ''),
(11, '<p>Xin chào</p>', '2023-03-25T12:13:01.992Z', '', ''),
(12, '<p>Xin chào</p>', '2023-03-25T12:14:07.022Z', '', ''),
(13, '<p>sasaas</p><p><br></p><p><img src=\"https://gd2.alicdn.com/imgextra/i3/2023922414/TB2EFu1X_cCL1FjSZFPXXXZgpXa_!!2023922414.jpg_400x400.jpg\"></p>', '2023-04-05T19:16:09.314Z', 'Thông báo', 'http://localhost:4000/i/ece0a0b8-c480-4cbc-8d3e-2b61acd1d773.png'),
(14, '<p>aaaa</p>', '2023-04-05T19:22:34.740Z', 'Thông báo 1', 'http://localhost:4000/i/6ffb0a9f-13ac-4c7b-9c2f-ec0aa9b66ef3.png');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_quantity` int(11) NOT NULL,
  `book_rating` float NOT NULL,
  `book_description` text NOT NULL,
  `cover_photo` varchar(255) NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `link_book` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `book_quantity`, `book_rating`, `book_description`, `cover_photo`, `author_id`, `link_book`) VALUES
('0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 'book7', 11, 3, '1111', 'http://localhost:4000/i/4689741c-9f46-4446-bda7-852e190e59bb.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('12a78354-71e2-46ff-9fe2-236350dd8504', 'book7', 11, 3, '1111', 'http://localhost:4000/i/87f6f4a6-ef19-4985-99c6-cea2be8fc311.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('12fae88e-370a-40ef-b5d2-71c98f1964e1', 'book7', 11, 3, '1111', 'http://localhost:4000/i/b2c20d8a-fa5e-4f95-9837-0c8d322a7dd3.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 'book7', 11, 3, '1111', 'http://localhost:4000/i/e57eb27b-e2c1-4d24-b825-ab830404a1ec.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 'book7', 11, 3, '1111', 'http://localhost:4000/i/e9b9f8b3-5e53-49fd-92f1-9c5c21fc9634.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('2e779ea2-9ece-48da-bc4e-32eef9d57adf', 'book7', 11, 3, '1111', 'http://localhost:4000/i/c38fc272-ec66-4765-a4c1-2125eea172e1.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('3c238241-75d5-48a9-b53e-24a8aa0de94a', 'book7', 11, 3, '1111', 'http://localhost:4000/i/c8a4e429-38a5-4cd1-8c33-082e0709916c.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('44243fcd-11cf-45cf-ab31-6beba08e11f0', 'book7', 111, 3, '1111', 'http://localhost:4000/i/9c935dff-cacd-4465-8f89-08c8e928d696.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('476e1caa-abc9-4592-b38c-c79beff383dc', 'Book5', 100, 4.9, 'book5 vippro', '0', '', 'Timothy Ferriss'),
('5e0d67bb-0840-477d-a02a-4d97344aa9c7', 'book7', 11, 3, '1111', 'http://localhost:4000/i/13475b3e-4bf0-43cc-aab4-bb7791b981f2.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 'book7', 11, 3, '1111', 'http://localhost:4000/i/41ca5ac6-5f35-46df-aab4-146d17873f9d.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('79c3bba9-393d-454e-b152-410e8d53945f', 'book7', 11, 3, '1111', 'http://localhost:4000/i/d93aa639-84c7-4f6d-ada2-d75491a67ee1.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('98b85242-f8bf-4894-b7e9-d4424a30c0ac', 'book7', 11, 0, '', 'http://localhost:4000/i/114640a5-01ed-4a56-a80c-5777ac28947d.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('ccd2543f-a788-48dd-8a67-c7846f8e732d', 'book7', 11, 3, '1111', 'http://localhost:4000/i/9e254ccf-9c54-451b-9cfb-68d9438e52b0.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('ddr-sa-wea-fc-aws23r-sd3-q', 'Đắc nhân tâm 12', 20, 4.5, 'Cuốn sách được viết cho những người thành công', 'https://www.reader.com.vn/uploads/images/2019/10/30/19/dac-nhan-tam_600x865.png', 'sdfse-a3-sd-3-d-a23-ard-asd', ''),
('e6a96a11-9359-448e-bcf5-4f4f923c349e', 'book7', 11, 3, '1111', 'http://localhost:4000/i/99cdfdb8-139e-4bef-80ea-6c11a13a0af5.png', 'sdfad-ffs-ds-fse-sads0a', ''),
('f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 'book7', 10, 5, 'book7 desc', 'http://localhost:4000/i/b4960ae7-5a07-4d83-9dfc-24af51bdda85.png', 'sdfse-a3-sd-3-d-a23-ard-asd', ''),
('fa-wr3-4-td-q23-f-sdq-32ew', 'Mỗi lần vấp ngã là một lần trưởng thành', 10, 4.7, 'Cuốn sách cho ta biết về triết lý nhân sinh đời thường', 'https://isachhay.net/wp-content/uploads/2017/08/sach-hay-moi-lan-vap-nga-la-mot-lan-truong-thanh.jpg', 'dsadfsd-fafs-a-wf-d-gst-ea', ''),
('ffghds-ds-dgagdf-dsd-sdf-32das', 'Đời ngắn đừng ngủ dài', 10, 4.9, 'Cuốn sách \"Đời ngắn đừng ngủ dài\" (tựa gốc \"The Life-Changing Magic of Tidying Up\") của tác giả Marie Kondo là một cuốn sách về sự sắp xếp nhà cửa và đời sống của bạn để tạo ra sự tiện nghi, sạch sẽ và đơn giản.\r\n\r\nTrong cuốn sách này, Marie Kondo chia sẻ về phương pháp sắp xếp của mình, gọi là \"phương pháp KonMari\". Theo đó, người đọc được khuyến khích tập trung vào việc giữ lại những vật dụng mà họ thực sự yêu thích và loại bỏ hoàn toàn những vật dụng không còn cần thiết hoặc không mang lại niềm vui cho cuộc sống của họ.\r\n\r\nKondo cũng đưa ra những lời khuyên và hướng dẫn cụ thể về cách sắp xếp từng món đồ trong nhà, bao gồm quần áo, sách vở, đồ dùng gia đình, và đồ trang sức. Cuốn sách cũng tập trung vào ý tưởng rằng, khi sắp xếp đúng cách, việc giữ gìn nhà cửa và cuộc sống của bạn có thể trở nên dễ dàng và tạo ra niềm vui và hạnh phúc.', 'https://salt.tikicdn.com/cache/w1200/media/catalog/product/d/o/doi-ngan-dung-ngu-dai.jpg', 'sdfad-ffs-ds-fse-sads0a', ''),
('gsdsf-gs-aw-42q-asd-3q-3aw', 'Nhà giả kim', 99, 5, 'Cuốn sách \"Nhà Giả Kim\" (tựa gốc \"The Alchemist\") của tác giả Paulo Coelho nói về một chuyến phiêu lưu của một anh chàng thợ làm kim tên Santiago. Santiago đã rời quê hương của mình ở Tây Ban Nha để tìm kiếm kho báu ở Ai Cập', 'https://upload.wikimedia.org/wikipedia/vi/thumb/9/9c/Nh%C3%A0_gi%E1%BA%A3_kim_%28s%C3%A1ch%29.jpg/150px-Nh%C3%A0_gi%E1%BA%A3_kim_%28s%C3%A1ch%29.jpg', 'adasaSds-ew3q-s-fd-w3wc', 'https://nhasachmienphi.com/doc-online/nha-gia-kim-213535'),
('sfd-ag-ds-f-dfs-ds-fdfg-', 'Người bán hàng vĩ đại nhất thế giới', 10, 4.6, 'Cuốn sách \"Người bán hàng vĩ đại nhất thế giới\" (tựa gốc \"The Greatest Salesman in the World\") của tác giả Og Mandino kể về câu chuyện của một người bán hàng trẻ tuổi tên là Hafid. Hafid đã tìm thấy một cuốn sách cổ xưa về bán hàng, được viết bởi một người được coi là người bán hàng vĩ đại nhất thế giới. Sau khi học được các bài học trong cuốn sách, Hafid đã trở thành một người bán hàng thành công và vượt qua nhiều khó khăn trong cuộc đời.\r\n\r\nCuốn sách bao gồm mười bảy bài học về bán hàng và cuộc sống, được viết dưới dạng tuyên ngôn của Hafid khi ông trở thành người bán hàng vĩ đại nhất thế giới. Mỗi bài học được liên kết với một cái tên để giúp người đọc nhớ lại nội dung của nó, ví dụ như \"Ngôi nhà tâm hồn của tôi\" hoặc \"Tôi sẽ quên những gì đã qua\".\r\n\r\nCuốn sách thúc đẩy người đọc trân trọng khách hàng và tập trung vào việc giải quyết những vấn đề của họ thay vì chỉ bán sản phẩm. Nó cũng khuyến khích người đọc cố gắng và kiên trì trong công việc của mình, học hỏi từ những thất bại và không bao giờ từ bỏ ước mơ của mình.', 'https://firstnews.com.vn/public/uploads/products/nguoibanhangvidainhatthegioi-148k-resized_FB.jpg', 'sf-fd-ad-dfg-sgh-sda-s', '');

-- --------------------------------------------------------

--
-- Table structure for table `book_in_book`
--

CREATE TABLE `book_in_book` (
  `book_in_book_id` varchar(255) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `checkouting` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_in_book`
--

INSERT INTO `book_in_book` (`book_in_book_id`, `book_id`, `checkouting`) VALUES
('009e104d-2a85-44a4-a791-4f445c510bf4', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('018df6ef-a114-4381-bcac-4301cc3510b4', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('0203a4af-b25f-4a74-bb9c-2478141c6a4e', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('022d571c-bacf-4e99-8d03-dfcf4ec9e190', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('026117c7-6c80-4737-82f5-1854e8fd84a4', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('02790dfe-f1f5-48d1-a47e-b1fc7f706dae', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('027a9087-3c84-4df8-a8ca-e7e2d6071161', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('03e3296b-f4e3-4d63-8cbe-0c8262045fab', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('046275ec-224b-405c-bba5-ac0a5ecac74f', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('0503cf7a-0b78-4e96-bff8-9e64fcac59f1', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('0791cb8a-173b-489e-95a0-c13cc23e58a2', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('08929227-25ac-4e43-9307-8314456ce705', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('090c5323-7ece-41d7-8304-e067b8456035', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('09a31b29-162b-4cbf-bfeb-2ff813a60651', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('0b39b81e-05be-4f5f-b6b5-87af240da46a', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('0b9e8af3-3818-42b8-8aed-8837212a09ff', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('0bc8fcab-93fb-4e73-8a26-63758bdea0bd', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('0e3dd5b1-ff33-4185-b78c-f8953b30ec22', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('0ec59a3a-54e9-48ac-b5d7-fe40b763734c', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('0efcb503-4292-492f-b69f-281a6c7e0592', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('1091f4fa-3fd7-487f-8d99-2c9d29c0b952', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('10b69519-cd2a-44ea-b7ae-4b4756c52687', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('1116315e-9c97-4c3c-b4d5-bca09338cdbe', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('12692f15-f33f-4163-bc44-7f38e1358558', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('127843dc-717f-4c0d-84cb-da3da44bb93a', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('12c8192d-8de4-4ee2-a1b9-de7d64ace6a0', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('13137fcf-3072-40d5-8d4e-a7567bef8f1f', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('13783f76-ab5c-4021-9f4d-4c637b48219e', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('13bc7223-8aac-49f3-8c64-199741ca123a', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('15b58efc-56c8-4e3d-ba8d-5c15a54d1de6', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('15f20b7a-ea97-45b3-b215-b7075edf09c6', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('1871469a-f05e-4d0e-ba3e-d7c6a0073697', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('194ea06b-4942-4783-9689-266ecc4d1fe7', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('1960914c-164e-4321-9141-df50d2404398', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('1a54fab5-8b75-417a-b34e-f6557f7ed7de', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('1ad66a6f-b004-4a68-9ed2-c6ff4618ba3c', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('1b596e1d-beee-474e-920f-13c79a8519d0', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('1b85ff64-434b-4ed2-9c23-71fa54ad7353', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('1d4803bf-7b4d-4db6-9f20-8671fe50a3bb', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('1fd554b1-0d03-4b93-9de1-c46a1a354f87', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('1fdc2460-4818-4426-adf7-374e5a1ea512', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('2065deb7-b052-40da-896c-da768bdb9674', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('23dc67d0-d08b-4974-98a7-26a7dccc6fb3', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('24116d3c-0516-4ba4-beaf-cf873b31df6a', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('24275120-762a-4a33-80e1-7e21c927ce49', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('242a4103-2989-404e-83d1-21d05ab3e037', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('243c9e09-ffc7-45ad-8ddb-b30bf6c0a810', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('24718ea5-a532-470d-ab42-7edf2e7f001f', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('247f6a0e-c11a-4fa7-92a7-f8a89120a5ad', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('24ae0618-e786-4f39-9e29-d8d85ce9d648', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('250c7bc8-d500-4fc8-a4a4-d45e78382f57', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('25c831aa-bb8b-46bb-bdae-1b23b6cad936', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('26ccf112-782e-4bf7-a44e-6a7893dae373', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('26d108ed-50c3-437f-ac74-2b8b2bda3880', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('279aace1-c77d-428b-af17-62b2b429cf10', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('27de024e-695e-445b-a85f-a3500f47a846', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('2845bf84-a093-4e44-b61e-842f6ac44cb2', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('28867587-d94b-4a40-9da0-11a5f663e2ec', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('29094e8f-3c19-4b67-a1f8-394621b9a06d', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('29ce8efb-84df-4c0d-aa86-0732ef143939', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('2a4612b8-c72a-4163-9c8b-f835a1e4aaad', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('2c9ca462-6bd7-4d97-ab45-82b5c3ccc892', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('2e1aee69-8471-49cf-837b-271abf755c1f', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('2e313050-9242-40ad-a677-afd3ebf8c85c', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('2f95f04e-34ba-4f3a-b41b-16f608185aca', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('3014efd8-53d7-48cf-8619-ff47d5060104', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('312c8031-f1b3-4f1e-8d31-b612ac1c449d', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('3295c427-97ee-4052-a3bc-aba5e591e602', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('33698b1e-f470-48f0-a0d5-cd1824222100', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('3551c0a9-85bc-469b-8df8-1571adb8d31a', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('35fc62fb-be8c-4b6b-a258-98aa8feb855c', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('3661b12c-e2da-4ac6-9544-585dd626a9f8', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('36d27f94-b516-40a9-a5a1-0162a8d45be7', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('375b290a-3e87-4ccb-8408-c16f26368119', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('379a429d-2dfd-4384-8af6-53f2d638e035', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('3916ab04-511f-4868-a1bc-f93674c6d1c4', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('3b8779d6-5a1a-4e0c-b0cf-1c341662c65b', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('3bf76203-84a8-44d3-bddc-f4c7a9013053', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('3c64bf74-6995-4bd2-a737-3f3db9c506bc', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('3cb36c39-7e00-420e-9543-08bd351616aa', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('3d795b87-aaef-4069-89f9-fec74e24c32e', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('3fe09b52-bc85-4a10-87d0-2464a89ff7a6', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('40617201-adf5-4589-a8cb-eff069929acb', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('4140d05d-b24e-438d-9eb0-5690b7007a95', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('41f2151c-6f21-4aab-9fe8-75b63bc10590', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('42089051-c867-424d-ac4c-a8cca219e438', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('43199e5f-7a61-4e16-a6f6-0a3147bf034d', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('442cbde2-4210-4576-a525-485268e6675a', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('4437364a-f735-4424-ba07-f85594171e0c', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('448830f3-49a5-47b8-baa8-9094815e6c09', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('462b01f4-e7aa-470f-b1a1-6e41f499ef13', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('466a64f3-f141-4011-aef2-94d8fa3cc460', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('46d76b53-15e4-4f07-86c8-f3b9d52e2a57', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('46e97c07-0424-4367-8965-883e9a272daa', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('477b0762-6d7e-4c28-a0ff-ff29705468dd', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('47a7b550-02f7-4d02-9cb4-cd4fedfecab7', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('47d0a361-f6ce-416b-a780-f76fba68a9c2', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('4898bcc4-5564-4697-86ca-e13549a9b7a2', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('4933b971-35b0-49b4-9fc7-3ac896b4f8ce', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('4c4125ea-681f-4d21-97b6-5b34d85d34c5', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('4d2193fe-d2f5-4ccb-aa8d-eeb36dab3cdf', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('4e5b708e-169d-4210-b480-6291df16a785', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('4e62d5c7-d8b6-4b8a-aa18-403867b611b0', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('50057f0d-3397-4455-8c09-d27dc3287cdb', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('509bd5a6-ecc6-4ed7-8c54-9df84569928c', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('50c02b44-b162-4dea-ac25-1f3b82838b0b', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('50feb700-7e9b-4f0e-a3bb-4a56e787923d', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('5168f4c4-e4d8-4da8-865c-91cbc914201e', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('51942caf-3650-471f-952b-5b9407de3e12', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('5254880e-5819-458f-9180-4d1a3e3a2b2b', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('5262c203-af95-4046-8326-b839899465cb', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('52ca0939-f4bc-416c-9e10-967a82eee77d', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('5368e27c-5cd3-4bed-ab14-5fead1254224', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('53a1724d-1965-4984-b903-e2c5ec197ab4', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('53d66c95-f24e-434b-8c12-41bc89768a02', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('54a2e32d-a979-4411-a415-01077bb49726', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('54cccfa5-97d9-46ed-bcdb-74f72bf0f4a6', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('5577b02b-1031-4648-87c6-61ea61dcf418', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('582211a2-f881-41dc-8de6-fa2ba6d88a5a', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('5a7bd824-3dc1-44c9-a4cc-8cd3dfd77e0d', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('5c05ceb6-5e5c-4452-ac01-0624df124294', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('5d5a5252-706b-4ed0-88a6-24d4cb371119', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('5db12277-6ec2-474f-b024-4fd15f0d1a2a', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('5df44a36-16e4-4eb2-b6f8-c78eea071d88', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('5f590f61-0437-4e66-a922-400b18a075c3', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('5fa8bdfd-b84d-4a27-90b9-1751d089e4da', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('5fdf8015-d4bf-4dfc-8037-6f55cb43d0e4', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('62125dbc-732e-49b4-a111-99c0f9186acc', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('623ad1b5-260f-419b-8289-0d010d3d10b1', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('62f447a5-4607-45ff-8cec-4f68d67137ab', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('643cdff8-f181-49e1-af8c-83d181359b9e', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('64ba9f85-4035-49e7-ae8d-ed61672f027d', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('667f3c4c-a450-4b27-9ffa-98379296a603', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('695ddbee-a434-49a0-8676-edfc0c0567a0', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('69ef8c8d-0630-491f-b32c-843fafe26ed5', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('6aa5675f-293c-4ccb-9298-c7c4aa79205b', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('6af55c7a-c4b0-4eb8-b076-337ead1d11b3', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('6ce3c4dd-749d-4963-825d-f9673d025d49', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('6d1d216a-24fe-4e93-a829-4037b53e5f3e', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('6e36d3df-18e1-45cd-9bc5-62c2c092053a', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('6f4612d6-7454-4c72-84d5-ff36e71e0674', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('6fe0259f-9f6b-4f4a-bae0-40d9df9edfa5', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('6fe422b4-6351-43bf-92dc-7503f28aa6d5', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('6fe4ffe4-fd35-4da5-84a2-abf56394580c', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('716e503d-906c-4ab9-85cc-b03832448447', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('726687f6-22c1-4bf4-8a53-a31493272361', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('72c01027-d410-4e87-92e6-2eceef575f97', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('7337500f-e7ee-4c96-bea3-8cf1f1d2fba6', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('7416eddf-c42f-426b-8b6a-092688742ddf', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('75a0297a-44b6-4f9e-b159-e27f8522936c', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('7636133b-edc2-417e-aa18-dfc72510e4f8', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('76e10386-de80-4f11-a462-468d212cea6c', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('78342236-ce79-4e34-a6e8-5ff032bd72a0', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('79708e86-666a-447a-b260-d08015af7ec4', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('797af598-9bbc-4d5f-8333-0e5bc52dc74b', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('79ca755d-0820-496a-a6df-2730009039f3', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('7ae57bb1-a57e-439c-abb2-132043b17e0c', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('7b14299f-2fcb-48b6-8de4-641c129bf0ce', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('7bf4f1ba-967c-448a-8299-35675f942dc6', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('7cab1cdc-4db4-43e8-a1ec-6520e2174a59', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('7e0612a7-bba3-455b-8172-028ae134c04f', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('7e40579a-5367-4309-be7c-44c7bed5c640', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('7ed06560-5fc3-4687-a6a1-967fe4e96ed5', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('7f009e6e-7615-480e-9375-7e87e9df58fb', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('7f12d5c5-7693-42f4-83c2-0bb4e2b48ff0', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('7fc5f5c5-e51b-4595-a02d-dbf29655080c', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('805f2b24-eae9-4ce8-8b48-49450de410ac', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('81b27b1e-390a-4e17-9ce8-1be8baa598e8', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('82e7bc02-d298-4e2a-b21d-371afcec8887', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('8338b418-443b-459e-bed1-3cc19151bffb', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('83a40e1f-1308-48d8-ae8d-ed4f225abc5c', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('841f5786-48b9-4917-a4c6-20d14864a5c5', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('8458cf27-6c60-471b-97d0-d4b3623f8de5', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('84cc04dd-fb74-4b81-b5f0-4b72a38552e6', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('85139907-30c5-4ffa-b9ce-44645884dc4a', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('86932cb0-5f2b-48c7-8c99-88fcdef490e6', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('869cb7e7-7335-41ac-8282-a9ee069625f2', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('8715e76c-b6af-4f89-8179-f5843fffada6', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('87be7fd3-b7d2-483c-ae1d-0c2a6558b61d', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('8831e642-36f0-4a88-9f89-c836b5fd74da', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('883c80e3-63ae-465a-b85f-beaa453ae1e1', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('89e43be5-4f53-45f6-928f-83ce43a345ca', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('8a009bba-4eef-4cc3-b34f-7e0be6dfa690', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('8aefff53-2a97-4ba5-a674-2db9e2641119', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('8becf2ee-f3d6-4b63-9065-885e4fd90c60', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('8c9bdb63-27da-4955-af2f-fd3e80cad856', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('8d37a3c9-2516-49de-89b0-b7fa7baa9bb5', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('8d385702-fde2-4ea6-b362-8a713cd17a3e', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('8d8cbf3c-2e5b-4b86-80d9-2ffa1b5772bc', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('8e2d4b0b-8275-4347-8f3a-f471beb79a5a', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('8f230cc7-c213-4c25-889d-d19b0a96a833', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('8f4b8f17-6fc9-48bc-8839-856269e75464', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('9061c409-c02b-466c-b281-7a59bb72fec5', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('90c6cf93-4c6e-41cc-a6ae-72237eefed6b', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('924158e5-ba55-4fe2-a36f-4470f82835a0', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('93b40f5d-cef0-4e00-8721-07de5819c74a', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('93f05c39-eec7-4122-a926-d2c6744c3d4a', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('94adea85-0a4b-4363-8133-d16c344235c3', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('94c5765a-e7b0-4d3d-a12c-7fddf6c972d9', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('953f363c-57c8-46cb-8931-6933f19fb251', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('984501af-6f10-44ce-9295-07faed4eb129', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('98e67c67-4e29-4d60-a69c-0e59a1cd3705', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('99f1386f-d6f4-4443-a3a0-0dbe5bace3ca', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('9b96e5b9-8257-4731-b91b-fd58cf30412e', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('9db233c0-0aa6-42f5-81ce-41c146e17ee1', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('9f53bc6f-34ba-45bd-a1c8-d208b43ad591', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('a0cc1fed-c17e-4afc-893f-17d04cca26cf', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a0ec8b81-d121-4dcd-b9a4-3c9e6054bd63', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a2116c72-9d95-4dd1-80b5-80481061c8db', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a24ff4d4-815c-4f14-90b4-7c5cd7db456a', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a2ef3342-a7d1-422b-9845-b00729770338', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a306d24c-3911-4505-9457-256487ef2a08', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('a4067e13-fa29-4b95-96fb-72fada84bc6e', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('a43804e2-ae07-43cd-ac7c-1a9464a93194', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a4668e13-2f8c-43f4-8c93-b6dff2f8afb5', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('a4c6442f-b3af-450c-a1f8-a5e9fa5404d9', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('a4e53bb3-0f37-4b36-b8c8-5310768fff19', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('a52fd065-734b-4989-997e-c04d36958db6', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('a6ff601e-2e27-43df-9c30-113d3795d741', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('a70a2910-474c-4771-abc5-bbecf155af33', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('a7171b08-8323-47fd-81d9-e8e635a2110d', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('a72f19f8-8489-414b-af79-017a6bfdf16b', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a8170092-6ae0-40d1-a27d-d93583a63033', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('a8fe4288-5b51-4762-9fc2-8345ecbdcf15', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('a985de3c-47e9-4c1c-a5c5-a4b73dcf2d16', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('a9a54850-2c15-4137-a63a-118d71f5c756', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('aa60bb4f-178d-4b94-b06b-2d75b2323f64', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('aa60f545-7389-4268-a9b4-03e706e6f628', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('aa9f7e9f-524c-4459-98a4-b85ffc48e810', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ab5a441c-3910-4033-8a11-6497811e6ff4', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ace8ffd2-1c8f-46d8-b076-42f5590493ca', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('ad828dac-706f-4fd3-8bb7-2052146c41bf', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('adf42e91-ee6a-49f2-bde6-24ef8a66c003', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ae0a8de6-b9c7-4a91-bfe0-a7c308db1a3f', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('ae648a61-66b4-4999-9129-24bd9b35f51f', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('ae75f764-55a9-4504-8ebf-56584b9fe092', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('b096e260-f7f1-49bf-ab3f-abf1a90ac1a3', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('b18b821d-12c8-4ba0-b39f-52a3d923b1c9', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('b2196845-1073-49c1-8441-0d05757aa312', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('b22ab06a-b791-430a-9b1a-1b19d5b026e4', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('b3429169-7ee9-4567-8084-2ce78e76d58e', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('b3e8f195-8e50-48dd-9827-fdb54dcb8cb8', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('b6217cfd-d344-4d9b-9747-69a617f138bf', 'ffghds-ds-dgagdf-dsd-sdf-32das', 1),
('b68a1703-3250-4c11-b5bc-e8ed4435b0de', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('b68f1a6e-81c0-447d-ab23-e92c9a4b25bf', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('b6afa38a-e190-4034-b34b-c2ccd6715381', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('b6c546a4-b227-4a20-8a2a-6c7ab35570e7', 'ffghds-ds-dgagdf-dsd-sdf-32das', 0),
('b7b7767e-4368-4c88-bd28-a821f7ee56c3', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('b854e2c9-62e5-4bcc-8b0d-d15b113de373', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('b902f36a-1942-4f02-880e-2d1e2e2abdc7', 'fa-wr3-4-td-q23-f-sdq-32ew', 1),
('b949e0bb-1f16-414a-b668-b252b8887574', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('b9989031-7569-4738-bf15-1ec535a76c41', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('b9c6f3eb-fb43-4e7a-93a6-b3febceabc9a', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('b9d98481-ae37-40c2-b1c7-d687b9f44d28', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('ba6f4aa5-9875-4888-9da3-3120f5673ff4', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('bc67d3dc-00b7-4438-ad78-d54b86968828', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('bc7186d4-69b8-44f3-9b77-1b1bccde03ba', 'fa-wr3-4-td-q23-f-sdq-32ew', 0),
('bd7b2d09-51ef-4797-ad19-2e8a0e7822eb', '3c238241-75d5-48a9-b53e-24a8aa0de94a', 0),
('bd8bbb78-8a28-4d46-9565-56b6910269ed', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('be03f45b-d14b-4093-801b-48b0d34b7167', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('be3ce829-807f-4b14-9b5d-2549f7fbc66c', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('be6321e1-8415-4201-bb09-9ef4d3afc4ba', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('be7e3a23-7feb-4081-9e10-125248dc3294', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('bf2d36b5-68d0-47e8-ab2c-dfb06bd57f01', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c092ed40-7bdc-414f-901f-76927cf36d7b', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('c19cb00b-44be-496b-8187-2553db56776b', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('c28e81d1-4627-482b-a467-28aa8b177202', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('c294d865-8ea5-4eaa-ae16-2d006aa884d6', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c3331a74-8faf-4ec7-bd67-d6f3883f3160', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('c3ce0e0d-cda9-4a3f-b042-9b6dfdec6d66', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('c4f67311-0c16-4903-a938-14d4929d2ce6', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c5e0e6a4-2f66-4ca0-8dfe-3b3490348ac8', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c6b6c31b-5b23-408b-9121-361b4893c49f', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c6d7f9ad-42ca-40c2-a905-16540fa554a5', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c77cefb3-c151-4134-89f8-10f7310d0b59', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('c8151160-2989-44e7-bb2d-5e1a0e9bfedc', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c84027c8-d0e4-4885-8156-1e9674766837', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('c8eb8a99-33ca-4783-b674-76f84eb96090', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('c965bc86-2ccd-45d2-b28d-a7d8c4516185', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('c9709aae-50c8-4d54-848d-33acf02e89d5', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ca25d4be-afa8-4688-93ff-6d1c7065ae0c', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('ca485686-24af-487d-9c54-88658a177e12', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('ca5152d6-c731-4dd8-b584-0237a6b1d75d', 'ddr-sa-wea-fc-aws23r-sd3-q', 1),
('cc104b7b-60b4-4efc-b178-3b0d1d964699', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('cc3d4a11-ec95-49e3-a751-be3a5fc92cd0', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('cc91ce0d-7ec1-4221-93e4-008bd875107c', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('cd4ee491-49a7-4350-9760-79d5cbae59e5', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 0),
('ce0e1e4b-591f-4de0-929d-da6e46b2196f', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ce577879-6f68-4695-8834-94121b54428a', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('cf940506-3e51-49e9-a55c-c97c210be781', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('d0104173-6175-4d27-9784-a9c138dd92a1', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('d023e1ca-a932-40b4-9610-7b64ee99932a', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('d0cc0ef3-19fa-4e83-9701-f3c9f5a6fdcf', 'ddr-sa-wea-fc-aws23r-sd3-q', 0),
('d1df4e45-7c10-40e6-a9f6-ff0d548dd9f1', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('d2232f6e-c492-413a-b46d-85298dea3332', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('d2c8841e-506c-4fe2-a325-08736829ecc6', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('d4d7c04e-b229-41cf-935a-f06ce9628176', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('d4eee1be-20ef-4ce4-9346-338f65c46d47', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('d543f13c-98fd-4489-bf0a-b5da13a29792', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('d5e31f14-19d3-47eb-8138-edbb13c153d2', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('d6bef040-4429-4887-b9ba-ab0a3506efb5', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('d7202c0b-eead-4f1b-a1b2-6b05511866b1', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('d770e940-6f19-4421-b95d-8c01d4edc14b', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('d7a79106-bf29-49c2-9c0b-f693c9cc6f67', '2e779ea2-9ece-48da-bc4e-32eef9d57adf', 0),
('d7cb215f-1104-4962-a1de-19c35279594b', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('d8262831-c6f9-4584-a425-48ed608425b9', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('d9149542-2a0e-4bdc-aa38-74a9de4e3e0a', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('da856248-753e-4644-bd84-293a74e0418a', 'ddr-sa-wea-fc-aws23r-sd3-q', 0),
('db93859c-b2c2-4288-8466-40fd0b7110a9', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('dbd626c1-ecbe-4ecd-9b32-6b1a1d435259', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('dc9d3ed8-06b7-4d74-8114-2a6a51d7f41f', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('ddd689d1-b611-4052-a227-ad6c3830c5c6', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('de45b320-7b98-4f38-880a-ecf161232705', 'ffghds-ds-dgagdf-dsd-sdf-32das', 0),
('df245863-6aca-463b-a156-06c43ab4c3bb', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('e02e8c73-0605-4555-aa2c-9097982879b0', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('e09d76bb-f595-442a-9629-15b1514e80c3', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('e14a46c3-46a4-4ba6-b169-8778888ccce4', '5e0d67bb-0840-477d-a02a-4d97344aa9c7', 0),
('e25d0620-cbeb-49ae-8e9c-35c111fb9513', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('e2ed4e48-de09-4962-9f79-b2d0e9eb0c88', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('e3c56d11-8003-433f-9101-9d545562cc4d', 'e6a96a11-9359-448e-bcf5-4f4f923c349e', 0),
('e63324ff-b3f5-497e-b531-5c001693364f', '0945eadb-0e5d-4096-8714-0b1d0b02e5c4', 0),
('e6653743-07d4-45f6-925f-5d6eeebad846', 'ccd2543f-a788-48dd-8a67-c7846f8e732d', 0),
('e6ea9b05-fe6b-4c5b-bedc-7d3ae0e89e82', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('e724dbfc-a840-439f-97ef-c68906f80276', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('e73a17e5-94f6-477d-adca-ecef6784bd0a', 'ddr-sa-wea-fc-aws23r-sd3-q', 0),
('e856e91f-4bbd-4489-b61b-2a7c138e09a6', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('e93e80cc-9ef3-4e8e-8054-a0cf24e716cf', '1ed78528-ab6e-4814-a32e-9b464578a141', 0),
('e9b70496-6398-4fe9-a022-62bc71a8f55e', '79c3bba9-393d-454e-b152-410e8d53945f', 0),
('eb36382f-38a6-49a8-b41c-68a8cbb8fab7', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('eb7ad9e1-6591-45b1-b63b-38188f7e01b9', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ed8ecf8a-02a7-45c7-a87b-66cb4cfe893c', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('edd047be-6ef5-40d0-94d0-db43f4c9f2a4', '12a78354-71e2-46ff-9fe2-236350dd8504', 0),
('ee2948b0-b868-4493-8e43-6f3914c2c20b', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ee553835-9755-4384-9d84-a2d8218e22e4', '18cb798e-2970-4b66-b73d-dc4bfa43b5b5', 0),
('ee766be7-d479-4618-a552-38c736eefbd6', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ee8ab7bb-f799-4821-9fec-83cfbfe307af', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ee989646-b91f-4663-a013-80a0c528030b', 'ddr-sa-wea-fc-aws23r-sd3-q', 0),
('ef5c178a-9b3f-4c4b-9cc6-2d16f3e62762', '2b35de1f-0015-42de-b4b6-8b3b0ecc8337', 0),
('f0fd837d-70c9-4228-ba7a-1e4a1063e98b', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('f14f465e-d42d-4f96-a1e9-004532d3483b', 'ddr-sa-wea-fc-aws23r-sd3-q', 0),
('f183b5b0-dd7a-4045-8090-58c3ee1981dd', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('f185928d-1084-47dd-a8c4-e2cbe15b4b21', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('f278ceb0-d5c4-4016-82e1-542e4e28e132', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('f2956007-9649-4aa2-9719-ae1961a06374', 'ddr-sa-wea-fc-aws23r-sd3-q', 0),
('f2ea2a22-fd7c-4dc4-8f2f-1cc5de3e1262', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('f301ad54-1cbc-41c4-8ad7-93d9daac4c67', '838746a2-e011-42b5-a7bd-5f324ba09207', 0),
('f328adbd-137f-4ed0-9ec0-40684055bdc0', '2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', 0),
('f39c31e3-5f97-40fb-8c1c-7e5cbf6afe62', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('f4416c41-2dff-4ba5-8e65-0917a8254915', '98b85242-f8bf-4894-b7e9-d4424a30c0ac', 0),
('f4a65955-9b67-4b28-947f-a54a639bf48a', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('f7af371c-f7fa-4bb9-9f7d-97895fb652b0', '2e89348b-cc89-4dcf-899f-641fe46bd103', 0),
('f81afa45-9fd3-4287-9888-57b6ee285f4a', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('f8539e9b-3a6c-43f0-8fea-17c4c3ac58ff', '12fae88e-370a-40ef-b5d2-71c98f1964e1', 0),
('fa6da625-b2b0-4230-a5ba-46d3cd4cb76c', '70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', 0),
('fdbed82e-c618-4dd1-acb4-90606dcdbef2', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('fe14e03c-4270-4e2a-a69b-3dec63f9821f', 'sfd-ag-ds-f-dfs-ds-fdfg-', 0),
('ff716994-471c-4d71-b546-238aefeeaa50', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0),
('ffeeede5-4895-4c9e-bde0-578fc621d3df', '44243fcd-11cf-45cf-ab31-6beba08e11f0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `book_id` varchar(255) NOT NULL,
  `book_in_book_id` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`book_id`, `book_in_book_id`, `amount`, `user_id`) VALUES
('', '', 2, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`) VALUES
('1', 'Kinh dị', 'Horror: Horror stories are intended to scare or frighten the reader. They often involve supernatural or paranormal elements, such as ghosts, demons, or monsters. Examples of horror novels include Stephen King\'s \"The Shining\" and Mary Shelley\'s \"Frankenstein.\"'),
('17202a18-0d0b-49c0-8335-acdc77328f39', 'aaaaa', 'a\na\na\na'),
('2', 'Drama', 'Drama: Drama is a genre that typically deals with serious or emotional themes and often involves conflict or tension between characters. Plays and theatrical performances are common formats for dramas, but the genre can also be found in literature. Examples of drama works include William Shakespeare\'s plays like \"Hamlet\" and \"Macbeth,\" Tennessee Williams\' \"A Streetcar Named Desire,\" and Arthur Miller\'s \"Death of a Salesman.\"'),
('3', 'Mystery', 'Mystery is a genre of fiction that revolves around a crime, puzzle, or secret that needs to be solved. It often involves a detective or an amateur sleuth who tries to gather clues and evidence to solve the mystery. The genre has several sub-genres such as police procedural, cozy mystery, hardboiled mystery, and historical mystery.'),
('4', 'Sci-fi', 'Science fiction is a genre of speculative fiction that explores the potential consequences of scientific and other innovations. It often takes place in the future or in an alternate universe and incorporates elements of technology, space travel, and other scientific concepts.'),
('5', 'Art', 'Art is a broad term that refers to a diverse range of creative activities that express emotions and ideas through the use of visual and performing arts. There are several different types of art'),
('6', 'Biology', 'Biology is the scientific study of living organisms and their interactions with each other and their environment. It encompasses a wide range of topics, from the smallest unit of life (cells) to the largest ecosystems on Earth.'),
('61dc9f21-e661-488d-91b9-634dd7ce13a2', 'Romantic', ''),
('7', 'Sports', ''),
('86ec9f4e-91f7-48c9-991c-fea079619fb7', 'Horror', 'adsa\ns\nâs\nsa\n'),
('c6a88b27-9219-4373-b1dd-e6f2cace50bb', 'Travel', 'saas\nsa\nsa\nas\nas'),
('d50faaad-8b56-44da-a75f-09001743e200', '1111', 'sds\nasd\nasas\nsa'),
('dfc873d0-cdad-4b06-a354-12eee93f8d42', 'Horror', 'Codassas\nsa\nas\nas\nsa'),
('e4660650-a759-4dcd-b125-36c2484a885d', 'aaaa', 'asaasas');

-- --------------------------------------------------------

--
-- Table structure for table `category_book`
--

CREATE TABLE `category_book` (
  `book_id` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_book`
--

INSERT INTO `category_book` (`book_id`, `category_id`) VALUES
('0945eadb-0e5d-4096-8714-0b1d0b02e5c4', '1'),
('0945eadb-0e5d-4096-8714-0b1d0b02e5c4', '2'),
('12a78354-71e2-46ff-9fe2-236350dd8504', '1'),
('12a78354-71e2-46ff-9fe2-236350dd8504', '2'),
('12fae88e-370a-40ef-b5d2-71c98f1964e1', '1'),
('12fae88e-370a-40ef-b5d2-71c98f1964e1', '2'),
('18cb798e-2970-4b66-b73d-dc4bfa43b5b5', '1'),
('18cb798e-2970-4b66-b73d-dc4bfa43b5b5', '2'),
('2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', '1'),
('2a1902e7-1988-4cc3-9d29-ec97ee8e4d06', '2'),
('2e779ea2-9ece-48da-bc4e-32eef9d57adf', '1'),
('2e779ea2-9ece-48da-bc4e-32eef9d57adf', '2'),
('3c238241-75d5-48a9-b53e-24a8aa0de94a', '1'),
('3c238241-75d5-48a9-b53e-24a8aa0de94a', '2'),
('44243fcd-11cf-45cf-ab31-6beba08e11f0', '1'),
('44243fcd-11cf-45cf-ab31-6beba08e11f0', '2'),
('5e0d67bb-0840-477d-a02a-4d97344aa9c7', '1'),
('5e0d67bb-0840-477d-a02a-4d97344aa9c7', '2'),
('70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', '1'),
('70ebf3e9-144b-45ce-8ec3-599fb0c70bb4', '2'),
('79c3bba9-393d-454e-b152-410e8d53945f', '1'),
('79c3bba9-393d-454e-b152-410e8d53945f', '2'),
('98b85242-f8bf-4894-b7e9-d4424a30c0ac', '1'),
('98b85242-f8bf-4894-b7e9-d4424a30c0ac', '2'),
('ccd2543f-a788-48dd-8a67-c7846f8e732d', '1'),
('ccd2543f-a788-48dd-8a67-c7846f8e732d', '2'),
('ddr-sa-wea-fc-aws23r-sd3-q', '1'),
('ddr-sa-wea-fc-aws23r-sd3-q', '2'),
('e6a96a11-9359-448e-bcf5-4f4f923c349e', '1'),
('e6a96a11-9359-448e-bcf5-4f4f923c349e', '2'),
('f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', '1'),
('f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', '2'),
('f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', '3'),
('fa-wr3-4-td-q23-f-sdq-32ew', ''),
('ffghds-ds-dgagdf-dsd-sdf-32das', '3'),
('gsdsf-gs-aw-42q-asd-3q-3aw', '4'),
('sfd-ag-ds-f-dfs-ds-fdfg-', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `book_id`, `content`, `time_created`) VALUES
('7ddfe4b3-34a3-4700-b23a-4d4424cfb3cf', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'aaaa', '2023-03-04T19:44:06.183Z'),
('60ac5252-89b5-4e93-86d5-f63083823dc4', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'Thís book is so good', '2023-03-04T19:51:21.665Z'),
('1ec99d5c-7e6e-46ce-ba57-0025ca59fdb7', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'Thís book is so good', '2023-03-04T19:51:44.182Z'),
('e1ff2edd-2976-4727-a3a4-7da8d869ef41', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2023-03-04T20:26:05.620Z'),
('0c12feb1-744d-4e2f-90d2-1f0cae119184', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'aaaaaaaâssssssssaa', '2023-03-04T20:28:14.884Z'),
('e5d9ed12-a4cc-483e-ac52-4bacde287229', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'asasa', '2023-03-04T20:28:19.263Z'),
('7d7db4e9-4232-4261-a99d-79a196a00fcb', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'asaas', '2023-03-04T20:28:31.659Z'),
('0c02132d-e3fd-4a52-b4ef-fc84ab521ce4', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'saasas', '2023-03-04T20:28:35.446Z'),
('30988084-a11b-4d6b-98b6-8d37e424e4bc', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ffghds-ds-dgagdf-dsd-sdf-32das', 'dadas', '2023-03-04T20:28:46.884Z'),
('e174031b-01f3-4469-95a4-2e53b914ee64', '3574712d-b9a8-4c42-86e7-8f593f877133', 'gsdsf-gs-aw-42q-asd-3q-3aw', 'dsassa', '2023-03-08T12:42:20.172Z'),
('a6233645-32af-42af-ba28-eccd90ecd86c', '3574712d-b9a8-4c42-86e7-8f593f877133', 'ddr-sa-wea-fc-aws23r-sd3-q', 'aa', '2023-03-08T12:42:28.323Z'),
('a73d558a-54c6-4899-b2a2-265f829479dc', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'fa-wr3-4-td-q23-f-sdq-32ew', 'aaa', '2023-03-10T17:45:00.265Z'),
('033bab29-5bfe-471d-bdbc-2e2f4021ca63', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'fa-wr3-4-td-q23-f-sdq-32ew', 'ssaas', '2023-03-25T19:43:29.553Z'),
('8935ec23-fdc2-412d-93f5-13ad03a11217', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'fa-wr3-4-td-q23-f-sdq-32ew', 'sass', '2023-04-08T16:59:05.158Z'),
('a50c713d-e648-4d3a-a1c2-55583066c071', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'fa-wr3-4-td-q23-f-sdq-32ew', 'sáasassasa\n', '2023-04-08T16:59:16.975Z'),
('90020b7d-97a6-47c2-b20b-881609593a71', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'fa-wr3-4-td-q23-f-sdq-32ew', 'saasasas', '2023-04-08T16:59:25.438Z'),
('e109d2c7-96a4-45fe-b936-0e915a41b508', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'fa-wr3-4-td-q23-f-sdq-32ew', 'âssaas', '2023-04-09 00:00:23.653000'),
('49b92c0e-498c-4400-9416-d4b588efd2e6', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'fa-wr3-4-td-q23-f-sdq-32ew', 'sasasas', '2023-04-09 00:01:38.506000'),
('09d1dddd-771a-400e-b0ad-97a706280624', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'f5a85ab5-94c6-41ac-8a8e-678ba226c8fa', 'ee', '2023-04-11 19:34:45.356000');

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE `conversation` (
  `conversation_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`conversation_id`, `user_id`) VALUES
('ds-fd-ds-da-a-qa2-3-s-2qaw', '3574712d-b9a8-4c42-86e7-8f593f877133'),
('dsdffgd-fdsdas-s-asasa', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `rating_id` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `time_book` varchar(255) NOT NULL,
  `time_approve` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `is_borrow` int(11) NOT NULL DEFAULT 0,
  `borrow_time` int(11) NOT NULL DEFAULT 0,
  `time_borrow` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `user_id`, `book_id`, `time_book`, `time_approve`, `state`, `is_borrow`, `borrow_time`, `time_borrow`) VALUES
('07ee8c51-2ac1-4659-9902-bc03bb6ef1a8', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'be03f45b-d14b-4093-801b-48b0d34b7167', '2023-04-24 02:21:10.251000', '0', 0, 0, 0, '2023-04-24 02:21:10.251000'),
('13a1bce0-0721-4c68-af25-51be34ad3823', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'b6afa38a-e190-4034-b34b-c2ccd6715381', '2023-04-24 02:16:36.074000', '0', 0, 0, 0, '2023-04-24 02:16:36.074000'),
('16b74883-7a72-4b30-a296-317760b86116', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'be03f45b-d14b-4093-801b-48b0d34b7167', '2023-04-24 02:21:14.865000', '0', 0, 0, 0, '2023-04-24 02:21:14.865000'),
('1e437099-d5ce-4c28-ae04-e56be858cf72', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '442cbde2-4210-4576-a525-485268e6675a', '2023-04-24 01:55:15.829000', '0', 0, 0, 0, '2023-04-24 01:55:15.829000'),
('1e982104-ddf2-4f86-9457-5430b2d1a948', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '5a7bd824-3dc1-44c9-a4cc-8cd3dfd77e0d', '2023-04-16 01:35:17.905000', '2023-04-16 01:35:31.931000', 3, 1, 5, '2023-04-16 01:35:31.931000'),
('26dd7981-ff88-4667-ac67-be198bc2ea91', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '24116d3c-0516-4ba4-beaf-cf873b31df6a', '2023-04-23 02:25:02.639000', '0', 0, 0, 0, '2023-04-23 02:25:02.639000'),
('2ce99b18-9ff1-418d-89f3-b01d52ffef0c', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'be03f45b-d14b-4093-801b-48b0d34b7167', '2023-04-24 02:21:08.896000', '0', 0, 0, 0, '2023-04-24 02:21:08.896000'),
('41c7725e-f52d-4572-9aee-846d79398688', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '64ba9f85-4035-49e7-ae8d-ed61672f027d', '2023-04-24 02:00:31.881000', '0', 0, 0, 0, '2023-04-24 02:00:31.881000'),
('6271fea6-a1c8-4bbb-9605-fec56d089d7d', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'be03f45b-d14b-4093-801b-48b0d34b7167', '2023-04-24 02:21:17.226000', '0', 0, 0, 0, '2023-04-24 02:21:17.226000'),
('67299ce8-3f1c-4b09-80ec-ddef5d3ed350', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '8d37a3c9-2516-49de-89b0-b7fa7baa9bb5', '2023-04-24 02:13:24.639000', '0', 0, 0, 0, '2023-04-24 02:13:24.639000'),
('68faa522-3e83-48de-9d9e-d3b36e793784', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'be03f45b-d14b-4093-801b-48b0d34b7167', '2023-04-24 02:21:17.844000', '0', 0, 0, 0, '2023-04-24 02:21:17.844000'),
('80668681-e078-4b35-a640-91ad9687e2f2', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '7fc5f5c5-e51b-4595-a02d-dbf29655080c', '2023-04-24 02:12:21.535000', '0', 0, 0, 0, '2023-04-24 02:12:21.535000'),
('8789f1b0-6e85-48f0-bff1-bd8f95ce9d4f', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '6d1d216a-24fe-4e93-a829-4037b53e5f3e', '2023-04-24 02:00:51.204000', '0', 0, 0, 0, '2023-04-24 02:00:51.204000'),
('8886949b-4194-4586-8b36-9928c482f7d9', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'ca5152d6-c731-4dd8-b584-0237a6b1d75d', '2023-04-24 02:21:40.284000', '0', 0, 0, 0, '2023-04-24 02:21:40.284000'),
('8c535a22-87c0-4fcf-90b1-2c522be7bb6e', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'be03f45b-d14b-4093-801b-48b0d34b7167', '2023-04-24 02:21:11.417000', '0', 0, 0, 0, '2023-04-24 02:21:11.417000'),
('92707347-58e3-4d92-9cf5-f838b3d96811', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '953f363c-57c8-46cb-8931-6933f19fb251', '2023-04-24 02:13:44.304000', '0', 0, 0, 0, '2023-04-24 02:13:44.304000'),
('9fcaf9f8-4650-4f88-92bf-c9d197410ce7', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'b902f36a-1942-4f02-880e-2d1e2e2abdc7', '2023-04-16 15:28:23.944000', '2023-04-16 15:28:44.329000', 1, 1, 3, '2023-04-16 15:31:48.861000'),
('a85b34a6-02c4-4d29-9b81-83c6b350a16a', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '51942caf-3650-471f-952b-5b9407de3e12', '2023-04-24 01:59:55.190000', '0', 0, 0, 0, '2023-04-24 01:59:55.190000'),
('b50c2663-a429-4a01-b1a6-b1c1a78c1821', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'b6217cfd-d344-4d9b-9747-69a617f138bf', '2023-04-24 01:59:23.932000', '0', 0, 0, 0, '2023-04-24 01:59:23.932000'),
('d4e351de-cfee-4a45-b385-68cb2648d963', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'ae0a8de6-b9c7-4a91-bfe0-a7c308db1a3f', '2023-04-24 02:15:58.922000', '0', 0, 0, 0, '2023-04-24 02:15:58.922000'),
('dabd3e6c-5e1c-4e9c-8f00-fbd41092d1dd', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'be03f45b-d14b-4093-801b-48b0d34b7167', '2023-04-24 02:20:41.520000', '0', 0, 0, 0, '2023-04-24 02:20:41.520000'),
('e8b42f5a-3bad-4e1a-82d3-323924fbeec4', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '86932cb0-5f2b-48c7-8c99-88fcdef490e6', '2023-04-24 02:12:49.449000', '0', 0, 0, 0, '2023-04-24 02:12:49.449000');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `conversation_id` varchar(255) NOT NULL,
  `time_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `message`, `conversation_id`, `time_created`) VALUES
(1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:17.472Z'),
(2, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'a', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:18.695Z'),
(3, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'a', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:19.487Z'),
(4, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'aaaa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:21.015Z'),
(5, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sassss', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:23.335Z'),
(6, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'asa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:45.548Z'),
(7, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'âsas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:46.807Z'),
(8, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sâs', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T03:39:48.215Z'),
(9, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'asasasassa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:33:48.655Z'),
(10, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'saass', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:34:15.088Z'),
(11, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasasasa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:34:18.808Z'),
(12, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sassa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:34:20.983Z'),
(13, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:34:22.263Z'),
(14, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:35:14.861Z'),
(15, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'assaasassaas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:35:18.320Z'),
(16, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:36:06.006Z'),
(17, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'xxxx', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:36:09.431Z'),
(18, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sấ', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:36:12.970Z'),
(19, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'aaaaaaaaa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:36:34.887Z'),
(20, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'aa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:36:38.118Z'),
(21, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'xin chao', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:37:21.119Z'),
(22, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'saassa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:43:03.334Z'),
(23, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:44:54.569Z'),
(24, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:45:13.870Z'),
(25, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:45:17.171Z'),
(26, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasaas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:50:01.302Z'),
(27, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:50:03.663Z'),
(28, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'asassa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:53:29.694Z'),
(29, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:53:30.150Z'),
(30, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'saasasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:53:33.286Z'),
(31, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sáaasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:54:08.637Z'),
(32, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'ssasaas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T04:55:38.404Z'),
(33, '3574712d-b9a8-4c42-86e7-8f593f877133', 'xin chào', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:19:00.487Z'),
(34, '3574712d-b9a8-4c42-86e7-8f593f877133', 'có chuyện gì không', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:19:08.514Z'),
(35, '3574712d-b9a8-4c42-86e7-8f593f877133', 'cô ơi em muốn mượn sách', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:19:19.593Z'),
(36, '3574712d-b9a8-4c42-86e7-8f593f877133', 'a', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:19:31.786Z'),
(37, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:19:49.026Z'),
(38, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'dssd', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:20:17.779Z'),
(39, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'asssssss', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:20:21.428Z'),
(40, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sáas', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:21:07.706Z'),
(41, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'saaa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T06:21:21.058Z'),
(42, '3574712d-b9a8-4c42-86e7-8f593f877133', 'dsdsas', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:21:33.833Z'),
(43, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:22:34.162Z'),
(44, '3574712d-b9a8-4c42-86e7-8f593f877133', 'em chòa anh', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:22:42.250Z'),
(45, '3574712d-b9a8-4c42-86e7-8f593f877133', 'em muốn mược sách', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:22:58.905Z'),
(46, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:23:04.545Z'),
(47, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:23:12.209Z'),
(48, '3574712d-b9a8-4c42-86e7-8f593f877133', 'saassa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:23:16.865Z'),
(49, '3574712d-b9a8-4c42-86e7-8f593f877133', 'asssssssssssssss', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:23:20.817Z'),
(50, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sáass', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:23:31.032Z'),
(51, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aaaa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T06:24:29.682Z'),
(52, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'asasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T09:19:16.183Z'),
(53, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sassasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T09:19:19.151Z'),
(54, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'assaas', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T09:19:30.950Z'),
(55, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sassa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T09:19:46.168Z'),
(56, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'aa', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T09:19:55.375Z'),
(57, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'chào em ', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T09:20:03.550Z'),
(58, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'âss', 'dsdffgd-fdsdas-s-asasa', '2023-03-12T09:20:37.773Z'),
(59, '3574712d-b9a8-4c42-86e7-8f593f877133', 'cô ơi em muốn mượn sách', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:21:06.204Z'),
(60, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:21:23.202Z'),
(61, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aaa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:21:34.053Z'),
(62, '3574712d-b9a8-4c42-86e7-8f593f877133', 'xxxx', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:22:14.907Z'),
(63, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sâs', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:22:17.579Z'),
(64, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aaa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:22:44.316Z'),
(65, '3574712d-b9a8-4c42-86e7-8f593f877133', 'saass', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:22:49.340Z'),
(66, '3574712d-b9a8-4c42-86e7-8f593f877133', 'saas', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:23:27.796Z'),
(67, '3574712d-b9a8-4c42-86e7-8f593f877133', 'aa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:23:41.396Z'),
(68, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sasa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:24:29.901Z'),
(69, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sasaas', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:24:32.372Z'),
(70, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sáas', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:25:13.381Z'),
(71, '3574712d-b9a8-4c42-86e7-8f593f877133', 'âsas', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:25:15.740Z'),
(72, '3574712d-b9a8-4c42-86e7-8f593f877133', 'asa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:25:35.249Z'),
(73, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sa', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:25:37.210Z'),
(74, '3574712d-b9a8-4c42-86e7-8f593f877133', 'e chao co', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:28:18.474Z'),
(75, '3574712d-b9a8-4c42-86e7-8f593f877133', 'sáas', 'ds-fd-ds-da-a-qa2-3-s-2qaw', '2023-03-12T09:28:22.842Z'),
(76, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'asasas', 'dsdffgd-fdsdas-s-asasa', '2023-03-29T12:59:32.710Z'),
(77, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'assssaas', 'dsdffgd-fdsdas-s-asasa', '2023-03-29T12:59:44.633Z'),
(78, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'xin chào tôi có thể giúp gì cho bạn', 'dsdffgd-fdsdas-s-asasa', '2023-03-29T13:00:02.350Z'),
(79, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'sasassas', 'dsdffgd-fdsdas-s-asasa', '2023-03-29T13:01:33.795Z');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `type`, `seen`, `sender`, `receiver`) VALUES
(1, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', ''),
(2, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', ''),
(3, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', ''),
(4, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', ''),
(5, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', ''),
(6, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', ''),
(7, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', ''),
(8, 0, 1, '3fcd5323-8a5e-4ef2-8847-8865dd76fe53', '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` varchar(255) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `publisher_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` varchar(255) NOT NULL,
  `score` float NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `score`, `book_id`, `user_id`) VALUES
('79082689-b73c-4b2f-a597-87f7f8a856f5', 2.5, '', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53'),
('a63f8347-dee0-4497-a9e5-ed12b20af620', 3, 'fa-wr3-4-td-q23-f-sdq-32ew', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53'),
('f1a7d67b-c244-4101-8192-25ff47a46ad2', 3.5, 'ffghds-ds-dgagdf-dsd-sdf-32das', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53'),
('8e8dda94-2284-4bb8-8796-0b2e8a38f9fc', 3.5, 'sfd-ag-ds-f-dfs-ds-fdfg-', '3fcd5323-8a5e-4ef2-8847-8865dd76fe53');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `record_id` varchar(255) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `returned_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `time_created` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_address`, `role`, `time_created`) VALUES
('3f8eaca2-15fb-4803-9698-a3d3adce8872', 'admin', 'admin', '', '25d55ad283aa400af464c76d713c07ad', 'f@gmail.com', 3, 0),
('3fcd5323-8a5e-4ef2-8847-8865dd76fe53', 'datistpham1', 'datistpham@gmail.com', '0388015984', '25f9e794323b453885f5181f1b624d0b', 'datistpham', 2, 0),
('5a88c2d8-24e5-4d2f-b316-68b7292463d0', 'Giang Pham1', 'datistpham1@fpt.edu.com', '0388015984', '25d55ad283aa400af464c76d713c07ad', 'adasasasas', 1, 0),
('6a8c1c13-441e-450e-8b43-910a603d21c3', 'A Nguyen ', 'abc@fpt.edu.com', '02193283912', '25f9e794323b453885f5181f1b624d0b', 'da nang', 1, 2147483647),
('6bfbeac8-468d-481a-840b-b9af1cd38436', 'staff4', '0121827182', 'staff4', '827ccb0eea8a706c4c34a16891f84e7b', 'ha noi', 2, 2147483647),
('a49c3511-1bfa-454e-889c-127a48dc69a0', 'A Nguyen ', 'abcz@fpt.edu.com', '02193283912', '25f9e794323b453885f5181f1b624d0b', 'hcm', 1, 2147483647),
('ee378a3f-851b-4fa7-b9d5-b8c67baa7bbd', 'staff4', '011029212', 'staff4@gmail.com', '12345', 'ha noi', 2, 2147483647),
('f2967280-9ba6-4960-9106-348292c9fd32', 'Datist Pham', 'giang10a1dz@gmail.com', '0388015984', '25f9e794323b453885f5181f1b624d0b', 'ha noi', 1, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `verify_email`
--

CREATE TABLE `verify_email` (
  `email` varchar(255) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify_email`
--

INSERT INTO `verify_email` (`email`, `code`) VALUES
('', 446294),
('datistphaam@gmail.com', 363547),
('datistpham@fpt.edu.vn', 140218);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_in_book`
--
ALTER TABLE `book_in_book`
  ADD PRIMARY KEY (`book_in_book_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `category_book`
--
ALTER TABLE `category_book`
  ADD PRIMARY KEY (`book_id`,`category_id`);

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`conversation_id`,`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD UNIQUE KEY `user_id` (`user_id`,`book_id`),
  ADD UNIQUE KEY `rating_id` (`rating_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`book_id`,`user_id`),
  ADD UNIQUE KEY `rating_id` (`rating_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `verify_email`
--
ALTER TABLE `verify_email`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_expired_loans` ON SCHEDULE EVERY 1 MINUTE STARTS '2023-03-26 13:31:23' ON COMPLETION PRESERVE ENABLE DO DELETE FROM history WHERE state= 1 AND is_borrow= 0 AND TIMESTAMPDIFF(MINUTE, time_approve, NOW()) >= 3$$

CREATE DEFINER=`root`@`localhost` EVENT `overdue` ON SCHEDULE EVERY 1 MINUTE STARTS '2023-04-09 02:15:53' ON COMPLETION PRESERVE ENABLE DO UPDATE history SET state= 4 WHERE state=1 AND is_borrow= 1 AND TIMESTAMPDIFF(DAY, STR_TO_DATE(`time_approve`, '%Y-%m-%d %H:%i:%s'), NOW()) > `borrow_time`$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
