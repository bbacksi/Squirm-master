<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/menu.css">
<link rel="stylesheet" href="resources/css/menu_bar.css">

<link rel="stylesheet" type="text/css" href="./resources/css/loading-bar.css">
<link rel="stylesheet" type="text/css" href="./resources/css/loading-bar.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">




</head>

<body>

	
	<%
		String data = request.getParameter("result");
	out.print(data);
	%>

	<!-- <input id = "bStart" type = "button" value = "stt 시작하는 버튼 자동화 시켜서 필요" onclick = "start();"></input> -->



	<!-- login -->
<body>
 <div class="content">
		<div class="container">
		<span class="toggle-button">
			<div class="menu-bar bar-top"></div>
			<div class="menu-bar bar-middle"></div>
			<div class="menu-bar bar-bottom"></div>
		</span>

		<div class="menu-wrap">
			<div class="menu-sidebar">
				<ul class="menu">
					<li class="menu_nick"><a href="#">꾸러기님</a></li>
					<li><a href="main.do">번역기</a></li>
					<li><a href="train.do">교육</a></li>
					<li><a href="list.do">단어</a></li>
					<li><a href="#">로그아웃</a></li>

				</ul>
			</div>
		</div>
					
	
		

			<div class="col-md-6 grid-margin stretch-card">
				<div class="col-md-6 grid-margin stretch-card">
					<div class="card">
						<div class="card-b">
							<p class="speak" id="output"
								style="color: black; font-family: 'Gowun Dodum', sans-serif;">상대방
								말이 표시됩니다.</p>
						</div>

							<div class="card-b1">
								<span>
								<input class="talk-input" id="code_html"
									type="text" value=<%=data%> /> 
									<input class = "talk-input-bnt" type="image" src="resources/img/speaker.png"
								onclick="" />
								</span>	
				
						
						
						

				

						</div>
					</div>
					</div>

					<div class="frame">
						<input type="checkbox" id="cb-1" name="cb" class="checkbox" value="1"> <label for="cb-1" class="label"></label>
						<div class="microphone" id = "microphone">
							<svg width="60px" height="60px" viewBox="0 0 100 100" id="microphone" onclick="count(&quot;plus&quot;)">
										<circle class="circle" cx="50" cy="50" r="44"></circle>
								</svg>
							<div class="icon">
								<div class="body">
									<div class="fill"></div>
								</div>
								<div class="foot_v"></div>
								<div class="foot_h"></div> 
							</div>
							<div class="dots">
								<div class="dot dot-1"></div>  
								<div class="dot dot-2"></div>   
								<div class="dot dot-3"></div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
</body>

<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="resources/js/main.js"></script>
<script src="resources/js/menu_bar.js"></script>
<script src="resources/js/record.js"></script>
<script src="resources/js/stt.js"></script>
<script src="resources/js/tts.js"></script>


</html>