<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="com.Bru.Bean.*"%>
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
	<div class="wrapper  theme-5-active pimary-color-blue">
		<jsp:include page="../../Template/manumember.jsp"></jsp:include>
		<!-- /Right Sidebar Menu -->

		<!-- Main Content -->
		
				<div class="page-wrapper">
            <div class="container-fluid pt-25">
				<!-- Row -->
				<div class="row">
					<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view panel-refresh">
							<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark" >ระบบวิเคราะห์สินเชื่อ </h6>
								
								</div>
								<div class="pull-right">
									<a href="" onClick="window.location.reload()" class="pull-left inline-block refresh mr-15">
										<i class="zmdi zmdi-replay">Refresh</i>
										</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
						
								<div class="panel-body">
									<%

				YearCarBean yebean = null; 
			MiradoBean mibean = null;
			FormregiterBean bean = null;
		%>
		<%
		
			 yebean = (YearCarBean) request.getSession().getAttribute("yebean");
			bean = (FormregiterBean) request.getSession().getAttribute("bean");
			mibean = (MiradoBean) request.getSession().getAttribute("mibean");
		%>
									
										
									<form action="gotoreg">
				<input type="hidden" value="<%=mibean.getGroupType()%>"
					id="groupType2" name="groupType2"> <input type="hidden"
					value="<%=mibean.getCarMake2()%>" id="carMakeed" name="carMakeed">
					<div id = "f1">
				<input type="hidden" value="<%=bean.getFoCarMake2()%>"
					id="groupType2" name="car2">
					<input type="hidden" value="<%=bean.getFoCarMake()%>"
					id="groupType2" name="car">
					<input type="hidden" value="<%=bean.getFoGroupType()%>"
					id="groupType2" name="grop">
					<input type="hidden" value="<%=bean.getFoLessmoney()%>"
					id="groupType2" name="lessmon">
					<input type="hidden" value="<%=bean.getFoLessyear()%>"
					id="groupType2" name="lessyre">
					<input type="hidden" value="<%=bean.getFoReMonny()%>"
					id="groupType2" name="remon">
					</div>
			
			</form>
			
		</div>

		<br>
		<div class="w3-modal-content w3-card w3-animate-bottom" id="f2">
			

		</div>
		<br>
		<div class="w3-modal-content w3-card w3-animate-bottom" id="f3">
		

		</div>
		<br>
		<div class="w3-modal-content w3-card w3-animate-bottom" id="f4">
			

		</div>
																	
									
							
								</div>
							</div>
						</div>
					</div>
		</div>
		</div>
		</div>
		<!-- /Main Content -->
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
	<!-- /#wrapper -->
	<jsp:include page="../../Template/footer.jsp"></jsp:include>
<script type="text/javascript">
	$(document).ready(
			function() {
				
				/* $('#kabant').text('วงเงินสูงสุด'); */
				var miradoBean = {
					"groupType" : $('#groupType2').val(),
					"carMake2" : $('#carMakeed').val()
				};
				$.ajax({
					type : "POST",
					url : "http://localhost:8090/kaprice",
					data : JSON.stringify(miradoBean),
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(msg) {
						console.log('Success')
					$('#f1').append('<h3 align="center">ธนาคาร กสิกร</h3><div class="row"><div class="col-sm-4"><img alt="" src="dist/img/logo/kr2.jpg"style="height: 150px; width: 300px; "><br> <br> <br></div><div class="col-sm-4"><p>อัตราดอกเบี้ยเริ่มต้นอายุสัญญา</p><h2 style="color: green;" id="g1"></h2><label id="kabant"> </label></div><div class="col-sm-4"><input type="hidden" name="typebank" value="ka1"><br><button style="height: 150px; width: 300px;" type="submit" class="btn-lg btn btn-success">เลือก</button></div></div>');
						
						$('#kabant').text('วงเงินสูงสุด'+ msg.kaPrice +'บาท');
						$('#g1').text('<%=yebean.getYrPercent() %>'  +  ' %');
						$('#b1').append('<button type="submit" class="btn  btn-primary btn-rounded">เลือก</button>');
						
					}
				});
				
				
				$.ajax({
					type : "POST",
					url : "http://localhost:8091/kr",
					data : JSON.stringify(miradoBean),
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(msg) {
						console.log('Success')
							$('#f2').append('<form action="gotoreg"><h3 align="center">ธนาคาร กรุงศรี</h3><div class="row"><div class="col-sm-4"><img alt="" src="dist/img/logo/kr1.jpg"style="height: 150px; width: 300px;"><br> <br> <br></div><div class="col-sm-4"><p>อัตราดอกเบี้ยเริ่มต้นอายุสัญญา</p><h2 style="color: green;" id="g2"></h2><label id="krabant"> </label></div><div class="col-sm-4" id="b2"><input type="hidden" name="typebank" value="kr1"></div></div></form>');
						
						$('#krabant').text('วงเงินสูงสุด'+ msg.krPrice +'บาท');
						$('#g2').text('<%=yebean.getYrPercent() %>'   + ' %');
						$('#b2').append('<button type="submit" style="height: 150px; width: 300px;" type="submit" class="btn-lg btn btn-success">เลือก</button>');
					}
				});
				
				
				
				$.ajax({
					type : "POST",
					url : "http://localhost:8092/sc",
					data : JSON.stringify(miradoBean),
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(msg) {
						console.log('Success')
						$('#f3').append('<form action="gotoreg"><h3 align="center">ธนาคาร ไทยพาณิชย์</h3><div class="row"><div class="col-sm-4"><img alt="" src="dist/img/logo/kr3.jpg"style="height: 150px; width: 300px;"><br> <br> <br></div><div class="col-sm-4"><p>อัตราดอกเบี้ยเริ่มต้นอายุสัญญา</p><h2 style="color: green;" id="g3"></h2><label id="scabant"> </label></div><div class="col-sm-4" id="b3"><input type="hidden" name="typebank" value="sc1"></div></div></form>');
						
						$('#scabant').text('วงเงินสูงสุด'+ msg.scPrice +'บาท');
						$('#g3').text('<%=yebean.getYrPercent() %>'   + ' %');
						$('#b3').append('<button type="submit" style="height: 150px; width: 300px;" type="submit" class="btn-lg btn btn-success">เลือก</button>');
					}
				});
				
				$.ajax({
					type : "POST",
					url : "http://localhost:8093/th",
					data : JSON.stringify(miradoBean),
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(msg) {
						console.log('Success')
						$('#f4').append('<form action="gotoreg"><h3 align="center">ธนาคาร ธนชาต</h3><div class="row"><div class="col-sm-4"><img alt="" src="dist/img/logo/k4.jpg"style="height: 150px; width: 300px;"><br> <br> <br></div><div class="col-sm-4"><p>อัตราดอกเบี้ยเริ่มต้นอายุสัญญา</p><h2 style="color: green;" id="g4"></h2><label id="thabant"> </label></div><div class="col-sm-4" id="b4"><input type="hidden" name="typebank" value="th1"></div></div></form>');
						
						$('#thabant').text('วงเงินสูงสุด'+ msg.thPrice +'บาท');
						$('#g4').text('<%=yebean.getYrPercent() %>'   + ' %');
						$('#b4').append('<button type="submit" style="height: 150px; width: 300px;" type="submit" class="btn-lg btn btn-success">เลือก</button>');
					}
				});
				
			});
</script>
</body>
</html>