/*
 Navicat Premium Data Transfer

 Source Server         : SQL_Local_2014
 Source Server Type    : SQL Server
 Source Server Version : 12002000
 Source Host           : DESKTOP-SA34LFK\SQLEXPRESS:1433
 Source Catalog        : Exam_Web
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002000
 File Encoding         : 65001

 Date: 20/04/2021 23:10:13
*/


-- ----------------------------
-- Table structure for CauHoi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CauHoi]') AND type IN ('U'))
	DROP TABLE [dbo].[CauHoi]
GO

CREATE TABLE [dbo].[CauHoi] (
  [CauHoiID] int  IDENTITY(1,1) NOT NULL,
  [NoiDungCauHoi] nvarchar(500) COLLATE Latin1_General_CI_AS  NULL,
  [Answer_A] nvarchar(200) COLLATE Latin1_General_CI_AS  NULL,
  [Answer_B] nvarchar(200) COLLATE Latin1_General_CI_AS  NULL,
  [Answer_C] nvarchar(200) COLLATE Latin1_General_CI_AS  NULL,
  [Answer_D] nvarchar(200) COLLATE Latin1_General_CI_AS  NULL,
  [CauTraLoiDung] varchar(1) COLLATE Latin1_General_CI_AS  NULL,
  [DoKhoID] int  NULL,
  [MonHocID] int  NULL,
  [Image] nvarchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[CauHoi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CauHoi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CauHoi] ON
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'1', N'Hội nghị Ianta (1945) có sự tham gia của các nước nào?', N'Anh - Pháp - Mĩ', N'Anh - Mĩ - Liên Xô.', N' Anh - Pháp - Đức.', N'Mĩ - Liên Xô - Trung Quốc.', N'B', N'2', N'7', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'2', N'Hội nghị Ianta được triệu tập vào thời điểm nào của cuộc Chiến tranh thế giới thứ hai (1939 – 1945)?', N'Chiến tranh thế giới thứ hai bùng nổ', N'Chiến tranh thế giới thứ hai bước vào giai đoạn ác liệt', N'Chiến tranh thế giới thứ hai bước vào giai đoạn kết thúc.', N'Chiến tranh thế giới thứ hai đã kết thúc', N'C', N'2', N'7', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'3', N'Mark the letter A, B, C, or Don your answer sheet to indicate the word whose underlined part differs from the other three in pronunciation in each of the following', N'ha<u>l</u>f', N'calm', N'chalk', N'culture', N'A', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'4', N'Kim loại nào sau đây không tác dụng với dung dịch CuSO4? ', N'Ag', N'Mg', N'Fe', N'Al', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'5', N'Kim loại nào sau đây là kim loại kiềm? ', N'Cu', N'Na', N'Mg', N'Al', N'B', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'6', N'Khí X sinh ra trong quá trình đốt nhiên liệu hóa thạch, rất độc và gây ô nhiễm môi trường.Khí X là', N'CO', N'H2', N'NH3', N'N2', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'7', N'Thủy phân este CH3CH2COOCH3, thu được ancol có công thức là', N'CH3OH', N' C3H7OH', N' C2H5OH', N'C3H5OH', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'8', N'Ở nhiệt độ thường, kim loại Fe không phản ứng với dung dịch nào sau đây?', N'NaNO3', N'HCl.', N'CuSO4.', N'CuSO4.', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'9', N'Dung dịch chất nào sau đây làm xanh quỳ tím?', N'Metanol', N'Metanol', N'Metanol', N'Metylamin', N'D', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'10', N'Chất nào sau đây có tính lưỡng tính?', N'NaNO3', N'MgCl2', N'Al(OH)3', N' Na2CO3', N'C', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'11', N'Sắt có số oxi hóa +3 trong hợp chất nào sau đây? ', N'. Fe(OH)2', N'Fe(NO3)2.', N' Fe2(SO4)3. ', N'FeO.', N'', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'12', N'Chất nào sau đây có phản ứng trùng hợp?', N'Etilen', N'Etylen glicol', N'Etylamin.', N'Axit axetic.', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'13', N'Số nguyên tử cacbon trong phân tử glucozơ là', N'5', N'10', N'6', N'12', N'C', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'14', N'Ở nhiệt độ thường, kim loại nào sau đây tan hết trong nước dư?', N'Ba', N'Al', N'Fe', N'Fe', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'15', N'Chất nào sau đây được dùng để làm mềm nước có tính cứng tạm thời?', N'. CaCO3.', N'MgCl2', N'NaOH', N'Fe(OH)2', N'C', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'16', N'Dung dịch KOH tác dụng với chất nào sau đây tạo ra kết tủa Fe(OH)3? ', N'FeCl3.', N'FeO', N'Fe2O3', N'Fe3O4', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'17', N'Fe3O4', N'HCl', N'KNO3', N' CH3COOH', N' CH3COOH', N'C', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'18', N'Thủy phân triolein có công thức (C17H33COO)3C3H5 trong dung dịch NaOH, thu được glixerol và muối X. Công thức của X là', N'C17H35COONa', N'CH3COONa', N'CH3COONa', N'C17H33COONa', N'D', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'19', N'Natri hiđroxit (còn gọi là xút ăn da) có công thức hóa học là', N'NaOH', N'NaHCO3', N'Na2CO3', N'Na2SO4', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'20', N'Chất nào sau đây có một liên kết ba trong phân tử?', N'Metan', N'Etilen', N'Axetilen', N'Benzen', N'C', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'21', N'Chất X có công thức H2N-CH(CH3)-COOH. Tên gọi của X là', N'. glyxin', N'valin', N'alanin', N'lysin', N'C', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'22', N'Thành phần chính của vỏ các loài ốc, sò, hến là', N'Ca(NO3)2', N'CaCO3', N'NaCl', N'Na2CO3', N'B', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'23', N'Cho m gam bột Zn tác dụng hoàn toàn với dung dịch CuSO4 dư, thu được 9,6 gam kim loại Cu. Giá trị của m là', N'6,50', N'3,25', N'9,75', N'13,00', N'C', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'24', N'Hòa tan hoàn toàn 0,1 mol Al bằng dung dịch NaOH dư, thu được V lít H2. Giá trị của V là', N'2,24', N'5,60', N'4,48', N'3,36', N'D', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'25', N'Cho 2 ml ancol etylic vào ống nghiệm đã có sẵn vài viên đá bọt. Thêm từ từ 4 ml dung dịch H2SO4 đặc vào ống nghiệm, đồng thời lắc đều rồi đun nóng hỗn hợp. Hiđrocacbon sinh ra trong thí nghiệm trên là', N' etilen', N'axetilen.', N'propilen', N'metan', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'26', N'Phát biểu nào sau đây sai?', N'Dung dịch lysin không làm đổi màu quỳ tím', N'Metylamin là chất khí tan nhiều trong nước', N' Protein đơn giản chứa các gốc a-amino axit.', N'Phân tử Gly-Ala-Val có ba nguyên tử nitơ', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'27', N'Thủy phân 68,4 gam saccarozơ với hiệu suất 75%, thu được m gam glucozơ. Giá trị của m là', N'54', N' 27', N'72.', N'36', N'B', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'28', N'Cho m gam Gly-Ala tác dụng hết với dung dịch NaOH dư, đun nóng. Số mol NaOH đã phản ứng là 0,2 mol. Giá trị của m là ', N' 14,6', N'29,2', N'26,4.', N'32,8.', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'29', N'Chất X được tạo thành trong cây xanh nhờ quá trình quang hợp. Ở điều kiện thường, X là chất rắn vô định hình. Thủy phân X nhờ xúc tác axit hoặc enzim, thu được chất Y có ứng dụng làm thuốc tăng lực trong y học. Chất X và Y lần lượt là', N'tinh bột và glucozơ.', N'tinh bột và saccarozơ', N'xenlulozơ và saccarozơ', N'saccarozơ và glucozơ', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'30', N'Phát biểu nào sau đây sai?', N'Cho viên kẽm vào dung dịch HCl thì kẽm bị ăn mòn hóa học. ', N'Quặng boxit là nguyên liệu dùng để sản xuất nhôm.', N'Đốt Fe trong khí Cl2 dư, thu được FeCl3.', N'Tính khử của Ag mạnh hơn tính khử của Cu', N'D', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'31', N'Hỗn hợp FeO và Fe2O3 tác dụng với lượng dư dung dịch nào sau đây không thu được muối sắt (II)?', N'HNO3 đặc, nóng', N'HCl', N' H2SO4 loãng.', N'. NaHSO4.', N'A', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'32', N'Cho các tơ sau: visco, capron, xenlulozơ axetat, olon. Số tơ tổng hợp là', N'1', N'2', N'3', N'4', N'B', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'33', N'The instructor blew his whistle and...', N'off the runners were running ', N'off ran the runners', N'off were running the runners', N'the runners runs off', N'B', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'34', N'People have used coal and oil to______electricity for a long time', N'bred', N'raise', N'cultivate', N'generate', N'D', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'35', N'In the early years of the 20th century, several rebellions______in the northern parts of the country.', N'turned out', N'rose up', N' broke out', N'came up', N'C', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'36', N'The festival has many attractions. It will include contemporary orchestra music and an opera.____ , there will be poetry readings and theatrical presentations.', N'Otherwise', N'Furthermore', N'Nevertheless', N'On the other hand', N'B', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'37', N'When he started that company, he really went______. It might have been a disaster.', N'out on the limb', N'on and off C', N'over the odds', N'.once too often', N'D', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'38', N'We regret to tell you that the materials you ordered are______.', N'out of stock', N'out of practice', N'out of reach', N'out of work', N'A', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'39', N'My sister is a woman of______age.', N'marriage', N'married', N'marrying', N'marriageable', N'D', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'40', N'The fire______to have started in the furnace under the house', N'is believed', N'that is believed', N' they believed', N'that they believe', N'A', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'41', N'This is the latest news from earthquake site. Two- thirds of the city______in a fire.', N'has been destroyed', N'have been destroyed', N'were destroyed', N'was destroyed', N'A', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'42', N'There are many______in our library.', N'interesting American old history books', N'old American interesting history books', N'interesting old American history books', N' American interesting old history books', N'A', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'43', N'Giả sử một gen được cấu tạo từ 3 loại nuclêôtit: A, T, G thì trên mạch gốc của gen này có thể có tối đa bao nhiêuloại mã bộ ba?', N'6 loại mã bộ ba', N'3 loại mã bộ ba', N'27 loại mã bộ ba', N'9 loại mã bộ ba', N'C', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'44', N'Ở sinh vật nhân thực, trình tự nuclêôtit trong vùng mã hóa của gen nhưng không mã hóa axit amin được gọi là', N'đoạn intron.', N'đoạn êxôn', N' gen phân mảnh.', N'vùng vận hành', N'A', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'45', N'Vùng điều hoà là vùng', N'quy định trình tự sắp xếp các axit amin trong phân tử prôtêin', N'mang tín hiệu khởi động và kiểm soát quá trình phiên mã', N'mang thông tin mã hoá các axit amin', N'mang tín hiệu kết thúc phiên mã', N'B', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'46', N'Trong 64 bộ ba mã di truyền, có 3 bộ ba không mã hoá cho axit amin nào. Các bộ ba đó là:', N'UGU, UAA, UAG', N'UUG, UGA, UAG', N'UAG, UAA, UGA', N'UUG, UAA, UGA', N'C', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'47', N'Trong quá trình nhân đôi ADN, vì sao trên mỗi chạc tái bản có một mạch được tổng hợp liên tục còn mạch kiađược tổng hợp gián đoạn?', N'Vì enzim ADN polimeraza chỉ tổng hợp mạch mới theo chiều 5’→3’.', N'Vì enzim ADN polimeraza chỉ tác dụng lên một mạch', N'Vì enzim ADN polimeraza chỉ tác dụng lên mạch khuôn 3’→5’', N'Vì enzim ADN polimeraza chỉ tác dụng lên mạch khuôn 5’→3’.', N'A', N'2', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'48', N'Mã di truyền có tính đặc hiệu, tức là', N'. tất cả các loài đều dùng chung một bộ mã di truyền.', N'mã mở đầu là AUG, mã kết thúc là UAA, UAG, UGA', N'nhiều bộ ba cùng xác định một axit amin.', N'một bộ ba mã hoá chỉ mã hoá cho một loại axit amin.', N'D', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'49', N'Tất cả các loài sinh vật đều có chung một bộ mã di truyền, trừ một vài ngoại lệ, điều này biểu hiện đặc điểm gìcủa mã di truyền?', N'Mã di truyền có tính đặc hiệu', N'Mã di truyền có tính thoái hóa.', N'Mã di truyền có tính phổ biến', N'. Mã di truyền luôn là mã bộ ba', N'C', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'50', N'Gen không phân mảnh có', N'cả exôn và intrôn', N'vùng mã hoá không liên tục', N'vùng mã hoá liên tục', N'các đoạn intrôn', N'C', N'2', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'51', N'Một đoạn của phân tử ADN mang thông tin mã hoá cho một chuỗi pôlipeptit hay một phân tử ARN được gọi là', N'codon', N'gen.', N'anticodon', N'. mã di truyền', N'B', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'52', N' Quá trình nhân đôi ADN được thực hiện theo nguyên tắc gì?', N'Hai mạch được tổng hợp theo nguyên tắc bổ sung song song liên tục.', N'Một mạch được tổng hợp gián đoạn', N'một mạch được tổng hợp liên tục', N'Nguyên tắc bổ sung và nguyên tắc bán bảo toàn.', N'C', N'2', N'6', NULL)
GO

