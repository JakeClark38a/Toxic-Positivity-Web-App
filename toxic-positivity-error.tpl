<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<title>Home - Toxic Positivity</title>
	<link href="./static/style.css" rel="stylesheet">
	<link href="https://kit-pro.fontawesome.com/releases/v5.15.3/css/pro.min.css" rel="stylesheet">
	<!-- Test PC browser: Remove this comment -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<header class="header">
		<i class="fas fa-bars"></i>
		<i class="fas fa-times"></i>
		<a href="index.html" id="logo">TOPOTY</a>
		<ul>
			<li><a href="index.html">Trang chủ</a></li>
			<li><a href="toxic-positivity-game.html">Trò chơi</a></li>
			<li><a href="toxic-positivity-chat.html">Trò chuyện</a></li>
			<li><a href="toxic-positivity-contact.html">Liên hệ</a></li>
			<li><a href="toxic-positivity-acc.html" class="fas fa-circle"></a></li>
		</ul>
	</header>
    <section class="error home">
        <img src="static/{{image_name}}" alt="{{image_alt}}" id="error-image">
        <div class="titles" style="padding: 0;">
            <p id="title" class="reset-style" style="padding: 0; font-size: 1.8rem; font-weight: bold; text-align: center;">Oops! {{error_message}}</p>
            <p id="desc" class="reset-style">Bạn có thể thử vào lại trang sau hoặc vào lại <a href="index.html" class="reset-style">trang chủ</a>.</p>
			<br><br>
        </div>
        
    </section>
    <script>
		const phone_width = 700;
		$(document).ready(function(){
			$(window).resize(function(){
				if ($(this).width()>phone_width) {
					$("header .fa-bars, header .fa-times").hide();
				}
				else {
					$("header .fa-bars").show();
				}
			});

			if ($(window).width()<=phone_width) {
				$("header .fa-bars").show();
				$("header .fa-times").hide();

				$("header .fa-bars").click(function(){
					$("header ul").addClass("active");
					$("header .fa-times").show();
					$(this).hide();
				});

				$("header .fa-times").click(function(){
					$("header ul").removeClass("active");
					$("header .fa-bars").show();
					$(this).hide();
				});
			}
			else {
				$("header .fa-bars, header .fa-times").hide();
			}
			//This page shouldn't display highlight.
		})
		
	</script>
</body>
</html>