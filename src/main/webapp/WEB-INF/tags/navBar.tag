<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="active" %> <!-- 굵은글씨 활성화/ page영역처럼 사용 가능 -->

<nav class="navbar navbar-expand-md bg-light">
  <div class="container-md">
    <a class="navbar-brand" href="#">게시판</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <c:url value="/board/list" var="listLink" />
          <a class="nav-link ${active eq 'list' ? 'active' : '' }" href="${listLink }">목록</a>
        </li>
        <li class="nav-item">
          <c:url value="/board/register" var="registerLink" />
          <a class="nav-link ${active eq 'register' ? 'active' : '' }" href="${registerLink }">작성</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>