INSERT INTO [dbo].[CauHoi] ([CauHoiID], [NoiDungCauHoi], [Answer_A], [Answer_B], [Answer_C], [Answer_D], [CauTraLoiDung], [DoKhoID], [MonHocID], [Image]) VALUES (N'53', N'Câu hỏi thứ n', N'Đáp án A', N'Đáp án B', N'Đáp án C', N'Đáp án D', N'B', N'2', N'1', N'/Content/Uploads/UploadImages/1-3-1920x1080213053769.jpg')
GO

SET IDENTITY_INSERT [dbo].[CauHoi] OFF
GO


-- ----------------------------
-- Table structure for DapAnDaLuaChon
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DapAnDaLuaChon]') AND type IN ('U'))
	DROP TABLE [dbo].[DapAnDaLuaChon]
GO

CREATE TABLE [dbo].[DapAnDaLuaChon] (
  [KetQuaThiID] int  IDENTITY(1,1) NOT NULL,
  [LanThiID] int  NULL,
  [CauHoiID] int  NULL,
  [DapAnDaChon] varchar(1) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[DapAnDaLuaChon] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DapAnDaLuaChon
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DapAnDaLuaChon] ON
GO

SET IDENTITY_INSERT [dbo].[DapAnDaLuaChon] OFF
GO


-- ----------------------------
-- Table structure for DeThi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DeThi]') AND type IN ('U'))
	DROP TABLE [dbo].[DeThi]
GO

