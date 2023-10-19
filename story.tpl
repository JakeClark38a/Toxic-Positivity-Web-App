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
	<style>
		body {font-family: Arial, Helvetica, sans-serif;}

		#myImg {
		border-radius: 5px;
		cursor: pointer;
		transition: 0.3s;
		}

		#myImg:hover {opacity: 0.7;}

		/* The Modal (background) */
		.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		padding-top: 100px; /* Location of the box */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
		}

		/* Modal Content (image) */
		.modal-content {
		margin: auto;
		display: block;
		width: 80%;
		max-width: 850px;
		}

		/* Caption of Modal Image */
		#caption {
		margin: auto;
		display: block;
		width: 80%;
		max-width: 700px;
		text-align: center;
		color: #ccc;
		padding: 10px 0;
		height: 150px;
		}

		/* Add Animation */
		.modal-content, #caption {
		-webkit-animation-name: zoom;
		-webkit-animation-duration: 0.6s;
		animation-name: zoom;
		animation-duration: 0.6s;
		}

		@-webkit-keyframes zoom {
		from {-webkit-transform:scale(0)}
		to {-webkit-transform:scale(1)}
		}

		@keyframes zoom {
		from {transform:scale(0)}
		to {transform:scale(1)}
		}

		/* The Close Button */
		.close {
		position: absolute;
		top: 15px;
		right: 35px;
		color: #f1f1f1;
		font-size: 40px;
		font-weight: bold;
		transition: 0.3s;
		}

		.close:hover,
		.close:focus {
		color: #bbb;
		text-decoration: none;
		cursor: pointer;
		}

		/* 100% Image Width on Smaller Screens */
		@media only screen and (max-width: 700px){
		.modal-content {
			width: 100%;
		}
		}
	</style>
</head>
<body>
    <section class="game">
        <div class='mores' id="tabs">
			<ul>
				<li><a href="#more-first">Câu chuyện 1</a></li>
				<li><a href="#more-second">Câu chuyện 2</a></li>
				<li><a href="#more-third">Câu chuyện 3</a></li>
				<li><a href="#more-forth">Câu chuyện 4</a></li>
				<li><a href="#more-fifth">Câu chuyện 5</a></li>
			</ul>
            %for i in id:
                <div id="more-{{i}}">
                    <div class="left">
						<img src="./static/{{data[i]["image"]}}" alt="Câu chuyện thứ nhất">
						<br>
						<span id="title">CÂU CHUYỆN {{char_to_num[i]}}</span>
						<br>
					</div>
					<div class="right">
						<p class="title">PHÂN TÍCH TÌNH HUỐNG TOXIC POSITIVITY</p>
						<p class="section" id="1">{{data[i]["section#1"]}}</p>
						<br>
						<p class="section" id="2">
							Hậu quả để lại:
							<br>
							{{data[i]["section#2"]}}
						</p>
					</div>
                </div>
            %end
		</div>
		<div id="button3">
			<a href="./result?id={{code}}">Quay lại kết quả</a>
			<a href="#" id="btn">Xem biện pháp</a>
			<img id="myImg" src="./static/Giải pháp.png" alt="Giải pháp" style="width:100%;max-width:300px;display:none">
			<!-- The Modal -->
			<div id="myModal" class="modal">
			<span class="close">&times;</span>
			<img class="modal-content" id="img01">
			<div id="caption"></div>
		</div>
    </section>
    <script>
        $(".game .mores").tabs();
		const modal = $("#myModal");
		const img = $("#myImg");
		const modalImg = $("#img01");
		const captionText = $("#caption");
		$("#btn").click(function(event){
			event.preventDefault();
			modal.show();
			modalImg.attr("src",img.attr("src"));
			captionText.html(img.attr("alt"));
		});
		$(".close").click(function(event){
			modal.hide();
			img.hide();
		})
    </script>
</body>