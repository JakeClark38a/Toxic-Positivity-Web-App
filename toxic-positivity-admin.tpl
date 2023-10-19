<!doctype html>
<html>
    <title>Admin - Toxic Positivity</title>
    <meta name="viewport" content="width=device-width">
</html>
<body>
    <br>
    <p>Tải về bảng tính <a href="/toxic-positivity-admin/full_{{time}}.xlsx" download>tại đây</a>. Các bảng tính trước 0:00 UTC mỗi ngày sẽ tự động xóa.</p>
    <p>Tổng kết</p>
    <table>
        <tr>
            <th>Câu hỏi</th>
            <th>Số người chọn đáp án A</th>
            <th>Số người chọn đáp án B</th>
            <th>Số người chọn đáp án C</th>
            <th>Số người chọn đáp án D</th>
        </tr>
        %for i in range(5):
        <tr>
            <td>{{i+1}}</td>
            %for j in range(4):
            <td>{{summary[i][j]}}</td>
            %end
        </tr>
        %end
    </table>
    <p>Chi tiết toàn bộ đáp án của tất cả người dùng đều được hiển thị ở đây. Click vào mã để đến trang kết quả tương ứng</p>
    <table>
        <tr>
            <th>Thứ tự người dùng</th>
            <th>Câu hỏi 1</th>
            <th>Câu hỏi 2</th>
            <th>Câu hỏi 3</th>
            <th>Câu hỏi 4</th>
            <th>Câu hỏi 5</th>
            <th>Mã kết quả</th>
        </tr>
        %for i in range(len(full)):
        <tr>
            %for j in range(len(full[i])-1):
            <td>{{full[i][j]}}</td>
            %end
            <td><a href="/result?id={{full[i][len(full[i])-1]}}" id="link" target="_blank">{{full[i][len(full[i])-1]}}</td>
        </tr>
        %end
    </table>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        p {
            margin: 0 5%;
        }
        table {
            background-color: #ffcfd2;
            width: 95%;
            border: 3px solid black;
            border-collapse: collapse;
            margin: 2% auto;
        }
        td, th {
            border: 1px solid black;
	        padding: 3px;
        }
        #link {
            text-decoration: none;
            color: blue;
        }
        #link:hover {
            text-decoration: underline;
            font-weight: bold;
        }
    </style>
</body>