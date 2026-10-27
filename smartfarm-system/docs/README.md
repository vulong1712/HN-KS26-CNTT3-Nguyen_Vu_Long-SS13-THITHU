# HỆ THỐNG GIÁM SÁT TRẠM CẢM BIẾN NÔNG TRẠI

## Hướng dẫn chạy script:

Ở thư mục gốc của hệ thống **_(.\smartfarm-system)_**, nhập lệnh sau để chạy script tự động lọc lỗi trong **_.\data\log-he-thong.log_**

```powershell
.\scripts\auto_report.ps1
```

## Checklist kiểm tra thiết bị:

- [] Đối chiếu tên thiết bị với mã trong bảng Excel
- [x] Lắp đặt tất cả các thiết bị
- [x] Khắc phục lỗi các thiết bị đẩy ra trong file log

## Bảng thông số phần cứng:

| Tên thiết bị | Đơn giá | Loại Storage |
| :---: | :---: | :---: |
| Intel NUC i3 | 6,200,000 | SSD |
| Raspberry Pi 4 Model B | 1,450,000 | SSD |
| Mini PC Fanless N100 | 4,200,000 | SSD |
 
## Mô hình IPO của chức năng lọc log:

-  Input: Dữ liệu file log-he-thong.log
- Process: Hệ thống đọc file log-he-thong.log, lọc ra các dòng có chứa lỗi (sử dụng _cat_ và _select-string_)
- Output: File báo cáo lỗi được xuất ra: _.\backup\bao-cao-su-co.txt_

## Phân loại các phát biểu vào đúng tầng DIKW:

- **Data**: (b) “2026-10-12 08:15:01 [ERROR] sensor-03 Connection TIMEOUT after 30s” 
- **Information**: (c) “Hôm nay hệ thống ghi nhận 8 sự cố, trong đó 4 sự cố đến từ trạm sensor-03.” 
- **Knowledge**: (d) “Trạm sensor-03 hay mất kết nối vào buổi chiều do sóng yếu, nên cần lắp thêm anten.” 
-  **Wisdom**: (a) “Quyết định thay modem trạm sensor-03 trước thứ Sáu.” 