CREATE TABLE [dbo].[DeThi] (
  [DeThiID] int  IDENTITY(1,1) NOT NULL,
  [MonHocID] int  NULL,
  [TenDeThi] nvarchar(200) COLLATE Latin1_General_CI_AS  NULL,
  [ThoiGianLamBai] int  NULL,
  [ThoiGianBatDauLamBai] datetime  NULL,
  [LoaiDe] varchar(20) COLLATE Latin1_General_CI_AS  NULL,
  [GiaoVienID] int  NULL,
  [Status] int  NULL,
  [Comment] nvarchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[DeThi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DeThi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DeThi] ON
GO

INSERT INTO [dbo].[DeThi] ([DeThiID], [MonHocID], [TenDeThi], [ThoiGianLamBai], [ThoiGianBatDauLamBai], [LoaiDe], [GiaoVienID], [Status], [Comment]) VALUES (N'1', N'3', N'Kiểm tra 15p 222', N'3600', N'2021-03-12 09:30:00.000', N'test', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[DeThi] ([DeThiID], [MonHocID], [TenDeThi], [ThoiGianLamBai], [ThoiGianBatDauLamBai], [LoaiDe], [GiaoVienID], [Status], [Comment]) VALUES (N'2', N'3', N'aaaa', N'12', N'2021-04-01 03:10:00.000', N'revision', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[DeThi] ([DeThiID], [MonHocID], [TenDeThi], [ThoiGianLamBai], [ThoiGianBatDauLamBai], [LoaiDe], [GiaoVienID], [Status], [Comment]) VALUES (N'6', N'1', N'Test', N'120', N'2021-03-05 10:30:00.000', N'revision', N'1', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[DeThi] OFF
GO


-- ----------------------------
-- Table structure for DeThi_CauHoi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DeThi_CauHoi]') AND type IN ('U'))
	DROP TABLE [dbo].[DeThi_CauHoi]
GO

CREATE TABLE [dbo].[DeThi_CauHoi] (
  [DeThiID] int  NOT NULL,
  [CauHoiID] int  NOT NULL
)
GO

ALTER TABLE [dbo].[DeThi_CauHoi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DeThi_CauHoi
-- ----------------------------
INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'4')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'5')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'6')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'7')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'8')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'9')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'10')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'11')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'12')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'13')
GO

INSERT INTO [dbo].[DeThi_CauHoi] ([DeThiID], [CauHoiID]) VALUES (N'1', N'14')
GO


-- ----------------------------
-- Table structure for DoKho
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DoKho]') AND type IN ('U'))
	DROP TABLE [dbo].[DoKho]
GO

CREATE TABLE [dbo].[DoKho] (
  [DoKhoID] int  IDENTITY(1,1) NOT NULL,
  [TenDoKho] nvarchar(20) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[DoKho] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DoKho
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DoKho] ON
GO

INSERT INTO [dbo].[DoKho] ([DoKhoID], [TenDoKho]) VALUES (N'1', N'Dễ')
GO

INSERT INTO [dbo].[DoKho] ([DoKhoID], [TenDoKho]) VALUES (N'2', N'Trung bình')
GO

INSERT INTO [dbo].[DoKho] ([DoKhoID], [TenDoKho]) VALUES (N'3', N'Khó')
GO

INSERT INTO [dbo].[DoKho] ([DoKhoID], [TenDoKho]) VALUES (N'4', N'Rất khó')
GO

SET IDENTITY_INSERT [dbo].[DoKho] OFF
GO


-- ----------------------------
-- Table structure for GiaoVien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoVien]') AND type IN ('U'))
	DROP TABLE [dbo].[GiaoVien]
GO

CREATE TABLE [dbo].[GiaoVien] (
  [GiaoVienID] int  IDENTITY(1,1) NOT NULL,
  [TaiKhoanID] int  NULL,
  [TenGV] nvarchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [NgaySinh] date  NULL,
  [GioiTinh] bit  NULL,
  [Email] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [MonHocID] int  NULL,
  [HocViID] int  NULL
)
GO

ALTER TABLE [dbo].[GiaoVien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GiaoVien
-- ----------------------------
SET IDENTITY_INSERT [dbo].[GiaoVien] ON
GO

INSERT INTO [dbo].[GiaoVien] ([GiaoVienID], [TaiKhoanID], [TenGV], [NgaySinh], [GioiTinh], [Email], [MonHocID], [HocViID]) VALUES (N'1', N'4', N'Giao Vien 1', N'1980-01-01', N'1', N'giaovien1@gmail.com', N'1', N'1')
GO

INSERT INTO [dbo].[GiaoVien] ([GiaoVienID], [TaiKhoanID], [TenGV], [NgaySinh], [GioiTinh], [Email], [MonHocID], [HocViID]) VALUES (N'2', N'5', N'Giao Vien 2', N'1983-01-23', N'0', N'giaovien2@gmail.com', N'1', N'2')
GO

SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
GO


-- ----------------------------
-- Table structure for HocSinh
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HocSinh]') AND type IN ('U'))
	DROP TABLE [dbo].[HocSinh]
GO

CREATE TABLE [dbo].[HocSinh] (
  [HocSinhID] int  IDENTITY(1,1) NOT NULL,
  [TaiKhoanID] int  NULL,
  [TenHS] nvarchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [NgaySinh] date  NULL,
  [GioiTinh] bit  NULL,
  [Email] varchar(50) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HocSinh] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of HocSinh
-- ----------------------------
SET IDENTITY_INSERT [dbo].[HocSinh] ON
GO

INSERT INTO [dbo].[HocSinh] ([HocSinhID], [TaiKhoanID], [TenHS], [NgaySinh], [GioiTinh], [Email]) VALUES (N'3', N'6', N'Đào Thị Ngọc Quỳnh', N'1999-02-06', N'1', N'quynhdtn@gmail.com')
GO

INSERT INTO [dbo].[HocSinh] ([HocSinhID], [TaiKhoanID], [TenHS], [NgaySinh], [GioiTinh], [Email]) VALUES (N'4', N'7', N'Nguyễn Văn Anh', N'1998-08-08', N'1', N'anhnv@gmail.com')
GO

SET IDENTITY_INSERT [dbo].[HocSinh] OFF
GO


-- ----------------------------
-- Table structure for HocVi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HocVi]') AND type IN ('U'))
	DROP TABLE [dbo].[HocVi]
GO

CREATE TABLE [dbo].[HocVi] (
  [HocViID] int  IDENTITY(1,1) NOT NULL,
  [TenHocVi] nvarchar(50) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HocVi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of HocVi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[HocVi] ON
GO

INSERT INTO [dbo].[HocVi] ([HocViID], [TenHocVi]) VALUES (N'1', N'Giáo sư')
GO

INSERT INTO [dbo].[HocVi] ([HocViID], [TenHocVi]) VALUES (N'2', N'Tiến Sĩ')
GO

INSERT INTO [dbo].[HocVi] ([HocViID], [TenHocVi]) VALUES (N'3', N'Thạc sĩ')
GO

INSERT INTO [dbo].[HocVi] ([HocViID], [TenHocVi]) VALUES (N'4', N'Giáo viên bộ môn')
GO

SET IDENTITY_INSERT [dbo].[HocVi] OFF
GO


-- ----------------------------
-- Table structure for LanThi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LanThi]') AND type IN ('U'))
	DROP TABLE [dbo].[LanThi]
GO

CREATE TABLE [dbo].[LanThi] (
  [LanThiID] int  IDENTITY(1,1) NOT NULL,
  [HocSinhID] int  NULL,
  [DeThiID] int  NULL,
  [LanThiSo] int  NULL,
  [KetQuaThi] float(53)  NULL,
  [ThoiGianLamBai] int  NULL,
  [ThoiGianNopBai] datetime  NULL
)
GO

ALTER TABLE [dbo].[LanThi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LanThi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[LanThi] ON
GO

SET IDENTITY_INSERT [dbo].[LanThi] OFF
GO


-- ----------------------------
-- Table structure for LienHe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LienHe]') AND type IN ('U'))
	DROP TABLE [dbo].[LienHe]
GO

