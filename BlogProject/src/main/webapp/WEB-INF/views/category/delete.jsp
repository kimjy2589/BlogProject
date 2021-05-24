<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 목록</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// 삭제 클릭 시
		$("#delete").click(function(){
			if($(':radio[name="category_id"]:checked').length < 1) {
				alert('카테고리가 존재하지 않습니다.');
			} else{
				
				var warning = confirm('정말 삭제 하시겠습니까?');
				if(warning) {
					// yes
					$('#delList').submit();
					alert('삭제되었습니다.');
				} else {
					// no
					alert('삭제가 취소되었습니다.');
				}				
			}
		});
	});		// 삭제 클릭시 확인창 출력
	
	$(document).ready(function(){		// 페이지가 로딩되면서 실행
		$('form[name="create"]').bind('submit', function(){		// form을 submit 하기 전에 이벤트
			if($('input[name="category_name"]').val()==''){		// input value가 빈값 일 경우
				alert('카테고리명을 입력해주세요.');
				$('input[name="category_name"]').focus();		// 해당 input에 focus
				
				return false;
			}
		})
	})		// 폼 전송하기 전에 bind로 이벤트가 발생하면서 submit 이벤트 전에 실행
	
	$(document).ready(function(){
		$('modify').click(function(){
			location.href = 'category/modify.jsp';
		});
	});
	
	// 수정 페이지로 이동
	function modifyView(category_id){
		var url = "${pageContext.request.contextPath}/category/modify";
		url = url + "?category_id="+category_id;
		location.href = url;
	}

</script>
</head>
<body>
<form action="./create" name="create" method="post">
		<fieldset>
			<legend>카테고리 에디터</legend>
			카테고리명 : <input type="text" name="category_name"><br />  
			<input type="submit" value="생성" />
		</fieldset>
</form>

<h2>카테고리 목록</h2>
<form action="./delete" method="post" id="delList">
<input type="button" id="delete" value="삭제"/>
	<table>
		<thead>
			<tr>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty CategoryList }" >
					<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
				</c:when> 
				<c:when test="${!empty CategoryList}">
					<c:forEach var="cdto" items="${CategoryList}">
						<tr> 
						 	<!-- checked="checked" 사용시 defualt 값 없이 자동으로 체크 -->
							<td><input type="radio" name="category_id" value="${cdto.category_id}" checked="checked"/><c:out value="${cdto.category_id}"/></td>
							<td><a href="#" onclick=""><c:out value="${cdto.category_name}"/></a></td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
		</tbody>
	</table>
</form>
</body>
</html>
