<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../include/header.jsp"></jsp:include>
    <link rel="stylesheet" href="../../resources/css/qna/qna.css">
    <link rel="icon" type="image/png"  href="../../resources/img/favicon.png"/>
    <script src="../../js/qna.js"></script>
	<title>TeraMetal</title>
</head>
<body>
  <div class="login_back">
		<div class="inner_case">
			<c:if test="${sessionScope.partner.id==null}">
               <span class="login_start" style="font-weight: 600;font-size: 0.9rem;left:82%">
                    <a href="../../login/">Login</a>
                </span>
            </c:if>
               	<c:if test="${sessionScope.partner.id !=null}">
						<span class="login_start">
						${sessionScope.partner.id}&nbsp;님 환영 합니다
								 |
								<a href="../../logout">로그아웃</a>
						</span>
				</c:if>
		</div>
	</div>
    <div class="manu_back">
        <div class="inner_case">
        <a href="../../"><div class="logo"></div></a>
            <div class="move_menu">
                <a href="../greeting/">회사소개</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../product1/">제품정보</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../">고객지원</a>
            </div>
        </div>
    </div>
    <div class="main_photo_back">
        <div class="main_text_1">ABOUT COMPANY</div>
        <div class="main_text_2">고객지원</div>
    </div>
    
    <div class="drop_manu">
   
        <div class="inner_case" style="display: flex;">
           <a href="../"><div class="dropdown_img"></div></a>
            <div class="menu">
               <div class="dropdown">
               		<div class="photo photob"></div>
                    <div class="dropdown_main_3">고객지원</div>
               		<div class="dropdown_main_1">회사소개</div>
               		<div class="dropdown_main_2">제품정보</div>
   		        </div>
   		        <div class="dropdown_sub_3">
   		           	 <div class="photo dropdown_subC"></div>
   		      		 <div class="dropdown_sub_3_4">Q&A</div>
   	        		 <a href="../../notice/"><div class="dropdown_sub_3_1">공지사항</div></a>
    	      		 <a href="../../fnq/"><div class="dropdown_sub_3_2">F&Q</div></a>
   		      		 <a href="../../info/"><div class="dropdown_sub_3_3">자료실</div></a>
       		    </div>
    	        <div class="dropdown_sub_1">
    	        <div class="photo"></div>
     	      		 <a href="../../greeting/"><div class="dropdown_sub_1_1">인삿말</div></a>
     	     		 <a href="../../history/"><div class="dropdown_sub_1_2">회사연혁</div></a>
       		  		 <a href="../../division/"><div class="dropdown_sub_1_3">부서안내</div></a>
      		   		 <a href="../../patent/"><div class="dropdown_sub_1_4">인증특허</div></a>
     	    		 <a href="../../road/"><div class="dropdown_sub_1_5">오시는길</div></a>
     	       </div>
     	       <div class="dropdown_sub_2">
     	       <div class="photo"></div>
      	     		 <a href="../../product1/"><div class="dropdown_sub_2_1">형관</div></a>
       		   		 <a href="../../product2/"><div class="dropdown_sub_2_2">프레스</div></a>
         			 <a href="../../product3/"><div class="dropdown_sub_2_3">철근</div></a>
         			 <a href="../../product4/"><div class="dropdown_sub_2_4">강관</div></a> 
            	</div>
            	   		        
            </div>
        </div>
        
    </div>
    
    
 <div class="lock">  
    <div class="title_1">
        <div class="inner_case">
            <div class="sub_text2">Q&A</div>
            <div class="sub_text1">(주)테라금속의 <span style="color: #336699; font-weight: 700;">Q&A</span> 입니다.</div>
        </div>
    </div>

    <div class="inner_case">
        <div class="title">${item.qnaName}</div>
        <div class="title_sub">
            등록일 <span class="value">${item.qnaDate}</span> 등록자 <span class="value">${item.id}</span>
        </div>
        <div class="info">${item.qnaInfo}</div>
        <div class="info_answer">답변 내용</div>
        <div class="info_answer_info">${item.answer}</div>
        <div class="button"><a href="../"><button class="back_button">목록보기</button></a></div>
      		

    </div>
</div>

<div class="lock_case">
	<div class="lock_text">
		<form id="lock_form">
		<label>비밀번호 입력:</label>
		<input type="hidden" id="lock_qna"name="lock_qna" value="${item.qna}">		
		<input type="password" id="lock_passwd"name="lock_passwd" class="lock_passwd">
		<button type="button" id="lockdown" class="btn btn-primary lockdown">잠금 해제</button>
		</form>
	</div>
	<div class="lock_text_2">
		<a href="../"><button class="btn btn-primary">이전으로 돌아가기</button></a>
	</div>
</div>


    <div class="bottom">
        <!--고객센터-->
        <hr class="lhr5">
        <hr class="lhr5_1">
        <div class="inner_case_bottom">
            <div class="bottom_text_1">고객센터</div>
            <div class="bottom_text_2">평일 08:00 ~ 19:30, 토요일,공휴일
                휴무&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;02-1234-5678&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;customer@terametal.co.kr</div>
            <div class="bottom_text_3">상호 : (주)테라금속&nbsp;&nbsp;&nbsp; 대표자 : 이재성<br>
                주소 : 대전광역시 동구 우암로 352-21 (주)테라금속

                <br><br>사업자 등록번호 : 123-45-6789<br>TEL : 02-1234-5678 Email : customer@terametal.co.kr
            </div>
            <div class="bottom_text_4">© Tera Metal Co., Ltd All rights reservedv.</div>
        </div>

    </div>


    <jsp:include page="../include/body.jsp"></jsp:include>
</body>
</html>