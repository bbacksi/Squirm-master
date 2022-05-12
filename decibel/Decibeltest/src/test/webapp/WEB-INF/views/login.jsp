 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
  
    <script type = "text/javascript">
  	$(document).ready(function(){
  		$("#btn_join").click(function(){
  			if( $.trim($("#member_email").val()) == ""){
  				alert("이메일 주소를 입력해 주세요");
  				return;
  			}
  			if( $.trim($("#member_pw").val()) == ""){
  				alert("비밀번호를 입력해 주세요");
  				return;
  			}
  			$("#joinform")
  		})
  		
  	});
  
  </script>
  
  <!-- login -->
    <div class="content">
      <div class="container">
        <!-- <img class="bg-img" src="https://mariongrandvincent.github.io/HTML-Personal-website/img-codePen/bg.jpg" alt=""> -->
          <div class="menu">
            <a href="#connexion" class="btn-connexion"><h2>로그인</h2></a>
            <a href="#enregistrer" class="btn-enregistrer active"><h2>회원가입</h2></a>
          </div>
          <hr id="menu_hr">
          <div class="connexion">
            <div class="contact-form">
              <label>이메일</label>
              <input placeholder="" type="text" name = "member_email" id = "member_email">
            
              
              <label>비밀번호</label>
              <input placeholder="" type="password" name = "member_pw" id = "member_pw">
              
              <div class="check">
                <label>				
                  <input id="check" type="checkbox" class="checkbox" >
                    <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                      <path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                      <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                    </svg>
                </label>
                <h3>로그인 유지</h3>
              </div>
              
              <input class="submit" value="로그인" type="submit">
            </div>
            
            <hr>
            <a href="https://www.grandvincent-marion.fr/" target="_blank"><h4>비밀번호를 잊으셨나요?</h4></a>
          </div>
          
          <!-- 회원가입 -->
          <form action = "main.do" id = "joinform">
          <div class="enregistrer active-section">
            <div class="contact-form">
           
              <label>이메일</label>
              <input placeholder="" type="text" id = "member_email" name = "member_email">	
              
              <label>비밀번호</label>
              <input placeholder="" type="text" id = "member_pw" name = "member_pw">
              
              <div class="check">
                <label>				
                  <input id="check" type="checkbox" class="checkbox">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                      <path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                      <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
                    </svg>
                </label>
                <h3>동의하기</h3>
              </div>
              
              <input class="submit" value="회원가입" type="submit" id = "btn_join">	
                
            </div>
          </div>
          </form>
      </div>
    
    </div>

    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="resources/js/main.js"></script> 
    
    </body> 
</html>