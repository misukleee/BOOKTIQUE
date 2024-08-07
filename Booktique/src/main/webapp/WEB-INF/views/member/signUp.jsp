<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

</head>
<body>
	<div style="width:100%; overflow-x: auto; display: flex; align-items: center;" class="auth-page-content" class="row">
		<div class="container">
		
			<div class="row justify-content-center">
				<div class="col-md-8 col-lg-6 col-xl-6">
					<div class="card mt-4 card-bg-fill">
						<form id="upForm" enctype="multipart/form-data">
							<div class="card-body p-4">
								<div class="text-center mt-2">
									<h5 class="text-primary">회원가입</h5>
									<br />
								</div>
								<div class="p-2 mt-4">
									<div class="mb-3">
										<label for="memId" class="form-label">아이디 <span class="text-danger">*</span></label>
										<input type="text" class="form-control" id="memId" name="memId"
											placeholder="아이디를 입력하세요" maxlength=20 required>
										<div id="dupId"></div>
									</div>
									<div class="mb-3">
										<label class="form-label" for="password-input">비밀번호</label> <span
											class="text-danger">*</span>
										<div class="position-relative auth-pass-inputgroup">
											<input type="password" class="form-control pe-5 password-input"
												placeholder="비밀번호" id="memPw" name="memPw" required>
											<button
												class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon material-shadow-none"
												type="button" id="lookPw">
												<i class="ri-eye-fill align-middle"></i>
											</button>
										</div>
									</div>
									<div class="mb-3">
										<label class="form-label" for="password-input">비밀번호 확인</label>
										<span class="text-danger">*</span>
										<div class="position-relative auth-pass-inputgroup">
											<input type="password" class="form-control pe-5 password-input"
												placeholder="비밀번호 확인" id="memPwChk" aria-describedby="passwordInput"
												pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required
												aria-autocomplete="list">
											<button
												class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon material-shadow-none"
												type="button" id="lookPwChk">
												<i class="ri-eye-fill align-middle"></i>
											</button>
										</div>
										<div id="chkPw"></div>
									</div>
									<div class="mb-3">
										<label for="username" class="form-label">이름 <span
												class="text-danger">*</span></label> <input type="text" class="form-control"
											id="memNm" name="memNm" placeholder="입주민 명" required>
									</div>
									<div class="mb-3">
										<label for="JoiningdatInput" class="form-label">생년월일 <span
												class="text-danger">*</span></label>
												 <input type="date" class="form-control"
											id="memBirth" name="memBirth" placeholder="생년월일(ex.19970910)">
									</div>
									<div class="mb-3">
										<label for="JoiningdatInput" class="form-label">성별 <span
												class="text-danger">*</span>
										</label> <select class="form-select" id="memSex" name="memSex">
											<option value="">선택하세요</option>
											<option value="m">남</option>
											<option value="f">여</option>
										</select>
									</div>
									<div class="mb-3">
										<label for="JoiningdatInput" class="form-label">연락처 <span
												class="text-danger">*</span></label> <input type="text" class="form-control"
											id="memTelno" name="memTelno" placeholder="연락처" maxlength="15" required>
									</div>
									<div class="input-group mb-6">
										<label for="JoiningdatInput" class="form-label">전자주소(이메일)
											<span class="text-danger">*</span>
										</label>
										<div class="input-group mb-6">
											<input type="text" class="form-control mb-3" id="emailId" name="emailId"
												placeholder="아이디" aria-label="Email" required>
											<span class="input-group-text mb-3">@</span> <input type="text"
												class="form-control mb-3" id="dirEmail" name="dirEmail" value="선택하세요"
												readonly /> 
												<select class="form-select mb-3" name="selectEmail" id="selectEmail" data-choice="active">
												<option value="" selected>선택하세요</option>
												<option value="naver.com">naver.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="direct">직접입력</option>
											</select>
										</div>
									</div>
									<div class="mb-3">
										<input type="button" class="btn btn-primary w-100" value="가입신청" id="btn_submit">
									</div>
								</div>
							</div>
						</form>
						<!-- end card body -->
					</div>
					<!-- end card -->
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">


$('#selectEmail').change(function () {
	$("#selectEmail option:selected").each(function () {
		if ($(this).val() == 'direct') {
			$("#dirEmail").val('');
			$("#dirEmail").attr("readonly", false);
		} else {
			$("#dirEmail").val($(this).text());
			$("#dirEmail").attr("readonly", true);
		}
	})
});

</script>
</html>