<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>sampleList</title>
</head>
<body>
<h2>게시판 목록</h2>
<table style="border:1px solid #ccc">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">아이디</th>
            <th scope="col">이름</th>
            <th scope="col">거부사유 코드</th>
            <th scope="col">거부사유</th>
            <th scope="col">허용 여부</th>
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
            list : ${list[0] } 
                <c:forEach items="${list }" var="item">
                    <tr id="statusLogIdx"  data-value="${item.adm_id }" name="tr" style="cursor:pointer;">
                        <td align=center>${item.adm_id }</td>
                        <td align=center>${item.name }</td>
                        <td align=center>${item.reject_reason_code }</td>
                        <td align=center>${item.reject_reason }</td>
                        <td align=center>${item.permit_yn }</td>
                    </tr>
                    <!-- 클릭하면 뜸 -->
	                <tr id="${item.adm_id }" value="${item.adm_id }" name="trr" style="display:none;" >
	                <td style="width:100%; background-color: #D4F4FA;" colspan="6"> 
	                    <table>
<!-- 	                        <thead>
	                            <tr>
	                            <th>메모</th>
	                            </tr>
	                        </thead> -->
	                        <tbody>
                                <tr>
                                     <!-- 값이 null이면 '-', 아니면 값 그대로 노출 -->
                                    <td><c:if test="${item.memo == null}">-</c:if><c:out value="${item.memo }"/></td>
                                </tr>
	                        </tbody>
	                    </table>
	                </td>
	               </tr>
               </c:forEach>
           </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
         
    </tbody>
</table>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(document).ready(function(){ 
	
/*     $('#statusLogIdx').on('click',function(){
    	var con = document.getElementById("sub").style.display;
    	alert(con);
    	if(con == 'none'){
    		con == 'block';
    	} else{
    		con == 'none';
    	}
    }); */
}); 
     //삽질이 길다
	$('tr[name=tr]').click(function(){
	    var tt = $('tr[name=trr]').index($(this));
	    var ttq = $(this).index();
	    var idx = $(this).val();
	    var chDate = '${list[0] }';
	    var id = $(this).attr('data-value');
	    
        console.log($(this).attr('data-value'));
        
        var con = $('tr[id='+$(this).attr('data-value')+']').css("display");
        if(con == 'none'){
        	 $('tr[id='+$(this).attr('data-value')+']').css("display","");
        } else{
        	 $('tr[id='+$(this).attr('data-value')+']').css("display","none");
        } 
	});
	


	document.write("자바스크립트? 뀨");
</script>
</body>
</html>

