<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>I</title>
<link rel="stylesheet" href="resources/css/testa2.css">
<link rel="stylesheet" href="resources/css/scroll.css">
</head>
<body>
<main>

  <input id="name" placeholder="검색하실 도시를 입력해주세요" x-webkit-speech autocomplete="off" name="writer"/>
  <select title="지역선택" name="areacode" id="areacode">
       <option value selected="selected">지역선택</option>
       <option value = "1">서울</option>
       <option value = "2">인천</option>
       <option value = "3">대전</option>
  </select>
  <select title="관광타입" name="contenttypeid" id="contenttypeid">
       <option value selected="selected">타입선택</option>
       <option value = "12">관광지</option>
       <option value = "14">문화시설</option>
       <option value = "32">숙박</option>
  </select>
  <header></header>
  
  <section class="card" id ="card">  
  </section>
 <!--  <<section class="card">
    <h1><strong>32 minutes</strong> to Consol Energy Center</h1>
    <h2>McKnight Road</h2>
    <div class="map"><img src="img/noimage.jpg"/></div>
  </section> -->

 <!--  <section class="card">
    <h1>View nearby events</h1>
    <h2>Justin Bieber - Nicki Minaj - other crappy singers...</h2>
  </section>  -->

</main>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	 $(document).ready(function() {
            // ID를 alpreah_input로 가지는 곳에서 키를 누를 경우
            $("#name").keydown(function(key) {
                //키의 코드가 13번일 경우 (13번은 엔터키)
                if (key.keyCode == 13) {
                	var areaindex = $("#areacode option:selected").attr('value');
                	var typeindex = $("#contenttypeid option:selected").attr('value');
                	alert("start");
		             $.ajax({
		                    type: 'get',
		                    url: 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=6f%2B9GV1OSBV%2BRfUgfgMGJdFxW6rxP%2F5pUN8ZCITBNd94TjMATfCcpyLoRWl3X8ad9ojV9B%2BSLxgndmvE23wVBQ%3D%3D&contentTypeId='+typeindex+'&areaCode='+areaindex+'&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=1000&pageNo=', // 읽어올 문서
		    			    dataType: "xml",
		                    data: { addr1 : $("#name").val()},
		                    success: function(xml) {
		                    	 var num = 0;
		                    	 var html= "";
		                    	 var str = "";
		                    	 var result = 0;
		                    	 var firstimage = "";
		                    	 alert($("#name").val());
		                    	 alert(areaindex);
		                    	 alert(typeindex);
		                    	 $(xml).find('item').each(function(){
		                    		 str = $(this).find("addr1").text();
		                    		 firstiamge = $(this).find("firstimage").text();
		                    		 imgSize= firstiamge.length;
		                    		 if(str.indexOf($("#name").val())!=-1){
			                    		 html += "<h1><a class='link_a' href='testGet.do?contentid="+$(this).find("contentid").text()+"'>"+$(this).find("title").text()+"</a></h1>";
			                    		 html += "<h2>"+$(this).find("addr1").text()+"</h2>";
			                    		 if(imgSize>0){ html += "<div ><img class='map' src='"+$(this).find("firstimage").text()+"'/></div>";	
			                    		 }else{ html += "<div><img class='map' src='https://st4.depositphotos.com/17828278/24401/v/600/depositphotos_244011872-stock-illustration-image-vector-symbol-missing-available.jpg'/></div>";}
			                    		 //alert($(this).find("addr1").text());		
			                    		 //result = str.indexOf($("#name").val());
		                    	 		 //alert(result);
		                    		 }else{
		                    			 if(num<1){
		                    			 	html += "<h1>검색결과 없음</h1>";
		                    			 	num++;
		                    			 }
		                    		 }
		                    	 });
		                    	 $("#card").html(html);		                   
		                    }			                       					
		             });
                }
            }); 
    });
});
</script>

</body>
</html>