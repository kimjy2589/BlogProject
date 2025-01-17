<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">

	$(document).ready(function() {
		
		$('#btnWriteForm').on('click', function post() {
			location.href = "/post/postForm"
		});

	});
</script>
<div class="col-lg-4">
	<div class="blog_right_sidebar">
		<aside class="single_sidebar_widget search_widget">
			<form action="#">
            <div class="form-group">
               <div class="input-group mb-3">
                  <input type="text" class="form-control" placeholder='Search Keyword' id="keyword">
                   </div>
               </div>
               <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" id="btnSearch">Search
               </button>
           </form>
		</aside>
		
		<c:if test="${!empty udto.user_id && udto.user_id eq user_id }">
		<form action="#">
			<aside class="single_sidebar_widget">
				<div>
					<button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" id="btnWriteForm" onclick="post()" type="button">POST</button>
				</div>
			</aside>
		</form>
		</c:if>
		<aside class="single_sidebar_widget post_category_widget">
	  		<div class="widget_title" style="color: #2d2d2d; font-weight: 500">Category
				<c:if test="${!empty udto.user_id && udto.user_id eq user_id }">
		  			<a href="/category/edit" style="color: black;">
		  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
	  					<path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
	  					<path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
					</svg>
					</a>
				</c:if>
	  		</div>
	  		<ul class="list cat-list">
	  			<c:forEach var="category_list" items="${category_list }" >
	  				<li><a href="/post/getList?category_id=${category_list.category_id }&user_id=${category_list.user_id }">${category_list.category_name }</a></li>
	  			</c:forEach>
		   	</ul>
		</aside>
		<c:if test="${udto ne null }">
			<aside class="single_sidebar_widget post_category_widget" >
		  		<h4 class="widget_title" style="color: #2d2d2d; margin-bottom: 20px;">Guest</h4>
				<label style="font: 20px;">Total : <c:out value="${sessionScope.totalCount }"></c:out></label> <br />
				<label style="font: 20px;">Today : <c:out value="${sessionScope.todayCount }"></c:out></label>
			</aside>
		</c:if>
		<aside class="single_sidebar_widget post_category_widget" >
	  		<a href="/profile/allList"><h4 class="widget_title" style="color: #2d2d2d; margin-bottom: 20px;">Member</h4></a>
	  		<c:forEach var="userlist" items="${bloglist }">
	  			<label style="font: 20px; "><a href="/post/homeList?user_id=${userlist.user_id }&blog_id=${userlist.blog_id}" style="color: black;">${userlist.user_id }</a></label> <br />
	  		</c:forEach>
		</aside>
	</div>
</div>