<%@page import="com.Bru.Bean.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


	<h1 align="center">ผู้กู้ร่วม</h1>
	<h2 class="fs-title">1. ข้อมูลส่วนบุคคล</h2>
	<div class="row">

		<div
			class="col-xs-12 col-sm-2 col-md-2 col-sm-offset-1 col-md-offset-1 form-control-field">
			<div class="form-group">
				<label>คำนำหน้า</label><span class="require-red">*</span>
				<div
					class="select select-center paddingTop-1 select-prefix select-diasbled">
					<select class="fontFamily-thonburi fontSize-s form-control"
						name="prefix2" id="prefix2">
						<option value="">โปรดเลือก</option>
						<option value="นาย">นาย</option>
						<option value="นางสาว">นางสาว</option>
						<option value="นาง">นาง</option>
					</select>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="form-group margin-3-col-name">
				<label>ชื่อ</label><span class="require-red">*</span> <input
					type="text" class="form-control " name="fname2" id="fname2">

			</div>
		</div>
		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="form-group">
				<label>นามสกุล</label><span class="require-red">*</span> <input
					type="text" class="form-control " name="lname2" id="lname2">
			</div>
		</div>
	</div>
	<div class="row">
		<div
			class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12 form-control-field">
			<div class="form-group">
				<label>วันเกิด</label><span class="require-red">*</span>
				<div class="row" style="margin: 0px 0px;">
					<div
						class="col-xs-3 col-sm-3 select select-center paddingTop-1 select-diasbled"
						style="margin-right: 2.5%;">
						<select class="fontFamily-thonburi fontSize-s form-control"
							name="birthDay2" id="birthDay2">
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
						class="col-xs-5 select select-center paddingTop-1 select-diasbled"
						style="width: 45%; margin-right: 2.5%;">
						<select class="fontFamily-thonburi fontSize-s form-control"
							name="birthMonth2" id="birthMonth2">
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
					<div
						class="col-xs-3 col-sm-3 select select-center paddingTop-1 select-diasbled">
						<select class="fontFamily-thonburi fontSize-s form-control"
							name="birthYear2" id="birthYear2" ><option value="">ปี</option>
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
		<div class="col-md-5 col-sm-5 col-xs-12">
			<div class="form-group">
				<label>เบอร์มือถือ</label><span class="require-red">*</span> <input
					type="text" class="form-control " id="talaphone2" name="talaphone2" maxlength="10">

			</div>
		</div>
	</div>
	<div class="row">
		<div
			class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12">
			<div class="form-group">
				<div class="form-group">
					<label>อีเมลติดต่อ</label><span class="require-red">*</span> <input
						type="email" class="form-control " id="email2" name="email2">

				</div>
			</div>
		</div>
	</div>

	<h2 class="fs-title">2. อาชีพ</h2>
	<div class="row">
		<div
			class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12">
			<div class="form-group position-form">
				<label>อาชีพปัจจุบัน</label><span class="require-red">*</span>
				<div class="select select-center paddingTop-1 select-diasbled">
					<select class="fontFamily-thonburi fontSize-s form-control"
						name="job2" id="job2">
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
		<!-- ngIf: uInfo.job!=0 -->
		<div class="col-md-5 col-sm-5 col-xs-12 ng-scope">
			<div class="form-group">
				<label>รายได้ต่อเดือน</label><span class="require-red">*</span> <input
					type="text" class="form-control " name="salary2" id="salary2">
			</div>
		</div>
		<!-- end ngIf: uInfo.job!=0 -->
	</div>
	<!-- ngIf: uInfo.job!=0 -->
	<div class="row ng-scope">
		<div
			class="col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1 col-xs-12">
			<div class="form-group">
				<label
					class="name-field-visible sm-name-field-invisible xs-name-field-invisible xxs-name-field-visible">รวมอายุงานทั้งหมด
					(เดิม+ปัจจุบัน)</label>
				<div class="row" style="margin: 0px 0px;">
					<div
						class="col-xs-6 select select-center paddingTop-1 select-diasbled"
						style="width: 48.75%; margin-right: 2.5%;">
						<select class="fontFamily-thonburi fontSize-s form-control"
							name="yearOfService2" id="yearOfService2">
							<option value="">โปรดเลือก</option>
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
						<select class="fontFamily-thonburi fontSize-s  form-control"
							name="monthOfService2" id="monthOfService2">
							<option value="">โปรดเลือก</option>
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
		<div class="col-md-5 col-sm-5">
			<!-- ngIf: uInfo.job==8 -->
		</div>
	</div>

