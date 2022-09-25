use quanlykhovattu;
DELIMITER //
CREATE PROCEDURE findSumOfVatTu(
		IN 	idvattu 	INT
	)
	BEGIN
		SELECT	VT.id,VT.mavattu, (TK.soluongdau + TK.tongsoluongnhap - TK.tongsoluongxuat) AS 'Số lượng cuối cùng'
        FROM	vattu VT
        JOIN	tonkho TK
        ON		VT.id = TK.vattu_id
        WHERE	VT.id = idvattu;
	END //
DELIMITER ;

CALL findSumOfVatTu(3);

DELIMITER //
CREATE PROCEDURE findSum(
		IN 		idvattu		INT,
        OUT		sum				INT
	)
    BEGIN
		SELECT	(Tk.soluongdau + tongsoluongnhap - tongsoluongxuat) INTO sum
        FROM	Vattu VT
        JOIN	TonKho TK
        ON		VT.id = TK.vattu_id
        WHERE	VT.id = idvattu;
	END//
DELIMITER ;

CALL 	findsum(2, @sum);
SELECT	@sum;

DELIMITER //
CREATE PROCEDURE findTongTienXuat(
		IN			mavattu	varchar(50)
	)
	BEGIN
			SELECT	VT.mavattu, VT.tenvattu, (CTPX.soluongxuat * CTPX.dongiaxuat) AS 'Tổng tiền Xuất VT'
            FROM	Vattu VT
            JOIN	ChiTietPhieuXuat CTPX
            ON		VT.id = CTPX.vattu_id
            WHERE	VT.mavattu = mavattu;
	END //
DELIMITER ;

CALL	findTongTienXuat ('V04');

DELIMITER //
CREATE PROCEDURE tongDonHang (
		IN		iddonhang		INT
        )
	BEGIN
			SELECT	donhang_id, SUM(soluongdat)
            FROM	chitietdonhang
            WHERE chitietdonhang.donhang_id = iddonhang
			GROUP BY chitietdonhang.donhang_id;
	END //
DELIMITER ;

CALL	tongDonHang(2);

DELIMITER //
CREATE PROCEDURE addDonDatHang (
		IN		newid 				INT,
				newMadon	VARCHAR(50),
        		newNgaydathang DATETIME,
        		newNhacungcap_id	INT
			
        )
	BEGIN
			INSERT INTO	dondathang (id,madon,ngaydathang,nhacungcap_id)
					VALUES (newid,newMadon,newNgaydathang,newNhacungcap_id);
									
	END //
DELIMITER ;
call addDonDatHang(4,'D04','2022-5-18',1);
select * from dondathang;

DELIMITER //
CREATE PROCEDURE addChiTietDonHang (
		IN		newDonhang_id	INT,
        		newVattu_id		INT,
        		newSoluongdat	INT
        )
	BEGIN
			INSERT  INTO	chitietdonhang	(donhang_id,vattu_id,soluongdat)
					VALUES				    (newDonhang_id,newVattu_id,newSoluongdat);	
											
	END //
DELIMITER ;

call addChiTietDonHang(1,1,200);
select * from chitietdonhang;
