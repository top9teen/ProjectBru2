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
<%
FormregiterBean bean = null;
	bean = (FormregiterBean) request.getSession().getAttribute("bean");
%>
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
				<form action="gotopage2" OnSubmit="return fncSubmit2();"
	name="gotopage3" >
					<div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view panel-refresh">
							<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark" > </h6>
								
								</div>
								
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
						
								<div class="panel-body">
								
										
									
			
		
	<div class="form-section form-position " id="test">
		<h2 class="fs-title">รายละเอียดการขอกู้</h2>
		<!-- stap1 -->
		<div class="row">
			<div
				class="col-md-2 col-md-offset-1 col-sm-3 col-xs-12 col-sm-offset-1">
				<div class="form-group">
					<label>ปีรถ</label><span class="require-red" style="color: red;">*</span> <input
						type="text" class="form-control" id="foGroupType" value="<%=bean.getFoGroupType()%>"
						disabled="disabled">
						<input
						type="hidden" class="form-control" id="remon" value="<%=bean.getFoReMonny()%>"
						>
				</div>
			</div>
			<div
				class="col-md-3 col-md-offset-1 col-sm-3 col-xs-12 col-sm-offset-1">
				<div class="form-group">
					<label>ยี่ห่อ</label><span class="require-red" style="color: red;">*</span> <input
						type="text" class="form-control" id="foCarMake" value="<%=bean.getFoCarMake()%>"
						disabled="disabled">
						<input type="hidden" id="foTypebank" value="<%=bean.getFoTypebank()%>">
				</div>
			</div>
			<div
				class="col-md-3 col-md-offset-1 col-sm-3 col-xs-12 col-sm-offset-1">
				<div class="form-group">
					<label>รุ่น</label><span class="require-red" style="color: red;">*</span> <input
						type="text" class="form-control" id="foCarMake2" value="<%=bean.getFoCarMake2()%>"
						disabled="disabled">
				</div>
			</div>
		</div>
		<!-- stap2 -->
		<div class="row">
			<div
				class="col-md-5 col-md-offset-1 col-sm-5 col-xs-12 col-sm-offset-1">
				<div class="form-group">
					<label>วงเงินที่ต้องการกู้</label><span class="require-red" style="color: red;">*</span><label style="color: red;">ให้สูงสุด <%=bean.getXxx() %> บาท</label>
					<input type="text" name="lessmoney" class="form-control"
						value="<%=bean.getFoLessmoney()%>" id="foLessmoney">
				</div>
			</div>
			<div class="col-md-5 col-sm-5 col-xs-12">
				<div class="form-group">
					<label>ระยะเวลากู้/ปี</label><span class="require-red" style="color: red;">*</span> <input
						type="text" class="form-control" value="<%=bean.getFoLessyear()%>"
						disabled="disabled" id="foLessyear">
				</div>
			</div>
		</div>
		<!-- stap3 -->
		<div class="row">
			<div
				class="col-md-11 col-md-offset-1 col-sm-11 col-xs-12 col-sm-offset-1">
				<div style="margin: 15px 0px 0px 0px;">
					<label>วัตถุประสงค์การขอสินเชื่อ<span class="require-red" style="color: red;">*</span>
						(เลือกได้มากกว่า 1 ข้อ)
					</label>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-group">
					&nbsp;&nbsp; <input type="checkbox" value="" class="w3-check"
						name="checkbox1" id="checkbox1"> <label>ปิดสินเชื่อสถาบันการเงินอื่น
						(เช่น บัตรเครดิต สินเชื่อบุคคล รถยนต์ บ้าน)</label>

				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-group">
					&nbsp;&nbsp; <input type="checkbox" value="" class="w3-check"
						name="checkbox2" id="checkbox2"> <label>ปิดหนี้สินเชื่ออื่นๆที่ไม่ใช่สถาบันการเงิน
						(เช่น ขายฝาก / จำนองกับบุคคลภายนอก)</label>

				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-group">
					&nbsp;&nbsp; <input type="checkbox" value="" class="w3-check"
						name="checkbox3" id="checkbox3"> <label>ปิดหนี้ธุรกิจ
						/ SME / กิจการ / OD</label>

				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="form-group">
					&nbsp;&nbsp; <input type="checkbox" value="" class="w3-check"
						id="checkbox4" name="checkbox4" onclick="myFunctionck()">
					<label>จับจ่ายใช้สอยทั่วไป</label>
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12 ">
				<div class="form-group other-field" style="margin-bottom: 15px;">
					<label>โปรดระบุ</label><span class="require-red" style="color: red;">*</span> <input
						type="text" class="form-control-static textAlign-left"
						disabled="disabled" name="checkbox4-pk" value="" id="Incheckbox4pk">
				</div>
			</div>
		</div>
		<!-- stap4 -->
		
	</div>
	<input name="Incheckbox1" id="Incheckbox1" type="hidden">
	<input name="Incheckbox2" id="Incheckbox2" type="hidden">
	<input name="Incheckbox3" id="Incheckbox3" type="hidden">
	<input name="Incheckbox4" id="Incheckbox4" type="hidden">
				</div>
							</div>
							<br><br><br><br><br><br><br><br><br><br><br>
						</div>
						
					</div>
			<!-- 	Stap1	 -->
						<div class="col-lg-7 col-md-6 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view panel-refresh">
							<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark" > </h6>
								
								</div>
								
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
						
								<div class="panel-body">
					
					
					<h2 class="fs-title">1. ข้อมูลส่วนบุคคล</h2>
		<div class="row">
			<div
				class="col-xs-12 col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1 form-control-field">
				<div class="form-group">
					<label>คำนำหน้า</label><span class="require-red" style="color: red;">*</span>
					<div
						class="select select-center paddingTop-1 select-prefix select-diasbled">
						<select class="fontSize-s fontFamily-thonburi  form-control"
							name="prefix" id="foPrefix">
							<option value="">โปรดเลือก</option>
							<option value="นาย">นาย</option>
							<option value="นางสาว">นางสาว</option>
							<option value="นาง">นาง</option>
						</select>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12 ">
				<div class="form-group margin-3-col-name">
					<label>ชื่อ</label><span class="require-red" style="color: red;">*</span>

					<div class="input textAlign-left position-relative">
						<input type="text" class="form-control" src="src" name="fNameTH"
							value="" id="fNameTH">
					</div>

				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="form-group">
					<label>นามสกุล</label><span class="require-red" style="color: red;">*</span>

					<div class="input textAlign-left position-relative">
						<input type="text"
							class="form-control fontFamily-thonburi fontSize-s boxShadow-none ng-pristine ng-untouched ng-valid ng-not-empty"
							src="src" name="lNameTH" value="" id="lNameTH">
					</div>

				</div>
			</div>
		</div>
		<div class="row">
			<div
				class="col-xs-12 col-sm-5 col-md-7 form-control-field col-md-offset-1 col-sm-offset-1">
				<div class="form-group">
					<label>วันเกิด</label><span class="require-red" style="color: red;">*</span>
					<div class="row" style="margin: 0px 0px;">
						<div class="col-xs-4 col-sm-3 select select-center paddingTop-1 "
							style="margin-right: 2.5%;">
							<select class="fontSize-s fontFamily-thonburi form-control"
								name="birthDay" id="birthDay">
								<option value="">วัน</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>
						</div>
						<div
							class="col-xs-4 select select-center paddingTop-1 select-diasbled"
							style="width: 45%; margin-right: 2.5%;">
							<select class="fontSize-s fontFamily-thonburi form-control"
								name="birthMonth" id="birthMonth">
								<option value="">เดือน</option>
								<option value="มกราคม">มกราคม</option>
								<option value="กุมภาพันธ์">กุมภาพันธ์</option>
								<option value="มีนาคม">มีนาคม</option>
								<option value="เมษายน">เมษายน</option>
								<option value="พฤษภาคม">พฤษภาคม</option>
								<option value="มิถุนายน">มิถุนายน</option>
								<option value="กรกฎาคม">กรกฎาคม</option>
								<option value="สิงหาคม">สิงหาคม</option>
								<option value="กันยายน">กันยายน</option>
								<option value="ตุลาคม">ตุลาคม</option>
								<option value="พฤศจิกายน">พฤศจิกายน</option>
								<option value="ธันวาคม">ธันวาคม</option>
							</select>
						</div>
						<div class="col-xs-4 col-sm-3 select select-center paddingTop-1 ">
							<select class="fontSize-s fontFamily-thonburi form-control"
								name="birthYear" id="birthYear"><option value="">ปี</option>
								<option label="2541" value="2541">2541</option>
								<option label="2540" value="2540">2540</option>
								<option label="2539" value="2539">2539</option>
								<option label="2538" value="2538">2538</option>
								<option label="2537" value="2537">2537</option>
								<option label="2536" value="2536">2536</option>
								<option label="2535" value="2535">2535</option>
								<option label="2534" value="2534">2534</option>
								<option label="2533" value="2533">2533</option>
								<option label="2532" value="2532">2532</option>
								<option label="2531" value="2531">2531</option>
								<option label="2530" value="2530">2530</option>
								<option label="2529" value="2529">2529</option>
								<option label="2528" value="2528">2528</option>
								<option label="2527" value="2527">2527</option>
								<option label="2526" value="2526">2526</option>
								<option label="2525" value="2525">2525</option>
								<option label="2524" value="2524">2524</option>
								<option label="2523" value="2523">2523</option>
								<option label="2522" value="2522">2522</option>
								<option label="2521" value="2521">2521</option>
								<option label="2520" value="2520">2520</option>
								<option label="2519" value="2519">2519</option>
								<option label="2518" value="2518">2518</option>
								<option label="2517" value="2517">2517</option>
								<option label="2516" value="2516">2516</option>
								<option label="2515" value="2515">2515</option>
								<option label="2514" value="2514">2514</option>
								<option label="2513" value="2513">2513</option>
								<option label="2512" value="2512">2512</option>
								<option label="2511" value="2511">2511</option>
								<option label="2510" value="2510">2510</option>
								<option label="2509" value="2509">2509</option>
								<option label="2508" value="2508">2508</option>
								<option label="2507" value="2507">2507</option>
								<option label="2506" value="2506">2506</option>
								<option label="2505" value="2505">2505</option>
								<option label="2504" value="2504">2504</option>
								<option label="2503" value="2503">2503</option>
								<option label="2502" value="2502">2502</option>
								<option label="2501" value="2501">2501</option>
								<option label="2500" value="2500">2500</option>
								<option label="2499" value="2499">2499</option>
								<option label="2498" value="2498">2498</option>
								<option label="2497" value="2497">2497</option>
								<option label="2496" value="2496">2496</option>
								<option label="2495" value="2495">2495</option>
								<option label="2494" value="2494">2494</option>
								<option label="2493" value="2493">2493</option>
								<option label="2492" value="2492">2492</option>
								<option label="2491" value="2491">2491</option>
								<option label="2490" value="2490">2490</option>
								<option label="2489" value="2489">2489</option>
								<option label="2488" value="2488">2488</option>
								<option label="2487" value="2487">2487</option>
								<option label="2486" value="2486">2486</option>
								<option label="2485" value="2485">2485</option>
								<option label="2484" value="2484">2484</option>
								<option label="2483" value="2483">2483</option>
								<option label="2482" value="2482">2482</option>
								<option label="2481" value="2481">2481</option>
								<option label="2480" value="2480">2480</option>
								<option label="2479" value="2479">2479</option>
								<option label="2478" value="2478">2478</option>
								<option label="2477" value="2477">2477</option>
								<option label="2476" value="2476">2476</option>
								<option label="2475" value="2475">2475</option>
								<option label="2474" value="2474">2474</option>
								<option label="2473" value="2473">2473</option>
								<option label="2472" value="2472">2472</option>
								<option label="2471" value="2471">2471</option>
								<option label="2470" value="2470">2470</option>
								<option label="2469" value="2469">2469</option>
								<option label="2468" value="2468">2468</option>
								<option label="2467" value="2467">2467</option>
								<option label="2466" value="2466">2466</option>
								<option label="2465" value="2465">2465</option>
								<option label="2464" value="2464">2464</option>
								<option label="2463" value="2463">2463</option>
								<option label="2462" value="2462">2462</option>
								<option label="2461" value="2461">2461</option>
								<option label="2460" value="2460">2460</option>
								<option label="2459" value="2459">2459</option>
								<option label="2458" value="2458">2458</option>
								<option label="2457" value="2457">2457</option>
								<option label="2456" value="2456">2456</option>
								<option label="2455" value="2455">2455</option>
								<option label="2454" value="2454">2454</option>
								<option label="2453" value="2453">2453</option>
								<option label="2452" value="2452">2452</option>
								<option label="2451" value="2451">2451</option>
								<option label="2450" value="2450">2450</option>
								<option label="2449" value="2449">2449</option>
								<option label="2448" value="2448">2448</option>
								<option label="2447" value="2447">2447</option>
								<option label="2446" value="2446">2446</option>
								<option label="2445" value="2445">2445</option>
								<option label="2444" value="2444">2444</option>
								<option label="2443" value="2443">2443</option>
								<option label="2442" value="2442">2442</option>
								<option label="2441" value="2441">2441</option>
								<option label="2440" value="2440">2440</option>
								<option label="2439" value="2439">2439</option>
								<option label="2438" value="2438">2438</option>
								<option label="2437" value="2437">2437</option>
								<option label="2436" value="2436">2436</option>
								<option label="2435" value="2435">2435</option>
								<option label="2434" value="2434">2434</option>
								<option label="2433" value="2433">2433</option>
								<option label="2432" value="2432">2432</option>
								<option label="2431" value="2431">2431</option>
								<option label="2430" value="2430">2430</option>
								<option label="2429" value="2429">2429</option>
								<option label="2428" value="2428">2428</option>
								<option label="2427" value="2427">2427</option>
								<option label="2426" value="2426">2426</option>
								<option label="2425" value="2425">2425</option>
								<option label="2424" value="2424">2424</option>
								<option label="2423" value="2423">2423</option>
								<option label="2422" value="2422">2422</option></select>
						</div>
					</div>

				</div>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-12">
				<div class="form-group">
					<label>เลขบัตรประชาชน</label><span class="require-red" style="color: red;">*</span>
					<div class="input textAlign-left position-relative">


						<div class="input textAlign-left position-relative">
							<input type="text"
								class="form-control fontFamily-thonburi fontSize-s boxShadow-none "
								src="src" name="refID" id="refID" maxlength="13">
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div
				class="col-md-5 col-sm-5 col-xs-12 col-md-offset-1 col-sm-offset-1">
				<div class="form-group">
					<label>เบอร์มือถือ</label><span class="require-red" style="color: red;">*</span>

					<div class="input textAlign-left position-relative">
						<input type="text" id="foMobilePhone"
							class="form-control fontFamily-thonburi fontSize-s boxShadow-none ng-pristine ng-untouched ng-valid ng-not-empty"
							src="src" name="mobilePhone" maxlength="10" data-mask="(999) 999-9999">
					</div>

				</div>
			</div>
			<div class="col-md-5 col-sm-5 col-xs-12">
				<div class="form-group">
					<div class="form-group">
						<label>อีเมลติดต่อ</label><span class="require-red" style="color: red;">*</span>

						<div class="input textAlign-left position-relative">
							<input type="email"
								class="form-control fontFamily-thonburi fontSize-s boxShadow-none ng-pristine ng-untouched ng-valid ng-not-empty"
								src="src" name="email" id="foEmail" disabled="disabled" value="<%=bean.getFoEmail()%>">
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div
				class="col-md-5 col-sm-5 col-xs-12 col-md-offset-1 col-sm-offset-1">
				<div class="form-group">
					<label>ช่วงเวลาที่ให้ติดต่อ (จันทร์-ศุกร์)</label><span
						class="require-red" style="color: red;">*</span>
					<div class="select select-center paddingTop-1 select-diasbled">
						<select class="fontSize-s fontFamily-thonburi form-control"
							name="availableTime" id="foAvailableTime">
							<option value="">โปรดเลือก</option>
							<option value="8.00-10.00 น.">8.00-10.00 น.</option>
							<option value="10.00-12.00 น.">10.00-12.00 น.</option>
							<option value="12.00-13.00 น.">12.00-13.00 น.</option>
							<option value="13.00-15.00 น.">13.00-15.00 น.</option>
							<option value="15.00-17.00 น.">15.00-17.00 น.</option>
							<option value="สะดวกทุกเวลา">สะดวกทุกเวลา</option>
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<!-- page3 -->
	<div
		class=" w3-modal-content w3-card w3-animate-bottom form-section form-position">
		<h2 class="fs-title">2. อาชีพ</h2>
		<div class="row">

			<div class="row padding-job">
				<div
					class="col-md-5 col-md-offset-1  col-sm-5 col-xs-12 col-sm-offset-1">
					<div class="form-group position-form">
						<label>อาชีพปัจจุบัน</label><span class="require-red" style="color: red;">*</span>
						<div class="select select-center paddingTop-1 select-diasbled">
							<select class="fontSize-s fontFamily-thonburi form-control"
								name="job" id="foJob">
								<option value="">โปรดเลือก</option>
								<option value="ว่างงาน">ว่างงาน</option>
								<option value="ข้าราชการ">ข้าราชการ</option>
								<option value="ทหาร/ตำรวจ">ทหาร/ตำรวจ</option>
								<option value="นักการเมือง">นักการเมือง</option>
								<option value="พนักงานรัฐวิสาหกิจ">พนักงานรัฐวิสาหกิจ</option>
								<option value="พนักงานรัฐวิสาหกิจ">พนักงานสถาบันการเงิน</option>
								<option value="พนักงานบริษัท/ห้างหุ้นส่วน">พนักงานบริษัท/ห้างหุ้นส่วน</option>
								<option value="พนักงานสัญญาจ้าง">พนักงานสัญญาจ้าง</option>
								<option value="เจ้าของกิจการ">เจ้าของกิจการ</option>
								<option value="เจ้าของกิจการ">วิชาชีพอิสระ(มีใบอนุญาต)</option>
								<option value="อาชีพอิสระ(ไม่มี 50 ทวิ)">อาชีพอิสระ(ไม่มี 50 ทวิ)</option>
								<option value="อาชีพอิสระ(มี 50 ทวิ)">อาชีพอิสระ(มี 50 ทวิ)</option>
								<option value="ผู้มีรายได้หลักจากค่าคอมมิชชั่น">ผู้มีรายได้หลักจากค่าคอมมิชชั่น</option>
								<option value="พ่อบ้าน/แม่บ้าน">พ่อบ้าน/แม่บ้าน</option>
								<option value="เกษียณ">เกษียณ</option>
								<option value="นักเรียน/นักศึกษา">นักเรียน/นักศึกษา</option>
								<option value="พระภิกษุ">พระภิกษุ</option>
								<option value="นักบิน">นักบิน</option>
								<option value="แพทย์">แพทย์</option>
								<option value="ผู้พิพากษา">ผู้พิพากษา</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-md-5  col-sm-5 col-xs-12">
					<!-- ngIf: uInfo.job!=0 && ((uInfo.job>=1 && uInfo.job<=12) || (uInfo.job>=17 && uInfo.job<=19)) -->
					<div class="form-group ng-scope">
						<label>รายได้ต่อเดือน</label><span class="require-red" style="color: red;">*</span>

						<div class="input textAlign-left position-relative">
							<input type="text" placeholder=""
								class="form-control fontFamily-thonburi fontSize-s boxShadow-none "
								src="src" name="salary" id="salary">

						</div>

					</div>

				</div>
			</div>

			<div class="row padding-job ng-scope">
				<div
					class="col-md-5 col-md-offset-1 col-sm-5 col-xs-12 col-sm-offset-1">
					<div class="form-group">
						<label
							class="name-field-visible sm-name-field-invisible xs-name-field-invisible xxs-name-field-visible">รวมอายุงาน
							(ปัจจุบัน+เก่า)</label><label
							class="name-field-invisible sm-name-field-visible xs-name-field-visible xxs-name-field-invisible">รวมอายุงาน
							(ปัจจุบัน+เก่า)</label><span class="require-red" style="color: red;">*</span>
						<div class="row" style="margin: 0px 0px;">
							<div
								class="col-xs-6 select select-center paddingTop-1 select-diasbled"
								style="width: 48.75%; margin-right: 2.5%;">
								<select class="fontSize-s fontFamily-thonburi form-control"
									name="yearOfService" id="foYearOfService">
									<option value="">ปี</option>
									<option value="0">0 ปี</option>
									<option value="1">1 ปี</option>
									<option value="2">2 ปี</option>
									<option value="3">3 ปี</option>
									<option value="4">4 ปี</option>
									<option value="5">5 ปี</option>
									<option value="6">6 ปี</option>
									<option value="7">7 ปี</option>
									<option value="8">8 ปี</option>
									<option value="9">9 ปี</option>
									<option value="10">10 ปี</option>
									<option value="11">11 ปี</option>
									<option value="12">12 ปี</option>
									<option value="13">13 ปี</option>
									<option value="14">14 ปี</option>
									<option value="15">15 ปี</option>
									<option value="16">16 ปี</option>
									<option value="17">17 ปี</option>
									<option value="18">18 ปี</option>
									<option value="19">19 ปี</option>
									<option value="20">20 ปี</option>
									<option value="21">21 ปี</option>
									<option value="22">22 ปี</option>
									<option value="23">23 ปี</option>
									<option value="24">24 ปี</option>
									<option value="25">25 ปี</option>
									<option value="26">26 ปี</option>
									<option value="27">27 ปี</option>
									<option value="28">28 ปี</option>
									<option value="29">29 ปี</option>
									<option value="30">30 ปี</option>
									<option value="31">31 ปี</option>
									<option value="32">32 ปี</option>
									<option value="33">33 ปี</option>
									<option value="34">34 ปี</option>
									<option value="35">35 ปี</option>
								</select>
							</div>
							<div
								class="col-xs-6 select select-center paddingTop-1 select-diasbled"
								style="width: 48.75%;">
								<select class="fontSize-s fontFamily-thonburi form-control"
									name="monthOfService" id="foMonthOfService">
									<option value="">เดือน</option>
									<option value="0">0 เดือน</option>
									<option value="1">1 เดือน</option>
									<option value="2">2 เดือน</option>
									<option value="3">3 เดือน</option>
									<option value="4">4 เดือน</option>
									<option value="5">5 เดือน</option>
									<option value="6">6 เดือน</option>
									<option value="7">7 เดือน</option>
									<option value="8">8 เดือน</option>
									<option value="9">9 เดือน</option>
									<option value="10">10 เดือน</option>
									<option value="11">11 เดือน</option>
								</select>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<br>
	<!-- page3 -->
	<div
		class="form-section form-position w3-modal-content w3-card w3-animate-bottom">
		<h2>3. ประวัติทางการเงิน</h2>
		<div class="row">

			<div
				class="col-xs-12 col-md-12  col-sm-offset-1 position-form pos-para-3">
				<label>เคยค้างค่าผ่อนชำระเกิน 90 วันหรือไม่</label>
			</div>
			<div
				class="col-xs-12 col-sm-2 col-sm-offset-1 col-md-2 col-md-offset-1 form-control-field">
				<div class="form-group">
					<input type="radio" name="bureauPaidedStatusPaid" value="ไม่เคย"
						class="ng-pristine ng-untouched ng-valid ng-not-empty"
						checked="checked" id="bureauPaidedStatusPaid"> <label for="no"
						id="bureauPaidedStatusNo">ไม่เคย</label>
				</div>
			</div>
			<div class="col-xs-12 col-sm-5 col-md-5 form-control-field">
				<div class="form-group">
					<input type="radio"  id="bureauPaidedStatusPaid" name="bureauPaidedStatusPaid" value="เคย
						และยังไม่ได้ชำระคืน"
						class="ng-pristine ng-untouched ng-valid ng-not-empty">
					<label for="debt" id="bureauPaidedStatusNo">เคย
						และยังไม่ได้ชำระคืน</label>
				</div>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4 form-control-field">
				<div class="form-group">
					<input type="radio" id="bureauPaidedStatusPaid" name="bureauPaidedStatusPaid" value="เคย
						แต่ชำระคืนแล้ว"
						class="ng-pristine ng-untouched ng-valid ng-not-empty">
					<label for="paid" id="bureauPaidedStatusNo">เคย
						แต่ชำระคืนแล้ว</label>
				</div>
			</div>
			
					
					
					</div>
							</div>
						</div>
					</div>
					</div>
					<!-- stap2 -->
					
					<div class="row">
					<div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
						<div class="panel panel-default card-view panel-refresh">
							<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark" ></h6>
								
								</div>
								
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
						
								<div class="panel-body">
								
								
								
								<h2 class="fs-title-sec2">4. ที่อยู่สำหรับที่จะนำมาขอสินเชื่อ</h2>
			<div class="row">
				<div
					class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12">
					<div class="form-group">
						<label>ชื่อบ้าน</label><span class="require-red" style="color: red;">*</span>
						<div
							class="input textAlign-left position-relative select-diasbled">
							<input type="text"
								class="form-control fontSize-s fontFamily-thonburi boxShadow-none"
								name="propertyProjectName" id="propertyProjectName">
						</div>
					</div>
				</div>
				<div class="col-md-5 col-sm-5 col-xs-12">
					<div class="form-group">
						<label>จังหวัด</label><span class="require-red" style="color: red;">*</span>
						<div class="select select-center paddingTop-1 select-diasbled">
							<select class="fontSize-s fontFamily-thonburi form-control"
								name="province" id="province">

							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12">
					<div class="form-group">
						<label>อำเภอ</label><span class="require-red" style="color: red;">*</span>
						<div class="input textAlign-left position-relative">
							<select class="fontSize-s fontFamily-thonburi form-control"
								name="amphur" id="amphur">

							</select>
						</div>
					</div>
				</div>
				<div class="col-md-5 col-sm-5 col-xs-12">
					<div class="form-group">
						<label>ตำบล</label><span class="require-red" style="color: red;">*</span>
						<div class="select select-center paddingTop-1 select-diasbled">
							<select class="fontSize-s fontFamily-thonburi form-control"
								name="district" id="district">

							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-1 col-sm-5 col-xs-10"></div>
				<div class="col-md-2 col-sm-5 col-xs-10"></div>
			</div>
		</div>
		
		</div>
								</div>
								</div>
								
								<div class="col-lg-7 col-md-6 col-sm-12 col-xs-12">
									<div class="panel panel-default card-view panel-refresh">
							<div class="refresh-container">
								<div class="la-anim-1"></div>
							</div>
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark" > </h6>
								
								</div>
								
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
						
								<div class="panel-body">
							<div class="panel-wrapper collapse in">
			<h2 class="fs-title-sec2">5. ผู้กู้ร่วม</h2>
			<div class="row">
				<div
					class="col-xs-12 col-md-2 col-md-offset-1 col-sm-2 col-sm-offset-1 form-control-field">
					<div class="form-group">
						<div>
							<label class="containerRadio"> <input type="radio"
								name="Radio" value="1" class="" id="bbbv" required> <span
								class="checkmark">มีผู้กู้ร่วม</span>
							</label>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-md-8 col-sm-3 form-control-field">
					<div class="form-group">
						<label class="containerRadio"> <input type="radio"
							name="Radio" value="2" class="" id="bbbv" required
							checked="checked"> <span class="checkmark">ไม่มี</span>
							<input id="bbb" type="hidden" value="2">
						</label>
					</div>
				</div>

			</div>
			<div class="box" style="display: none;">
				<%@include file="PageHistory4.jsp"%>
			</div>
		


				
			</div>
								
								
								
								</div>
					</div>
								</div>
								</div>
								</div>
								
		<!-- stap2 -->
		
		
		
														
													
					<div class="row">
			<div
				class="col-lg-10 col-md-6 col-sm-12 col-xs-12">
				<div class="form-group">
				<button type="submit" class="btn btn-warning btn-block  btn-anim"><i class="fa fa-pencil"></i><span class="btn-text">ยืนยัน</span></button>
				</div>
				</div>
				</div>
					</form>
		</div>
		
		</div>
		
		</div>
		
		<!-- /Main Content -->
		
			<jsp:include page="../../Template/jsall.jsp"></jsp:include>
	</div>
	<!-- /#wrapper -->
	<jsp:include page="../../Template/footer.jsp"></jsp:include>
