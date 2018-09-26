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
								
									
										
										<form name="gotobank" action="gotobank" method="post"
	OnSubmit="return fncSubmit2();">
						<h6 align="center"> กรุณาเลือกรถยนต์รุ่นของท่าน</h6>
		
			<div class="form-group">
				<label for="registration_year">ปีที่จดทะเบียน (ค.ศ.)<span
					style="color: red;">* </span>:
				</label> <select class="form-control btn dropdown-toggle btn-primary btn-outline" name="groupType" id="groupType"
					list="groupTypeDropdown" listKey="value" listValue="name">
					<option value="">กรุณาเลือก</option>

				</select>
			</div>
			
			
			<div class="form-group">
				<label for="brand">ยี่ห้อ<span style="color: red;">*</span>:
				</label> <select name="carMake" id="brand" class="form-control btn dropdown-toggle btn-primary btn-outline">
					<option value="">กรุณาเลือก</option>

					<optgroup label="รถยนต์">
					</optgroup>
				</select>
			</div>
			
			<div class="form-group">
				<label for="brand">รุ่น<span style="color: red;">*</span>:
				</label> <select name="carMake2" id="carmodel" class="form-control btn dropdown-toggle btn-primary btn-outline">
					<option value="">กรุณาเลือก</option>
					<optgroup label="รุ่น">

					</optgroup>
				</select>
			</div>
			
			<div class="form-group">
				<label for="brand">วงเงินที่ท่านต้องการ<span
					style="color: red;">*</span>:
				</label> <input type="text" name="lessmoney" placeholder="ใส่จำนวนเงิน"
					id="monney" value="" class=" form-control " maxlength="7" min="4">
			</div>
			
			<div class="form-group">
				<label for="brand">ระยะเวลาที่ต้องการขอกู้<span
					style="color: red;">*</span>
				</label> <select name="lessyear" id="" class="form-control btn dropdown-toggle btn-primary btn-outline">
					<option value="">กรุณาเลือก</option>
					<optgroup label="ปี">
						<option value="1">1 ปี</option>
						<option value="2">2 ปี</option>
						<option value="3">3 ปี</option>
						<option value="4">4 ปี</option>
						<option value="5">5 ปี</option>
					</optgroup>
				</select>
			</div>
			
		
				<button class="btn btn-info btn-rounded btn-block btn-anim"><i class="icon-check"></i><span class="btn-text">เลือก</span></button>
		
	<input type="text" value="" id="MoTes" name="mos" style="display: none;">
</form>
										
									
								
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
	function fncSubmit2() {
	
		var monney = document.getElementById('monney').value;
		var ssd = document.getElementById('MoTes').value;
		ssd = monney;
		
		 var res = ssd.replace(/,|.00|/gi, "");
		 document.getElementById("MoTes").value = res;
		
		if (document.gotobank.groupType.value == "") {
			alert('Please input Year');
			document.gotobank.groupType.focus();
			return false;
		}
		if (document.gotobank.carMake.value == "") {
			alert('Please input Brand');
			document.gotobank.carMake.focus();
			return false;
		}
		if (document.gotobank.carMake2.value == "") {
			alert('Please input CarModel');
			document.gotobank.carMake2.focus();
			return false;
		}
		if (document.gotobank.lessmoney.value == "") {
			alert('Please input Monny');
			document.gotobank.lessmoney.focus();
			return false;
		}
		if (document.gotobank.lessyear.value == "") {
			alert('Please input YearLess');
			document.gotobank.lessyear.focus();
			return false;
		}
		
	}
	
	
	$(document).ready(function() {
		anElement = new AutoNumeric("#monney");
		
		
		
		$.ajax({
			type : "GET",
			url : "/year",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(msg) {
				console.log('Success')
				for(var i=0; i<msg.length; i++) {
					$('#groupType').append('<option value="' + msg[i].yeYear+ '">' + msg[i].yeYear + '</option>');
				}
				
			}
		});
		
		$('#groupType').change(function () {
			$('#brand').empty();
			$('#carmodel').empty();
		
			var criteriaBean = { "year" :  $('#groupType').val()};
			
			$.ajax({
				type : "POST",
				url : "/brand",
				data: JSON.stringify(criteriaBean) ,
				contentType : "application/json; charset=utf-8",
				dataType : "json",
				success : function(msg) {
					console.log('Success')
					$('#brand').append('<option value="'+'">' + "กรุณาเลือก" + '</option>');
					$('#carmodel').append('<option value="'+'">' + "กรุณาเลือก" + '</option>');
					for(var i=0; i<msg.length; i++) {
						$('#brand').append('<option value="' + msg[i].carName+ '">' + msg[i].carName + '</option>');
					}
					
				}
			});
		});

		$('#brand').change(function(){
			$('#carmodel').empty();
			var criteriaBean = {"year" : $('#groupType').val() 
								, "brand" : $('#brand').val() };
			$.ajax({
				type : "POST",
				url : "/carmodel",
				data: JSON.stringify(criteriaBean) ,
				contentType : "application/json; charset=utf-8",
				dataType : "json",

			success : function(msg) {
					console.log('Success')
					$('#carmodel').append('<option value="'+'">' + "กรุณาเลือก" + '</option>');
					for(var i=0; i<msg.length; i++) {
						$('#carmodel').append('<option value="' + msg[i].brName+ '">' + msg[i].brName + '</option>');
					}
					
				}
			});
	});	
		
});
	
	
</script>
</body>
</html>