CREATE TABLE [dbo].[LienHe] (
  [LienHeID] int  IDENTITY(1,1) NOT NULL,
  [HoVaTen] nvarchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [Email] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [PhanHoi] nvarchar(max) COLLATE Latin1_General_CI_AS  NULL,
  [NgayGui] datetime  NULL,
  [HocSinhID] int  NOT NULL
)
GO

ALTER TABLE [dbo].[LienHe] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LienHe
-- ----------------------------
SET IDENTITY_INSERT [dbo].[LienHe] ON
GO

INSERT INTO [dbo].[LienHe] ([LienHeID], [HoVaTen], [Email], [PhanHoi], [NgayGui], [HocSinhID]) VALUES (N'1', N'Phạm Văn Điệp', N'diepvien@gmail.com', N'Liên hệ thử xem sao', N'2021-04-20 23:07:43.690', N'4')
GO

SET IDENTITY_INSERT [dbo].[LienHe] OFF
GO


-- ----------------------------
-- Table structure for MonHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MonHoc]') AND type IN ('U'))
	DROP TABLE [dbo].[MonHoc]
GO

CREATE TABLE [dbo].[MonHoc] (
  [MonHocID] int  IDENTITY(1,1) NOT NULL,
  [TenMH] nvarchar(50) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[MonHoc] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MonHoc
-- ----------------------------
SET IDENTITY_INSERT [dbo].[MonHoc] ON
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'1', N'Toán học')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'2', N'Vật lý')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'3', N'Hóa học')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'4', N'Ngữ văn')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'5', N'Tiếng anh')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'6', N'Sinh học')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'7', N'Lịch sử')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'8', N'Địa lý')
GO

INSERT INTO [dbo].[MonHoc] ([MonHocID], [TenMH]) VALUES (N'9', N'GDCD')
GO

SET IDENTITY_INSERT [dbo].[MonHoc] OFF
GO


-- ----------------------------
-- Table structure for PhanHoi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanHoi]') AND type IN ('U'))
	DROP TABLE [dbo].[PhanHoi]
GO

