<%@page import="cn.tm.model.*"%>
<%@page import="cn.tm.dao.ProductDao"%>
<%@page import="cn.tm.connection.*"%>
<%@page import="java.util.*"%><%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%	
	User auth =(User) request.getSession().getAttribute("auth");
if (auth != null){
		request.setAttribute("auth", auth);
	}else{
		response.sendRedirect("login.jsp");
	}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null){
	ProductDao pDao = new ProductDao(DbCon.getConnection());
	cartProduct = pDao.getCartProducts(cart_list);
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TechnoMart</title>
<%@include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
<%@include file="fix/nav.jsp" %>


	<main class="text-white bg-dark page login-page" style="background: var(--bs-dark);">
        <section>
            <div class="container">
                <form action="custom">
                    <div class="row text-center justify-content-center">
                        <div class="col-xxl-8 text-start">
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 fw-lighter text-start col-xxl-4"><strong>Motherboard</strong><br></h1>
                                <div class="col-xxl-6"><input name="motherbord" class="form-control" list="datalistOptions1" id="exampleDataList" placeholder="Type to search..." required="required">
<datalist id="datalistOptions1">
  <option value="Asus ROG Strix Z690-E Gaming WIFI">
  <option value="ASUS ROG STRIX Z690-A GAMING WIFI D4">
  <option value="ASUS PRIME Z690M-PLUS D4">
  <option value="ASUS PRIME H610M-A WIFI D4">
  <option value="ASUS PRIME H610M-E D4">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Processor<br></h1>
                                <div class="col-xxl-6"><input name="processer"  class="form-control" list="datalistOptions2" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions2">
  <option value="Intel Core i9 10980XE">
  <option value="Intel Core i7 12900KF">
  <option value="Intel Core i5 12600K">
  <option value="Intel Core i3 12100">
  <option value="Intel Pentium Gold G6400">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Ram<br></h1>
                                <div class="col-xxl-6"><input  name="ram" class="form-control" list="datalistOptions3" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions3">
  <option value="TeamGroup T-Force Xtreem ARGB White 64GB (32GBx2) 3600MHz DDR4">
  <option value="Corsair Vengeance 32GB (16GBx2) DDR5 5200MHz Black">
  <option value="Corsair Dominator Platinum RGB 32GB (16GBx2) 3600 MHz DDR4">
  <option value="TeamGroup T-Force Delta RGB White 16GB (16GBx1) 3200MHz DDR4">
  <option value="TeamGroup T-Force Delta RGB White 8GB (8GBx1) 3200MHz DDR4">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Graphics card<br></h1>
                                <div class="col-xxl-6"><input  name="graphics" class="form-control" list="datalistOptions4" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions4">
  <option value="ASUS ROG Strix RTX 3090 Gaming OC 24GB">
  <option value="ZOTAC RTX 3080 Ti Trinity OC 12GB">
  <option value="ASUS TUF GAMING RTX 3080 12GB OC">
  <option value="MSI RX 6600 XT MECH 2X OC 8GB">
  <option value="Colorful GTX 1650 4GB NB 4GD6-V">
  <option value="Colorful GTX 1050 Ti 4GB NE 4G-V">
  <option value="MSI RX 6400 AERO ITX 4G">
  <option value="ASUS GT 710 2GB 4x HDMI">
  <option value="ASUS GT 730 2GB DDR5 Silent">
  <option value="Gigabyte GT 710 2GB DDR5">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">SSD<br></h1>
                                <div class="col-xxl-6"><input  name="ssd" class="form-control" list="datalistOptions5" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions5">
  <option value="Samsung 980 PRO 2TB NVMe M.2 SSD">
  <option value="Samsung 980 PRO 1TB NVMe M.2 SSD">
  <option value="Samsung 980 PRO 500GB NVMe M.2 SSD">
  <option value="Samsung 980 500GB NVMe M.2 SSD">
  <option value="Samsung 980 PRO 250GB NVMe M.2 SSD">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">HDD<br></h1>
                                <div class="col-xxl-6"><input  name="hdd" class="form-control" list="datalistOptions6" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions6">
  <option value="Seagate 8TB IronWolf NAS HDD">
  <option value="WD 6TB Purple WD62PURZ">
  <option value="Seagate 4TB IronWolf NAS HDD">
  <option value="Seagate 2TB Barracuda 7200 RPM">
  <option value="Seagate 1TB Barracuda 7200 RPM">
  <option value="WD 1TB BLUE">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">PSU<br></h1>
                                <div class="col-xxl-6"><input name="psu" class="form-control" list="datalistOptions7" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions7">
  <option value="Corsair RM1000X 80 Plus Gold">
  <option value="Antec HCG 1000W Extreme">
  <option value="Corsair RM650 80 Plus Gold">
  <option value="Cooler Master MWE 650W Gold V2">
  <option value="Antec VP450P Plus 80 Plus">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Cabinet<br></h1>
                                <div class="col-xxl-6"><input  name="cabinet" class="form-control" list="datalistOptions8" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions8">
  <option value="Fractal Design Torrent Compact RGB Black Light Windowed">
  <option value="Fractal Design Meshify 2 XL Light">
  <option value="Fractal Design Meshify 2 Light">
  <option value="Corsair 5000D Airflow White">
  <option value="Zebronics Floki">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">CPU Cooler<br></h1>
                                <div class="col-xxl-6"><input name="cooler" class="form-control" list="datalistOptions9" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions9">
  <option value="NZXT Kraken Z73 360mm">
  <option value="Corsair iCUE H150i ELITE LCD 360mm CPU Cooler">
  <option value="DEEPCOOL CASTLE 360EX A-RGB WHITE">
  <option value="Cooler Master Hyper 212 RGB Black Edition">
  <option value="Deepcool GAMMAXX GT A-RGB">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Case fan<br></h1>
                                <div class="col-xxl-6"><input name="fan" class="form-control" list="datalistOptions10" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions10">
  <option value="Corsair QL120 RGB 120mm Triple Pack White">
  <option value="Antec Prizm 120 ARGB 3+2+C Pack">
  <option value="Thermaltake Pure 12 120mm ARGB Case Fans 3 Pack">
  <option value="Noctua NF-F12 PWM Fan Industrial PPC 3000RPM">
  <option value="Deepcool RF120 FS 120MM">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Monitor<br></h1>
                                <div class="col-xxl-6"><input  name="moniter" class="form-control" list="datalistOptions11" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions11">
  <option value="LG 27UL850-W 4K Monitor">
  <option value="New York">
  <option value="Seattle">
  <option value="Los Angeles">
  <option value="Chicago">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">UPS<br></h1>
                                <div class="col-xxl-6"><input name="ups" class="form-control" list="datalistOptions12" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions12">
  <option value="LG 27UL850-W 4K Monitor">
  <option value="BenQ EX2510S IPS 144Hz 1ms">
  <option value="DELL S2421H IPS 75Hz">
  <option value="LG 22MK430H-B IPS 75Hz Monitor">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Keyboard<br></h1>
                                <div class="col-xxl-6"><input  name="keyboard" class="form-control" list="datalistOptions13" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions13">
  <option value="Logitech G413 Mechanical Gaming Keyboard">
  <option value="Redragon K551 Rainbow LED Backlit Mechanical">
  <option value="Redgear Shadow Blade Mechanical Keyboard">
  <option value="Ant Esports MK1200 Mini Wired Mechanical Gaming Keyboard ">
  <option value="Redgear Blaze Semi-Mechanical wired Gaming keyboard">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 class="fs-2 text-start col-xxl-4">Mouse<br></h1>
                                <div class="col-xxl-6"><input  name="mouse" class="form-control" list="datalistOptions14" id="exampleDataList" placeholder="Type to search...">
<datalist id="datalistOptions14">
  <option value="Logitech G G502 Hero High Performance Wired USB">
  <option value="Ant Esports GM320 RGB Optical Wired Gaming Mouse">
  <option value="MEETION MT-M990S Black Transformer Style Wired Gaming Mouse">
  <option value="Dragonwar ELE-G9 Thor USB Wired">
  <option value="Redgear A-10 Wired Gaming Mouse">
</datalist></div>
                            </div>
                            <div class="d-xxl-flex justify-content-evenly align-items-xxl-center" style="height: 73px;">
                                <h1 for="exampleFormControlTextarea1" class="fs-2 text-start col-xxl-4">Any massage<br></h1>
                                <div class="col-xxl-6">
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="1"></textarea>
                                </div>
                            </div>
                            
          
                            
                        </div>
                        <div class="my-3">
							<div>
							    <div><span class="fs-3 text-white-50">Submit  Your query and our experts will contact you</span></div>
							</div>
							<button class="btn btn-outline-warning" type="submit">Submit</button>                        
                        </div>
                    </div>
                    <div>
					
                </form>
            </div>
        </section>
    </main>


<%@include file="fix/footer.jsp" %>
<%@include file="fix/scripts.jsp" %>
</body>
</html>
