<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>휴가 신청</title>
<link href="css/gyeoljae.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 </head>
  <script type="text/Javascript">
    $(function(){ init(); });
    function init(){
    	$("[name='dayOffForm']").hide();
    }
    
   /* controller 제출 누르면 사용할 함수.
   function dayOffForm(){
		document.dayOffForm.submit();
    } */   

    function showPopup(){
    	$("[name='dayOffForm']").show();
    	
		/* var formObj = $("[name='dayOff']");
		if( confirm("신청 하시겠습니까?")==false ) { return; }
		
		ajax(
				"/dayoff.do"
				,"post"
				,formObj
				,function(responseJson){
					var DayoffRegCnt = responseJson["DayoffRegCnt"]; 
					if( DayoffRegCnt==1 ){
						alert("신청이 완료되었습니다.");
						dayOffForm();
					}
					else{
						alert( "신청에 실패하였습니다. 잠시 후에 시도해주세요.");
					}
				}
		); */
    }
 </script>
 
 </head>
 <body>
 		<form class="header">
        <div class="header_box">
          <div class="logo" onclick="location.replace('/adminMain.do')">
            <img src="">
            <div>
              ERP
            </div>
          </div>
          <table>
            <tr class="cate_box">
              <td class="main_cate" onclick="location.replace('/classList.do')">수업 관리(출석)</td>
              <td class="main_cate" onclick="location.replace('/stuList.do')">학생 관리</td>
              <td class="main_cate" onclick="location.replace('/dayOff.do')">휴가 신청</td>
              <td class="main_cate" onclick="location.replace('/searchDispatch.do')">시험 출제</td>
	          <td class="main_cate active" onclick="location.replace('/gyeoljaeList.do')">근태 관리</td>
            </tr>
          </table>
 
        </div>
        </form>
        <form name= "dayoffForm" class="header">
        <header>
        </header>
        <div>신청 목록</div>
        <div>결재 상태</div>
        
        <input type = "button" value="휴가 신청 버튼" onClick="showPopup()">
        
        
        </form>
    <form name="dayOffForm" class="header">
    <header>
    	<div>신청 일자</div>
    </header>
      <div>
          <td>휴가 시작일</td>
          <td>
             <input type="date" name="start_date">
          </td>&nbsp;~&nbsp;  
           <td>휴가 종료일</td>
           <td>
              <input type="date" name="end_date">
           </td>
           
     	   <div>
     	   <td>휴가 종류</td>
      	   <br>
     	    <select name="dayoffKind">
     	    <option value="">	
			<option value="연차">연차
			<option value="반차">반차
			<option value="휴가">휴가
			<option value="병가">병가
			<option value="휴직">휴직
			<option value="기타">기타
			</select>
     	    
     	   </div>
     	   <br>
    
    
   <div style="border:1px solid blue; width:800px; height:700px">
   <header>신청 내용</header>
   <hr>
   <table>
      <tr>
         <td>직원(강사)이름 :</td>
         <td>
            <input type="text">
         </td>
      </tr>
      
      <tr>
         <td>내용 :</td>
         <td>
            <textarea cols="100" rows="15"></textarea>
         </td>
      </tr>
      
      <tr>
         <td>사유 :</td>
         <td>
            <textarea cols="100" rows="15"></textarea>
         </td>
      </tr>
      </table>
   </div> <br>
   <div>
    	<input type="button" value="취소">
    	<input type="button" value="제출">
   </div> 
  </form>
   <form name="dayOffForm" method="post" action="/dayOff.do">
     
    </form> 
 </body>
 </html>