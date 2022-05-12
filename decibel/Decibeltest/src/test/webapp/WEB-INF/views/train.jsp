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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css" href="./resources/css/loading-bar.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/loading-bar.min.css" />
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


<!-- <script src="js/stt.js"></script> -->


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
			<div class="col-md-6 grid-margin stretch-card">
				<div class="progress-bar"
					style="width: 65%; margin-top: 16%; margin-left: 18%;">
					<div class="ldBar"
						data-stroke="data:ldbar/res,gradient(0,1,#f99,#ff9)">
						<svg xmlns:xlink="http://www.w3.org/1999/xlink"
							preserveAspectRatio="xMidYMid" width="100%" height="100%"
							viewBox="5.5 3.5 89 13">
                <defs>
                    <filter id="ldBar-e4f33f9cbd2fc-filter" x="-1"
								y="-1" width="3" height="3">
                        <feMorphology operator="dilate" radius="3">

                        </feMorphology>
                        <feColorMatrix
								values="0 0 0 0 1    0 0 0 0 1    0 0 0 0 1    0 0 0 1 0"
								result="cm">

                        </feColorMatrix>
                    </filter>
                    <mask id="ldBar-e4f33f9cbd2fc-mask">
                            <image xlink:href=""
								filter="url(#ldBar-e4f33f9cbd2fc-filter)" x="0" y="0"
								width="100" height="100" preserveAspectRatio="xMidYMid">
                                
                            </image>
                        </mask>
                        <g>
                            <mask id="ldBar-e4f33f9cbd2fc-mask-path">
                                <path d="M10 10L90 10M90 8M90 12"
								fill="#fff" stroke="#fff"
								filter="url(#ldBar-e4f33f9cbd2fc-filter)">

                                </path>
                            </mask></g>
							<clipPath id="ldBar-e4f33f9cbd2fc-clip">
                            <rect class="mask" fill="#000"></rect></clipPath>
                            <pattern id="ldBar-e4f33f9cbd2fc-pattern"
								patternUnits="userSpaceOnUse" x="0" y="0" width="150"
								height="150">
                            <image x="0" y="0" width="150" height="150"
								xlink:href="./resources/123123.svg"></image>
                            </pattern></defs>
                            <g>
                            <path d="M-50 10L150 10M150 8M150 20"
								fill="none" class="baseline" stroke="#ddd" stroke-width="2.0"></path></g>
							<g>
                            <path d="M-50 10L10 10M10 8M150 20"
								class="mainline" clip-path="" fill="none" stroke-width="4"
								stroke="url(#ldBar-e4f33f9cbd2fc-pattern)"
								stroke-dasharray="40 41">
                            
            </path>
        </g>
    </svg>


						<div class="ldBar-label" style="color: black" align="center">
							<div id='result'>0</div>


						</div>
					</div>


				</div>
			</div>
	
			
			<div class="frame">
				<input type="checkbox" id="cb-1" name="cb" class="checkbox"
					value="1"> <label for="cb-1" class="label"></label>
				<div class="microphone">
					<svg width="85px" height="85px" viewBox="0 0 100 100"
						id='microphone' onclick='count("plus")'>
                <circle class="circle" cx="50" cy="50" r="47" />
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
 <script src="./resources/js/stt.js"></script>

<script type="text/javascript" src="./resources/js/loading-bar.js"></script>
</html>