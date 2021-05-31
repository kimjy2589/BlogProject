<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<form action="#">
			<aside class="single_sidebar_widget">
				<div>
					<button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" id="btnWriteForm" onclick="post(${category_id})" type="button">POST</button>
				</div>
			</aside>
		</form>
		<aside class="single_sidebar_widget post_category_widget">
	  		<div class="widget_title" style="color: #2d2d2d; font-weight: 500">Category &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="button rounded-0 primary-bg text-white w-20 btn_1 boxed-btn" style="height: 50%" type="submit">EDIT</button>
	  		</div>
	  		<ul class="list cat-list">
	  			<c:forEach var="category_list" items="${category_list }">
	  				<li><a href="/post/getList?category_id=${category_list.category_id }" class="d-flex">
	  					<p>${category_list.category_name }</p></a></li>
	  			</c:forEach>
		   	</ul>
		</aside>
		<aside class="single_sidebar_widget newsletter_widget">
	  		<h4 class="widget_title" style="color: #2d2d2d;">Newsletter</h4>
			<form action="#">
				<div class="form-group">
	    			<input type="email" class="form-control" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required>
	            </div>
				<button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
					type="submit">Subscribe</button>
	       	</form>
	    </aside>
		<aside class="single_sidebar_widget post_category_widget" >
	  		<h4 class="widget_title" style="color: #2d2d2d; margin-bottom: 20px;">Guest</h4>
	  		<label style="font: 20px;">Total : <%=session.getAttribute("totalCount") %></label> <br />
			<label style="font: 20px;">Today : <%=session.getAttribute("todayCount") %></label>
		</aside>
	</div>
</div>