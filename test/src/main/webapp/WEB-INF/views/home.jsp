<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<input type="button" value="나와라" id="searchOk02"/>
	<a href="testapi2">다음으로</a>	
	<a href="testhtml">html</a>	
	<a href="planner">플래너</a>
	<a href="planner1">플래너1</a>
	<a href="combo">콤보</a>
	<br/><br/>
		<div id="container"></div>
		<br/><br/>
<script type="text/javascript" language="javascript" 
		     src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#searchOk02").on("click", function(){
			
			$.ajax({
			    url: 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=6f%2B9GV1OSBV%2BRfUgfgMGJdFxW6rxP%2F5pUN8ZCITBNd94TjMATfCcpyLoRWl3X8ad9ojV9B%2BSLxgndmvE23wVBQ%3D%3D&contentTypeId=32&areaCode=39&sigunguCode=&cat1=B02&cat2=B0201&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=30&pageNo=1', // 읽어올 문서
			    type: 'GET', // 방식
			    dataType: 'xml', // 문서 타입
			    timeout: 1000, // 시간 설정 
			    error: function(){ // 로딩 에러시
			        alert('Error loading document');
			    },
			    success: function(xml){ // 로딩 성공시
					  var html= "";
			    	  var firstimage = "";
					  html += "<table border='1' width='50%'>";
					  html += "<tr>";
					  html += "<th>addr1</th>";
					  html += "<th>addr2</th>";
					  html += "<th>title</th>";
					  html += "<th>cat1</th>";
					  html += "<th>img</th>";
					  html += "</tr>";
					  alert("1");
					  $(xml).find('item').each(function(){
							  html += "<tr>";
							  html += "<td align='center'>"+$(this).find("addr1").text()+"</td>";
							  html += "<td align='center'>"+$(this).find("addr2").text()+"</td>";
							  html += "<td align='center'>"+$(this).find("title").text()+"</td>";
							  html += "<td align='center'>"+$(this).find("cat1").text()+"</td>";
							  if(firstimage != null) html += "<td align='center'><img width='50' height='50' class src='"+$(this).find("firstimage").text()+"'/></td>";
							  html += "</tr>";
							 
						  
					  });
					  html += "</table>";
					  $("#seq").val("");
					  
					  $("#container").html(html);
				} 
			});
		});
	});

</script>
</body>
</html>