<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>


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
					<a >
						<img class="brand-img mr-10" src="dist/img/logo.png" alt="brand"/>
						<span class="brand-text">ระบบสินเชื่อรถยนต์</span>
					</a>
				</div>
				<div class="form-group mb-0 pull-right">
					<span class="inline-block pr-10">Don't have an account?</span>
					<a class="inline-block btn btn-primary  btn-rounded btn-outline" href="signup">สมัคร</a>
				</div>
				<div class="clearfix"></div>
			</header>
			
			<!-- Main Content -->
			<div class="page-wrapper pa-0 ma-0 auth-page">
				<div class="container-fluid">
					<!-- Row -->
					<div class="table-struct full-width full-height">
						<div class="table-cell vertical-align-middle auth-form-wrap">
							<div class="auth-form  ml-auto mr-auto no-float">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<div class="mb-30">
											<h3 class="text-center txt-dark mb-10"> <img alt="" style="width: 450px; height: 200px;" src="dist/img/logo2w.png"></h3>
											
										</div>	
										<div class="form-wrap">
											<form action="gotologin">
												<div class="form-group">
													<label class="control-label " for="exampleInputEmail_2">Email address</label>
													<input type="email" class="form-control" required="" id="exampleInputEmail_2" placeholder="Enter email" name="email">
												</div>
												<div class="form-group">
													<label class="pull-left control-label " for="exampleInputpwd_2">Password</label>
												
													<div class="clearfix"></div>
													<input type="password" class="form-control" required="" id="exampleInputpwd_2" placeholder="Enter pwd" name ="password">
												</div>
												
												
												<div class="form-group text-center">
													<button type="submit" class="btn btn-primary  btn-rounded">เข้าสู่ระบบ</button>
												</div>
											</form>
												<form action="" name="welcome">


						<input type="hidden" name="regid" id="regid">
						<div id="fb-root">

							<div class="w3-section" align="center" >
								<a  class="btn btn-info btn-lg btn-block loginBtn loginBtn--facebook  w3-center "
									onclick="fbAuthUser();" id="fb"> Log in with Facebook</a>

							</div>


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
		<script type="text/javascript">
	window.fbAsyncInit = function() {
		FB.init({
			appId : '259177254718154',
			status : true,
			cookie : true,
			xfbml : true
		});

		FB.getLoginStatus(function(response) {

			if (response != null) {
				fbAuthUser();

			} else if (response && response.status === 'connected') {
				FB.logout(function(response) {
					window.location.href = "/";
				});
			}

		});
	};
	(function() {
		var e = document.createElement('script');
		e.type = 'text/javascript';
		e.src = document.location.protocol
				+ '//connect.facebook.net/en_US/all.js';
		e.async = true;
		document.getElementById('fb-root').appendChild(e);
	}());

	function fbAuthUser() {

		FB.api('/me', {
			locale : 'en_US',
			fields : 'name, email'
		}, function(response) {
			var s = "";
			if (s == "") {
				var n = confirm("เข้าสู่ระบบด้วย Facebook !");
				if (n == true) {
					console.log(response);
					document.getElementById("regid").value = response.email;
					document.welcome.action = "facebook";
					document.welcome.submit();
					s = "";
				} else {

					FB.Event.subscribe('auth.logout', function(response) {
						FB.logout(function(response) {

							s = "F";
							window.location.href = "/";
						});
					});

				}
			}

		});
	};
</script>
		
		</div>
		<jsp:include page="../Template/footer.jsp"></jsp:include>
</body>
</html>