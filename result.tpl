<!DOCTYPE HTML>

<html>
<head>
	<meta charset="utf-8">
	<title>Game - Toxic Positivity</title>
	<link rel="stylesheet" href="./static/style.css">
	<link href="https://kit-pro.fontawesome.com/releases/v5.15.3/css/pro.min.css" rel="stylesheet">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>
<body>
    <section class="game">
        <div id="summary">
            <table>
                <caption>Tổng kết</caption>
                <tr id="head">
                    <th>Câu hỏi</th>
                    <th>Nội dung câu hỏi</th>
                    <th>Đáp án của bạn</th>
                    <th>Số điểm</th>
                </tr>
                <!-- This is test table to style -->
                %for i in range(5):
                <tr id="{{id2[i]}}">
                    <td>{{i+1}}</td>
                    %for j in range(3):
                        <td>{{data[i][j]}}</td>
                    %end
                </tr>
                %end
                <tr id="sum">
                    <td colspan='3'>Tổng</td>
                    <td>{{total}}</td>
                </tr>
            </table>
            <p id="comment">{{comment}}</p>
            <br>
        </div>
        <div id="button2">
            <a href="./story?back={{back}}" id="more">Xem phân tích/tác hại</a>
            <a href="toxic-positivity-game.html" id="back">Trở lại</a>
        </div>
    </section>
</body>