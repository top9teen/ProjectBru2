<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	
	
	<jsp:include page="../../Template/heder.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<!-- Preloader -->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!-- /Preloader -->
	<div class="wrapper  theme-5-active pimary-color-blue slide-nav-toggle">
			<jsp:include page="../../Template/manuadmin2.jsp"></jsp:include>
		<!-- /Right Sidebar Menu -->

		<!-- Main Content -->
		
			<div class="page-wrapper">
            <div class="container-fluid pt-25">
				<!-- Row -->
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view panel-refresh">
							<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark">ดูรหัสของทุกคน </h6>
								</div>
								<div class="pull-right">
									<a href="#" class="pull-left inline-block refresh mr-15">
										<i class="zmdi zmdi-replay">Refresh</i>
										</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
						
								<div class="panel-body">
								
									<div    style="height:330px;">
										<img alt=""  src="dist/img/body/t1.png"style="height:60%; width: 60%; margin-left: 15%;margin-top: 10%;"><br><br>
									<button onclick="location.href = 'listuser';" class="btn btn-info btn-rounded btn-block btn-anim"><i class="icon-check"></i><span class="btn-text">เลือก</span></button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view panel-refresh">
							<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark">ดูรายการทั้งหมด</h6>
								</div>
								<div class="pull-right">
									<a href="#" class="pull-left inline-block refresh mr-15">
										<i class="zmdi zmdi-replay">Refresh</i>
									</a>
									
								</div>
								<div class="clearfix"></div>
							</div>
							
							<div class="panel-wrapper collapse in">
								<div class="" style="height:370px;">
								
								<img alt=""  align="middle" src="dist/img/body/pg1.png"style="height:60%; width: 60%; margin-left: 23%;margin-top: 10%;"><br><br>
								<button onclick="location.href = 'listproduck';" class="btn btn-info btn-rounded btn-block btn-anim"><i class="icon-check"></i><span class="btn-text">เลือก</span></button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view  panel-refresh">
						<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark">ดูประวัติการโอนเงิน</h6>
								</div>
								<div class="pull-right">
									<a href="#" class="pull-left inline-block refresh mr-15">
										<i class="zmdi zmdi-replay">Refresh</i>
									</a>
									
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div id="" class="" style="height:330px;">
									
										<img alt=""  align="middle" src="dist/img/body/pg2.png"style="height:60%; width: 60%; margin-left: 23%;margin-top: 10%;"><br><br>
								<button onclick="location.href = 'transfer';" class="btn btn-info btn-rounded btn-block btn-anim"><i class="icon-check"></i><span class="btn-text">เลือก</span></button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Row -->
				
				<!-- Row -->
			
				<!-- /Row -->
			</div>
			
			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
				<div class="row">
					<div class="col-sm-12">
						<p>2018 &copy; ระบบสินเชื่อรถยนต์อออนไลน์</p>
					</div>
				</div>
			</footer>
			<!-- /Footer -->
			
		</div>
		
		<!-- /Main Content -->

	</div>

	<!-- /#wrapper -->
	<jsp:include page="../../Template/footer.jsp"></jsp:include>
</body>
</html>