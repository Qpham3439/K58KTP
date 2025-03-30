BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3----------------------------------------

BÀI LÀM

- Sửa bảng DKMH và bảng điểm của bài tập 2 để có các bảng theo yêu cầu:
  + Sửa bảng DKMH:

    ![Screenshot 2025-03-30 144521](https://github.com/user-attachments/assets/b590ae27-93e5-44ec-913d-fc413cdc8c16)

  + Tạo bảng Diem:
 
    ![Screenshot 2025-03-30 140551](https://github.com/user-attachments/assets/cc40f6e6-d1d8-4130-b0d5-b19ab70b371c)
    ![Screenshot 2025-03-30 140814](https://github.com/user-attachments/assets/612d077a-c5c4-4f3d-801a-bc2994f7dd49)
    ![Screenshot 2025-03-30 140914](https://github.com/user-attachments/assets/3f566403-0b44-4e80-9d16-3441ebdacacd)

  + Tạo diagram:
 
    ![Screenshot 2025-03-30 151014](https://github.com/user-attachments/assets/5db55b44-2dc1-4984-9605-d0d84a2ab560)


- Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm):
  
    ![Screenshot 2025-03-30 142434](https://github.com/user-attachments/assets/2aa95c2a-7f16-495f-91a9-dabbb147a94f)
    ![Screenshot 2025-03-30 142725](https://github.com/user-attachments/assets/b50932f6-1630-4063-b2b5-3680e97eb702)
    ![Screenshot 2025-03-30 142822](https://github.com/user-attachments/assets/31eb0606-85b8-4cb0-9875-4b226f449976)
    ![Screenshot 2025-03-30 143513](https://github.com/user-attachments/assets/11ca34e2-e2ad-4d28-aad9-2e90722d7804)
    ![Screenshot 2025-03-30 143616](https://github.com/user-attachments/assets/1110d4d7-4a07-4685-b97c-954def94a0bd)
    ![Screenshot 2025-03-30 144005](https://github.com/user-attachments/assets/b6d31a5c-7f6b-4a25-979a-ff18fbbda9ad)
    ![Screenshot 2025-03-30 144902](https://github.com/user-attachments/assets/b749e807-8189-4d83-b493-0abf9ef44066)
    ![Screenshot 2025-03-30 145016](https://github.com/user-attachments/assets/06b6a7be-091e-431b-afef-661e027c2579)

- Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
  + Lệnh truy vấn để đính điểm thành phần của tất cả sinh viên học tại tất cả các lớp học phần:

    ```sql
      SELECT   
        DKMH.MaSV MSSV, 
        
        LopHP.malophp [Mã lớp HP], 
        
        LopHP.tenlophp [Tên lớp HP], 
        
        DKMH.diemthi [Điểm thi], 
        
        DKMH.phantramthi [Phần trăm thi], 
        
    	  COUNT(Diem.diem) AS [Số điểm thành phần],
     
        AVG(Diem.diem) AS [Điểm thành phần]      
    FROM DKMH
    
    LEFT JOIN Diem ON DKMH.id_dk = Diem.id_dk
    
    JOIN LopHP ON DKMH.malophp = LopHP.malophp
    
    GROUP BY DKMH.masv, LopHP.malophp, LopHP.tenlophp, DKMH.diemthi, DKMH.phantramthi
    
    ORDER BY LopHP.malophp;
  
  + Kết quả sau khi chạy lệnh truy vấn như sau:

    ![Screenshot 2025-03-30 145524](https://github.com/user-attachments/assets/11f64b95-20a6-470b-b73c-d3eefc5a68aa)
