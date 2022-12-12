<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"> <head> <meta
	http-equiv="Content-Type" content="text/html; charset=utf-8" /> <title>Untitled
Document</title> <script src="http://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script> <link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"> <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script></head> <body> <style>

td , h4{text-align:center;}

tbody tr td:first-child {text-align:left;}

input[type='radio'] {visibility: hidden;}

input[type='radio']:after {width:1.5em;height:1.5em;

        border-radius: 0.75em;

        background-color: #fff;

        content: '';

        display: inline-block;

        visibility: visible;

        border: 2px solid #8d8d8e;}

input[type='radio']:checked:after {

        background-color: #007bff;

        content: '';

        display: inline-block;

        visibility: visible;

        border: 2px solid #8d8d8e;

 }

</style> <div class="container"> <div class="row"> <div
	class="col-md-12"> <h4>[ㅇ+크림] 자가 피부 타입 진단 테스트</h4> <div
	class="table-responsive"> <form id="research"
	class="form-horizontal"> <table class="table"> <thead>

<tr> <td>항목</td> <td>매우아니다/매우작다/매우적다</td> <td>아니다/작다/적다</td> <td>보통이다</td>

<td>그렇다/크다/많다</td> <td>매우 그렇다/매우 크다/매우 많다</td> </tr> </thead> <tbody> <tr>

<td>모공크기가 전박적으로 크다.</td> <td>
<input class="skin" type="radio" name="s1" value="3" /></td> <td>
<input class="skin" type="radio" name="s1" value="6" /></td> <td>
<input class="skin" type="radio" name="s1" value="9" /></td> <td>
<input class="skin" type="radio" name="s1" value="12" /></td> <td>
<input class="skin" type="radio" name="s1" value="15" /></td> </tr> <tr> <td>피지분비가
활발하게 일어난다.</td> <td>
<input class="skin" type="radio" name="s2" value="2" /></td> <td>
<input class="skin" type="radio" name="s2" value="4" /></td> <td>
<input class="skin" type="radio" name="s2" value="6" /></td> <td>
<input class="skin" type="radio" name="s2" value="8" /></td> <td>
<input class="skin" type="radio" name="s2" value="10" /></td> </tr> <tr> <td>피부에
윤기가 있다고 생각한다.</td> <td>
<input class="skin" type="radio" name="s3" value="2" /></td> <td>
<input class="skin" type="radio" name="s3" value="4" /></td> <td>
<input class="skin" type="radio" name="s3" value="6" /></td> <td>
<input class="skin" type="radio" name="s3" value="8" /></td> <td>
<input class="skin" type="radio" name="s3" value="10" /></td> </tr> <tr> <td>세안
후 피부당김이 있다.</td> <td>
<input class="skin" type="radio" name="s4" value="15" /></td> <td>
<input class="skin" type="radio" name="s4" value="12" /></td> <td>
<input class="skin" type="radio" name="s4" value="9" /></td> <td>
<input class="skin" type="radio" name="s4" value="6" /></td> <td>
<input class="skin" type="radio" name="s4" value="3" /></td> </tr> <tr> <td>T존에
유분기가 있다.</td> <td>
<input class="skin" type="radio" name="s5" value="2" /></td> <td>
<input class="skin" type="radio" name="s5" value="4" /></td> <td>
<input class="skin" type="radio" name="s5" value="6" /></td> <td>
<input class="skin" type="radio" name="s5" value="8" /></td> <td>
<input class="skin" type="radio" name="s5" value="10" /></td> </tr> <tr> <td>부분적이나
전체적으로 하얀 각질이 일어난다.</td> <td>
<input class="skin" type="radio" name="s6" value="15" /></td> <td>
<input class="skin" type="radio" name="s6" value="12" /></td> <td>
<input class="skin" type="radio" name="s6" value="9" /></td> <td>
<input class="skin" type="radio" name="s6" value="6" /></td> <td>
<input class="skin" type="radio" name="s6" value="3" /></td> </tr> <tr> <td>피부에
트러블이 잘 생긴다.</td> <td>
<input class="skin" type="radio" name="s7" value="2" /></td> <td>
<input class="skin" type="radio" name="s7" value="4" /></td> <td>
<input class="skin" type="radio" name="s7" value="6" /></td> <td>
<input class="skin" type="radio" name="s7" value="8" /></td> <td>
<input class="skin" type="radio" name="s7" value="10" /></td> </tr> <tr> <td>세안
후 1시간 이내에 기름이 많아진다.</td> <td>
<input class="skin" type="radio" name="s8" value="2" /></td> <td>
<input class="skin" type="radio" name="s8" value="4" /></td> <td>
<input class="skin" type="radio" name="s8" value="6" /></td> <td>
<input class="skin" type="radio" name="s8" value="8" /></td> <td>
<input class="skin" type="radio" name="s8" value="10" /></td> </tr> <tr> <td>얼굴이
전반적으로 건조하다.</td> <td>
<input class="skin" type="radio" name="s9" value="15" /></td> <td>
<input class="skin" type="radio" name="s9" value="12" /></td> <td>
<input class="skin" type="radio" name="s9" value="9" /></td> <td>
<input class="skin" type="radio" name="s9" value="6" /></td> <td>
<input class="skin" type="radio" name="s9" value="3" /></td> </tr> <tr> <td>전체적으로
피부가 탄력적이라고 생각한다.</td> <td>
<input class="skin" type="radio" name="s10" value="2" /></td> <td>
<input class="skin" type="radio" name="s10" value="4" /></td> <td>
<input class="skin" type="radio" name="s10" value="6" /></td> <td>
<input class="skin" type="radio" name="s10" value="8" /></td> <td>
<input class="skin" type="radio" name="s10" value="10" /></td> </tr> <tr> <td>평소에
피부 수분이 부족하다고 생각한다.</td> <td>
<input class="skin1" type="radio" name="s11" value="1" /></td> <td>
<input class="skin1" type="radio" name="s11" value="2" /></td> <td>
<input class="skin1" type="radio" name="s11" value="3" /></td> <td>
<input class="skin1" type="radio" name="s11" value="4" /></td> <td>
<input class="skin1" type="radio" name="s11" value="5" /></td> </tr> <tr> <td>입술이
쉽게 건조해진다.</td> <td>
<input class="skin1" type="radio" name="s12" value="1" /></td> <td>
<input class="skin1" type="radio" name="s12" value="2" /></td> <td>
<input class="skin1" type="radio" name="s12" value="3" /></td> <td>
<input class="skin1" type="radio" name="s12" value="4" /></td> <td>
<input class="skin1" type="radio" name="s12" value="5" /></td> </tr> <tr> <td>피부가
작은 자극에도 쉽게 붉어진다.</td> <td>
<input type="radio" name="s13" value="0" /></td> <td>
<input type="radio" name="s13" value="0" /></td> <td>
<input type="radio" name="s13" value="0" /></td> <td>
<input type="radio" name="s13" value="0" /></td> <td>
<input type="radio" name="s13" value="1" /></td> </tr> </tbody> </table> </form> <button id="actres"
	class="btn btn-primary" data-title="결과보기" style="width: 100%;"
	data-toggle="modal" data-target="#result">결과보기</button> </div> <!-- /.modal-content -->

</div> <!-- /.modal-dialog --> </div> <div class="modal fade" id="result"
	tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">

<div class="modal-dialog"> <div class="modal-content"> <div
	class="modal-header"> <h4 class="modal-title custom_align"
	id="Heading">피부타입별 추천</h4> <button type="button" class="close"
	data-dismiss="modal" aria-hidden="true">X</button> </div> <div
	class="modal-body"> <div class="form-group"> 총점: <input
	class="form-control " type="text" name="sum" readonly /> </div> <div
	class="form-group"> 피부타입 : <input class="form-control "
	type="text" name="skintype" readonly /> </div> <div class="form-group">

추천제품 : <textarea rows="4" class="form-control" id="itemtypelist"
	readonly /></textarea> </div> </div> <div class="modal-footer "> <button type="button"
	class="btn btn-primary btn-lg" style="width: 100%;"> 신청하기 </button> </div> </div> <!-- /.modal-content -->

</div> <!-- /.modal-dialog --> </div> </div> <script>

function skinscore(){

    var score = 0;

    var score1 = 0;	

	var isResult = true ;

	var itemResult = new Array() ;

	var itemlist = "";

    $(".skin:checked").each(function(){

        score+=parseInt($(this).val(),10);

    });

    $("input[name=sum]").val(score);

	var skintypeArray = new Array("건성","복합성","지성");

	var itemtypeArray = new Array("건성 피부 타입용","복합성 피부 타입용","지성 피부 타입용","포어 케어", "수분 인텐시브", "민감성 피부 타입용");

	if(score < 59)  {		

		$("input[name=skintype]").val(skintypeArray[0]);

		itemResult[0] = itemtypeArray[0];

	}

	else if(score < 81) {

		$("input[name=skintype]").val(skintypeArray[1]);

		itemResult[0] = itemtypeArray[1];

	}

	else {

		itemResult[0] = itemtypeArray[2];

		$("input[name=skintype]").val(skintypeArray[2]);

		if($("input[name=s7]:checked").val() > 7)  {

			itemResult[1] = itemtypeArray[3];

		}

		$(".skin1:checked").each(function(){

	        score1+=parseInt($(this).val(),10);

	    });

		

		if(score1 >7) itemResult[2] = itemtypeArray[4];

				

		if($("input[name=s13]:checked").val() > 0) {

			itemResult[3] = itemtypeArray[5];

		}		

	}

	for(k=0;k<itemResult.length;k++){

		if(itemResult[k]) {		

			itemlist = itemlist + "[ㅇ+크림] " + itemResult[k] + " 크림을 추천합니다.\n";

		}

		

	}

	$("#itemtypelist").val(itemlist);

	var rsrchChk = $("#research input[type=radio]");

	$(':radio').each(function () {

		name = $(this).attr('name');

		if (isResult && !$(':radio[name="' + name + '"]:checked').length){ isResult = false;}

			console.log(isResult);

		});





	if(isResult) $("#actres").show();

}

$().ready(function(){

	$("#actres").hide();

    $("input").change(function(){

        skinscore()

    });

});







</script> </body> </html>