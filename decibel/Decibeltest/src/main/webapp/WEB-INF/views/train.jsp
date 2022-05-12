<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./resources/css/main.css">
<link rel="stylesheet" href="./resources/css/menu.css">
<link rel="stylesheet" href="resources/css/menu_bar.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css"
	href="./resources/css/loading-bar.css">
<link rel="stylesheet" type="text/css"
	href="./resources/css/loading-bar.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="./resources/css/menu_bar.css">
<!-- <script src="js/stt.js"></script> -->


</head>
<style>
rect#progress {
	transition: all 10s linear;
}
</style>

<body>


	<%
		String data = request.getParameter("result");
	%>

	<!-- login -->
	<div class= "content">
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


		<!--  <c:if test = "${vo!=null}"> 
               <label>${vo.member_email}님 방문을 환영합니다.</label>-->
		<!--  <button type="submit" class="btn btn-default" onclick="logout.do">로그아웃</button>-->
		</c:if>
		<div class="col-md-6 grid-margin stretch-card">
			<div class="progress-bar"
				style="width: 65%; margin-top: 16%; margin-left: 18%;">
				<div class="ldBar"
					data-stroke="data:ldbar/res,gradient(0,1,#f99,#ff9)"
					data-type="fill" style="margin-top: 40%;">
					<svg xmlns:xlink="http://www.w3.org/1999/xlink"
						preserveAspectRatio="xMidYMid" width="100%" height="100%"
						viewBox="5.5 3.5 89 13">
         <defs>
            <filter id="ldBar-2b78fe717ea45-filter" x="-1" y="-1"
							width="3" height="3">
               <feMorphology operator="dilate" radius="3">

               </feMorphology>
                  <feColorMatrix
							values="0 0 0 0 1    0 0 0 0 1    0 0 0 0 1    0 0 0 1 0"
							result="cm">
            </feColorMatrix>

            </filter>
            <mask id="ldBar-2b78fe717ea45-mask">
               <image xlink:href=""
							filter="url(#ldBar-2b78fe717ea45-filter)" x="0" y="0" width="100"
							height="100" preserveAspectRatio="xMidYMid"></image>
            </mask>
            <g>
               <mask id="ldBar-2b78fe717ea45-mask-path">
                  <path d="M10 10L90 10M90 8M90 12" fill="#fff"
							stroke="#fff" filter="url(#ldBar-2b78fe717ea45-filter)"></path>
               </mask>
            </g>
            <clipPath id="ldBar-2b78fe717ea45-clip">
               <rect class="mask" fill="#000"></rect>
            </clipPath>
            <pattern id="ldBar-2b78fe717ea45-pattern"
							patternUnits="userSpaceOnUse" x="0" y="0" width="150"
							height="150">
               <image x="0" y="0" width="150" height="150"
							xlink:href="./resources/123123.svg"></image>
            </pattern>
         </defs>
         <g>
            <path d="M10 10L90 10M90 8M90 12" fill="none"
							class="baseline" stroke="#ddd" stroke-width="0.5"></path>
         </g>
         <g>
         
            <!-- stroke-dasharray 부분 40:80이라고 하면 50%정도  -->
            

               <path d="M10 10L90 10M90 8M90 12" id="#one"
							class="mainline1" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="6 80" style="display:none"></path>
            <!-- 클릭 두번할 때 마다 바 길이 조정 -->   
                <path d="M10 10L90 10M90 8M90 12" id="#two"
							class="mainline2" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="11 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="17 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="24 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="29 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="33 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="37 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="42 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="47 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="52 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="57 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="63 80" style="display:none"></path>
               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="68 80" style="display:none"></path>

               <path d="M10 10L90 10M90 8M90 12" id="#three"
							class="mainline3" clip-path="" fill="none" stroke-width="3"
							stroke="url(#ldBar-2b78fe717ea45-pattern)"
							stroke-dasharray="80 80" style="display:none"></path>

                
               
         </g>
      </svg>


					<div class="ldBar-label" style="color: black" align="center">



						<div class="ldBar"
							data-stroke=" data:ldbar/res, gradient(0,1,#f99,#ff9) "></div>

					</div>
				</div>


			</div>


			<form action="http://127.0.0.1:5003/messages" method="POST">
				<div class="card-body">

					<div id="train_text_div"
						style="color: black; font-family: 'Gowun Dodum', sans-serif;">
						<span
							style="color: black; font-family: 'Gowun Dodum', sans-serif;">지금부터
							화면에 나오는<br> 글자를 읽어주세요
						</span>
					</div>
				</div>
			</form>

			<form action="http://127.0.0.1:5003/messages" method="POST">
				<div class="card-body3" style="text-align: center;">

					<div id="list_number"
						style="color: black; font-family: 'Gowun Dodum', sans-serif;">
						<span
							style="color: black; font-family: 'Gowun Dodum', sans-serif; text-align =center font-size : larger; font-weight: bold;"></span>
					</div>
				</div>
			</form>


			<div class="card-body2" style="margin-top: 330px">
				<div class="card-body3" style="margin-top: 5px; text-align: center;">

					<span style="color: black; font-family: 'Gowun Dodum', sans-serif;">5초
						안에 읽어주세요</span><br> <span
						style="color: black; font-family: 'Gowun Dodum', sans-serif;">띄어쓰기를
						유의해서 읽어주세요</span>
				</div>
			</div>





		</div>
		<div class="frame">
			<input type="checkbox" id="cb-1" name="cb" class="checkbox" value="1">
			<label for="cb-1" class="label"></label>
			<div class="microphone" id="microphone">
				<svg width="60px" height="60px" viewBox="0 0 100 100"
					id="microphone" onclick="count(&quot;plus&quot;)">
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
<script src="./resources/js/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main.js"></script>
<script src="./resources/js/record_train.js"></script>
<script src="./resources/js/menu_bar.js"></script>




<!-- <script src="./resources/js/stt.js"></script> -->




</html>