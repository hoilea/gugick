<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<title></title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="description" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="../css/imgslide.css" rel="stylesheet" type="text/css"
	media="all" />

<link href="../css/common.css" rel="stylesheet" type="text/css"
	media="all" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>

<script type="text/javascript" src="../js/controller.js"></script>

<script></script>
<script type="text/javascript">

(function(){

    var current = 0;

    var max = 0;

    var container;

    var interval;

    var xml;

    var animateTarget = null;

    function init(){

      container = jQuery(".slide ul");

      max = container.children().length;

      //console.log();

      events();

      interval = setInterval(next, 3000);

  }

  // 무한 롤링 셋팅

  function setting(){

    container.css("margin-left","-600px");

    container.prepend(container.children()[max-1]);

  }

  function events(){

    jQuery("button.prev").on("click", prev);

    jQuery("button.next").on("click", next);

    jQuery(window).on("keydown", keydown);

  }

  function prev( e ){

    current--;

    if( current < 0 )  current = max-1;

    animate("prev");    // pram

  }

  function next( e ){

    current++;

    if( current > max-1 ) current = 0;

    animate("next");    // pram

  }

  function animate( $direction ){

    if( animateTarget !=null ){

      TweenMax.killTweensOf( animateTarget );

      animateTarget.css("margin-left","0");

    }

    if( $direction == "next"){

      jQuery(container.children()[1]).css("margin-left","1320px");

      container.append( container.children()[0] );

    } else if( $direction == "prev"){

      container.prepend( container.children()[max-1] );

      jQuery(container.children()[0]).css("margin-left","-1320px");

    }

    animateTarget = jQuery(container.children()[0]);

    TweenMax.to( animateTarget, 0.8, { marginLeft:0, ease:Expo.easeOut });

    clearInterval(interval);  // 누적된어 있는것을 클리어 함

    interval = setInterval(next, 3000);  // Interval 누적됨

  }

  function keydown( e ){

    //console.log(e); 키보드 이벤트 로그

    if( e.which == 39 /*right*/ ){

        next();

    }else if( e.which == 37 /*left*/ ){

        prev();

    }

  }

  jQuery( document ).ready( init );

})();


</script>
<style type="text/css">
img{

  display: block;

  border: 0;

}



.slide{

  width: 1320px;

  height: 600px;

  margin: 0 auto;

  overflow: hidden;

  position: relative;

}



.slide ul{

  width: 3000px;

  list-style: none;

  font-size: 0;

}



.slide ul li{

  display: inline-block;

}



.slide button.prev{

  position: absolute;

  left: 0;

  top: 120px;

}



.slide button.next{

  position: absolute;

  right: 0;

  top: 120px;

}

</style>

</head>

<body>

	<div class="wrap">
		<!-- 전체 wrap 감싸안으며 -->

		<div class="slide">

			<button type="button" class="prev" value="<">

				<a href=""><</a>

			</button>

			<ul>

				<li><img src="../image/moon.jpg" alt="" width="1320px"/></li>

				<li><img src="../image/moon2.jpg" alt="" width="1320px"/></li>

				<li><img src="../image/moon3.jpg" alt="" width="1320px"/></li>

				<li><img src="../image/moon.jpg" alt="" width="1320px"/></li>

				

			</ul>

			<button type="button" class="next" value=">">

				<img src="" alt="" />

			</button>

		</div>

	</div>
	<!-- wrap END -->

</body>

</html>



