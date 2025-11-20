create table DangKyGoi (
    ma_dang_ky int primary key,
    ma_khach_hang int,
    ten_goi varchar(50), 
    phi_hang_thang decimal(10, 2),
    ngay_bat_dau date
);

insert into DangKyGoi (ma_dang_ky, ma_khach_hang, ten_goi, phi_hang_thang, ngay_bat_dau) 
values
(1, 101, 'Cơ Bản', 99000.00, '2022-01-15'),
(2, 102, 'Cao Cấp', 259000.00, '2021-06-20'),
(3, 103, 'Tiêu Chuẩn', 179000.00, '2023-03-10'),
(4, 101, 'Tiêu Chuẩn', 179000.00, '2023-05-20'),
(5, 104, 'Cao Cấp', 259000.00, '2021-11-01'),
(6, 102, 'Tiêu Chuẩn', 179000.00, '2023-01-30'),
(7, 105, 'Cơ Bản', 99000.00, '2023-08-12'),
(8, 104, 'Cao Cấp', 259000.00, '2022-11-01'),
(9, 102, 'Cơ Bản', 99000.00, '2023-09-05'),
(10, 104, 'Tiêu Chuẩn', 179000.00, '2023-02-15'),
(11, 101, 'Cao Cấp', 259000.00, '2023-10-01');

select ten_goi, 
	COUNT(*) as so_luot_dang_ky,
    SUM(phi_hang_thang) as tong_doanh_thu
from DangKyGoi
GROUP BY ten_goi;

select ma_khach_hang,
    SUM(phi_hang_thang) as tong_chi_tieu,
    COUNT(*) as so_goi_da_mua,
    MIN(ngay_bat_dau) as ngay_tham_gia_dau_tien
from DangKyGoi
GROUP BY ma_khach_hang;
