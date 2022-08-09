DROP  DATABASE if exists furama;
CREATE DATABASE IF NOT EXISTS  furama;
USE furama;

CREATE TABLE vi_tri (
    ma_vi_tri INT   PRIMARY KEY,
    ten_vi_tri VARCHAR(45)
 
);

INSERT INTO vi_tri 
VALUES(1,"Quản Lý"),
(2,"NHân Viên");

CREATE TABLE trinh_do (
    ma_trinh_do INT PRIMARY KEY,
    ten_trinh_do VARCHAR(45)
    
);

INSERT INTO trinh_do
VALUES(1,"Trung Cấp"),
(2,"Cao Đẳng"),
(3,"ĐẠI Học"),
(4,"Sau ĐạI Học");

CREATE TABLE bo_phan (
    ma_bo_phan INT PRIMARY KEY,
    ten_bo_phan VARCHAR(45)
);

INSERT INTO bo_phan
 VALUES(1,"Sale-Marketing"),
(2,"Hành chính"),
(3,"Phục Vụ"),
(4,"QuẢN Lý");


CREATE TABLE nhan_vien (
    ma_nhan_vien INT AUTO_INCREMENT  PRIMARY KEY ,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    so_cmnd VARCHAR(45),
    luong DOUBLE,
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT,
    ma_trinh_do INT,
    ma_bo_phan INT,
    FOREIGN KEY(ma_vi_tri)REFERENCES vi_tri(ma_vi_tri),
    FOREIGN KEY(ma_trinh_do)REFERENCES trinh_do(ma_trinh_do),
    FOREIGN KEY(ma_bo_phan)REFERENCES bo_phan(ma_bo_phan)
    
);

INSERT INTO nhan_vien( ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
VALUES("Nguyễn Văn An","1970-11-07","456231786","10000000","0901234121","aNnguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1),
("LÊ VĂN BÌnH","1997-04-09","654231234","7000000","0934212314","Binhlv@gmail.Com","22 Yên Bái, ĐÀ Nẵng",1,2,2),
("Hồ Thị Yến","1995-12-12","999231723","14000000","0412352315","tHiyen@gmail.com","K234/11 Điện Biên Phủ, GiA Lai",1,3,2),
("Võ Công Toản","1980-04-04","123231365","17000000","0374443232","toan0404@gmAil.com","77 Hoàng Diệu, Quảng Trị",1,4,4),
("Nguyễn Bỉnh Phát","1999-12-09","454363232","6000000","0902341231","phatphat@gmaIl.com","43 Yên Bái, ĐÀ Nẵng",2,1,1),
("Khúc Nguyễn An NGhi","2000-11-08","964542311","7000000","0978653213","annghi20@gmail.com","294 Nguyễn TẤt Thành, Đà Nẵng",2,2,3),
("Nguyễn Hữu Hà","1993-01-01","534323231","8000000","0941234553","nHh0101@gmail.com","4 Nguyễn Chí ThAnh, Huế",2,3,2),
("NgUyễn Hà Đông","1989-09-03","234414123","9000000","0642123111","dONGHANGUyEn@gmail.com","111 HùnG Vương, Hà NỘi",2,4,4),
("Tòng HoaNg","1982-09-03","256781231","6000000","0245144444","hoangtong@gmail.COM","213 Hàm Nghi, Đà Nẵng",2,4,4),
("Nguyễn CôNg Đạo","1994-01-08","755434343","8000000","0988767111","nguyencongdao12@gMAIL.COM","6 Hoà Khánh, Đồng Nai",2,3,2);

CREATE TABLE customer_type (
    customer_type_id INT  PRIMARY KEY,
    `name` VARCHAR(45)
  
);
INSERT INTO customer_type
VALUES(	1,"Diamond"),
	(2,"Platinium"),
	(3,"Gold"),
	(4,"Silver"),
    (5,"Member");



CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45),
    birthday DATE,
    gender BIT(1),
    id_card VARCHAR(45),
    phone_number VARCHAR(45),
    email VARCHAR(45),
    address VARCHAR(45),
	customer_type_id INT,
    FOREIGN KEY (customer_type_id) REFERENCES customer_type(customer_type_id)
);

INSERT INTO customer( `name` ,birthday,gender,id_card,phone_number,email,address,customer_type_id)

VALUES("Nguyễn Thị Hào","1970-11-07",0,"643431213","0945423362","thiHao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng",5),
("Phạm Xuân Diệu","1992-08-08",1,"865342123","0954333333","xuAndieu92@gmaiL.com","K77/22 Thái PhiÊn, Quảng Trị",3),
("Trương Đình Nghệ","1990-02-27",1,"488645199","0373213122","NGHenhan2702@gMail.com","K323/12 Ông Ích Khiêm, Vinh",1),
("Dương Văn Quan","1981-07-08",1,"543432111","0490039241","duongqUAN@gmail.com","K453/12 Lê Lợi, Đà Nẵng",1),
("Hoàng Trần Nhi Nhi","1995-12-09",0,"795453345","0312345678","nhiNhi123@gmail.COM","224 Lý THái Tổ, Gia LAi",4),
("Tôn Nữ Mộc CHâu","2005-12-06",0,"732434215","0988888844","tonnuchau@gmaIl.com","37 YÊN Thế, Đà NẵnG",4),
("Nguyễn Mỹ Kim","1984-04-08",0,"856453123","0912345698","KIMcUong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh",1),
("Nguyễn Thị Hào","1999-04-08",0,"965656433","0763212345","haohao99@GMAiL.com","55 Nguyễn Văn Linh, Kon Tum",3),
("Trần Đại Danh","1994-07-01",1,"432341235","0643343433","danhhai99@gmail.cOM","24 Lý Thường Kiệt, QuẢng Ngãi",1),
("Nguyễn Tâm Đắc","1989-07-01",1,"344343432","0987654321","dactam@gmail.com","22 Ngô QuyềN, Đà Nẵng",2);



CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45)
);

INSERT INTO loai_dich_vu
VALUES(1,"Villa"),
(2,"House"),
(3,"ROOm");

CREATE TABLE kieu_thue (
    ma_kieu_thue INT PRIMARY KEY,
    ten_kieu_thue VARCHAR(45)
);

INSERT INTO kieu_thue
VALUES(1,"year"),
(2,"month"),
(3,"DAy"),
(4,"HOUR");

CREATE TABLE dich_vu (
    ma_dich_vu INT AUTO_INCREMENT  PRIMARY KEY,
    ten_dich_vu VARCHAR(45),
    dien_tich INT,
    chi_phi_thue DOUBLE,
    so_nguoi_toi_da INT,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT,
    ma_kieu_thue INT,
    ma_loai_dich_vu INT,
    FOREIGN KEY(ma_loai_dich_vu) REFERENCES  loai_dich_vu(ma_loai_dich_vu),
    FOREIGN KEY(ma_kieu_thue) REFERENCES  kieu_thue(ma_kieu_thue)
);

INSERT INTO dich_vu(ten_dich_vu, dien_ticH, chi_phi_thue,  so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,dich_vu_mien_phi_di_kem, ma_kieu_thue,  ma_loai_dich_vu)
	VALUES("Beach Front",25000,10000000,10,"vIp","Có Hồ bơi",500,4,NULL,3,1),	
	("HoUse PriNcess 01",14000,5000000,7,"VIP","Có thêm BẾP NƯỚNG",NULL,3,nulL,2,2),	
	("ROOM TWIN 01",5000,1000000,2,"NORMAL","Có tivi",NULL,NULL,"1XE MÁY, 1 Xe đạp",4,3),
    ("VilLA NO BEACH FRONT",22000,9000000,8,"NORMAL","CÓ HỒ BƠI",300,3,Null,3,1),	
	("HOUSE PRINCESS 02",10000,4000000,5,"noRMAL","CÓ THÊM BẾp nướng",NULL,2,NULL,3,2),	
	("RooM TWIN 02",3000,900000,2,"NORMAL","CÓ TIVI",NULL,NULl,"1 XE MÁY",4,3);	


CREATE TABLE hop_dong (
    ma_hop_dong INT AUTO_INCREMENT PRIMARY KEY,
    ngay_lam_hop_dong DATETIME,
    ngay_ket_thuc DATETIME,
    tien_dat_coc DOUBLE,
    ma_nhan_vien INT,
    customer_id INT,
    ma_dich_vu INT,
	
    FOREIGN KEY(ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id), -- on delete set null
    FOREIGN KEY(ma_dich_vu) REFERENCES dich_vu(ma_dich_vu)
);
INSERT INTO hop_dong(ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,customer_id,ma_dich_vu)
VALUES("2020-12-08","2020-12-08",0,3,1,3),
	("2020-07-14","2020-07-21",200000,7,3,1),
	("2021-03-15","2021-03-17",50000,3,4,2),
	("2021-01-14","2021-01-18",100000,7,5,5),
	("2021-07-14","2021-07-15",0,7,2,6),
	("2021-06-01","2021-06-03",0,7,7,6),
	("2021-09-02","2021-09-05",100000,7,4,4),
	("2021-06-17","2021-06-18",150000,3,4,1),
	("2020-11-19","2020-11-19",0,3,4,3),
	("2021-04-12","2021-04-14",0,10,3,5),
	("2021-04-25","2021-04-25",0,2,2,1),
	("2021-05-25","2021-05-27",0,7,10,1);

CREATE TABLE   dich_vu_di_kem (
    ma_dich_vu_di_kem INT PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45),
    gia DOUBLE,
    don_vi VARCHAR(10),
    trang_thai VARCHAR(45)
);

INSERT INTO  dich_vu_di_kem
VALUES(1,"karaoke",10000,"giờ","Tiện nghi,hiện tại"),
(2,"THUê XE máy",10000,"chIẾC","Hỏng 1 xe"),
(3,"Thuê xe ĐạP",20000,"chiếc","tốT"),
(4,"Buffet Buổi sánG",15000,"suất","đầy đủ đồ ĂN, TRÁng miệng"),
(5,"Buffet buổi trưa",90000,"suất","đẦY ĐỦ đồ ăn, tráng miệng"),
(6,"BUffet buổI tối",16000,"suất","đầy đủ đồ ăn, tráng MIệNG");

CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT PRIMARY KEY,  
    so_luong INT,
    ma_hop_dong INT,
    ma_dich_vu_di_kem INT,
    FOREIGN KEY(ma_hop_dong) REFERENCES hop_dong(ma_hop_dong),
    FOREIGN KEY(ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem)
);

INSERT INTO hop_dong_chi_tiet 
VALUES(1,5,2,4),
(2,8,2,5),
(3,15,2,6),
(4,1,3,1),
(5,11,3,2),
(6,1,1,3),
(7,2,1,2),
(8,2,12,2);
