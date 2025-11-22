create database Donhang_db;
use Donhang_db;

create table ChiTietDonHang (
    ma_chi_tiet int,
    ma_don_hang int,
    ten_san_pham varchar(100),
    so_luong int,
    don_gia decimal(10, 2),
    thanh_tien decimal(10, 2)
);

insert into ChiTietDonHang (ma_chi_tiet, ma_don_hang, ten_san_pham, so_luong, don_gia, thanh_tien) 
values
(1, 1001, 'Cà Phê Sữa', 2, 29000.00, 58000.00),
(2, 1001, 'Bạc Xỉu', 1, 35000.00, 35000.00),
(3, 1002, 'Trà Đào Cam Sả', 1, 45000.00, 45000.00),
(4, 1003, 'Cà Phê Sữa', 1, 29000.00, 29000.00),
(5, 1004, 'Trà Sữa Trân Châu Đường Đen', 2, 55000.00, 110000.00),
(6, 1005, 'Bạc Xỉu', 1, 35000.00, 35000.00),
(7, 1006, 'Cà Phê Sữa', 3, 29000.00, 87000.00),
(8, 1006, 'Trà Chanh Gừng Mật Ong', 1, 42000.00, 42000.00),
(9, 1007, 'Trà Đào Cam Sả', 2, 45000.00, 90000.00),
(10, 1008, 'Trà Sữa Trân Châu Đường Đen', 1, 55000.00, 55000.00),
(11, 1009, 'Cà Phê Sữa', 1, 29000.00, 29000.00),
(12, 1010, 'Trà Chanh Gừng Mật Ong', 1, 42000.00, 42000.00);

select ten_san_pham, 
	SUM(so_luong) as tong_so_ly_ban,
    SUM(thanh_tien) as tong_doanh_thu,
    COUNT(distinct ma_don_hang) as so_don_hang_chua_sp
from ChiTietDonHang
GROUP BY ten_san_pham
ORDER BY tong_doanh_thu desc;

/*
Dựa vào dữ liệu (tổng doanh thu + mức độ phổ biến):
1. SẢN PHẨM NGÔI SAO (TOP 2):
   a. Cà Phê Sữa
      - Tổng số ly bán: 7 ly
      - Doanh thu: 203,000
      - Xuất hiện trong nhiều đơn hàng nhất (4 đơn)
      → Vừa phổ biến vừa doanh thu cao → "Ngôi sao"

   b. Trà Sữa Trân Châu Đường Đen
      - Tổng doanh thu: 165,000
      - Số đơn hàng: 2
      - Đứng thứ 2 về doanh thu
      → Mức hiệu quả cao → "Ngôi sao"

2. SẢN PHẨM CẦN XEM XÉT (BOTTOM 2):
   a. Bạc Xỉu
      - Doanh thu thấp (70,000)
      - Chỉ xuất hiện trong 2 đơn hàng
      → Nhu cầu thấp → "Cần xem xét"

   b. Trà Chanh Gừng Mật Ong
      - Doanh thu: 84,000 (không quá thấp nhưng phổ biến kém)
      - Chỉ có 2 đơn
      → Độ phổ biến thấp → "Cần xem xét"
      
ĐỀ XUẤT CHIẾN LƯỢC

1. Đối với sản phẩm "Ngôi sao": Cà Phê Sữa
   → Đề xuất chương trình:
     *Combo “Mua 2 ly Cà Phê Sữa – Giảm 15%”*
     - Khuyến khích khách mua số lượng lớn.
     - Giữ chân khách hàng đang có thói quen gọi món này.

2. Đối với sản phẩm "Cần xem xét": Bạc Xỉu
   → Hành động đề xuất:
     *Giảm giá dùng thử 20% trong 1 tuần*
     - Mục tiêu kiểm tra xem có tăng nhu cầu hay không.
     - Nếu không thay đổi → Cân nhắc rút khỏi menu hoặc làm lại công thức.
*/