CREATE TABLE [dbo].[PhanHoi] (
  [PhanHoiID] int  IDENTITY(1,1) NOT NULL,
  [NoiDung] nvarchar(500) COLLATE Latin1_General_CI_AS  NULL,
  [HocSinhID] int  NULL,
  [TrangThai] nvarchar(20) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[PhanHoi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PhanHoi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PhanHoi] ON
GO

SET IDENTITY_INSERT [dbo].[PhanHoi] OFF
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO

INSERT INTO [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'dg_exams', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF20000000FEFFFFFF040000000500000006000000070000000800000009000000320000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000FEFFFFFFFEFFFFFF22000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000FEFFFFFF33000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF02000000000000000000000000000000000000000000000000000000000000003099CAEEFA35D7010300000000120000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000009A0C0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000A0000000F2A000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000330000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000FEFFFFFF34000000FEFFFFFFFEFFFFFF3700000038000000390000003A0000003B0000003C0000003D0000003E0000003F00000040000000410000004200000043000000440000004500000046000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000430000A1E100C05000080610000000F00FFFF61000000007D0000369200003A59000074D700004AD80000884A00001F5E0000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C2A000000A80B000000AA010000003000A5090000070000802E0000009E020000008000000600008053636847726964006E2800008A660000436175486F69640000003800A5090000070000802F000000AE020000008000000E0000805363684772696400C05D0000A6590000446170416E44614C756143686F6E000000007800A5090000070000803000000052000000018000004D000080436F6E74726F6C00945C00008965000052656C6174696F6E736869702027464B5F446170416E44614C756143686F6E5F436175486F6927206265747765656E2027436175486F692720616E642027446170416E44614C756143686F6E2700FFFF00002800B50100000700008031000000310000006300000002800000436F6E74726F6C008A5A00002265000000003000A509000007000080320000009C020000008000000500008053636847726964007A580000907E0000446554686969640000003400A50900000700008033000000AA020000008000000C0000805363684772696400E835000082AA000044655468695F436175486F6900007400A50900000700008034000000520000000180000049000080436F6E74726F6C00CB4100009B81000052656C6174696F6E736869702027504B5F44655468695F436175486F695F436175486F6927206265747765656E2027436175486F692720616E64202744655468695F436175486F6927CA9A1A00002800B50100000700008035000000310000005F00000002800000436F6E74726F6C0081340000C296000000007000A50900000700008036000000720000000180000047000080436F6E74726F6C0011540000D79B000052656C6174696F6E736869702027504B5F44655468695F436175486F695F446554686927206265747765656E202744655468692720616E64202744655468695F436175486F69270000002800B50100000700008037000000310000005D00000002800000436F6E74726F6C004F5100007CA5000000003000A509000007000080380000009C020000008000000500008053636847726964006E2800001C890000446F4B686F69640000006400A5090000070000803900000052000000018000003B000080436F6E74726F6C003F3700009781000052656C6174696F6E736869702027464B5F436175486F695F446F4B686F27206265747765656E2027446F4B686F2720616E642027436175486F69270000002800B5010000070000803A000000310000005100000002800000436F6E74726F6C0085390000EB85000000003000A5090000070000803B000000A20200000080000008000080536368477269640006630000EA2400004769616F5669656E00006800A5090000070000803C00000062000000018000003F000080436F6E74726F6C00A17A00001339000052656C6174696F6E736869702027464B5F44655468695F4769616F5669656E27206265747765656E20274769616F5669656E2720616E6420274465546869270000002800B5010000070000803D000000310000005500000002800000436F6E74726F6C008A740000C45B000000003000A5090000070000803E000000A00200000080000007000080536368477269646EA89300006C840000486F6353696E686E00003000A509000007000080420000009E020000008000000600008053636847726964006C840000B85600004C616E546869640000006800A5090000070000804300000062000000018000003F000080436F6E74726F6C00E3A10000406D000052656C6174696F6E736869702027464B5F4C616E5468695F486F6353696E6827206265747765656E2027486F6353696E682720616E6420274C616E546869270000002800B50100000700008044000000310000005500000002800000436F6E74726F6C6EBFA40000047B000000007800A5090000070000804500000062000000018000004D000080436F6E74726F6C005D710000446D000052656C6174696F6E736869702027464B5F446170416E44614C756143686F6E5F4C616E54686927206265747765656E20274C616E5468692720616E642027446170416E44614C756143686F6E2737DC1A00002800B50100000700008046000000310000006300000002800000436F6E74726F6C00F47600003C75000000006400A5090000070000804700000052000000018000003B000080436F6E74726F6C006B830000406D000052656C6174696F6E736869702027464B5F4C616E5468695F446554686927206265747765656E202744655468692720616E6420274C616E546869270000002800B50100000700008048000000310000005100000002800000436F6E74726F6C00B18500001676000000003000A509000007000080490000009E0200000080000006000080536368477269640042BD0000B47800004C69656E4865640000003000A50900000700008051000000A00200000080000007000080536368477269640032AF000022A100005068616E486F690000006C00A50900000700008052000000520000000180000041000080436F6E74726F6C0031AE00002C94000052656C6174696F6E736869702027464B5F5068616E486F695F486F6353696E6827206265747765656E2027486F6353696E682720616E6420275068616E486F692761754800002800B50100000700008053000000310000005700000002800000436F6E74726F6C00AFA300003F9C000000003000A50900000700008054000000A2020000008000000800008053636847726964007AA300002A1200005461694B686F616E00007000A50900000700008055000000620000000180000045000080436F6E74726F6C0019820000CF1F000052656C6174696F6E736869702027464B5F4769616F5669656E5F5461694B686F616E27206265747765656E20275461694B686F616E2720616E6420274769616F5669656E2769270000002800B50100000700008056000000310000005B00000002800000436F6E74726F6C00608600007521000000006C00A50900000700008057000000520000000180000043000080436F6E74726F6C0081A90000A41F000052656C6174696F6E736869702027464B5F486F6353696E685F5461694B686F616E27206265747765656E20275461694B686F616E2720616E642027486F6353696E68276E00002800B50100000700008058000000310000005900000002800000436F6E74726F6C00789E0000BB52000000003000A509000007000080590000009E0200000080000006000080536368477269646EA8480000EE0200004D6F6E486F63646E00006C00A5090000070000805A0000005A0000000180000041000080436F6E74726F6C00DB4F0000180A000052656C6174696F6E736869702027464B5F4769616F5669656E5F4D6F6E486F6327206265747765656E20274D6F6E486F632720616E6420274769616F5669656E2700FFFF00002800B5010000070000805B000000310000005700000002800000436F6E74726F6C001F4500008422000000006800A5090000070000805C00000062000000018000003D000080436F6E74726F6C0097460000180A000052656C6174696F6E736869702027464B5F436175486F695F4D6F6E486F6327206265747765656E20274D6F6E486F632720616E642027436175486F692769270000002800B5010000070000805D000000310000005300000002800000436F6E74726F6C003E3D0000AE37000000006800A5090000070000805E00000062000000018000003D000080436F6E74726F6C0095570000180A000052656C6174696F6E736869702027464B5F44655468695F4D6F6E486F63494427206265747765656E20274D6F6E486F632720616E64202744655468692769270000002800B5010000070000805F000000310000005500000002800000436F6E74726F6C6E6B560000E64A000000006800A5090000070000806000000052000000018000003F000080436F6E74726F6C00BBB200008587000052656C6174696F6E736869702027464B5F4C69656E48655F486F6353696E6827206265747765656E2027486F6353696E682720616E6420274C69656E4865270000002800B50100000700008061000000310000005500000002800000436F6E74726F6C0048B30000CB89000000000000000000000000000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200E0D5C9EEFA35D701020200001048450000000000000000000000000000000000A00100004400610074006100200053006F0075007200630065003D004400450053004B0054004F0050002D0053004100330034004C0046004B005C00530051004C004500580050005200450021433412080000000C3F0000C81D000078563412070000001401000043006100750048006F00690000009DDF0115D1118C7A00C04FC297EB01000000AFEE388F69EF2C4BA1D6FB7EEDF0BDA9040000000200000000001066000000010000200000003AFBBB49F829D1430EC7CA7FC0699D2A89009F116B146C1C755C970663C893BD000000000E800000000200002000000048AE0C708DD413F82040F2119AC1026C6FE1EFEA9840D751AD9FD3211236AE8360000000A5DA530762ECD0851FA378B7DFDCEAA636468075C5D4D51B60C24A3F338E804E72E4636FBBE1D0E8D97B4FD606D3E8DD8099100D701642D194EEF0F374A7FD7DE7E172BC15BE41CD9C664F1F9F767843EA726D9B000000000000000000000000000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F0000C81D0000000000002D0100000B0000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000002F200000DB1B000000000000090000000900000002000000020000001C0100000E1000000000000001000000CD1C0000440A000000000000030000000300000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000700000043006100750048006F006900000021433412080000003C2000005719000078563412070000001401000044006100700041006E00440061004C0075006100430068006F006E00000000000100000000000000000000000000000000000000060000000A0000000000000000000000000000000000000000000000010000000300000000000000000000000000000000000000000000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C12987674BC710A74BC710A000000460000000000000000040000000000000000000000010000000300000000000000A8BC710A42D194EE00000000B8BC710AFEFFFFFF41CD9C660C000000020000000100000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F00004A150000000000002D010000070000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000003C2000005719000000000000040000000400000002000000020000001C010000221000000000000001000000CD1C0000440A000000000000030000000300000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F00000044006100700041006E00440061004C0075006100430068006F006E00000002000B007A67000020670000C05D0000206700000000000002000000F0F0F000000000000000000000000000000000000100000031000000000000008A5A000022650000251000004F01000032000000010000020000251000004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D61180046004B005F0044006100700041006E00440061004C0075006100430068006F006E005F0043006100750048006F00690021433412080000000C3F0000FE1F000078563412070000001401000044006500540068006900000000000000000000000000000000000000050000000100000000000000000000000000000000000000060000000A000000000000005824D319000000000000000000000000010000000300000011000000000000000000000000000000000000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C12987624BF710A24BF710A00000000000000000000000004000000000000000000000001000000030000000000000058BF710A000000000000000068BF710A00000000000000000C000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F0000FE1F0000000000002D0100000B0000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000003F2000001519000000000000090000000900000002000000020000001C0100000E1000000000000001000000CD1C0000440A000000000000030000000300000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000600000044006500540068006900000021433412080000003F200000A6090000785634120700000014010000440065005400680069005F0043006100750048006F006900000073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F00004A150000000000002D010000070000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000003F200000A609000000000000020000000200000002000000020000001C0100002C1000000000000001000000CD1C00001008000000000000020000000200000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D000000440065005400680069005F0043006100750048006F006900000002000B0062430000528400006243000082AA00000000000002000000F0F0F0000000000000000000000000000000000001000000350000000000000081340000C2960000320E00004F01000032000000010000020000320E00004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D61160050004B005F00440065005400680069005F0043006100750048006F0069005F0043006100750048006F00690006000B00825F00008E9E0000825F0000FBA90000275F0000FBA90000275F0000F2A800008C550000F2A800008C55000082AA00000000000002000000F0F0F000000000000000000000000000000000000100000037000000000000004F5100007CA50000840D00004F01000023000000010000020000840D00004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D61150050004B005F00440065005400680069005F0043006100750048006F0069005F004400650054006800690021433412080000003F200000A609000078563412070000001401000044006F004B0068006F0000002E00570069006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F00004A150000000000002D010000070000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000003F200000A609000000000000020000000200000002000000020000001C0100002C1000000000000001000000CD1C0000DB05000000000000010000000100000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000600000044006F004B0068006F00000002000B00D63800001C890000D6380000528400000000000002000000F0F0F00000000000000000000000000000000000010000003A0000000000000085390000EB850000FD0900004F01000036000000010000020000FD0900004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D610F0046004B005F0043006100750048006F0069005F0044006F004B0068006F0021433412080000003F200000E01600007856341207000000140100004700690061006F005600690065006E00000065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D0062003700370061003500630035003600310039003300340065003000380039000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F0000E81B0000000000002D0100000A0000000C000000070000001C0100002E0E00009A0B0000240400002805000098030000BC070000BC0700009C040000BC070000C4090000AE06000000000000010000003F200000E016000000000000080000000800000002000000020000001C0100000E1000000000000001000000CD1C0000790C000000000000040000000400000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000004700690061006F005600690065006E00000004000B00387C0000CA3B0000387C000050540000BC7F000050540000BC7F0000907E00000000000002000000F0F0F00000000000000000000000000000000000010000003D000000000000008A740000C45B0000830A00004F01000032000000010000020000830A00004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D61110046004B005F00440065005400680069005F004700690061006F005600690065006E0021433412080000003F2000007712000078563412070000001401000048006F006300530069006E0068000000000000000000000000000000050000000100000000000000000000000000000000000000060000000A000000000000001822D319000000000000000000000000010000000300000011000000000000000000000000000000000000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C129876E4C9710AE4C9710A00000000000000000000000004000000000000000000000001000000030000000000000018CA710A000000000000000028CA710AFEFFFFFF000000000C000000020000000100000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F00007F170000000000002D010000080000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000003F2000007712000000000000060000000600000002000000020000001C0100002C1000000000000001000000CD1C00001008000000000000020000000200000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000800000048006F006300530069006E006800000021433412080000009D200000431900007856341207000000140100004C0061006E005400680069000000660074002E00530071006C005300650072007600650072002E004200610074006300680050006100720073006500720043006C00690065006E0074002C002000560065007200730069006F006E003D00310032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00380039003800340035006400630064003800300038003000630063003900310000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C0000003400000000000000000000009D20000043190000000000002D010000090000000C000000070000001C01000076070000A203000028050000720600007E04000076020000A6090000C8050000A60900003A0C00005C08000000000000010000003F200000AC14000000000000070000000700000002000000020000001C010000221000000000000001000000CD1C0000440A000000000000030000000300000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004C0061006E00540068006900000004000B007AA300006C8400007AA30000C47D000010A40000C47D000010A40000FB6F00000000000002000000F0F0F00000000000000000000000000000000000010000004400000000000000BFA40000047B0000960A00004F01000032000000010000020000960A00004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D61110046004B005F004C0061006E005400680069005F0048006F006300530069006E00680004000B00F88E0000FB6F0000F88E00008D740000D87200008D740000D8720000FD7200000000000002000000F0F0F00000000000000000000000000000000000010000004600000000000000F47600003C750000EB0F00004F0100003A000000010000020000EB0F00004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D61180046004B005F0044006100700041006E00440061004C0075006100430068006F006E005F004C0061006E0054006800690002000B0002850000907E000002850000FB6F00000000000002000000F0F0F00000000000000000000000000000000000010000004800000000000000B185000016760000630900004F01000036000000010000020000630900004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D610F0046004B005F004C0061006E005400680069005F00440065005400680069002143341208000000901B0000E11500007856341207000000140100004C00690065006E004800650000000000000000000000000000000000050000000100000000000000000000000000000000000000060000000A0000000000000000000000000000000000000000000000010000000300000000000000000000000000000000000000000000000100000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C1298763CCB710A3CCB710A00000000000000000000000004000000000000000000000001000000030000000000000070CB710A310000000000000080CB710AFEFFFFFF000000000C000000020000000100000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000901B0000E1150000000000002D010000070000000C000000070000001C01000056040000E204000028050000720600007E04000034030000A6090000C8050000A60900003A0C00005C0800000000000001000000B42C00005314000000000000050000000500000002000000020000001C010000201700000000000001000000CD1C0000DB05000000000000010000000100000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004C00690065006E0048006500000021433412080000003F2000000E0E00007856341207000000140100005000680061006E0048006F006900000069006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0034002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F00004A150000000000002D010000070000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000003F2000000E0E000000000000040000000400000002000000020000001C0100002C1000000000000001000000CD1C00001008000000000000020000000200000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000080000005000680061006E0048006F006900000002000B00C8AF0000E3960000C8AF000022A100000000000002000000F0F0F00000000000000000000000000000000000010000005300000000000000AFA300003F9C00006A0B00004F0100003C0000000100000200006A0B00004F010000020000000000050000800800008001000000150001000000900180380100065461686F6D61120046004B005F005000680061006E0048006F0069005F0048006F006300530069006E006800214334120800000050170000311000007856341207000000140100005400610069004B0068006F0061006E00000000003100000005000000020000003300000009000000100000003A0000000F00000002000000420000001200000002000000570000001E000000100000005A00000023000000020000005A000000FDFFFFFF020000006A0000002C000000020000008E0000003800000010000000970000005D00000002000000A40000004000000002000000A70000004100000010000000C90000004C00000002000000E00000005800000010000000E30000005D00000002000000E60000005E00000010000000050100006700000002000000120100006E000000020000001601000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009E270000B4150000000000002D010000070000000C000000070000001C01000084080000F406000016030000DE030000B2020000A6040000C80500007A030000C805000058070000000500000000000001000000501700003110000000000000040000000400000002000000020000001C010000F00A00000000000001000000F3120000ED05000000000000010000000100000002000000020000001C010000840800000100000000000000F3120000B903000000000000000000000000000002000000020000001C010000840800000000000000000000C02F00003523000000000000000000000D00000004000000040000001C010000840800000A0A00002C06000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000090000005400610069004B0068006F0061006E00000004000B007AA30000662100006093000066210000609300008025000045830000802500000000000002000000F0F0F000000000000000000000000000000000000100000056000000000000006086000075210000510C00004F01000032000000010000020000510C00004F010000020000000000FFFFFF000800008001000000150001000000900180380100065461686F6D61140046004B005F004700690061006F005600690065006E005F005400610069004B0068006F0061006E0002000B0018AB00005B22000018AB00006C8400000000000002000000F0F0F00000000000000000000000000000000000010000005800000000000000789E0000BB520000F10B00004F01000032000000010000020000F10B00004F010000020000000000FFFFFF000800008001000000150001000000900180380100065461686F6D61130046004B005F0048006F006300530069006E0068005F005400610069004B0068006F0061006E002143341208000000DE1B0000E10900007856341207000000140100004D006F006E0048006F00630000009DDF0115D1118C7A00C04FC297EB01000000AFEE388F69EF2C4BA1D6FB7EEDF0BDA9040000000200000000001066000000010000200000003AFBBB49F829D1430EC7CA7FC0699D2A89009F116B146C1C755C970663C893BD000000000E800000000200002000000048AE0C708DD413F82040F2119AC1026C6FE1EFEA9840D751AD9FD3211236AE8360000000A5DA530762ECD0851FA378B7DFDCEAA636468075C5D4D51B60C24A3F338E804E72E4636FBBE1D0E8D97B4FD606D3E8DD8099100D701642D194EEF0F374A7FD7DE7E172BC15BE41CD9C664F1F9F767843EA726D9B000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000303900005C150000000000002D010000070000000C000000070000001C010000C60C00006E0A0000940200003E03000044020000F4060000D8040000E4020000D8040000220600002E0400000000000001000000DE1B0000E109000000000000020000000200000002000000020000001C010000700D00000000000001000000521A0000DB05000000000000010000000100000002000000020000001C010000C60C00000100000000000000521A0000A703000000000000000000000000000002000000020000001C010000C60C0000000000000000000086450000A822000000000000000000000D00000004000000040000001C010000C60C0000140F00004C09000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004D006F006E0048006F006300000003000B0072510000CF0C0000725100008025000006630000802500000000000002000000F0F0F00000000000000000000000000000000000010000005B000000000000001F45000084220000A40B00004F01000032000000010000020000A40B00004F010000020000000000FFFFFF000800008001000000150001000000900180380100065461686F6D61120046004B005F004700690061006F005600690065006E005F004D006F006E0048006F00630004000B003E490000CF0C00003E490000AC39000012480000AC390000124800008A6600000000000002000000F0F0F00000000000000000000000000000000000010000005D000000000000003E3D0000AE370000BC0A00004F01000032000000010000020000BC0A00004F010000020000000000FFFFFF000800008001000000150001000000900180380100065461686F6D61100046004B005F0043006100750048006F0069005F004D006F006E0048006F00630004000B0070620000CF0C000070620000C94D000010590000C94D000010590000907E00000000000002000000F0F0F00000000000000000000000000000000000010000005F000000000000006B560000E64A0000560B00004F01000034000000010000020000560B00004F010000020000000000FFFFFF000800008001000000150001000000900180380100065461686F6D61110046004B005F00440065005400680069005F004D006F006E0048006F0063004900440002000B00E7B300001C89000042BD00001C8900000000000002000000F0F0F0000000000000000000000000000000000001000000610000000000000048B30000CB890000960A00004F01000032000000010000020000960A00004F010000020000000000FFFFFF000800008001000000150001000000900180380100065461686F6D61110046004B005F004C00690065006E00480065005F0048006F006300530069006E00680000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000021000000A12100000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000350000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000036000000160400000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000004700000012000000000000000C000000884A00001F5E00000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E0000000000000000000000000000000000000064000000000000000000000000000000000000000000000000002E0000002E00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100310030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C00320036003400300000002F0000002F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100330030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C0032003600340030000000300000003000000000000000420000000100000001000000640062006F00000046004B005F0044006100700041006E00440061004C0075006100430068006F006E005F0043006100750048006F00690000000000000000000000C402000000003100000031000000300000000800000001C1A51AF0C1A51A0000000000000000AD070000000000320000003200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100310030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C0032003600340030000000330000003300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C00320036003400300000003400000034000000000000003E00000001029B1D01000000640062006F00000050004B005F00440065005400680069005F0043006100750048006F0069005F0043006100750048006F00690000000000000000000000C402000000003500000035000000340000000800000001BFA51AF0BFA51A0000000000000000AD0700000000003600000036000000000000003C000000016AE11D01000000640062006F00000050004B005F00440065005400680069005F0043006100750048006F0069005F004400650054006800690000000000000000000000C402000000003700000037000000360000000800000001C1A51A30C1A51A0000000000000000AD070000000000380000003800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C003200360034003000000039000000390000000000000030000000016AE11D01000000640062006F00000046004B005F0043006100750048006F0069005F0044006F004B0068006F0000000000000000000000C402000000003A0000003A000000390000000800000001B8A51A70B8A51A0000000000000000AD0700000000003B0000003B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100310030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C00320036003400300000003C0000003C00000000000000340000000128C11A01000000640062006F00000046004B005F00440065005400680069005F004700690061006F005600690065006E0000000000000000000000C402000000003D0000003D0000003C0000000800000001B5A51AB0B5A51A0000000000000000AD0700000000003E0000003E00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C0032003600340030000000420000004200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003600000034002C0030002C003200380034002C0030002C0031003900310030002C0031002C003900330030002C0035002C003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100330030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C0032003600340030000000430000004300000000000000340000000128C11A01000000640062006F00000046004B005F004C0061006E005400680069005F0048006F006300530069006E00680000000000000000000000C402000000004400000044000000430000000800000001C1A51AB0C1A51A0000000000000000AD070000000000450000004500000000000000420000000100000001000000640062006F00000046004B005F0044006100700041006E00440061004C0075006100430068006F006E005F004C0061006E0054006800690000000000000000000000C402000000004600000046000000450000000800000001BEA51AF0BEA51A0000000000000000AD07000000000047000000470000000000000030000000016AE11D01000000640062006F00000046004B005F004C0061006E005400680069005F004400650054006800690000000000000000000000C402000000004800000048000000470000000800000001BBA51A70BBA51A0000000000000000AD070000000000490000004900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003800000034002C0030002C003200380034002C0030002C0031003100310030002C0031002C0031003200350030002C0035002C003800320030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0035003900320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C0032003600340030000000510000005100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C0032003600340030000000520000005200000000000000360000000128C11A01000000640062006F00000046004B005F005000680061006E0048006F0069005F0048006F006300530069006E00680000000000000000000000C402000000005300000053000000520000000800000001BBA51A30BBA51A0000000000000000AD070000000000540000005400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003100380030002C0031002C0031003700380030002C0035002C0031003100390030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003800300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003100380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003100380030002C00310032002C0032003500370030002C00310031002C00310035003800300000005500000055000000000000003A000000016AE11D01000000640062006F00000046004B005F004700690061006F005600690065006E005F005400610069004B0068006F0061006E0000000000000000000000C402000000005600000056000000550000000800000001C0A51AB0C0A51A0000000000000000AD070000000000570000005700000000000000380000000128C11A01000000640062006F00000046004B005F0048006F006300530069006E0068005F005400610069004B0068006F0061006E0000000000000000000000C402000000005800000058000000570000000800000001BFA51A30BFA51A0000000000000000AD070000000000590000005900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003200370030002C0031002C0032003600370030002C0035002C0031003700380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0033003200370030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003200370030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003200370030002C00310032002C0033003800360030002C00310031002C00320033003800300000005A0000005A00000000000000360000000128C11A01000000640062006F00000046004B005F004700690061006F005600690065006E005F004D006F006E0048006F00630000000000000000000000C402000000005B0000005B0000005A0000000800000001C2A51AF0C2A51A0000000000000000AD0700000000005C0000005C00000000000000320000000128C11A01000000640062006F00000046004B005F0043006100750048006F0069005F004D006F006E0048006F00630000000000000000000000C402000000005D0000005D0000005C0000000800000001C1A51A70C1A51A0000000000000000AD0700000000005E0000005E00000000000000340000000128C11A01000000640062006F00000046004B005F00440065005400680069005F004D006F006E0048006F0063004900440000000000000000000000C402000000005F0000005F0000005E0000000800000001BDA51AF0BDA51A0000000000000000AD070000000000600000006000000000000000340000000128C11A01000000640062006F00000046004B005F004C00690065006E00480065005F0048006F006300530069006E00680000000000000000000000C4020000000061000000610000006000000008000000012BC11A602BC11A0000000000000000AD0F00000100004B000000340000002E000000330000005B0000002C000000300000002E0000002F000000D5000000980000004700000032000000420000009600000001000000360000003200000033000000170000006A00000039000000380000002E00000036000000370000003C0000003B000000320000005500000084000000600000003E000000490000007B00000092000000520000003E000000510000005F00000000000000430000003E00000042000000340000006B00000045000000420000002F000000230000004700000055000000540000003B000000800000006D00000057000000540000003E000000190000004E0000005A000000590000003B0000001D0000006C0000005C000000590000002E000000010000006A0000005E000000590000003200000057000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000530053003B0049006E0069007400690061006C00200043006100740061006C006F0067003D004500780061006D005F005700650062003B005000650072007300690073007400200053006500630075007200690074007900200049006E0066006F003D0054007200750065003B0055007300650072002000490044003D00730061003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F00220000000080050012000000640067005F006500780061006D0073000000000226000E0000004D006F006E0048006F006300000008000000640062006F00000000022600120000005400610069004B0068006F0061006E00000008000000640062006F00000000022600100000005000680061006E0048006F006900000008000000640062006F000000000226000E0000004C00690065006E0048006500000008000000640062006F000000000226000E0000004C0061006E00540068006900000008000000640062006F000000000226001000000048006F006300530069006E006800000008000000640062006F00000000022600120000004700690061006F005600690065006E00000008000000640062006F000000000226000C00000044006F004B0068006F00000008000000640062006F000000000226001A000000440065005400680069005F0043006100750048006F006900000008000000640062006F000000000226000C00000044006500540068006900000008000000640062006F000000000226001E00000044006100700041006E00440061004C0075006100430068006F006E00000008000000640062006F000000000224000E00000043006100750048006F006900000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO


-- ----------------------------
-- Table structure for TaiKhoan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan]') AND type IN ('U'))
	DROP TABLE [dbo].[TaiKhoan]
GO

CREATE TABLE [dbo].[TaiKhoan] (
  [TaiKhoanID] int  IDENTITY(1,1) NOT NULL,
  [UserName] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [Password] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [Role] varchar(10) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TaiKhoan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TaiKhoan
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON
GO

INSERT INTO [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [Role]) VALUES (N'1', N'admin', N'admin', N'admin')
GO

INSERT INTO [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [Role]) VALUES (N'2', N'admin1', N'admin1', N'admin')
GO

INSERT INTO [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [Role]) VALUES (N'3', N'admin2', N'admin2', N'admin')
GO

INSERT INTO [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [Role]) VALUES (N'4', N'gv1', N'123', N'teacher')
GO

INSERT INTO [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [Role]) VALUES (N'5', N'gv2', N'gv2', N'teacher')
GO

INSERT INTO [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [Role]) VALUES (N'6', N'quynhdtn', N'quynhdtn', N'student')
GO

INSERT INTO [dbo].[TaiKhoan] ([TaiKhoanID], [UserName], [Password], [Role]) VALUES (N'7', N'anhnv', N'anhnv', N'student')
GO

SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for CauHoi
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CauHoi]', RESEED, 53)
GO


-- ----------------------------
-- Primary Key structure for table CauHoi
-- ----------------------------
ALTER TABLE [dbo].[CauHoi] ADD CONSTRAINT [PK__CauHoi__EDF63FFC338B3E66] PRIMARY KEY CLUSTERED ([CauHoiID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for DapAnDaLuaChon
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DapAnDaLuaChon]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table DapAnDaLuaChon
-- ----------------------------
ALTER TABLE [dbo].[DapAnDaLuaChon] ADD CONSTRAINT [PK__DapAnDaL__80018F437F4EB53B] PRIMARY KEY CLUSTERED ([KetQuaThiID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for DeThi
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DeThi]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table DeThi
-- ----------------------------
ALTER TABLE [dbo].[DeThi] ADD CONSTRAINT [PK__DeThi__E03EA9CA807CCF27] PRIMARY KEY CLUSTERED ([DeThiID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table DeThi_CauHoi
-- ----------------------------
ALTER TABLE [dbo].[DeThi_CauHoi] ADD CONSTRAINT [PK_DeThi_CauHoi] PRIMARY KEY CLUSTERED ([DeThiID], [CauHoiID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for DoKho
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[DoKho]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table DoKho
-- ----------------------------
ALTER TABLE [dbo].[DoKho] ADD CONSTRAINT [PK__DoKho__D7472921DF385B76] PRIMARY KEY CLUSTERED ([DoKhoID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GiaoVien
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GiaoVien]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table GiaoVien
-- ----------------------------
ALTER TABLE [dbo].[GiaoVien] ADD CONSTRAINT [PK__GiaoVien__7D9E9838C7237EF1] PRIMARY KEY CLUSTERED ([GiaoVienID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for HocSinh
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[HocSinh]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table HocSinh
-- ----------------------------
ALTER TABLE [dbo].[HocSinh] ADD CONSTRAINT [PK__HocSinh__CD0A97BFF1EDD10B] PRIMARY KEY CLUSTERED ([HocSinhID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for HocVi
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[HocVi]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table HocVi
-- ----------------------------
ALTER TABLE [dbo].[HocVi] ADD CONSTRAINT [PK__HocVi__47D7A2FC8D2CF8CC] PRIMARY KEY CLUSTERED ([HocViID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for LanThi
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LanThi]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table LanThi
-- ----------------------------
ALTER TABLE [dbo].[LanThi] ADD CONSTRAINT [PK__LanThi__09F07E842F057890] PRIMARY KEY CLUSTERED ([LanThiID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for LienHe
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[LienHe]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table LienHe
-- ----------------------------
ALTER TABLE [dbo].[LienHe] ADD CONSTRAINT [PK__LienHe__53D769E434757219] PRIMARY KEY CLUSTERED ([LienHeID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for MonHoc
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MonHoc]', RESEED, 9)
GO


-- ----------------------------
-- Primary Key structure for table MonHoc
-- ----------------------------
ALTER TABLE [dbo].[MonHoc] ADD CONSTRAINT [PK__MonHoc__32C3DE9D7C1A9749] PRIMARY KEY CLUSTERED ([MonHocID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for PhanHoi
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[PhanHoi]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table PhanHoi
-- ----------------------------
ALTER TABLE [dbo].[PhanHoi] ADD CONSTRAINT [PK__PhanHoi__7480288BFA17B0BA] PRIMARY KEY CLUSTERED ([PhanHoiID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sysdiagrams
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sysdiagrams]', RESEED, 1)
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B61A890CC30] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for TaiKhoan
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[TaiKhoan]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table TaiKhoan
-- ----------------------------
ALTER TABLE [dbo].[TaiKhoan] ADD CONSTRAINT [PK__TaiKhoan__9A124B650A0150DD] PRIMARY KEY CLUSTERED ([TaiKhoanID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table CauHoi
-- ----------------------------
ALTER TABLE [dbo].[CauHoi] ADD CONSTRAINT [FK_CauHoi_MonHoc] FOREIGN KEY ([MonHocID]) REFERENCES [dbo].[MonHoc] ([MonHocID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CauHoi] ADD CONSTRAINT [FK_CauHoi_DoKho] FOREIGN KEY ([DoKhoID]) REFERENCES [dbo].[DoKho] ([DoKhoID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DapAnDaLuaChon
-- ----------------------------
ALTER TABLE [dbo].[DapAnDaLuaChon] ADD CONSTRAINT [FK_DapAnDaLuaChon_LanThi] FOREIGN KEY ([LanThiID]) REFERENCES [dbo].[LanThi] ([LanThiID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DapAnDaLuaChon] ADD CONSTRAINT [FK_DapAnDaLuaChon_CauHoi] FOREIGN KEY ([CauHoiID]) REFERENCES [dbo].[CauHoi] ([CauHoiID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DeThi
-- ----------------------------
ALTER TABLE [dbo].[DeThi] ADD CONSTRAINT [FK_DeThi_GiaoVien] FOREIGN KEY ([GiaoVienID]) REFERENCES [dbo].[GiaoVien] ([GiaoVienID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DeThi] ADD CONSTRAINT [FK_DeThi_MonHocID] FOREIGN KEY ([MonHocID]) REFERENCES [dbo].[MonHoc] ([MonHocID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DeThi_CauHoi
-- ----------------------------
ALTER TABLE [dbo].[DeThi_CauHoi] ADD CONSTRAINT [PK_DeThi_CauHoi_CauHoi] FOREIGN KEY ([CauHoiID]) REFERENCES [dbo].[CauHoi] ([CauHoiID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DeThi_CauHoi] ADD CONSTRAINT [PK_DeThi_CauHoi_DeThi] FOREIGN KEY ([DeThiID]) REFERENCES [dbo].[DeThi] ([DeThiID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiaoVien
-- ----------------------------
ALTER TABLE [dbo].[GiaoVien] ADD CONSTRAINT [FK_GiaoVien_TaiKhoan] FOREIGN KEY ([TaiKhoanID]) REFERENCES [dbo].[TaiKhoan] ([TaiKhoanID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiaoVien] ADD CONSTRAINT [FK_GiaoVien_HocVi] FOREIGN KEY ([HocViID]) REFERENCES [dbo].[HocVi] ([HocViID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiaoVien] ADD CONSTRAINT [FK_GiaoVien_MonHoc] FOREIGN KEY ([MonHocID]) REFERENCES [dbo].[MonHoc] ([MonHocID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table HocSinh
-- ----------------------------
ALTER TABLE [dbo].[HocSinh] ADD CONSTRAINT [FK_HocSinh_TaiKhoan] FOREIGN KEY ([TaiKhoanID]) REFERENCES [dbo].[TaiKhoan] ([TaiKhoanID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table LanThi
-- ----------------------------
ALTER TABLE [dbo].[LanThi] ADD CONSTRAINT [FK_LanThi_HocSinh] FOREIGN KEY ([HocSinhID]) REFERENCES [dbo].[HocSinh] ([HocSinhID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[LanThi] ADD CONSTRAINT [FK_LanThi_DeThi] FOREIGN KEY ([DeThiID]) REFERENCES [dbo].[DeThi] ([DeThiID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table LienHe
-- ----------------------------
ALTER TABLE [dbo].[LienHe] ADD CONSTRAINT [FK_LienHe_HocSinh] FOREIGN KEY ([HocSinhID]) REFERENCES [dbo].[HocSinh] ([HocSinhID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table PhanHoi
-- ----------------------------
ALTER TABLE [dbo].[PhanHoi] ADD CONSTRAINT [FK_PhanHoi_HocSinh] FOREIGN KEY ([HocSinhID]) REFERENCES [dbo].[HocSinh] ([HocSinhID]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

