<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<jsp:include page="../includes/header.jsp" />
<jsp:include page="../includes/sidebar.jsp" />
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">Professor</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html" class = "text-muted">courselist</a></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <!-- *************************************************************** -->
                <!-- End First Cards -->
                <!-- *************************************************************** -->
                <!-- *************************************************************** -->
                <!-- Start Top Leader Table -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-12">
                        <div class="card course-list-wrapper">
                            <div class="card-body">
                            	<p class="card-title mb-3"><i class="fas fa-list"></i> ??????????????????</p>
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered no-wrap">
                                        <thead>
                                            <tr>
                                                <th>????????????</th>
                                                <th>?????????</th>
                                                <th>????????????</th>
                                                <th>????????????</th>
                                                <th>??????</th>
                                                <th>?????????</th>
                                                <th>????????????</th>
                                                <th>????????????</th>
                                                <th>????????????</th>
                                                <th>???????????????</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${list}" var="course">
                                            <tr>
                                                <td>${course.coursno}</td>
                                                <td>${course.name}</td>
                                                <td>${course.dname}</td>
                                                <td>${course.pname}</td>
                                                <td>${course.credit}</td>
                                                <td>${course.locno}</td>
                                                <td>
                                                <c:choose>
                                                <c:when test="${course.day eq 1}">???</c:when>
                                                <c:when test="${course.day eq 2}">???</c:when>
                                                <c:when test="${course.day eq 3}">???</c:when>
                                                <c:when test="${course.day eq 4}">???</c:when>
                                                <c:when test="${course.day eq 5}">???</c:when>
                                                </c:choose>
                                                <c:forEach begin="${course.startTime}" end="${course.endTime}" step="1" var="i">
                                                ${i} 
                                                </c:forEach>
                                                </td>
                                                <td>${course.maxnum}</td>
                                                <td>${course.sugangNum}</td>
                                                <td class="text-center">
                                                	<c:if test="${not empty course.attachList[0]}">
                                                	<a href="${pageContext.request.contextPath}/download?fileName=${course.attachList[0].downloadPath}" type="button" class="btn btn-secondary btn-sm">??????</a>
                                                	</c:if>
                                                	<c:if test="${empty course.attachList[0]}">
                                                	<button type="button" class="btn btn-secondary btn-sm" disabled>??????</button>
                                                	</c:if>
                                                </td>
                                            </tr>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End Top Leader Table -->
                <!-- *************************************************************** -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
			

<jsp:include page="../includes/footer.jsp" />