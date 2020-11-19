<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#slideshow { 
    margin: 50px auto; 
    position: relative; 
    width: 240px; 
    height: 240px; 
    padding: 10px; 
    box-shadow: 0 0 20px rgba(0,0,0,0.4); 
}

#slideshow > div { 
    position: absolute; 
    top: 10px; 
    left: 10px; 
    right: 10px; 
    bottom: 10px; 
}
</style>
<script type="text/javascript">
$("#slideshow img:gt(0)").hide();

setInterval(function() { 
  $('#slideshow img:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
},  3000);
</script>
</head>
<body>


	<div id="slideshow">
		<div class="our-clients-block col-6-tablet clear">
			<h3 class="h3">Our Factory</h3>
			<input type="radio" name="clients" id="client-tab-1"
				class="client-tab-radio client-tab-radio-1 none" checked> <label
				class="client-tab-label client-tab-label-1" for="client-tab-1"
				onclick><span class="none">Client Tab</span></label>
			<div class="client-tab client-tab-1">
				<img alt="" src="img/f2.jpg">
			</div>
			<input type="radio" name="clients" id="client-tab-2"
				class="client-tab-radio client-tab-radio-2 none"> <label
				class="client-tab-label client-tab-label-2" for="client-tab-2"
				onclick><span class="none">Client Tab</span></label>
			<div class="client-tab client-tab-2">
				<img alt="" src="img/f3.jpg">
			</div>
			<input type="radio" name="clients" id="client-tab-3"
				class="client-tab-radio client-tab-radio-3 none"> <label
				class="client-tab-label client-tab-label-3" for="client-tab-3"
				onclick><span class="none">Client Tab</span></label>
			<div class="client-tab client-tab-3">
				<img alt="" src="img/f1.jpg">
			</div>
		</div>
	</div>

</body>
</html>