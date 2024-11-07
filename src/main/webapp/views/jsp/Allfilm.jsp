<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ include file="/common/cssboostrap.jsp"%>

<div class="video-banner">
	<iframe width="100%" height="560px" style="border-radius: 20px"
		src="https://www.youtube.com/embed/DE8Z1IUxY54?si=ypWXhDbN9h25Gy76" 
		title="YouTube video player" frameborder="0"
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
		allowfullscreen></iframe>
</div>

<h2 id="action">
	<a href="HomePageController?page=1&genre=1" style = "text-decoration: none; display: block;">Phim Hành Động</a>
</h2>
<c:url var="app" value="/app" />
<div class="row film">
	<c:choose>
		<c:when test="${ not empty filmaction }">
			<c:forEach var="item" items="${filmaction }">
				<div class="col-md-3">
					<div class="card">
						<img src="images/${item.getPoster() }" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title"
								style="white-space: nowrap; overflow: hidden;">${item.getTitle() }</h5>
							<div
								style="display: flex; justify-content: space-around; margin-bottom: 10px; align-items: center;">
								<span style="font-weight: 200;"><i class='bx bxs-show'></i>${item.getViews() }</span>
								<span><i class='bx bxs-heart'></i>${item.getTotalFavorites()}</span>
								<span><i class='bx bxs-share'></i>
									${item.getTotalShares()}</span>
							</div>
							<a
								href='<c:url value="/Video?action=watch&id=${item.getLink()}"></c:url>'
								class="btn btn-dark"> <span><i
									class='bx bx-play-circle'></i></span> Xem Ngay
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
	</c:choose>
</div>

<h2 id="love">Phim Tình Cảm</h2>
<div class="row film">
	<c:choose>
		<c:when test="${ not empty filmlove }">
			<c:forEach var="item" items="${filmlove }">
				<div class="col-md-3">
					<div class="card">
						<img src="images/${item.getPoster() }"
							class="card-img-top"
							style="border-radius: 20px 20px 0 0; height: 250px;" alt="...">
						<div class="card-body">
							<h5 class="card-title"
								style="white-space: nowrap; overflow: hidden;">${item.getTitle() }</h5>
							<div
								style="display: flex; justify-content: space-around; margin-bottom: 10px; align-items: center;">
								<span style="font-weight: 200;"><i class='bx bxs-show'></i>${item.getViews() }</span>
								<span><i class='bx bxs-heart'></i>${item.getTotalFavorites()}</span>
								<span><i class='bx bxs-share'></i>
									${item.getTotalShares()}</span>
							</div>
							<a
								href='<c:url value="/Video?action=watch&id=${ item.getLink()}"></c:url>'
								class="btn btn-dark"> <span><i
									class='bx bx-play-circle'></i></span> Xem Ngay
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
	</c:choose>
</div>
<div class="line">
	<a href="HomePageController?page=1&genre=2"><i
		class='bx bx-chevron-down'></i></a>
</div>
<h2 id="ghost">Phim Kinh Dị</h2>
<div class="row film">
	<c:choose>
		<c:when test="${ not empty filmkinhdi }">
			<c:forEach var="item" items="${filmkinhdi }">
				<div class="col-md-3">
					<div class="card">
						<img src="images/${item.getPoster() }"
							class="card-img-top"
							style="border-radius: 20px 20px 0 0; height: 250px;" alt="...">
						<div class="card-body">
							<h5 class="card-title"
								style="white-space: nowrap; overflow: hidden;">${item.getTitle() }</h5>
							<div
								style="display: flex; justify-content: space-around; margin-bottom: 10px; align-items: center;">
								<span style="font-weight: 200;"><i class='bx bxs-show'></i>${item.getViews() }</span>
								<span><i class='bx bxs-heart'></i>${item.getTotalFavorites()}</span>
								<span><i class='bx bxs-share'></i>
									${item.getTotalShares()}</span>
							</div>
							<a
								href='<c:url value="/Video?action=watch&id=${ item.getLink()}"></c:url>'
								class="btn btn-dark"> <span><i
									class='bx bx-play-circle'></i></span> Xem Ngay
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
	</c:choose>
</div>
<div class="line">
	<a href="HomePageController?page=1&genre=3"><i
		class='bx bx-chevron-down'></i></a>
</div>
<h2 id="khvt">Phim Khoa Học Viễn Tưởng</h2>
<div class="row film">
	<c:choose>
		<c:when test="${ not empty filmfiction }">
			<c:forEach var="item" items="${filmfiction }">
				<div class="col-md-3">
					<div class="card">
						<img src="images/${item.getPoster() }"
							class="card-img-top"
							style="border-radius: 20px 20px 0 0; height: 250px;" alt="...">
						<div class="card-body">
							<h5 class="card-title"
								style="white-space: nowrap; overflow: hidden;">${item.getTitle() }</h5>
							<div
								style="display: flex; justify-content: space-around; margin-bottom: 10px; align-items: center;">
								<span style="font-weight: 200;"><i class='bx bxs-show'></i>${item.getViews() }</span>
								<span><i class='bx bxs-heart'></i>${item.getTotalFavorites()}</span>
								<span><i class='bx bxs-share'></i>
									${item.getTotalShares()}</span>
							</div>
							<a
								href='<c:url value="/Video?action=watch&id=${ item.getLink()}"></c:url>'
								class="btn btn-dark"> <span><i
									class='bx bx-play-circle'></i></span> Xem Ngay
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
	</c:choose>
</div>
<div class="line">
	<a href="HomePageController?page=1&genre=4"><i
		class='bx bx-chevron-down'></i></a>
</div>
<h2 id="anime">Phim Hoạt Hình</h2>
<div class="row film">
	<c:choose>
		<c:when test="${ not empty filmanime }">
			<c:forEach var="item" items="${filmanime }">
				<div class="col-md-3">
					<div class="card">
						<img src="images/${item.getPoster() }"
							class="card-img-top"
							style="border-radius: 10px 10px 0 0; height: 250px;" alt="...">
						<div class="card-body">
							<h5 class="card-title"
								style="white-space: nowrap; overflow: hidden;">${item.getTitle() }</h5>
							<div
								style="display: flex; justify-content: space-around; margin-bottom: 10px; align-items: center;">
								<span style="font-weight: 200;"><i class='bx bxs-show'></i>${item.getViews() }</span>
								<span><i class='bx bxs-heart'></i>${item.getTotalFavorites()}</span>
								<span><i class='bx bxs-share'></i>
									${item.getTotalShares()}</span>
							</div>
							<a
								href='<c:url value="/Video?action=watch&id=${ item.getLink()}"></c:url>'
								class="btn btn-dark"> <span><i
									class='bx bx-play-circle'></i></span> Xem Ngay
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
	</c:choose>
</div>
<div class="line">
	<a href="HomePageController?page=1&genre=5"><i
		class='bx bx-chevron-down'></i></a>
</div>



