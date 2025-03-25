# PHẠM MẠNH QUỲNH K58KTP
Bài tập 02 của sinh viên: K225480106057 - Phạm Mạnh Quỳnh - môn Hệ Quản Trị CSDL

BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 25/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi) 

YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
--------------------------------------------------------------------------------------------------------------------------
MÔ TẢ TÓM TẮT BÀI LÀM:
+ Bước 1: Mở SQL Server Managerment Studio (SSMS) và thực hiện kết nối tài khoản SQL Server
+ Bước 2: Tạo Database mới
+ Bước 3: Tạo các bảng trong Database theo các yêu cầu đã cho, đặt các khóa chính (PK) và lưu bảng
+ Bước 4: Đặt các khóa ngoại (FK) cho các thuộc tính của bảng theo yêu cầu của đầu bài
+ Bước 5: Cài dặt kiểm tra ràng buộc cho các thuộc tính cần thiết (Check constraints)
+ Bước 6: Chuyển thao tác đồ họa sang lệnh SQL
--------------------------------------------------------------------------------------------------------------------------
MÔ TẢ CHI TIẾT BÀI LÀM:
- Bước 1: Mở SQL Server Managerment Studio (SSMS) và thực hiện thao tác kết nối tài khoản SQL Server
  + Nháy đúp chuột vào biểu tượng SSMS trên màn hình

    ![Screenshot 2025-03-25 193010](https://github.com/user-attachments/assets/431b3390-e10b-4125-99c5-0f275cb9e87e)

  + Kết nối tài khoản SQL Server

    ![Screenshot 2025-03-25 193027](https://github.com/user-attachments/assets/43cdc91c-a95c-4e72-9d38-dab9e7fea569)

- Bước 2: Tạo Database mới
  + Sau khi kết nối tài khoản thành công, nhấp chuột phải vào Database, chọn _New Database..._
 
    ![Screenshot 2025-03-25 200319](https://github.com/user-attachments/assets/6abaf0e7-4fa6-4463-bd90-2e26b9f92fdf)

  + Đặt tên cho database rồi nhấn OK
 
    ![Screenshot 2025-03-25 162129](https://github.com/user-attachments/assets/9625ad86-5700-43d4-9139-a242ca66a273)

- Bước 3: Tạo bảng và đặt các khóa chính (PK) cho bảng
  + Nhấp vào dấu '+' tại Database vừa tạo, ta sẽ thấy 1 thư mục có tên 'Tables'

    ![Screenshot 2025-03-25 200148](https://github.com/user-attachments/assets/ebaac82b-b17b-442b-88bd-9889c6a8aef2)

  + Nhấp chuột phải vào tệp 'Tables', chọn _New ---> Table..._
 
    ![Screenshot 2025-03-25 162207](https://github.com/user-attachments/assets/f14955fe-e8fe-4434-931c-d08e0db04ef7)

  + Thực hiện thêm các thuộc tính yêu cầu vào mỗi bảng cho phù hợp yêu cầu vào mỗi bảng với kiểu dữ liệu phù hợp với thuộc tính đó
 
    ![Screenshot 2025-03-25 201201](https://github.com/user-attachments/assets/f9b7dfc6-e874-4f1f-9f37-c7acbcf8fe57)

  + Cài khóa chính: có thể nhấp chuột phải hoặc giữ Ctrl và nhấp chuột phải vào các thuộc tính cần chọn, sau đó chọn _Set Primary Key_
 
    ![Screenshot 2025-03-25 163214](https://github.com/user-attachments/assets/8b8cda35-0de4-4dd0-a488-8cc5178971cf)

    Cũng có thể nhấp chuột phải hoặc giữ Ctrl và nhấp chuột phải vào các thuộc tính cần chọn, sau đó nhấn vào biểu tượng chìa khóa trên thanh công cụ

    ![Screenshot 2025-03-25 202441](https://github.com/user-attachments/assets/1e355763-2cf2-4957-8a0f-6babf370a9ed)

  + Sau khi thực hiện xong, nhấn tổ hợp phím Ctrl + S, đặt tên cho bảng và nhấn OK để lưu bảng

    ![Screenshot 2025-03-25 162812](https://github.com/user-attachments/assets/3e4b65f2-ec7f-46c2-b058-6e185d5d716a)

    Thực hiện như trên, ta có 10 bảng sau:
  + Bảng SinhVien:
 
    ![Screenshot 2025-03-25 201201](https://github.com/user-attachments/assets/4ee5f46f-b4c7-4e48-9442-6ed44b7c51f4)

  + Bảng BoMon:
 
    ![Screenshot 2025-03-25 201223](https://github.com/user-attachments/assets/3d7ea14f-835a-4983-8573-c7c119e32af2)

  + Bảng DKMH:

    ![Screenshot 2025-03-25 201234](https://github.com/user-attachments/assets/4018b830-46d3-4c79-9abc-190ac550a154)

  + Bảng GiaoVien:
 
    ![Screenshot 2025-03-25 201244](https://github.com/user-attachments/assets/a8dc269f-84f0-4424-a595-7dfce9cfe170)
    
  + Bảng GVCN:
 
    ![Screenshot 2025-03-25 201302](https://github.com/user-attachments/assets/2dabbcbe-fbe7-42e5-8e80-f6d25bceb334)

  + Bảng Khoa:
 
    ![Screenshot 2025-03-25 201313](https://github.com/user-attachments/assets/3b3e9112-7545-4171-9227-c810d1157a08)
    
  + Bảng Lop:

    ![Screenshot 2025-03-25 201322](https://github.com/user-attachments/assets/bd1d8e0a-8900-4a85-9655-cc555618034d)
    
  + Bảng LopHP:
 
    ![Screenshot 2025-03-25 201333](https://github.com/user-attachments/assets/e973eaad-7eea-4731-9bc8-2aa9da2c7729)
    
  + Bảng LopSV:
 
    ![Screenshot 2025-03-25 201346](https://github.com/user-attachments/assets/76076b60-ec3b-4e12-9e79-d0eb4ef1e340)

  + Bảng MonHoc:
 
    ![Screenshot 2025-03-25 201358](https://github.com/user-attachments/assets/8cb2c539-ea6a-46a7-bf3d-72fa223eec3a)

- Bước 4: Đặt các khóa ngoại (FK) cho các thuộc tính:
  + Chỉ có thể cài khóa ngoại khi thuộc tính đó là khóa chính tại một bảng mà chúng ta muốn lên kết tới
  + Nhấp chuột phải vào ô trống bất kỳ trong phần 'Design' của bảng, chọn _Relationship..._
 
    ![Screenshot 2025-03-25 165730](https://github.com/user-attachments/assets/426197de-388b-4256-9b34-f8ce292e9fba)

  + Nhấn Add (thêm khóa ngoại), sau đó nhấp vào '...' tại _Tables And Columns Specification_ (liên kết khóa chính của bảng này với khóa ngoại của bảng kia)
 
    ![Screenshot 2025-03-25 165742](https://github.com/user-attachments/assets/3572266e-3e4c-41ab-86b0-973798166e20)

  + Trong cửa sổ _Tables and Columns_, chọn bảng chứa khóa chính cần liên kết, sau đó chọn tên khóa rồi bấm OK
 
    ![Screenshot 2025-03-25 205808](https://github.com/user-attachments/assets/13a68eae-0eff-4aa5-b75c-58d16b1a78b9)


  + Tại _Insert And Update Specification_, chọn Update Rule : CASCADE ( CASCADE để bảo bảo tính nhất quán dữ liệu, nếu dữ liệu của thuộc tính khóa chính bị thay đổi thì dữ liệu của khóa ngoại tại bảng liên kết cũng sẽ thay đổi theo) 

    ![Screenshot 2025-03-25 205352](https://github.com/user-attachments/assets/da77df79-a2db-4060-b3ca-4e46435faefc)

  + Làm như trên, ta thu được các FK sau:

    ![Screenshot 2025-03-25 165900](https://github.com/user-attachments/assets/ac286349-65a7-4453-933c-603dfca028cd)
    ![Screenshot 2025-03-25 170241](https://github.com/user-attachments/assets/cf3d2dfa-dab1-4f50-9293-1e794f46784b)
    ![Screenshot 2025-03-25 170359](https://github.com/user-attachments/assets/4a66939d-83ac-418f-aeeb-bf5900f0dfc7)
    ![Screenshot 2025-03-25 170444](https://github.com/user-attachments/assets/805a1557-aa1d-4d97-bdd6-316b7eb444a4)
    ![Screenshot 2025-03-25 170639](https://github.com/user-attachments/assets/ed071a12-ed34-4199-8507-67051548954c)
    ![Screenshot 2025-03-25 170852](https://github.com/user-attachments/assets/d581ef74-57c6-4548-983e-3377535d7fe3)
    
- Bước 5: Cài dặt kiểm tra ràng buộc cho các thuộc tính cần thiết (Check constraints)
  + Nhấp chuột phải vào ô trống bất kỳ trong phần 'Design' của bảng, chọn _Check constraints..._

    ![Screenshot 2025-03-25 170927](https://github.com/user-attachments/assets/c83b8752-5f39-4448-80bd-d9b69753bc2e)

  + Trong cửa sổ Check constraints, nhấn _Add_

    ![Screenshot 2025-03-25 170942](https://github.com/user-attachments/assets/aacb0d69-8536-4326-9455-efbbb703acbf)

  + Nhấn vào nút '...' bên cạnh ô Expression (điều kiện ràng buộc), nhập điều kiện sau đó bấm OK
 
    ![Screenshot 2025-03-25 211410](https://github.com/user-attachments/assets/94e8b412-cb3c-45d8-84e5-8aa4aefb2ee4)

  + Làm như trên, ta thu được các điều kiện ràng buộc sau:

    ![Screenshot 2025-03-25 180642](https://github.com/user-attachments/assets/83baa95d-e5bc-40f4-8d69-b4e39ae80f4e)
    ![Screenshot 2025-03-25 180645](https://github.com/user-attachments/assets/792cdfb2-8a9d-441f-8539-cbbc7d3cb496)
    ![Screenshot 2025-03-25 211233](https://github.com/user-attachments/assets/c2597d8b-48cc-4291-9fdb-fc6702aab1ba)
    
- Bước 6: Chuyển thao tác đồ họa sang lệnh SQL
  + Nhấp chuột phải vào tên bảng, chọn _Srcipt Table as ---> CREATE To ---> New Query Editor Window_
 
    ![Screenshot 2025-03-25 211954](https://github.com/user-attachments/assets/6565fbd0-1360-47a0-9de4-b5c0b567b029)

  + Lệnh SQL sau khi chuyển từ thao tác đồ họa:
    Bảng BoMon:

    ![Screenshot 2025-03-25 212125](https://github.com/user-attachments/assets/7a92bdf2-e09f-47d4-b74b-cb25b6ec05fb)

    Bảng DKMH:

    ![Screenshot 2025-03-25 212330](https://github.com/user-attachments/assets/10f05a70-8757-4e89-a104-89ea160efc2c)
    ![Screenshot 2025-03-25 212319](https://github.com/user-attachments/assets/d62c67ef-6786-434c-9d75-237210eda1a4)

    Bảng GiaoVien:

    ![image](https://github.com/user-attachments/assets/36b2f985-29e6-4b04-a2f1-7c20c04520d6)

    Bảng GVCN:

    ![Screenshot 2025-03-25 212605](https://github.com/user-attachments/assets/5b1a219b-a036-40a8-9477-b8c3cb63c680)
    ![Screenshot 2025-03-25 212612](https://github.com/user-attachments/assets/08eb63be-0141-41d8-b6b8-8791d6a7144a)

    Bảng khoa:

    ![Screenshot 2025-03-25 212820](https://github.com/user-attachments/assets/c844908d-0023-428c-9069-e1a0859e7b63)

    Bảng Lop:

    ![Screenshot 2025-03-25 212851](https://github.com/user-attachments/assets/8c2c4ce0-049a-44ad-8906-45f98b77ff58)

    Bảng LopHP:

    ![Screenshot 2025-03-25 212946](https://github.com/user-attachments/assets/bf3ef6f3-c1be-47c5-ab4e-74008a0ea215)
    ![Screenshot 2025-03-25 213001](https://github.com/user-attachments/assets/bf9fd1e7-2c71-4797-8777-2c5aa33b6625)

    Bảng LopSV:

    ![Screenshot 2025-03-25 213122](https://github.com/user-attachments/assets/aa7bbc15-13b7-4658-9085-e56f21576ce2)
    ![Screenshot 2025-03-25 213131](https://github.com/user-attachments/assets/f6b12367-9d32-430f-84e5-3a0a572e1a29)

    Bảng MonHoc:

    ![Screenshot 2025-03-25 213221](https://github.com/user-attachments/assets/e0396f92-1d27-4b93-9669-2baf8741f8c1)

    Bảng SinhVien:

    ![Screenshot 2025-03-25 213314](https://github.com/user-attachments/assets/525fb4e3-c471-4cd7-93b4-c93737e9e64a)
















