<%@page import="kr.smhrd.domain.WordVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./resources/css/main.css">
<link rel="stylesheet" href="./resources/css/menu.css">
<link rel="stylesheet" href="./resources/css/list.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css"
	href="./resources/css/loading-bar.css">
<link rel="stylesheet" type="text/css"
	href="./resources/css/loading-bar.min.css">
<link rel="stylesheet" type="text/css" href="./resources/css/input.css">
<link rel="stylesheet" type="text/css"
	href="./resources/css/menu_bar.css">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<!-- <script src="js/stt.js"></script> -->

<%
	//String data = request.getParameter("vo");
List<WordVO> list = (List<WordVO>) request.getAttribute("vo");
%>
</head>
<style>
rect#progress {
	transition: all 10s linear;
}
</style>

<body>

	<!-- login -->
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

				<script type="text/javascript"
					src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


				<div class="allWrap">
					<div class="tabBox">
						<p class="tab-link current" data-tab="tab-1"
							style="font-family: 'Gowun Dodum', sans-serif;">
							<span><img src="http://mmctxt.com/link/img/icon01.png"
								alt="icon" /></span> 학습완료
						</p>
						<p class="tab-link" data-tab="tab-2"
							style="font-family: 'Gowun Dodum', sans-serif;">
							<span><img src="http://mmctxt.com/link/img/icon02.png"
								alt="icon" /></span> 추가학습
						</p>
					</div>
					<div id="tab-1" class="tab-content current">
						<div class="search_wrap">
							<div class="search">

								<input type="text" class="searchTerm s_sted" placeholder="단어 찾기"
									style="font-family: 'Gowun Dodum', sans-serif;">
								<button type="submit" class="searchButton" onclick="sted_word()">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
						<div id="find_result"
							style="color: black; font-size: medium; margin-top: -20px;"></div>
						<c:forEach var="vo" items="${list}">
							<c:forEach var="w" items="${fn:split(vo.sted_word,'|')}">
								<button type="button" class="button b_sted"
									onclick="cssChange()">
									<a
										style="font-size: 16px; font-family: 'Gowun Dodum', sans-serif;">${w}</a>
								</button>
							</c:forEach>
						</c:forEach>
					</div>

					<div id="tab-2" class="tab-content">
						<div class="search_wrap">
							<div class="search">
								<!-- mini's form -->

								<input id="word" type="text" class="searchTerm s_stwi" placeholder="단어 추가"
									;" style="font-family: 'Gowun Dodum', sans-serif;">
								<button id="word_button" type="button" class="searchButton" onclick="word_add()">추가</button>
							</div>
						</div>
						<c:forEach var="vo" items="${list}">
							<c:forEach var="a" items="${fn:split(vo.stwi_word,'|')}">
								<button class="button b_stwi">
									<a style="font-size: 16px; font-family: 'Gowun Dodum', sans-serif;">${a}</a>
								</button>
							</c:forEach>
						</c:forEach>



					</div>
					<script>
					function word_add() {                                      
						$( '.search_wrap' ).after( '<button class="button b_sted onclick="cssChange()"><a style="font-size: 16px; font-family: "Gowun Dodum", sans-serif;">'+document.getElementById('word').value+'<a></button>' );
					}
					
						function sted_word() {
							var s_word = $(".s_sted").val();
							var b_word = $(".b_sted");
							var study = false;
							for (var i = 0; i < b_word.length; i++) {
								if (b_word[i].querySelector('a').innerText == s_word) {
									study = true;
								} else {
									continue;
								}
							}
							if (study) {
								document.getElementById("find_result").innerHTML = "학습한 단어 입니다.";
								/* alert("학습한 단어 입니다."); */
							} else {
								document.getElementById("find_result").innerHTML = "학습한 단어가 아닙니다.";
								/* alert("학습한 단어가 아닙니다."); */
							}
						}
					</script>

					<<<<<<< HEAD

					<script>
						$(".b_stwi").click(function() {
							$(this).toggleClass("active");
						});
						/*function cssChange() {
						   var x = document.getElementById("change1");
						   x.style.color = "blue";
						=======
						>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-New-Bigdata-1/Squirm.git

						<<<<<<< HEAD
						}*/
						
					</script>
					======= >>>>>>> branch 'master' of
					https://github.com/2021-SMHRD-KDT-New-Bigdata-1/Squirm.git
					<script>
						$(".tab-link").click(function() {
							var tab_id = $(this).attr("data-tab");

							$(".tab-link").removeClass("current");
							$(".tab-content").removeClass("current");

							$(this).addClass("current");
							$("#" + tab_id).addClass("current");
						});
					</script>

					<style>
.allWrap {
	width: 100%;
	margin: 0 auto;
}

.tabBox {
	margin: 50px 0;
}

.tab-link {
	margin-left: 10px;
	width: 40%;
	display: inline-block;
	padding: 10px;
	text-align: center;
	background-color: #929090;
	border-radius: 20px;
	color: #fff;
	cursor: pointer;
}

.tab-link.current {
	background-color: #4b49ac;
	font-weight: 600;
}

.tab-content {
	display: none;
	height: 367px;
	overflow-y: auto;
}

.tab-content.current {
	display: block;
	width: 100%;
	height: 100%;
	font-size: 10px;
	text-align: center;
	padding-top: 20px;
	height: 367px;
	overflow-y: auto;
}

.button {
	border-radius: 27px;
}

.tab-content.tab-content::-webkit-scrollbar {
	width: 8px;
	height: 8px;
	scroll-behavior: smooth;
}

.tab-content.tab-content::-webkit-scrollbar-thumb {
	background-color: #b39df6;
	border-radius: 8px;
}

.tab-content.tab-content::-webkit-scrollbar-track {
	background-color: grey;
	border-radius: 8px;
	box-shadow: inset 0px 0px 5px white;
}
</style>




					<div class="frame">

						<p href="" id="gotrain"
							style="font-size: 20px; font-family: 'Gowun Dodum', sans-serif;">
							<strong>학습시키기</strong></strong>
						</p>
					</div>
				</div>
			</div>
</body>
<script type="text/javascript">
	var header = document.getElementById('gotrain');
	header.onclick = function() {
		var t = ''
		$.each($('.b_stwi.active>a'), function(i, e) {
			t += e.innerText + " "
		})
		location.href = 'train2.do?t=' + t
	}
</script>


<script src="./resources/js/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main.js"></script>
<!--<script src="./resources/js/record_train.js"></script>-->
<script src="./resources/js/menu_bar.js"></script>

<!-- <script src="./resources/js/stt.js"></script> -->




</html>