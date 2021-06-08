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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">강의조회</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="#">Get managementcourse</a>
                                    </li>
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
                <div class="card-group">
                    <div class="card border-right">
                        <div class="card-body">
                            <form method="post" action="">
								 <div class="form-row">
									 <div class="form-group col-md-3">
									    <label for="coursno">과목코드</label>
									    <input type="text" class="form-control" name="coursno" id="coursno" readonly value="${course.coursno}" placeholder="과목코드 입력란">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="name">과목명</label>
									    <input type="text" class="form-control" name="name" id="name" value="${course.name}" placeholder="이름 입력란">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="dname">담당학과</label>
									    <input type="text" class="form-control" name="dname" id="dname" readonly value="${course.dname}" placeholder="담당학과 입력란">						 	
									 </div> 
									 <div class="form-group col-md-3">
									    <label for="pname">담당교수</label>
									    <input type="text" class="form-control" name="pname" id="pname" readonly value="${course.pname}" placeholder="담당교수 입력란">								 	
									 </div>
								 </div>
							    <div class="form-row">
									 <div class="form-group col-md-2">
									    <label for="credit">학점</label>
									    <input type="text" class="form-control" name="credit" id="credit" readonly value="${course.credit}" placeholder="학점">
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="locno">강의실</label>
									    <select class="custom-select" name="locno" required>
                                            <option selected value="">선택</option>
                                            <c:forEach items="${location}" var="loc">
                                            <option value="${loc}">${loc}</option>
                                            </c:forEach>
                                        </select>						 	
									 </div>
									 <div class="form-group col-md-2">
									    <label for="semester">학기</label>
									    <input type="text" class="form-control" name="semester" id="semester"  value="${course.semester}" placeholder="수업시간">
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="day">수업일</label>
									    <select class="custom-select" name="day" required>
                                            <option selected value="">선택</option>
                                            <option value="1">월</option>
                                            <option value="2">화</option>
                                            <option value="3">수</option>
                                            <option value="4">목</option>
                                            <option value="5">금</option>
                                        </select>								 	
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="startTime">시작시간</label>
									    <select class="custom-select" name="startTime" required>
                                            <option selected value="">선택</option>
                                            <c:forEach begin="1" end="8" step="1" var="i">
                                            <option value="${i}">${i}교시</option>
                                            </c:forEach>
                                        </select>							 	
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="endTime">종료시간</label>
									    <select class="custom-select" name="endTime" required>
                                            <option selected value="">선택</option>
                                            <c:forEach begin="1" end="8" step="1" var="i">
                                            <option value="${i}">${i}교시</option>
                                            </c:forEach>
                                        </select>								 	
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="maxnum">수강정원</label>
									    <input type="text" class="form-control" name="maxnum" id="maxnum" value="${course.maxnum}" placeholder="수강정원">								 	
									 </div>
								 </div>
								 <div class="row">
									<div class="form-group col-md-6">
									  	<div class="upload-input">
										    <input type="file" class="form-control" name="files" id="files" accept=".pdf, .hwp">								 	
										    <label for="files">강의계획서(pdf, hwp 등의 문서파일만 업로드 가능합니다)</label>
									  	</div>
									 </div>
								  	<div class="form-group col-md-6 upload-result">
								  		<ul class="list-group"></ul>
								  	</div>
								 </div>
								 <div class="row">
								 	<div class="col-md-12 mb-2">
								    	<button data-oper="deletecourse" class="btn btn-info btn-block" formaction="deletecourse">강의삭제</button>								 	
								 	</div>
								 </div>
								 <div class="row">
								 	<div class="col-md-12">
								 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								    	<button type="submit" data-oper="modify" id="updatecourse" class="btn btn-info btn-block" formaction="updatecourse">강의수정</button>								 	
								 	</div>
								 </div>
							</form>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End First Cards -->
                <!-- *************************************************************** -->
            </div>

			<div class="alert alert-success alert-dismissible bg-success text-white border-0 fade show course-update-success" role="alert">
			    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			        <span aria-hidden="true">×</span>
			    </button>
			    <strong>성공 - </strong> 강의 수정을 완료했습니다.
			</div>
			<div class="alert alert-danger alert-dismissible bg-danger text-white border-0 fade show course-update-fail" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <strong>실패 - </strong> 강의 수정을 실패했습니다.
            </div>
            
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
       	</div>
       	<script>
			var msg = "${msg}";
			
			if(msg == "success") {
				$(".course-update-success").show();
				setTimeout(function() {
				$(".course-update-success").hide();
				}, 3000);
			} else if(msg == "fail") {
				$(".course-update-fail").show();
				setTimeout(function() {
				$(".course-update-fail").hide();
				}, 3000);
			};
		</script>
        <script>
        // 최대 파일 크기
   		var maxSize = 1024 * 1024 * 5;
   		var cloneObj = $(".upload-input").clone();
   		var uploadResult = $(".upload-result ul");
   		var coursno = "${course.coursno}";
   		var csrf = "${_csrf.headerName}";
   		var csrfToken = "${_csrf.token}";
   		
   		$(document).ajaxSend(function(e, xhr) {
   			xhr.setRequestHeader(csrf, csrfToken);
   		});
   		
   		$(function() {
   			
   			$.getJSON("${pageContext.request.contextPath}/admin/getAttachList", {
   				coursno: coursno
   				}, 
   				function(uploadResultArr) {
   				var str = "";
   				for(var i in uploadResultArr) {
   					var obj = uploadResultArr[i];
   					str += "<li class='list-group-item'";
   					str += " data-filename='" + obj.fileName;
   					str += "' data-document='" + obj.document;
   					str += "' data-uuid='" + obj.uuid;
   					str += "' data-uploadpath='" + obj.uploadPath;
   					str += "'>";
  						str += "	<a href='${pageContext.request.contextPath}/download?fileName=" + obj.downloadPath + "'><i class='fas fa-paperclip text-muted'></i> " + obj.fileName + "</a>";
   					str += "	<i class='fas fa-times-circle remove-file-btn'></i>";
   					str += "</li>";
   				}
   				uploadResult.append(str);
   			});
   			
   			$(".upload-input").on("change", "#files", function() {
   				var formData = new FormData();
   				var files = $("#files")[0].files;
   				console.log(files);
   				
   				for(var i in files) {
   					if(!checkExtension(files[i].name, files[i].size)) {
   						return false;
   					}
   					formData.append("files", files[i]);
   				}
   				
   				$.ajax({
   					url: '${pageContext.request.contextPath}/uploadAction',
   					type: 'post',
   					data: formData,
   					dataType: 'json',
   					processData: false,
   					contentType: false,
   					success: function(result) {
   						console.log(result);
   						showUploadedFile(result);
   						$(".upload-input").html(cloneObj.html());
   					}
   				});
   			});
   			
   			function checkExtension(name, size) {
   				if(size > maxSize) {
   					alert("최대 업로드 크기를 초과했습니다");
   					return false;
   				}
   				return true;
   			}
   			
   			function showUploadedFile(uploadResultArr) {
   				var str = "";
   				for(var i in uploadResultArr) {
   					var obj = uploadResultArr[i];
   					str += "<li class='list-group-item'";
   					str += " data-filename='" + obj.fileName;
   					str += "' data-document='" + obj.document;
   					str += "' data-uuid='" + obj.uuid;
   					str += "' data-uploadpath='" + obj.uploadPath;
   					str += "'>";
					str += "	<a href='${pageContext.request.contextPath}/download?fileName=" + obj.downloadPath + "'><i class='fas fa-paperclip text-muted'></i> " + obj.fileName + "</a>";
   					str += "	<i class='fas fa-times-circle remove-file-btn'></i>";
   					str += "</li>";
   				}
   				uploadResult.append(str);
   			}
   			
   			$(".upload-result").on("click", ".remove-file-btn", function() {
   				var $li = $(this).closest("li");
   				var data = {
   					fileName: $li.data("filename"),
   					document: $li.data("document"),
   					uuid: $li.data("uuid"),
   					uploadPath: $li.data("uploadpath")
   				};
   				console.log(data);
   				
   				$.ajax({
   					url: "${pageContext.request.contextPath}/deleteFile",
   					type: "post",
   					data: JSON.stringify(data),
   					contentType: "application/json; charset=utf-8",
   					success: function(result) {
   						alert("삭제되었습니다.");
   						$li.remove();
   					}
   				});
   				
   				$li.remove();
   			});
   			
   			$("#updatecourse").on("click", function() {
   				if($(this).data("oper") != "modify") return;
				
   				var str = "";
   				var attrs = ["fileName", "uuid", "uploadPath", "document"];
   				
   				$(".upload-result li").each(function(i, it) {
   				    for(var j in attrs) {
   						str += '<input type="hidden" name="attachList[' + i + '].' + attrs[j];
   						str += '" value="' + $(it).data(attrs[j].toLowerCase()) + '">';
   				    }
   				});
   				
   				console.log(str);
   				$(this).closest("form").append(str);
   			});
   			
   			$("select[name='locno'] option").each(function() {
				if($(this).val() == "${course.locno}") {
					$(this).prop("selected", true);
				}   				
   			});
   			
   			$("select[name='day'] option").each(function() {
				if($(this).val() == "${course.day}") {
					$(this).prop("selected", true);
				}   				
   			});
   			
   			$("select[name='startTime'] option").each(function() {
				if($(this).val() == "${course.startTime}") {
					$(this).prop("selected", true);
				}   				
   			});
   			
   			$("select[name='endTime'] option").each(function() {
				if($(this).val() == "${course.endTime}") {
					$(this).prop("selected", true);
				}   				
   			});
   		});
   		
   		$("select[name='startTime']").change(function() {
   			var val = $(this).val();
   			console.log(val);
   			$("select[name='endTime'] option").each(function() {
   				if($(this).val() <= val) {
   					$(this).prop("disabled", true);
   				} else {
   					$(this).prop("disabled", false);
   				}
   			});
   		});
        </script>
<jsp:include page="../includes/footer.jsp" />