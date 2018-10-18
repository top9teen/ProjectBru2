<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<jsp:include page="../Template/heder.jsp"></jsp:include>

</head>
<body>
<!--Preloader-->
		<div class="preloader-it">
			<div class="la-anim-1"></div>
		</div>
		<!--/Preloader-->
		
		<div class="wrapper  pa-0">
			<header class="sp-header">
				<div class="sp-logo-wrap pull-left">
					<a href="index.html">
						<img class="brand-img mr-10" src="dist/img/logo.png" alt="brand"/>
						<span class="brand-text">Elmer</span>
					</a>
				</div>
				<div class="form-group mb-0 pull-right">
					<span class="inline-block pr-10">Already have an account?</span>
					<a class="inline-block btn btn-primary btn-rounded btn-outline" href="/">เข้าสู่ระบบ</a>
				</div>
				<div class="clearfix"></div>
			</header>
			
			<!-- Main Content -->
			<div class="page-wrapper pa-0 ma-0 auth-page">
				<div class="container-fluid">
					<!-- Row -->
					<div class="table-struct full-width full-height col-sm-10">
						<div class="table-cell vertical-align-middle auth-form-wrap">
							<div class="auth-form  ml-auto mr-auto no-float">
								<div class="row">
									<div class="col-sm-10 col-xs-10">
										<div class="mb-30">
											<h3 class="text-center txt-dark mb-10">Sign up to Elmer</h3>
											<h6 class="text-center nonecase-font txt-grey">Enter your details below</h6>
										</div>	
										<div class="form-wrap">
											<form action="gotoregister" OnSubmit="return fncregister();" name="register">
												<div class="form-group">
													<label class="control-label mb-10" for="exampleInputEmail_2">Email address</label>
													<input type="email" class="form-control" required="" id="exampleInputEmail_2" placeholder="Enter email" name="email">
												</div>
												<div class="form-group">
													<label class="pull-left control-label mb-10" for="exampleInputpwd_2">Password</label>
													<input type="password" class="form-control" required="" id="exampleInputpwd_2" placeholder="Enter pwd" name ="password">
												</div>
												<div class="form-group">
													<label class="pull-left control-label mb-10" for="exampleInputpwd_3">Confirm Password</label>
													<input type="password" class="form-control" required="" id="exampleInputpwd_3" placeholder="Enter pwd">
												</div>
												<div class="form-group">
													<div class="checkbox checkbox-primary pr-10 pull-left">
														<input id="checkbox_2" required="" type="checkbox">
														<label for="checkbox_2"> I agree to all <span class="txt-primary">Terms</span></label>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="form-group text-center">
													<button type="submit" class="btn btn-primary btn-rounded">สมัคร</button>
												</div>
											</form>
										</div>
									</div>	
								</div>
							</div>
						</div>
					</div>
					<!-- /Row -->	
				</div>
				
			</div>
			<!-- /Main Content -->
		
		</div>
		<!-- /#wrapper -->
	
	<script type="text/javascript">
	function fncregister() {
		
		if (document.register.password.value != document.register.repassword.value) {
			alert('กรุณา ใส่รหัสผ่านให้ถูกต้อง');
			document.register.repassword.focus();
			return false;
		}
		if (document.register.email.value.indexOf('@') == -1) {
			alert('ใส่ @');
			document.register.email.focus();
			return false;
		}
		if (document.register.email.value.indexOf('.') == -1) {
			alert('ใส่ .');
			document.register.email.focus();
			return false;
		}
		if (document.register.email.value == "") {
			alert('กรุณา ใส่ email');
			document.register.email.focus();
			return false;
		}
		if (document.register.password.value == "") {
			alert('กรุณา ใส่  password');
			document.register.password.focus();
			return false;
		}
		if (document.register.repassword.value == "") {
			alert('กรุณา ใส่  ยืนยัน password');
			document.register.repassword.focus();
			return false;
		}
	}
</script>
	
	
		<jsp:include page="../Template/footer.jsp"></jsp:include>
</body>
</html>