<script type="text/javascript">

$(document).ready(
		function() {

			
		
			$.ajax({
				type : "GET",
				url : "/province",
				contentType : "application/json; charset=utf-8",
				dataType : "json",
				success : function(msg) {
					console.log('Success')
					$('#province').append(
							'<option value="' + '">' + "กรุณาเลือก" + '</option>');
					$('#amphur').append(
							'<option value="' + '">' + "กรุณาเลือก"
									+ '</option>');
					$('#district').append(
							'<option value="' + '">' + "กรุณาเลือก"
									+ '</option>');
					for (var i = 0; i < msg.length; i++) {
						$('#province').append(
								'<option value="' + msg[i].provinceId + '">'
										+ msg[i].provinceName + '</option>');
					}

				}
			});

			$('#province').change(
					function() {
						$('#amphur').empty();
						$('#district').empty();
						var criteriaBean = {
							"xxx" : $('#province').val()
						};

						$.ajax({
							type : "POST",
							url : "/amphur",
							data : JSON.stringify(criteriaBean),
							contentType : "application/json; charset=utf-8",
							dataType : "json",
							success : function(msg2) {
								console.log('Success')
								$('#amphur').append(
										'<option value="' + '">' + "กรุณาเลือก"
												+ '</option>');
								$('#district').append(
										'<option value="' + '">' + "กรุณาเลือก"
												+ '</option>');
								for (var i = 0; i < msg2.length; i++) {
									$('#amphur').append(
											'<option value="'
													+ msg2[i].amphurId + '">'
													+ msg2[i].amphurName
													+ '</option>');
								}

							}
						});
					});

			$('#amphur').change(
					function() {
						$('#district').empty();
						var criteriaBean = {
							"xxx" : $('#amphur').val()
						};
						$.ajax({
							type : "POST",
							url : "/district",
							data : JSON.stringify(criteriaBean),
							contentType : "application/json; charset=utf-8",
							dataType : "json",

							success : function(msg3) {
								console.log('Success')
								$('#district').append(
										'<option value="' + '">' + "กรุณาเลือก"
												+ '</option>');
								for (var i = 0; i < msg3.length; i++) {
									$('#district').append(
											'<option value="'
													+ msg3[i].districtId + '">'
													+ msg3[i].districtName
													+ '</option>');
								}

							}
						});
					});

		});
</script>
</body>
</html>