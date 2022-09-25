use quanlykhovattu;

CREATE VIEW 	vw_CTPNHAP AS
SELECT 	CTPN.id,VT.mavattu,CTPN.soluongnhap,CTPN.dongianhap, (CTPN.soluongnhap*CTPN.dongianhap) AS 'Thành Tiền Nhập'
FROM 	chitietphieunhap CTPN
JOIN 	vattu VT
ON 		CTPN.vattu_id = VT.id;
SELECT 	*
FROM 	vw_CTPNHAP;

CREATE VIEW vw_CTPNHAP_VT AS
SELECT 	CTPN.id, VT.mavattu, VT.tenvattu, CTPN.soluongnhap, CTPN.dongianhap, (CTPN.dongianhap * CTPN.soluongnhap) AS 'Thành Tiền Nhập'
FROM 	chitietphieunhap CTPN
JOIN 	vattu VT
ON 		CTPN.vattu_id = VT.id;
SELECT 	*
FROM 	vw_CTPNHAP_VT;

CREATE VIEW vw_CTPNHAP_VT_PN AS
SELECT 	CTPN.id, PN.ngaynhap, PN.donhang_id, VT.mavattu, VT.tenvattu, CTPN.soluongnhap,CTPN.dongianhap,
		(CTPN.dongianhap * CTPN.soluongnhap) AS 'Thành Tiền Nhập'
FROM 	chitietphieunhap CTPN
JOIN 	vattu VT
ON 		CTPN.vattu_id = VT.id
JOIN 	phieunhap PN
ON 		CTPN.phieunhap_id = PN.id;
SELECT 	*
FROM 	vw_CTPNHAP_VT_PN;

CREATE VIEW vw_CTPNHAP_VT_PN_DH AS
SELECT 	CTPN.id, PN.ngaynhap, PN.donhang_id, DDH.nhacungcap_id, VT.mavattu, VT.tenvattu, CTPN.soluongnhap, CTPN.dongianhap, 
        (CTPN.dongianhap * CTPN.soluongnhap) AS 'Thành Tiền Nhập'
FROM 	chitietphieunhap CTPN
JOIN 	vattu VT
ON		CTPN.vattu_id = VT.id
JOIN	phieunhap PN
ON		CTPN.phieunhap_id = PN.id
JOIN	dondathang DDH
ON		PN.donhang_id = DDH.id;
SELECT	*
FROM	vw_CTPNHAP_VT_PN_DH;

CREATE VIEW vw_CTPNHAP_loc AS
SELECT	CTPN.id,VT.mavattu,CTPN.soluongnhap,CTPN.dongianhap, (CTPN.soluongnhap*CTPN.dongianhap) AS 'Thành Tiền Nhập'
FROM 	chitietphieunhap CTPN
JOIN 	vattu VT
ON 		CTPN.vattu_id = VT.id
WHERE 	CTPN.soluongnhap > 200;
SELECT	*
FROM	vw_CTPNHAP_loc;

CREATE VIEW vw_CTPNHAP_VT_loc AS
SELECT 	CTPN.id, VT.mavattu, VT.tenvattu, CTPN.soluongnhap, CTPN.dongianhap, (CTPN.dongianhap * CTPN.soluongnhap) AS 'Thành Tiền Nhập'
FROM 	chitietphieunhap CTPN
JOIN 	vattu VT
ON 		CTPN.vattu_id = VT.id
WHERE	VT.donvitinh = 'cái';
SELECT	*
FROM	vw_CTPNHAP_VT_loc;

CREATE VIEW vw_CTPXUAT AS
SELECT	CTPX.id, VT.mavattu, CTPX.soluongxuat, CTPX.dongiaxuat, 
		(CTPX.soluongxuat * CTPX.dongiaxuat) AS 'Thành tiền Xuất'
FROM	chitietphieuxuat CTPX
JOIN 	vattu VT
ON 		CTPX.vattu_id = VT.id;
SELECT	*
FROM	vw_CTPXUAT;

CREATE VIEW vw_CTPXUAT_VT AS
SELECT	CTPX.id, VT.mavattu, VT.tenvattu, CTPX.soluongxuat, CTPX.dongiaxuat, 
		(CTPX.soluongxuat * CTPX.dongiaxuat) AS 'Thành tiền Xuất'
FROM	chitietphieuxuat CTPX
JOIN 	vattu VT
ON 		CTPX.vattu_id = VT.id;
SELECT	*
FROM	vw_CTPXUAT_VT;

CREATE VIEW vw_CTPXUAT_VT_PX AS
SELECT	CTPX.id, PX.tenkhachhang, VT.mavattu, VT.tenvattu, CTPX.soluongxuat, CTPX.dongiaxuat,
		(CTPX.soluongxuat * CTPX.dongiaxuat) AS 'Thành tiền Xuất'
FROM	chitietphieuxuat CTPX
JOIN 	vattu VT
ON 		CTPX.vattu_id = VT.id
JOIN	phieuxuat PX
ON		CTPX.phieuxuat_id = PX.id;
SELECT	*
FROM	vw_CTPXUAT_VT_PX;