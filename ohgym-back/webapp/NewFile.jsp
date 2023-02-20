<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/setting.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/header.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/footer.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/userOut.css">
</head>
<body>
<div class="container">
        <header>
            <div id="menu">
                <div id="logo">
                    <a href="../html/mainPage.html"><img src="../img/logo.png" alt="logo"></a>
                </div>
                <div id="menu-bar">
                    <a href="">고수매칭</a>
                    <a href="../html/search.html">고수찾기</a>
                    <a href="">커뮤니티</a>
                    <input type="search" placeholder="어떤 서비스가 필요하세요?">
                </div>
                
                <div id="login">
                    <a href="../html/login.html">로그인</a>
                    <a href="../html/signup.html">회원가입</a>
                    <input id="teacher-join" type="submit" value="고수가입">
                </div>
            </div>
        </header>
        <!-- 메인 태그 안에다 내용 작성 -->
        <main>
            <div id="userChangeTitle">
                <h2>회원정보수정</h2>
            </div>
            <form method="get" id="signup-form" action="../html/test.html" class="infochange">
                <h4> 아이디 </h4>
                <input type="text" id="userId" value="" readonly />
                <h4> 비밀번호 </h4>
                <input type="text" id="userPassword" value="">
                <h4> 비밀번호 재확인 </h4>
                <input type="text" id="userPasswordTest" value="">
                <h4> 이름</h4>
                <input type="text" id="userName" value="">
                <h4> 전화번호 </h4>
                <input type="text" id="userPhone" value="">
                <h4> 생년월일 </h4>
                <div class="field gender" style="width: 100%; height: 80px;">
                    <div>
                        <label><input type="radio" id="man" name="gender" value="남" >남자</label>
                        <label><input type="radio" id="woman" name="gender" value="여">여자</label>
                    </div>
                    <div>
                        <input type="date" id="userBirthday" value="">
                    </div>
                </div>
                <input type="submit" id="submit" value="수정">
            </form>
            
            <!-- <div id="submit">
                <button>수정</button>
            </div> -->
            <div style="display: flex;justify-content: space-evenly;">
                <button id="showOut">계정 탈퇴</button>
            </div>

            <div class="background">
                <div class="window">
                    <div class="popup">
                        <img id="popupImg" src="../img/logo.png" alt="logo"></a>

                        <p id="out">떠나실 건가요?</p>
                        <p id="context">계정 탈퇴 시 모든 개인정보가 삭제되며<br>
                            삭제된 데이터는 다시 복구할 수 없습니다. </p>
                        <button id="close">다시 생각해 볼게요</button><br>
                        <button id="userout">계정탈퇴</button>

                    </div>
                    <div>
                        <div></div>
                    </div>
                </div>
            </div>
        </main>

        <footer>
            <div class="business-info">
                <p>고객상담센터</p>
                <p id="phone-num">070-012-3456</p>
                <p id="buisness-hour">평일 09:30 ~ 17:30 (점심11:30 ~ 13:00)</p>
            </div>
            <div class="footer-logo">
                <img src="../img/logo2.png" alt="logo">
            </div>
            <div class="footer-text">
                <ul>
                    <li id="li1"><a href="#">회사소개</a></li>
                    <li><a href="#">개발자소개</a></li>
                    <li><a href="#">서비스 이용약관</a></li>
                    <li><a href="#">개인정보 처리방침</a></li>
                    <li><a href="#">영상정보 처리방침</strong></a></li>
                    <li><a href="#">사이트맵</a></li>
                    <li><a href="#">전자공고</a></li>
                    <li><a href="#">광고문의</a></li>
                    <li><a href="#">고객의 소리</a></li>
                </ul>
            </div>
            <div class="footer-info">
                <p id="company-name">(주) 오짐</p>
                <p>대표이사 : 김경태&nbsp;&nbsp;&nbsp;&nbsp;주소 : 부산 부산진구 중앙대로 749 혜도빌딩 4층
                    그린컴퓨터아카데미&nbsp;&nbsp;&nbsp;&nbsp;사업자등록번호 : 000-00-00000</p>
                <address>
                    Copyright© All Right Reserved
                </address>
            </div>
        </footer>
    </div>
</body>
<script src="<%=request.getContextPath()%>/js/infochange.js"></script>
</html>