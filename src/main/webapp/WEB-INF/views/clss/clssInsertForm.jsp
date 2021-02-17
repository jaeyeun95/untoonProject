<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의등록</title>
<!-- iframe 스타일 -->
<style>
      #back{width:100vw;height:100vh;background:#000;opacity:0.7;display:none;position:fixed;top:0;z-index:10;}
      #pay_pop{width:700px;height:840px;position:fixed;left:0;right:0;margin:0 auto;top:70px;display:none;z-index:20}
      #pay_pop iframe{border-radius:10px;width:100%;height:100%;border:none;}
</style>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/clssInsert/common.css?ver=201204" media="all">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/clssInsert/notokr.css?ver=201204" media="all">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/clssInsert/jquery.mCustomScrollbar.css" media="all">
<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }//resources/css/clssInsert/header_pc.css?ver=201204"/>
<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/clssInsert/footer_pc.css?ver=201204"/>
<link type="text/css" rel="stylesheet"
		href="${ pageContext.request.contextPath }/resources/css/clssInsert/style.css?ver=20040210" />
		
		
<!-- 스크립트 -->
<%-- <script type="text/javascript"
	src="${ pageContext.request.contextPath }/resources/js/insertClss/myPage/mypage.js"></script> --%>
<script src="${ pageContext.request.contextPath }/resources/js/insertClss/lazysizes.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/insertClss/jquery-ui.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/insertClss/tutor_common.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/insertClss/func13.js"></script>


<!--- pc,mobile 공통 스크립트-->
<script src="${ pageContext.request.contextPath }/resources/js/insertClss/prototype.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/insertClss/controll.js"></script>

<meta property="fb:app_id" content="1488135204822133" />


<!-- Enliple Common Tracker v3.6 [공용] start -->
<!-- <script
	src="https://cdn.megadata.co.kr/js/en_script/3.6/enliple_min3.6.js"
	defer="defer" onload="mobRf()"></script> -->
<!-- Enliple Common Tracker v3.6 [공용] end -->
<!--모비온 스크립트 마케팅 효율 측정-->


<div id="wrap">
	<!-- top_banner -->
	<!-- // top_banner -->
	<!-- header -->
	<header id="header" class="hd_sub "> </header>
	<!-- //header -->
	<!-- header 검색 스크립트-->







<style>
input[type=file] {
	display: block
}
</style>
<script type="text/javascript">
<!-- 다음 페이지 누르면 실행되는 함수 -->
$(function(){
	nextForm();
	
	$(".next button on").on("click", function(){
		nextForm();
	})
});

function nextForm(){
	$(".insertForm1").hide();
	$(".insertForm2").show();
	$(".insertForm3").hide();
	$(".insertForm4").hide();
}

/* $(".insertForm1").click(function(){
	$(".insertForm1").show();
	$(".insertForm2").hide();
	$(".insertForm3").hide();
	$(".insertForm4").hide();
}); */
</script>
</head>
<body>
	<form action="tcinsert.do" method="POST" id="frm-register-detail" enctype="multipart/form-data">
		<div class="insertForm1">
		<input type="hidden" id="Id" name="Id" value="32599">
		<div class="tutor_cont">
			<div class="dim" id="dim"></div>
			<div class="title_box">
				<h3>강의등록</h3>
				<div class="steps">
					<li class="on"><b>01</b>기본정보</li> <img
						src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
					<a href="/tutor/regiTitle/32599"><li><b>02</b>제목/이미지</li></a> <img
						src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
					<a href="/tutor/regiPrice/32599"><li><b>03</b>가격</li></a> <img
						src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
					<a href="/tutor/regiClass/32599"><li><b>04</b>수업</li></a>
				</div>
			</div>
			<div class="info1">
				<span class="pink">*</span>필수
			</div>
			<div class="box">
				<div class="title">
					강사번호인증<b class="pink">*</b>
				</div>
				<div class="cont">
					<input type="text" id="phone" name="phone" class="basic phone"
						placeholder="개인연락처를 - 없이 입력해주세요." value="010-4763-5023"> <span
						class="verifys" id="veriPhone">번호변경</span> <input type="hidden"
						name="isAuth" id="isAuth" value="1"> <span
						class="verified left10" id="verifiedPhone"
						style="display: inline-block;">인증완료</span>
				</div>
			</div>
			<script>
            $('#phoneCls').click(function() {
                $('#dim').hide();
                $('#phone_box').hide();
            });

            var panInterval;

            $('#veriPhone').click(function() {
                var phone = $('#phone').val();
                if (/\d\d\d\-?\d\d\d\d?\-?\d\d\d\d/.test(phone)) {
                    sendPhoneConfirm(phone);

                } else {
                    alert('올바른 전화번호를 입력하세요');
                    $('#Phone').focus();return false;
                }
                $('#dim').show();
                $('#phone_box').show();

                clearInterval(panInterval);
                var fiveMinutes = 60 * 5, display = document.querySelector('#time');
                startTimer(fiveMinutes, display);
            });

            function startTimer(duration, display) {
                var timer = duration, minutes, seconds;
                panInterval = setInterval(function () {
                    minutes = parseInt(timer / 60, 10);
                    seconds = parseInt(timer % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;

                    display.textContent = minutes + ":" + seconds;

                    if (--timer < 0) {
                        clearInterval(panInterval);
                    }
                }, 1000);
            }

            function confirm()
            {
                var phone = $('#phone').val();

                var code = $('#code').val();
                if (/\d\d\d\-?\d\d\d\d?\-?\d\d\d\d/.test(phone)) {
                    phoneConfirm4(code, phone);
                } else {
                    alert('올바른 전화번호를 입력하세요');
                }
            }
        </script>
			<div class="box">
				<div class="title">
					프로필사진<b class="pink">*</b>
				</div>
				<div class="cont">
					<div class="caution caution1">
						<b class="pink">주의</b><br> <span class="gray8">* 얼굴이
							나오지 않은 동물/캐릭터/단순배경사진/증명사진은 승인되지 않습니다.</span><br>
						<div style="overflow: hidden">
							<div class="pf">
								<img
									src="https://front-img.taling.me/Content/Images/tutor/Images/eximg01.png">
							</div>
							<div class="pf">
								<img
									src="https://front-img.taling.me/Content/Images/tutor/Images/eximg02.png">
							</div>
							<div class="pf">
								<img
									src="https://front-img.taling.me/Content/Images/tutor/Images/eximg03.png">
							</div>
							<div class="pf">
								<img
									src="https://front-img.taling.me/Content/Images/tutor/Images/eximg04.png">
							</div>
						</div>
					</div>
					<div style="margin: 30px 0">
						<img class="upf_b button"
							src="https://front-img.taling.me/Content/Images/tutor/Images/btn_pfimg.png">
						<div class="upf" id="picture-cover" id="ProfileThumbnailUrl"
							style="background-image: url('//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_4c2bb13bbdf07495208dc87bcf2700e860e6f329.png')">
							<img
								src="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_4c2bb13bbdf07495208dc87bcf2700e860e6f329.png"
								style="width: 300px; height: 132px; float: right; margin-left: 582px; position: absolute; opacity: 0;" />
							<input type="hidden" id="ProfileThumbnailUrl"
								value="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Profile/s_4c2bb13bbdf07495208dc87bcf2700e860e6f329.png" />
							<input type="file" id="picture" name="picture"
								style="width: 150px; height: 130px; opacity: 0;" />
						</div>
					</div>
					<script>
                    $('#picture').change(function (e) {
                        var file = (e.target || window.event.srcElement).files[0];

                        var reader = new FileReader();
                        reader.onload = function() {
                            $('#picture-cover').css("background-image", "url('"+reader.result+"')");
                        }
                        reader.readAsDataURL(file);
                    });
                </script>
					<!-- <div class="sample1">
						<div class="arw">
							<img class="button"
								src="https://front-img.taling.me/Content/Images/tutor/Images/icon_down.png"
								onclick="arwpaper(this)"> <img class="button"
								style="display: none"
								src="https://front-img.taling.me/Content/Images/tutor/Images/icon_up.png"
								onclick="arwpaper(this)">
						</div>
						<span>예시 이미지 및 화면보기</span>
						<div class="ex">
							<img
								src="https://front-img.taling.me/Content/Images/tutor/Images/img_example_01.png">
						</div>
					</div> -->
				</div>
			</div>
			<div class="box">
				<div class="title">
					별명<b class="pink">*</b>
				</div>
				<div class="cont">
					<input type="text" class="basic nick" id="Description"
						name="Description"
						placeholder="강사님의 정체성을 가장 잘 드러낼 수 있는 별명을 입력해주세요." value="싯박">
				</div>
			</div>
			<div class="box">
				<div class="title">이력</div>
				<div class="cont">
					<div class="caution caution2">
						<ul class="gray8">
							<li>파일은 jpg, png, gif, bmp등 이미지 파일만 가능합니다.</li>
							<li>관리자 확인 후 업로드해주신 파일은 바로 삭제됩니다.</li>
						</ul>
					</div>
					<div class="inner1">
						<div class="gray5 title">
							자격증<font class="gray8">날짜/자격증/주관사 공인 확인 가능한 자격증 사본(최대 10개)</font>
						</div>
						<input type="hidden" name="deleteCert" id="deleteCert" value="">
						<div class="certificate" style="position: relative;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<input type="file" name="cert[]" input-file="img-Cert0"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert0"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<script>
                        function deleteCert(val)
                        {
                            if($('#deleteCert').val()=='')
                            {
                                $('#deleteCert').val(val);
                            }
                            else
                            {
                                $('#deleteCert').val($('#deleteCert').val()+","+val);
                            }
                        }
                    </script>
						<!--innerHTML로 엘리멘트를 생성해서 넣으면 change 이벤트를 받지 못해서 미리 여러개를 생성해놓고 show하는 방안으로 임시 처리함-->
						<div class="certificate" id="cert1"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert1"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert1"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert2"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert2"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert2"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert3"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert3"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert3"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert4"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert4"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert4"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert5"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert5"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert5"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert6"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert6"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert6"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert7"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert7"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert7"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert8"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert8"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert8"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert9"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert9"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert9"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert10"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert10"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert10"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert11"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert11"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert11"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert12"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert12"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert12"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert13"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert13"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert13"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert14"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert14"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert14"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert15"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert15"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert15"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert16"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert16"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert16"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert17"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert17"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert17"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert18"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert18"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert18"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="certificate" id="cert19"
							style="position: relative; display: none;">
							<input type="text" class="basic len652" name="certName[]"
								placeholder="예) 토익900,HSK 6급,GTQ1급, 임상경력 등">
							<div class="verify left10">업로드</div>
							<!--div class="verify left10" onclick="$(this).parent().remove();"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_del_bk.png"> 삭제</div-->
							<input type="file" name="cert[]" input-file="img-Cert19"
								style="width: 80px; height: 50px; position: absolute; top: 0; left: 668px; opacity: 0; cursor: pointer;" />
							<div style="padding-top: 10px;">
								<img alt="" id="img-Cert19"
									style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width: 400px;" />
							</div>
						</div>
						<div class="plus button" onclick="add_certificate()">
							<img
								src="https://front-img.taling.me/Content/Images/tutor/Images/icon_add_wh.png">
							자격증추가
						</div>
					</div>
				</div>
			</div>
			<script>
            $('[input-file]').change(function (e) {
                var file = (e.target || window.event.srcElement).files[0];
                var targetId = $(this).attr('input-file');
                var reader = new FileReader();
                reader.onload = function() {
                    $('#' + targetId)
                        .attr('src', reader.result)
                        .show();
                }
                reader.readAsDataURL(file);
                $('#' + targetId + '-alert').hide();
            });

            var certNum = 1;

            function add_certificate(){
                $('#cert'+certNum).show();
                certNum++;
            }
        </script>
			<!-- <div class="box">
				<div class="title">
					소셜미디어<br>
					<br>
					<span class="gray8">권장사항</span>
				</div>
				<div class="cont">
					<div class="caution caution2">
						<ul class="gray8">
							<li>기재해주신 정보는 강사님의 수업홍보를 위해 사용될 수 있습니다.</li>
					</div>
					<div class="inner1">
						<input type="text" class="basic nick" name="instagram"
							placeholder="인스타그램" style="margin-bottom: 10px"><br>
						<input type="text" class="basic nick" name="blog"
							placeholder="블로그(네이버,브런치,티스토리등)" style="margin-bottom: 10px"><br>
						<input type="text" class="basic nick" name="youtube"
							placeholder="유튜브">
					</div>
				</div>
			</div> -->
			<div class="button_box">
				<div class="next button prev" onclick="setMode(0);">임시저장</div>
				<div class="next button on" onclick="nextForm();">저장 후 다음단계
					(1/4)</div>
			</div>
		</div>
		</div>
	<!-- </form> -->
	<script>
    function setMode(val)
    {
        Mode = val;
        $('#frm-register-detail').submit();
    }

    var isUploading = false;
    $('#frm-register-detail').submit(function (e) {
        e.preventDefault();

        if($('#isAuth').val() == '0' ){ alert('번호 인증을 해주세요');$('#phone').focus();return false;}

        if($('#picture').val() == '' ){
            if($('#ProfileThumbnailUrl').val() == '//taling.me/Content/Images/placeholders/profile-default.thumb.jpg' ){
                alert('프로필사진을 등록해주세요');$('#picture').focus();return false;
            }
        }

        if($('#Description').val() == '' ){ alert('별명을 입력하세요');$('#Description').focus();return false;}
		
		if($('#Description').val().length>8){
			alert('별명은 8자 이하로 써주세요');
			$('#Description').focus();
			return false;
		}

        if($('#SchoolMajor').val() != '' ){
            if($('#SchoolMajorS').val() == '' ){
                alert('학과를 입력하세요');$('#SchoolMajorS').focus();return false;
            }
            if($('#input-cover-image2').val() == '' ){
                alert('자격 증명 사진을 업로드 하세요');$('#input-cover-image2').focus();return false;
            }
        }

        if($('#SchoolMajor2').val() != '' ){
            if($('#SchoolMajor2S').val() == '' ){
                alert('학과를 입력하세요');$('#SchoolMajor2S').focus();return false;
            }
            if($('#input-cover-image3').val() == '' ){
                alert('자격 증명 사진을 업로드 하세요');$('#input-cover-image3').focus();return false;
            }
        }

        //if($('#IsPhone').val() == '0' ){ alert('휴대폰 번호를 인증해주세요');$('#Phone2').focus();return false;}

        if(isUploading) {
            alert('업로드 중입니다. 잠시만 기다려 주세요');
            return false;
        }

        //미리 생성해 놓은 값 중에서 값이 없는 건 disabled
        $("input[type=text]").each(function() {
            if($(this).val() == "") {
                $(this).attr("disabled",true);
            }
        });
        $("input[type=file]").each(function() {
            if($(this).val() == "") {
                $(this).attr("disabled",true);
            }
        });

        var formData = new FormData(this);

        isUploading = true;
        $.ajax({
            type: 'POST',
            url: '/tutor/regiInfo_proc.php',
            contentType: false,
            data: formData,
            processData: false,
            success: function (response) {
                isUploading = false;

                if(response == "error3")
                {
                    alert("이미지 파일을 확인해주세요! jpg,jpeg,bmp,png 만 가능합니다.");
                    return;
                }
                else
                {
                    if(response == '0000')
                    {
                        alert('등록이 완료되었습니다.');
                        if(Mode == 1)
                        {
                            location.href="/tutor/regiTitle/"+$('#Id').val();
                        }
                        else
                        {
                            location.href="/tutor/regiInfo/"+$('#Id').val();
                        }


                    }
                    else
                    {
                        alert(response);
                    }
                }
            },
            error: function(response) {
                isUploading = false;
            }
        });
        return false;
    });
</script>

	<!-- Channel Plugin Scripts -->
	<script>
var scrollTop=0;
$('#custom-button-trigger, .cs').click(function(){
	scrollTop= $(window).scrollTop();
	$('#custom-button-1').click();
});
 (function() {
   var w = window;
   if (w.ChannelIO) {
     return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
   }
   var d = window.document;
   var ch = function() {
     ch.c(arguments);
   };
   ch.q = [];
   ch.c = function(args) {
     ch.q.push(args);
   };
   w.ChannelIO = ch;
   function l() {
     if (w.ChannelIOInitialized) {
       return;
     }
     w.ChannelIOInitialized = true;
     var s = document.createElement('script');
     s.type = 'text/javascript';
     s.async = true;
     s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
     s.charset = 'UTF-8';
     var x = document.getElementsByTagName('script')[0];
     x.parentNode.insertBefore(s, x);
   }
   if (document.readyState === 'complete') {
     l();
   } else if (window.attachEvent) {
     window.attachEvent('onload', l);
   } else {
     window.addEventListener('DOMContentLoaded', l, false);
     window.addEventListener('load', l, false);
   }
 })();
  ChannelIO('boot', {
   "pluginKey": "8fc98895-06a5-402d-8740-1cb9261ebc91",
	"customLauncherSelector": "#custom-button-1",
    "hideDefaultLauncher": true,
	   "userId": "jaeyeun95@naver.com", //fill with user id
	   "profile": {
		 "name": "김재윤", //fill with user name
		 "mobileNumber": "010-4763-5023", //fill with user phone number
		 "CUSTOM_VALUE_1": "VALUE_1", //any other custom meta data
		 "CUSTOM_VALUE_2": "VALUE_2"
	   }
 });
  ChannelIO('onHide', function() {
	$(window).scrollTop(scrollTop);
});
</script>

<!-- insert2 -->
<div class="insertForm2">
<!-- <form method="POST" id="frm-register-detail" enctype="multipart/form-data"> -->
<input type="hidden" id="Id" name="Id" value="32599">
<input type="hidden" id="targetId" name="targetId" value="">
<input type="hidden" id="CoverImageUrl" name="CoverImageUrl" value="//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Cover/f9f5d82d58c3bd75211ea4a6cc642814bd7a25e4.png">
<div id="popup_notice" class="tutor_cont" style="display: none;">
	<div class="dim" id="dim" style="display: block;"></div>
    <div class="phone_box" id="phone_box">
        <div class="head" style="background: #fff;"><span class="button" onclick="popClose();" style="color: #000">X</span></div>
        
        <div class="box gray5">
            <h2 style="margin-bottom: 20px;font-weight: bold;font-size: 24px;color: #333;font-style: normal;text-align: center;">공지</h2>
            <p style="color: #333;text-align: center;">강사 전자책 등록은 기존의 수업과 다릅니다.</p>
            <p style="color: #333;text-align: center;">
				반드시 아래 등록 가이드를 확인 후,
				<br>준수해서 작성해 주세요요
				<br><br>
				가이드 미 준수 시, 수업 심사가 거절됩니다.
			</p>
            <br>

			<a href="https://blog.naver.com/taling_me/221968474192" target="_blank"><div style="width:201px;height:42px;border-radius:4px;border:1px solid#ff0045;background:#fff;box-sizing:border-box;padding:9px;text-align:center;color:#ff0045;font-size:14px;margin-left: 120px;">
				전자책 등록 가이드 보기
			</div></a>

        </div>
    </div>
</div>
<div class="tutor_cont">
	<div class="title_box">
		<h3>강의등록</h3>
				<div class="steps">
			<a href="/tutor/regiInfo/32599"><li><b>01</b>기본정보</li></a>
			<img src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_next.png">
			<li class="on"><b>02</b>제목/이미지</li>
			<img src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_next.png">
			<a href="/tutor/regiPrice/32599"><li><b>03</b>가격</li></a>
			<img src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_next.png">
			<a href="/tutor/regiClass/32599"><li><b>04</b>수업</li></a>
		</div>
			</div>
	<!-- <div class="info1" style="padding-top:40px;">
		<div style="float:left;margin-top:-15px">
			<a href="/Talent/Detail/11491" target="_blank"><div class="verify">BEST 강사 보러가기</div></a>
			<a href="https://blog.naver.com/taling_me" target="_blank"><div class="verify" style="margin-left:10px">강사 꿀팁 보러가기</div></a>
		</div>
		<span class="pink">*</span>필수
	</div> -->

		<div class="box">
		<div class="title">수업카테고리<b class="pink">*</b></div>
		<div class="cont">
			<select class="basic len320" id="CateMain" name="CateMain" onchange="addSelect(this.value)">
				<option>수업카테고리를 선택해 주세요</option>
										<option value="2" selected>커리어</option>
												<option value="3" >뷰티/헬스</option>
												<option value="4" >디자인/영상</option>
												<option value="5" >외국어</option>
												<option value="7" >라이프</option>
												<option value="10" >액티비티</option>
												<option value="11" >머니</option>
												<option value="19" >이벤트</option>
												<option value="20" >강사전자책</option>
												<option value="22" >취미/공예</option>
									</select>
			<!-- <select class="basic len320" id="CateSub" name="CateSub">
				<option value="">수업 세부 카테고리 선택</option>	
			</select> -->
		</div>
	</div>


	<script type="text/javascript">
		$(function(){
			$('select').focus(function(){
				$(this).addClass('up');
			});
			$('select').focusout(function(){
				$(this).removeClass('up');
			});
	
		});
		function addSelect(val, catesubNum)
		{			
			if(val == 0)
			{
				var Region = "CateSub";
				//document.getElementById(Region).style.display="none";
				document.getElementById(Region).value = '';									
				return;
			}
			var p = [];

			p.push('val='+val);
			var pars = p.join('&');
			var Ajax = new Ajax2();
			Ajax.init('/tutor/getCategory.php', {
				method: 'post'
				, parameters: pars
				, idTarget: 'innerdiv'
				, oSelf: this
				, onCreate: function()
				{										
				}
				, onComplete: function(oXHR)
				{									
					var Region = "CateSub";
					//document.getElementById(Region).style.display="block";
					 
					var num = $("#"+Region+" option").size();	
					for(i=0; i < num; i++)
					{
						$("#"+Region+" option:last").remove();
					}
																									
					var ret = eval('(' + oXHR.responseText + ')');
														
					//$("#"+Region).append("<option value=''>"+"수업 개설 장소 선택"+"</option>");
					for(var i = 0, t = ret.length; i < t; i++)
					{	
						sel = "";
						if(ret[i]['Id']==catesubNum)
						{
							sel = "selected";
						}										
						$("#"+Region).append("<option value='"+ret[i]['Id']+"' "+sel+">"+ret[i]['Name']+"</option>");										
					}

					if(val == 20){
						$('#classTipDiv').hide();
						$('#bookTipDiv').show();
						$('#classBox').hide();
						$('#groupBox').hide();
					}
				}
			});
		}

		
	</script>

			<script>addSelect(2, 17)</script> 
		<!--
	Talents 테이블
		GroupAvailable 값

		0 다회차 1:1 수업

		1 다회차 그룹수업

		2 원데이 1:1

		3 원데이 그룹
	-->
		<div class="box" id="classBox">
		<div class="title">수업형태<b class="pink">*</b></div>
		<div class="cont">
			<div class="rds">
				<input type="hidden" value="1" name="classOption" id="classOption">
				<!--classOption 0이면 원데이 / 1 이면 다회차-->
				<div class="rd"><label  id="classOption0" onclick="rd(0,0)"></label>원데이 클래스</div>
				<div class="rd"><label id="classOption1" onclick="rd(0,1)"></label>다회차 수업</div>
				<!-- <div class="rd"><input type="radio">원데이 클래스</div> -->
			</div>
			<script>
				function rd(elm,val){	
					var num =val;
					var name = '';
					if(elm=='0'){//수업형태
						$('#classOption').val(num);
						name = "#classOption"+num;
						if(num){
							$('#classOption-info0').hide();
							$('#classOption-info1').show();
						}else{
							$('#classOption-info0').show();
							$('#classOption-info1').hide();
						}
						$('#classOption0').removeClass('on');$('#classOption1').removeClass('on');
					}
					else{//elm==1 // 수업참여인원

						$('#groupOption').val(num);
						name = "#groupOption"+num;
						$('#groupOption0').removeClass('on');$('#groupOption1').removeClass('on');

						if(num==0)
						{
							$('#minmax').hide();
						}
						else
						{
							$('#minmax').show();
						}
					}
					$(name).addClass('on');
				}
				$(function(){
					rd(0,1);
					rd(1,0);
				});
			</script>

			<div class="inner3 gray5"  id="classOption-info0" >
				* 시범강의가 아닌, 하루 만에 무언가를 얻어갈 수 있는 원데이 클래스를 준비해주세요.
			</div>
			<div class="inner3 gray5"  id="classOption-info1" style="display:none">
				* 다회차 수업일 때 언투온 수강생들은 보통 <span class="pink">4~6회차 수업</span>을 선호합니다.<br>
				되도록 한 달 내에 끝낼 수 있도록 커리큘럼을 만들어주세요.
			</div>
		</div>
	</div>
	<div class="box" id="groupBox">
		<div class="title">수업참여인원<b class="pink">*</b></div>
		<div class="cont">
			<div class="rds">
				<input type="hidden"  value="0"  name="groupOption" id="groupOption">
				<!--classOption 0이면 1:1 / 1 이면 그룹-->
				<div class="rd"><label id="groupOption0" onclick="rd(1,0)"></label>1:1 수업</div>
				<div class="rd"><label id="groupOption1" onclick="rd(1,1)"></label>그룹수업</div>
			</div>
			<div class="inner2" style="display:none" id="minmax">
				<select class="basic len290" id="MinPerson" name="MinPerson">
					<option value="">최소인원수</option>
					 					 <option value="2" >2</option>
					 					 <option value="3" >3</option>
					 					 <option value="4" >4</option>
					 					 <option value="5" >5</option>
					 					 <option value="6" >6</option>
					 					 <option value="7" >7</option>
					 					 <option value="8" >8</option>
					 					 <option value="9" >9</option>
					 					 <option value="10" >10</option>
					 					 <option value="11" >11</option>
					 					 <option value="12" >12</option>
					 					 <option value="13" >13</option>
					 					 <option value="14" >14</option>
					 					 <option value="15" >15</option>
					 					 <option value="16" >16</option>
					 					 <option value="17" >17</option>
					 					 <option value="18" >18</option>
					 					 <option value="19" >19</option>
					 					 <option value="20" >20</option>
					 					 <option value="30" >30</option>
					 <option value="40" >40</option>
					 <option value="50" >50</option>
				</select>
				 명 ~ 

				<select class="basic len290" id="MaxPerson" name="MaxPerson">
					<option value="">최대인원수</option>
										 <option value="2" >2</option>
					 					 <option value="3" >3</option>
					 					 <option value="4" >4</option>
					 					 <option value="5" >5</option>
					 					 <option value="6" >6</option>
					 					 <option value="7" >7</option>
					 					 <option value="8" >8</option>
					 					 <option value="9" >9</option>
					 					 <option value="10" >10</option>
					 					 <option value="11" >11</option>
					 					 <option value="12" >12</option>
					 					 <option value="13" >13</option>
					 					 <option value="14" >14</option>
					 					 <option value="15" >15</option>
					 					 <option value="16" >16</option>
					 					 <option value="17" >17</option>
					 					 <option value="18" >18</option>
					 					 <option value="19" >19</option>
					 					 <option value="20" >20</option>
					 					 <option value="30" >30</option>
					 <option value="40" >40</option>
					 <option value="50" >50</option>
				</select>
				
				<div class="inner3 gray5">
					언투온 수강생들이 선호하는 그룹수업은 평균적으로 <span class="pink">2~6인 내외</span>입니다.<br><br>
					* 그룹수업인데 일대일 수업도 가능한 경우, 수업소개 페이지에 별도 기재 부탁드립니다.<br>
					&nbsp;&nbsp;ex) 일대일 수업을 원하는 경우, 실시간톡으로 문의주세요.
				</div>
			</div>
			
		</div>
	</div>
	<div class="box">
		<div class="title">수업제목<b class="pink">*</b><br><br><span class="gray8">공백포함<br>최소10자~최대30자 이내</span></div>
		<div class="cont">
			<div class="caution caution2" id="classTipDiv">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
				<li>누구를 대상으로, 어떤 재능을 가르치시나요?</li>
				<li>수업을 통해 어떤것을 얻어갈 수 있나요?</li>
				<li>예시:미국주식,내 손으로 직접 투자하자/4회만에 내 손으로 만든 영상,유튜브에업로드♥</li>
				<ul>
			</div>
			<div class="caution caution2" id="bookTipDiv" style="display:none">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
				<li>누구를 대상으로, 어떤 재능을 공유하나요?</li>
				<li>전자책을 통해 어떤것을 얻어갈 수 있나요?</li>
				<li>예시:[강사전자책] 회사에서 사랑받는 비법(60page)</li>
				<ul>
			</div>
			<div class="inner1">
				<input type="text" class="basic nick" id="Title" name="Title" value="하루에 한시간씩만 내 몸에 투자하면 인생이 달라집니다." placeholder="수강생을 끌어당길 수 있는 개성넘치는 제목을 만들어 보세요.">
                <span style="float:right;">(<span id="span-title-length">0</span>/60)</span>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="title">커버이미지<b class="pink">*</b><br><br><span class="gray8">최소 1장 이상 등록,<br>3~10장 등록하시는 것이<br>좋습니다.<br><font class="pink">첫 번째 커버 이미지에 텍스트가 포함되면 반려사유가 됩니다
</font></span></div>
		<div class="cont">
			<div class="drag_cont">
				<div class="drag_box" id="dropZone">
                    <img Id="ImgPreview" src="" style="height: 352px;width: 551px;opacity: 0;position: absolute;margin: -145px 0 0 -277px;">
					<div class="imgupbt" id="dragInfo">
						<img src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_img_area.png"><br><br>
						이미지를 드래그 해주세요
					</div>
				</div>
				<div class="right">
					<input id="imgnonefile" name="picture" accept="image/*" style="position: absolute;opacity:0;cursor:pointer;" type="file">
					<div class="plus button" id="imgUp" data-send="coverImage"><img src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_add_wh.png"> 이미지추가</div><br>
					<div class="verify" style="margin:10px 0" onclick="deleteImage()"><img src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_del_bk.png"> 이미지삭제</div>
					<div style="margin-top:40px">
						<span class="pink">권장사항</span><br><br>
						<span class="gray5">- <font class="pink">10MB 이하의</font> jpg,jpeg,png 파일<br>
						- 840x540 픽셀
						<br><br>
						다음 사진은 <span class="pink">사용이 불가</span>합니다.<br>
						- 프로필 사진과 동일한 커버 사진<br>
						- 커버 사진의 경우 텍스트가 포함된 사진<br>
						- 인위적인 홍보문구가 포함된 사진<br>
						- 저작권에 위배되는 사진</span>
					</div>
				</div>
			</div>
			
			<script>	
				$(function(){
					$('[data-send]').click(function (e) {
						$('#targetId').val($(this).attr('data-send'));
						$('#filter').show();
						$('#image_box').show();
					});

					$('#imgUp').click(function(e){
						$('#imgnonefile').click();
					});
				});

				function hd_imbox(){
					$('#filter').hide();
					$('#image_box').hide();
					$('#targetId').val('');									
				}

				// 파일 리스트 번호
				var fileIndex = 0;
				// 등록할 전체 파일 사이즈
				var totalFileSize = 0;
				// 파일 리스트
				var fileList = new Array();
				// 파일 사이즈 리스트
				var fileSizeList = new Array();
				// 등록 가능한 파일 사이즈 MB
				var uploadSize = 10;
				// 등록 가능한 총 파일 사이즈 MB
				var maxUploadSize = 100;

				var selectIndex = 0;
			 
				$(function (){
					// 파일 드롭 다운
					fileDropDown();
				});
			 
				// 파일 드롭 다운
				function fileDropDown(){
					var dropZone = $("#dropZone");
					//Drag기능 
					dropZone.on('dragenter',function(e){
						e.stopPropagation();
						e.preventDefault();
						// 드롭다운 영역 css
						//dropZone.css('background-color','#E3F2FC');
					});
					dropZone.on('dragleave',function(e){
						e.stopPropagation();
						e.preventDefault();
						// 드롭다운 영역 css
						//dropZone.css('background-color','#FFFFFF');
					});
					dropZone.on('dragover',function(e){
						e.stopPropagation();
						e.preventDefault();
						// 드롭다운 영역 css
						//dropZone.css('background-color','#E3F2FC');
					});
					dropZone.on('drop',function(e){								
						e.preventDefault();
						// 드롭다운 영역 css
						//dropZone.css('background-color','#FFFFFF');
						
						var files = e.originalEvent.dataTransfer.files;
						if(files != null){
							if(files.length < 1){
								alert("폴더 업로드 불가");
								return;
							}
							selectFile(files);

						}else{
							alert("ERROR");
						}
					});								
				}
			 
				// 파일 선택시
				function selectFile(fileObject){
					var files = null;
			 
					if(fileObject != null){
						// 파일 Drag 이용하여 등록시
						files = fileObject;
					}else{
						// 직접 파일 등록시
						//files = $('#multipaartFileList_' + fileIndex)[0].files;
					}
					
					// 다중파일 등록
					if(files != null){
						for(var i = 0; i < files.length; i++){
							// 파일 이름
							var fileName = files[i].name;
							var fileNameArr = fileName.split("\.");
							// 확장자
							var ext = fileNameArr[fileNameArr.length - 1];
							// 파일 사이즈(단위 :MB)
							var fileSize = files[i].size / 1024 / 1024;
							
							if($.inArray(ext, ['exe', 'bat', 'sh', 'java', 'php', 'html', 'js', 'css', 'xml']) >= 0){
								// 확장자 체크
								alert("등록 불가 확장자");
								break;
							}else if(fileSize > uploadSize){
								// 파일 사이즈 체크
								alert("용량 초과\n업로드 가능 용량 : " + uploadSize + " MB");
								break;
							}else{
								// 전체 파일 사이즈
								totalFileSize += fileSize;
								
								// 파일 배열에 넣기
								fileList[fileIndex] = files[i];
								
								// 파일 사이즈 배열에 넣기
								fileSizeList[fileIndex] = fileSize;
			
								// 업로드 파일 목록 생성
								innerImg(files[i], fileIndex);

								selectIndex = fileIndex;
								
								// 파일 번호 증가
								fileIndex++;
							}

							// 첫번째 테두리 
							
							
						}
					}else{
						alert("ERROR");
					}
				}

				function onImage(val, num)
				{
					$('#dropZone').css({'background':'url('+val+')', 'background-repeat' : 'no-repeat', 'background-position':'center' , 'background-size':'cover' , 'box-sizing':'border-box'});

					$('#dragInfo').hide();
                    $("#ImgPreview").attr("src", val);

					selectIndex = num;
				}

				function deleteImage(){
					// 전체 파일 사이즈 수정
					totalFileSize -= fileSizeList[selectIndex];
					
					// 파일 배열에서 삭제
					delete fileList[selectIndex];
					
					// 파일 사이즈 배열 삭제
					delete fileSizeList[selectIndex];
					
					// 업로드 파일 테이블 목록에서 삭제
					$("#img-cover" + selectIndex).remove();
					$('#dragInfo').show();

					$('#dropZone').css({'background':'url()', 'background-color':'#edf0f4', 'background-repeat' : 'no-repeat', 'background-position':'center' , 'background-size':'cover' , 'box-sizing':'border-box'});
				}

				
				function innerImg(files, num)
				{
					var reader = new FileReader();											
					reader.readAsDataURL(files);
					var html = "";
					var on = "";
					
					reader.onload = function() {									
												
						var oImg = ($('<div>').attr('id', 'img-cover'+num)
							.addClass('cover_img')
							.css({'background-image':'url('+reader.result+')'})										
						).on({
							'click': function() { onImage(reader.result, num) }
						});

						oImg.append($('<img>').attr('src', reader.result)
							.data('fileData', files)
							.css({'width':'0','height':'0'})										
						);
		
						$('#fileList').append(oImg);										
						
						$('#dragInfo').hide();
						$('#dropZone').css({'background':'url('+reader.result+')', 'background-repeat' : 'no-repeat', 'background-position':'center' , 'background-size':'cover' , 'box-sizing':'border-box'});
					};
					reader.onloadend = function() {						
						$('#fileList').find('div').removeClass('on');
						$('#fileList div:first-child').addClass('on');

					};							
				}						 
				
				$('#imgnonefile').change(function (e) {
					var file = (e.target || window.event.srcElement).files[0];					
					innerImg(file, fileIndex)
					fileIndex++;
				});							
			</script>
			<div class="inner1">
				<input type="hidden"  value="0"  name="Is_Agree" id="Is_Agree">
				<div class="vdo certi"><label  id="Is_Agree0" onclick="agreeChk(1)" ></label><p>강사님께서 등록한 이미지를 마케팅에 활용하는것에 동의 합니다.(선택)</p></div> 
				<div style="margin-top:5px;"><span class="pink">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;동의 시, 강사님의 수업이 더 많이 판매될 수 있도록 카카오 1분, 네이버 포스트, 페이스북 등의 SNS 채널에 광고가 집행될 수 있습니다.</span></div>
			</div>
			<div style="display:inline;padding:2px 7px;border-radius:3px;position:absolute;background:#ff005a;color:#fff;font-size:12px;line-height:1;margin-top:8px;" class="">
				첫 번째
			</div>
			<div style="overflow:hidden" id="fileList">
									<div class="cover_img on" id="img-cover0" onclick="onImage('//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Cover/f9f5d82d58c3bd75211ea4a6cc642814bd7a25e4.png', 0)" style="background-image: url(//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Cover/s_f9f5d82d58c3bd75211ea4a6cc642814bd7a25e4.png);">
						<img src='//s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Cover/f9f5d82d58c3bd75211ea4a6cc642814bd7a25e4.png' style="height: auto; width: 100%; opacity: 0;">
					</div>
				<script>fileIndex = 1</script>
							</div>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<script>
				$("#fileList").sortable();
				$("#fileList").disableSelection();
				$("#fileList").sortable({
				  out: function( event, ui ) {					
					$('#fileList').find('div').removeClass('on');
					$('#fileList div:first-child').addClass('on');
				  }
				});
			</script>
			
			<div class="inner1" style="width:880px">
				<div class="sample1">
					<div class="arw">
						<img class="button" src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_down.png" onclick="arwpaper(this)">
						<img class="button" style="display:none"src="https://front-img.taling.me/Content/Images/Tutor/Images/icon_up.png" onclick="arwpaper(this)">
					</div>
					<span>예시 이미지 및 화면보기</span>
					<div class="ex">
						<div class="caution caution2"  style="margin-left:-10px;width:100%;margin-bottom:10px">
						<ul class="gray8">
							<li>커버이미지는 강사님 수업 홍보를 위한 마케팅 자료로 활용될 수 있습니다. (동의 선택시)</li>
							<li>재능을 활용하고 있는 자연스러운 사진이나, 수업과 관련된 사물/배경 이미지를 올려주세요.</li>
						<ul>
						</div><br>
						<img src="https://front-img.taling.me/Content/Images/Tutor/Images/img_example_02.png">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="title">영상등록<br><br><span class="gray8">권장사항</span></div>
		<div class="cont">
			<div >
			<div class="caution caution1">
				<b class="pink">주의</b><br>
				<ul class="gray8">
				<li>일반 웹페이지 주소가 아닌,Youtbue 영상 URL를 입력해주세요.</li>
                <li>영상은 최대 5개까지 업로드 가능합니다.</li>
				<li>사용방법 : 영상 상세페이지에서 공유 버튼 클릭->팝업창에 나온 영상 URL 복사<br>->복사한 영상URL을 아래 입력창에 붙여넣기</li>
				<!--li style="color:#000">커버영상으로 등록을 원하신다면 해당 영상에 체크해주세요.</li-->
				<ul>
			</div>
			</div>
			<div class="inner1">
								    <div class="vdo"><input type="text" name="Videos[]" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px;width: 100%;"></div>
								    <div class="vdo"><input type="text" name="Videos[]" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px;width: 100%;"></div>
								    <div class="vdo"><input type="text" name="Videos[]" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px;width: 100%;"></div>
								    <div class="vdo"><input type="text" name="Videos[]" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px;width: 100%;"></div>
								    <div class="vdo"><input type="text" name="Videos[]" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px;width: 100%;"></div>
							</div>
			<script>
				function addvdo(){					
					var str='<div class="vdo"><input type="text" class="basic len786" placeholder="예) https://youtu.be/1sboNBkTMuU" style="margin-bottom:10px" name="Videos[]" ></div>';
					$('.vdo').last().after(str);
				}
				function rmvd(val){
					var name ="#vdcont"+val;
					$(name).remove();
				}
				function vdo(val){
					var name="#vdo"+val;
					if($(name).hasClass('on'))
					{
						$(name).removeClass('on');
						name +="c";
						$(name).attr('checked',false);
					}
					else
					{	
						$('.vdo').children('input[type=checkbox]').attr('checked',false);
						$('.vdo').children('label').removeClass('on');
						$(name).addClass('on');
						name +="c";
						$(name).attr('checked',true);
					}
				}

				function agreeChk(val){
					name = "#Is_Agree0";
					if($(name).hasClass('on'))
					{
						$('#Is_Agree').val('0');
						$(name).removeClass('on');
					}
					else
					{	
						$('#Is_Agree').val('1');
						$(name).addClass('on');
					}
				}
			
			</script>
		</div>
	</div>

	<div class="button_box">
		<div class="next button prev" onclick="setMode(0);">임시저장</div>
		<div class="next button on" onclick="setMode(1);">저장 후 다음단계 (2/4)</div>
	</div>

</div>
</div>	<!-- insertForm2 end -->
<!-- </form> -->
<script>
	function setMode(val)
	{
		Mode = val;
		$('#frm-register-detail').submit();
	}

	var isUploading = false;
	// 파일 등록
	$('#frm-register-detail').submit(function (e) {

		e.preventDefault();

		if($('#Title').val() == '' ){ alert('수업 이름을 입력하세요');$('#Title').focus();return false;}

        let titleLength = byteCheck($('#Title').val());
        if (titleLength < 20) {
            alert('수업 이름을 최소 10자 이상 입력하세요');
            $('#Title').focus();
            return false;
        }

		if($('#groupOption').val()==1)
		{	
			var minp = parseInt($('#MinPerson').val());
			var maxp = parseInt($('#MaxPerson').val());

			if($('#MinPerson').val() == '' ){ alert('그룹 최소인원수를 입력하세요');$('#MinPerson').focus();return false;}
			if($('#MaxPerson').val() == '' ){ alert('그룹 최대인원수를 입력하세요');$('#MinPerson').focus();return false;}
			if(minp > maxp ){ alert('그룹 최대인원수가 최소인원수보다 작습니다');$('#MinPerson').focus();return false;}
		}
		
		if($('#CateMain').val() != 20 && $('#CateMain').val() != 21){
			if($('#CateSub').val() == '' || $('#CateSub').val() == null){ alert('카테고리를 선택하세요');$('#CateSub').focus();return false;}
		}else{
			debugger;
			if($('#CateMain').val() == 20){
				$('#classOption').val(0);
				$('#groupOption').val(0);
				$('#CateSub').val('245');
			}else{
				$('#classOption').val(0);
				$('#groupOption').val(0);
				$('#CateSub').val('247');
			}
		}

		if(isUploading) {
			alert('업로드 중입니다. 잠시만 기다려 주세요');
			return false;
		}

		$("input[type=text]").each(function() {
			if($(this).val() == "") {				
				$(this).attr("disabled",true);
			}
		});

		var formData = new FormData(this);

		var images = $('#fileList img');
		
		formData.append('ImageCnt', images.length);
		
		if(images.length < 1){
			alert('커버 사진을 업로드 하세요');
			return false;
		}
		for (var i = 0; i < images.length; i++) {
			if(typeof  $(images[i]).data('fileData') == 'undefined')
			{										
				formData.append('Images'+[i], $(images[i]).attr("src"));									
			}
			else
			{										
				formData.append('Images'+[i], $(images[i]).data('fileData'));
			}
		}

		isUploading = true;

		$.ajax({
			type: 'POST',
			url: '/tutor/regiTitle_proc.php',
			contentType: false,
			data: formData,
			processData: false,
			success: function (response) {
				isUploading = false;	

				if(response == "error3")
				{
					alert("이미지 파일을 확인해주세요! jpg,jpeg,bmp,png 만 가능합니다.");
					return;
				}
				else
				{
					alert('제목/이미지 등록이 완료되었습니다.');
					if(Mode == 1)
					{
						location.href="/tutor/regiPrice/"+response;
					}
					else
					{
						location.href="/tutor/regiTitle/"+response;
					}
				}
			},
			error: function(response) {
				alert(response);
				isUploading = false;
			}
		});
		return;
		
	});

    $(document).on('keyup', '#Title', function() {
      let titleLimitBytes = 60;
      let title = $(this).val();
      let titleLength = byteCheck(title);
      $('#span-title-length').text(titleLength);

      if (titleLength < 20) {
        $('#span-title-length').css('color', 'red');
      } else {
        $('#span-title-length').css('color', 'black');
      }

      if (titleLength > titleLimitBytes) {
        alert('제목의 길이는 ' + titleLimitBytes + '바이트를 초과할 수 없습니다!');
        let limitedTitle = byteCut(title, titleLimitBytes);
        $(this).val(limitedTitle);
        let limitedTitleLength = byteCheck(limitedTitle);
        $('#span-title-length').text(limitedTitleLength);
        return false;
      }
    });

    function byteCheck(title) {
      let len = 0;
      for (let i = 0; i < title.length; i++) {
        len += (title.charCodeAt(i) > 128) ? 2 : 1;
      }
      return len;
    }

    function byteCut(title, len) {
      let l = 0;
      for (let i = 0; i < title.length; i++) {
        l += (title.charCodeAt(i) > 128) ? 2 : 1;
        if (l > len) {
          return title.substring(0, i);
        }
      }

      return title;
    }
</script>

<!-- insert3 -->
<div class="insertForm3">
<!-- <form method="POST" id="frm-register-detail" enctype="multipart/form-data"> -->
<input type="hidden" id="Id" name="Id" value="32599">
<div class="tutor_cont">
	<div class="title_box">
		<h3>강의등록</h3>
				<div class="steps">
			<a href="/tutor/regiInfo/32599"><li><b>01</b>기본정보</li></a>
			<img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
			<a href="/tutor/regiTitle/32599"><li><b>02</b>제목/이미지</li></a>
			<img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
			<li class="on"><b>03</b>가격</li>
			<img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
			<a href="/tutor/regiClass/32599"><li><b>04</b>수업</li></a>
		</div>
			</div>
	<div class="box">
				<div class="title">가격/시간/횟수<b class="pink">*</b></div>
		<div class="cont">
			<div class="inner1" style="margin:0">
				<div class="gray5 title">시간당 가격</div>
				<input type="text" id="UnitPrice" name="UnitPrice" value="10000" class="basic phone" placeholder="시간당 가격을 입력하세요"> 원
			</div>
			<script>
				$('#UnitPrice').change(function(){updateCalculation()});
			</script>
			<div class="inner1">
				<div class="gray5 title">1회당 수업시간</div>
				<select class="basic len320" id="Time" name="Time">
					<option value="0">1회당 수업시간을 선택하세요</option>
					 						<option value="1" >1시간</option>
											<option value="2" selected>2시간</option>
											<option value="3" >3시간</option>
											<option value="4" >4시간</option>
											<option value="5" >5시간</option>
											<option value="6" >6시간</option>
									</select>
				<script>
					$('#Time').change(function(){updateCalculation()});
				</script>
				시간
			</div>
			<div class="inner1">
				<div class="gray5 title">총 수업횟수</div>			
								
					<select id="TotalTimes" name="TotalTimes" class="basic len320">
					<option value="0">총 수업횟수를 선택하세요</option>
											<option value="2" >2회</option>
											<option value="3" >3회</option>
											<option value="4" >4회</option>
											<option value="5" >5회</option>
											<option value="6" selected>6회</option>
									</select> 
								회
			</div>
			<script>
				$('#TotalTimes').change(function(){updateCalculation()});
			</script>
		</div>
	</div>
	<div class="box">
		<div class="title">총 수업가격<b class="pink"></b></div>
		<div class="cont">
			<div class="caution caution2" style="overflow:hidden">
				<font><span id="calc-unit-price">0</span>원&nbsp;&nbsp;X&nbsp;&nbsp;<span id="calc-time">0</span>시간&nbsp;&nbsp;X&nbsp;&nbsp;<span id="calc-total-times">0</span>회</font>
				<div class="rs">
					총&nbsp;&nbsp;<font class="pink"><b><span id="calc-result">0</span></b>원</font><br>
					연결수수료&nbsp;&nbsp;<b><span id="calc-fee">0</span></b>원
				</div>
			</div>
			<div style="text-align:right;margin:20px 0;" class="pink">
				<!--a href="#" class="pink"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_info.png" style="margin-top:-2px">&nbsp;언투온 수업과정 및 결제정책</a-->
			</div>
		
			<div class="sample1">
				<div class="arw">
					<img class="button" src="https://front-img.taling.me/Content/Images/tutor/Images/icon_down.png" onclick="arwpaper(this)">
					<img class="button" style="display:none"src="https://front-img.taling.me/Content/Images/tutor/Images/icon_up.png" onclick="arwpaper(this)">
				</div>
				<span>예시 이미지 및 화면보기</span>
				<div class="ex">
					<img src="https://front-img.taling.me/Content/Images/tutor/Images/img_example_03.png">
				</div>
			</div>
	
		</div>
	</div>
	<!--div class="box">
		<div class="title">수강생에게 보낼 메시지<b class="pink">*</b></div>
		<div class="cont">
			<textarea class="basic len980" placeholder="수강생과 수업 연결 시에 메시지가 전달됩니다"></textarea>			
		</div>
	</div-->
	<div class="box process">
		<div class="left">
			<div><b style="color:#ff005a">강사</b></div>
			<div style="margin-top:50px"><b style="color:#333366">수강생</b></div>
			<div style="margin-top:95px"><b>결제/수수료&<br>환불정책</b></div>
		</div>
		<div class="right">
			<div class="top1">
				<div class="bar_p"></div>
				<div class="bar_g"></div>
				<div class="stone">수업등록</div>
				<div class="bar"><img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_red.png"></div>
				<div class="stone">연락처 수신</div>
				<div class="bar"><img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_red.png"><br><img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_bl.png"></div>
				<div class="stone">일정조율</div>
				<div class="bar"><img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_red.png"><br><img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_bl.png"></div>
				<div class="stone">
												첫 수업 진행									</div> 
				<div class="bar"><img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_red.png"><br><img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_bl.png"></div>
				<div class="stone" style="width: 180px;">
									수강지속								</div>
			</div>
			<div class="top2">
				<div class="lt">
					<div class="frame"></div>
					<div class="stone">수업신청</div>
					<img src="https://front-img.taling.me/Content/Images/tutor/Images/arrow_process_bl.png">
				
					<div style="padding-right:25px">
						<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">
							<b>신청시</b>
							<br>
																							1시간 수업료<br>언투온으로 <span class="pink"id="calc-fee2">0원</span>
								결제
																					</div>
					</div>
					
				</div>
				<div class="rt">
					<div style="width:130px;margin-right:50px;" >
												<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">
														<b>수업전 취소 시</b>
							<br>
							수강생에게<br>1시간 수업료<br><span  class="pink"id="calc-fee3">0원</span>
							환불
													</div>
											</div>
					<div style="width:130px;">
						<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">
							<b>첫수업 후 취소 시</b>
							<br>
							강사에게<br>1시간 수업료<br><span  class="pink"id="calc-fee4">0원</span>
							환불
						</div>
					</div>
					<div style="width:130px">
						<div class="cbar pi"></div>
						<div class="cir pi"></div>
						
						<p class="triangle-border" style="position:absolute;margin-top:-150px;margin-left:-18px;">
													
														수업을 계속 진행하는<br>
							경우 1시간 수업료는<br>
							<span>언투온 연결 수수료</span>로<br>
							확정됩니다.
																			</p>

						<div class="info">
								<b class="fix">수수료<br><span id="calc-fee5">0</span><br>확정</b>
						</div>
					</div>
					<div  style="width: 95px;">
						<div class="cbar"></div>
						<div class="cir"></div>
						<div class="info">
								
								<b>잔여수업료</b>
								<br>							
																강사가 수강생<br>또는 언투온에게<br>
								<span class="pink" id="calc-result2">0원</span><br> 직접수취
															
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="caution caution2" style="overflow:hidden;width:1200px">
			<p class="gray8">
				<b class="pink">Q.</b>언투온의 수수료 정책은 어떻게 되나요?
			</p>
			<p>
				<b>A.</b>
				언투온 연결 수수료는 다회차 수업의 경우 첫 1시간 수업료, 원데이클래스와 강사전자책의 경우 전체 수업료의 20% 입니다. 이는 언투온 운영비와 수업홍보비로 활용합니다.<br>
				첫 수업 후 수강생이 생각했던 수업과 맞지 않아 추후 수업 진행 취소하는 경우, 강사님께 1시간 수업료를 환급해드립니다.<br>
				(수업 신청 전, 수업이 어떤 방식으로 진행되는지 알 수 있도록 수업소개 페이지에 수업 전 반드시 알아야 할 내용을 충분히 설명해주세요.)
				<br><br>
				강사전자책의 경우 <font class="pink">실물이 수강생에게 발송 된 이후에는 환불 의무가 없습니다</font>. 단, 전자책의 내용이 허위로 발견 될 시 모든 결제금액을 수강생에게 환불하여야 합니다.
				<br><br>
				<a onclick="pop_pay()" ><font class="pink"><img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_info.png">&nbsp;언투온 수수료 정책의 이점에 대해서 더 알아보세요.</font></a>
				<!--https://taling.me/Tutor/Register_pop.html-->
				<script>
					function pop_pay(){
						$('#pay_pop').show();
						$('#back').show();
					}
					$(function(){
						$('#back').click(function(){
							$('#pay_pop').hide();
							$('#back').hide();
						});
					});
				</script>
			</p>
		</div>
	</div>
	<div id="pay_pop" >
		<iframe src="${ pageContext.request.contextPath }/clss/Register_pop">
		</iframe>
	</div>
	<div class="button_box">
		<a href="/Talent/Detail/32599" target="_blank"><div class="next button prev">미리보기</div></a>
		<div class="next button on" onclick="setMode(0);">저장 후 다음단계 (3/4)</div>
	</div>

</div>
</div>
<!-- </form> -->
<script>
	function setMode(val)
	{
		Mode = val;
		$('#frm-register-detail').submit();
	}

	var isUploading = false;
	 $('#frm-register-detail').submit(function (e) {
        e.preventDefault();
		
		if($('#UnitPrice').val() == '' ){ alert('시간당 가격을 입력하세요');$('#UnitPrice').focus();return false;}
		if($('#UnitPrice').val() == '0' ){ alert('0원으로 변경시 결제 취소됩니다.\n가격을 확인 바랍니다.');$('#UnitPrice').focus();return false;}
		if($('#Time').val() == '0' ){ alert('1회 수업시간을 입력하세요');$('#Time').focus();return false;}
		if($('#TotalTimes').val() == '0' ){ alert('총 수업횟수를 입력하세요');$('#TotalTimes').focus();return false;}
		var unitPrice = Number($('#UnitPrice').val());
		var time = Number($('#Time').val());
		var totalTimes = Number($('#TotalTimes').val());
		
		var x = $('#UnitPrice').val();
		if(x && x.length > 0) {
			if(!$.isNumeric(x)) {
				x = x.replace(/[^0-9]/g,"");
			}
			$('#UnitPrice').val(x);
		}

		var x = $('#TotalTimes').val();
		if(x && x.length > 0) {
			if(!$.isNumeric(x)) {
				x = x.replace(/[^0-9]/g,"");
			}
			$('#TotalTimes').val(x);
		}
		/*
		if(!Number.isInteger(unitPrice))
		{
			alert('숫자만 입력가능합니다');
			return false;
		}
		if(!Number.isInteger(totalTimes))
		{
			alert('숫자만 입력가능합니다');
			return false;
		}
		*/

		if(isUploading) {
			alert('업로드 중입니다. 잠시만 기다려 주세요');
			return false;
		}

		var formData = new FormData(this);

		isUploading = true;
		$.ajax({
			type: 'POST',
			url: '/tutor/regiPrice_proc.php',
			contentType: false,
			data: formData,
			processData: false,
			success: function (response) {
				isUploading = false;			   
					alert('가격 등록이 완료되었습니다.');
					
					if(Mode == 1)
					{
						location.href="/tutor/regiClass/"+$('#Id').val();
					}
					else
					{
						location.href="/tutor/regiClass/"+$('#Id').val();
					}
			},
			error: function(response) {
				isUploading = false;
			}
		});
		return false;
	});

	function formatMoney(val) {
		if (val.length < 4)
			return val;
		return formatMoney(val.substring(0, val.length - 3)) + ',' + val.substring(val.length - 3, val.length);
	}
</script>
<script>
	updateCalculation();
	function updateCalculation() { //다회차일때
		
		
		var unitPrice = Number($('#UnitPrice').val());
		var time = Number($('#Time').val());
		var totalTimes = Number($('#TotalTimes').val());

		var x = $('#TotalTimes').val();
		if(x && x.length > 0) {
			if(!$.isNumeric(x)) {
				x = x.replace(/[^0-9]/g,"");
			}
			$('#TotalTimes').val(x);
		}
		/*
		if(!Number.isInteger(totalTimes))
		{
			alert('숫자만 입력가능합니다');
			return false;
		}
		*/
		
		$('#calc-unit-price').text(formatMoney(unitPrice.toString()));
		$('#calc-time').text(time);
		$('#calc-total-times').text(totalTimes);

		$('#calc-result').text(formatMoney((unitPrice * time * totalTimes).toString()));
		$('#calc-fee').text(formatMoney(unitPrice.toString()));
		$('#calc-fee2').text(formatMoney(unitPrice.toString()) + '원');
		$('#calc-fee3').text(formatMoney(unitPrice.toString()) + '원');
		$('#calc-fee4').text(formatMoney(unitPrice.toString())+'원' );
		$('#calc-fee5').text(formatMoney(unitPrice.toString()) + '원');

		$('#calc-result2').text(formatMoney((unitPrice * time * totalTimes - unitPrice).toString()) + '원');
	}
	
	$('#UnitPrice').change(updateCalculation);
	$('#Time').change(updateCalculation);
	$('#TotalTimes').change(updateCalculation);
</script>

<!-- Channel Plugin Scripts -->
<script>
var scrollTop=0;
$('#custom-button-trigger, .cs').click(function(){
	scrollTop= $(window).scrollTop();
	$('#custom-button-1').click();
});
 (function() {
   var w = window;
   if (w.ChannelIO) {
     return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
   }
   var d = window.document;
   var ch = function() {
     ch.c(arguments);
   };
   ch.q = [];
   ch.c = function(args) {
     ch.q.push(args);
   };
   w.ChannelIO = ch;
   function l() {
     if (w.ChannelIOInitialized) {
       return;
     }
     w.ChannelIOInitialized = true;
     var s = document.createElement('script');
     s.type = 'text/javascript';
     s.async = true;
     s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
     s.charset = 'UTF-8';
     var x = document.getElementsByTagName('script')[0];
     x.parentNode.insertBefore(s, x);
   }
   if (document.readyState === 'complete') {
     l();
   } else if (window.attachEvent) {
     window.attachEvent('onload', l);
   } else {
     window.addEventListener('DOMContentLoaded', l, false);
     window.addEventListener('load', l, false);
   }
 })();
  ChannelIO('boot', {
   "pluginKey": "8fc98895-06a5-402d-8740-1cb9261ebc91",
	"customLauncherSelector": "#custom-button-1",
    "hideDefaultLauncher": true,
	   "userId": "jaeyeun95@naver.com", //fill with user id
	   "profile": {
		 "name": "김재윤", //fill with user name
		 "mobileNumber": "010-4763-5023", //fill with user phone number
		 "CUSTOM_VALUE_1": "VALUE_1", //any other custom meta data
		 "CUSTOM_VALUE_2": "VALUE_2"
	   }
 });
  ChannelIO('onHide', function() {
	$(window).scrollTop(scrollTop);
});
</script>
<!-- End Channel Plugin -->	

</div>

<!-- insert4 -->
<!-- <form method="POST" id="frm-register-detail" enctype="multipart/form-data"> -->
<div class="insertForm4">
<input type="hidden" id="Id" name="Id" value="32599">
<input type="hidden" id="Status" name="Status" value="0">
<input type="hidden" id="Mode" name="Mode" value="">
<input type="hidden" id="CateMain" name="CateMain" value="2">
<div class="tutor_cont">
	<div class="title_box">
		<h3>강의등록</h3>
				<div class="steps">
			<a href="/tutor/regiInfo/32599"><li><b>01</b>기본정보</li></a>
			<img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
			<a href="/tutor/regiTitle/32599"><li><b>02</b>제목/이미지</li></a>
			<img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
			<a href="/tutor/regiPrice/32599"><li><b>03</b>가격</li></a>
			<img src="https://front-img.taling.me/Content/Images/tutor/Images/icon_next.png">
			<a href="/tutor/regiClass/32599"><li class="on"><b>04</b>수업</li></a>
		</div>
			</div>
	<div class="box">
		<div class="title">강사소개<b class="pink">*</b><br><br><span class="gray8">공백포함 200자 이상 권장</span></div>
		<div class="cont" style="padding-top:15px">
			<div class="caution caution2">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
					<li>강사님의 재능에 관한 경력 및 이력에 대해서 설명해주세요.</li>
					<li>강사님의 재능을 얻기 위해 겪었던 경험에 대해서 말씀해주세요.</li>
				</ul><br>
				<b class="pink">주의!</b><br>
				<ul class="gray8">
					일부 이모티콘은 인식이 되지 않아, 정성스럽게 작성해주신 내용이 날아갈 수 있습니다. 
					<br>강조를 해야 할 내용이 있는 경우 되도록이면 일반 특수문자(★/◎/♡)를 사용해주세요
				</ul>
			</div>
			<div class="inner1">
				<textarea class="basic len980 hei190" placeholder="수강생은 강사님에 대해 많은 관심을 가지고 있습니다. TIP을 참고하여 최대한 자세히 소개를 해주세요." id="TutorInfo" name="TutorInfo"></textarea>
                <span style="float:right;">(<span id="span-tutor-info-length">0</span>/1000)</span>
			</div>
			<div class="inner1">
				<div class="sample1">
					<div class="arw">
						<img class="button" src="https://front-img.taling.me/Content/Images/tutor/Images/icon_down.png" onclick="arwpaper(this)">
						<img class="button" style="display:none"src="https://front-img.taling.me/Content/Images/tutor/Images/icon_up.png" onclick="arwpaper(this)">
					</div>
					<span>예시 이미지 및 화면보기</span>
					<div class="ex">
						<img src="https://front-img.taling.me/Content/Images/tutor/Images/img_example_04.png">
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="title">수업소개<b class="pink">*</b><br><br><span class="gray8">공백포함 2500자 이상 권장</span></div>
		<div class="cont">
			<div class="caution caution2">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
											<li>수업의 목표와 수업진행방식에 대해 설명해주세요.</li>
						<li>수업을 진행하는 동안 얻을 수 있는 결과물 혹은 수업 후 기대할 수 있는 발전에 대해 소개해주세요.</li>
						<li>다른 학원, 수업과는 다른 강사님만의 장점에 대해서 설명해주세요.</li>
									</ul><br>
				<b class="pink">주의!</b><br>
				<ul class="gray8">
					일부 이모티콘은 인식이 되지 않아, 정성스럽게 작성해주신 내용이 날아갈 수 있습니다. 
					<br>강조를 해야 할 내용이 있는 경우 되도록이면 일반 특수문자(★/◎/♡)를 사용해주세요
				</ul>
			</div>
						<div class="inner1">
				<textarea class="basic len980 hei190" placeholder="수업소개는 수강생이 가장 주의깊게 살펴보는 부분입니다. 수강생들이 수업에 대해 알 수 있도록 TIP의 질문을 반드시 포함하여 작성해주세요." id="Introduction" name="Introduction"></textarea>
                <span style="float:right;">(<span id="span-class-intro-length">0</span>/5000)</span>
			</div>
			<div class="inner1">
				<div class="gray5 title">태그<font class="gray8">최대10개 태그 가능</font></div>
				
							
				<div style="position: absolute;margin-top:11px;margin-left:15px;color: #9d9c9c;font-size: 16px;">#</div>
				<input type="text" class="basic phone" id="tag_place" placeholder="프로그래밍"  style="padding-left:25px">				
				<span class="img_upld verify button" onclick="add_tag()">추가</span>
				<!--button onclick="add_tag()">추가</button-->
				<script>
					function add_tag(){
						//alert($('#tag_place').val());
						var cont = $('#tag_place').val();
						if(check_tag(cont))
						{
							$('#tag_box').prepend('<div class="tags"><span>'+$('#tag_place').val()+'</span><img src="/Tutor2/Content/btn-clse-13-13.png" onclick="del_tag(this)"><input class="tag_values" type="hidden" name="tags[]" value="'+$('#tag_place').val()+'"></div>');									
						}
						$('#tag_place').val('');
					}

					function del_tag(e)
					{
						e.parentNode.parentNode.removeChild(e.parentNode);
					}


					function check_tag(cont){
						//alert($('.tag_box').find('.tag_values').size());
						var num = $('.tag_box').find('.tag_values').size();
						if(num==10)
						{
							alert('태그는 10개 까지 등록 가능합니다');
							return false;
						}
						else if (cont == '')
						{
							alert('내용을 입력해주세요');
							return false;
						}
						
						for(var i =0; i<num;i++)
						{
							//alert($('.tag_box').find('.tag_values').eq(i).val());
							if(cont==$('.tag_box').find('.tag_values').eq(i).val())
							{
								alert('이미 존재하는 태그입니다');
								return false;
							}
						}
						return true;
					}
				</script>
				
				<div style="overflow:hidden;" id="tag_box">
									</div>
			</div>
			<div class="sample1 inner1">
				<div class="arw">
					<img class="button" src="https://front-img.taling.me/Content/Images/tutor/Images/icon_down.png" onclick="arwpaper(this)">
					<img class="button" style="display:none"src="https://front-img.taling.me/Content/Images/tutor/Images/icon_up.png" onclick="arwpaper(this)">
				</div>
				<span>예시 이미지 및 화면보기</span>
				<div class="ex"><img src="https://front-img.taling.me/Content/Images/tutor/Images/img_example_05.png"></div>
			</div>
		</div>
	</div>
	<div class="box">
		<div class="title">수업대상<b class="pink">*</b><br><br><span class="gray8">공백포함 200자 이상 권장</span></div>
		<div class="cont">
			<div class="caution caution2">
				<b class="pink">TIP</b><br>
				<ul class="gray8">
					<li>수업을 추천하는 대상은 누구일까요? ('관심이 있는 누구나'와 같이 추상적이거나 너무 포괄적인 답변은 피해주세요.)</li>
					<li>예시: 인턴/입사를 앞두고 엑셀이 걱정되는 분/ 토익 00점 이상의 기초적인 의사소통만 가능하신 분</li>
				</ul><br>
				<b class="pink">주의!</b><br>
				<ul class="gray8">
					일부 이모티콘은 인식이 되지 않아, 정성스럽게 작성해주신 내용이 날아갈 수 있습니다. 
					<br>강조를 해야 할 내용이 있는 경우 되도록이면 일반 특수문자(★/◎/♡)를 사용해주세요
				</ul>
			</div>
			<div class="inner1">
				<textarea class="basic len980 hei190" placeholder="TIP의 내용을 참고하여 강사님의 수업을 수강하기에 적합한 수업대상에 대해 알려주세요. " id="Target" name="Target"></textarea>
                <span style="float:right;">(<span id="span-tutee-info-length">0</span>/1000)</span>
			</div>
			<div class="sample1 inner1">
				<div class="arw">
					<img class="button" src="https://front-img.taling.me/Content/Images/tutor/Images/icon_down.png" onclick="arwpaper(this)">
					<img class="button" style="display:none"src="https://front-img.taling.me/Content/Images/tutor/Images/icon_up.png" onclick="arwpaper(this)">
				</div>
				<span>예시 이미지 및 화면보기</span>
				<div class="ex"><img src="https://front-img.taling.me/Content/Images/tutor/Images/img_example_06.png"></div>
			</div>
		</div>
	</div>


	<div class="button_box" style="width:680px">
		<a href="/Talent/Detail/32599" target="_blank"><div class="next button prev">미리보기</div></a>
		<div class="next button prev" onclick="setMode(0);">임시저장</div>
				<div class="next button on" onclick="setMode(1);">최종 승인요청</div>
			</div>
		
</div>
</div>
</form>
<script>
	
	function setMode(val)
	{
		Mode = val;
		$('#Mode').val(val);
		$('#frm-register-detail').submit();
	}

	var isUploading = false;
    $('#frm-register-detail').submit(function(e) {

      e.preventDefault();
      let eventLoc = '';
      let curri = 6;

      if (byteCheck($('#TutorInfo').val()) < 20) {
        $('#TutorInfo').addClass('on');
        eventLoc = '#TutorInfo';
      } else {
        $('#TutorInfo').removeClass('on');
      }

      if (byteCheck($('#Introduction').val()) < 100) {
        $('#Introduction').addClass('on');
        if (eventLoc == '') {eventLoc = '#Introduction';}
      } else {
        $('#Introduction').removeClass('on');
      }

      if (byteCheck($('#Target').val()) < 20) {
        $('#Target').addClass('on');
        if (eventLoc == '') {eventLoc = '#Target';}
        ;
      } else {
        $('#Target').removeClass('on');
      }

      // 회차별 수업내용 validation
      for (let i = 1; i <= curri; i++) {
        if (byteCheck($('#Curriculum' + i).val()) < 20) {
          $('#Curriculum' + i).addClass('on');
          if (eventLoc == '') {eventLoc = '#Curriculum' + i;}
          ;
        } else {
          $('#Curriculum' + i).removeClass('on');
        }
      }

      if (eventLoc != '') {
        alert('강사님 수업에 대해 조금 더 알려주세요.');
        $(eventLoc).addClass('on').focus();
        return false;
      }

      Status = $('#Status').val();

      if (isUploading) {
        alert('업로드 중입니다. 잠시만 기다려 주세요');
        return false;
      }

      var formData = new FormData(this);

      isUploading = true;
      $.ajax({
        type: 'POST',
        url: '/tutor/regiClass_proc.php',
        contentType: false,
        data: formData,
        processData: false,
        success: function(response) {
          isUploading = false;
          if (response == 'error3') {
            alert('이미지 파일을 확인해주세요! jpg,jpeg,bmp,png 만 가능합니다.');
            return;
          } else {
            if (Mode == 1) {
              if (Status != 2 && Status != 3) {
                alert(
                    '언투온에서 강사님의 소중한 재능을 공유해주셔서 감사합니다. 정성스럽게 작성해주신 내용 잘 검토하여 피드백 드리겠습니다.\n\n수업승인은 먼저 등록해주신 순서대로 평가가 이뤄지고 있으며 영업일 기준 평균 5일 정도 소요됩니다.\n\n반려 후 재승인 요청 해주시는 경우에도 처음부터 다시 심사가 진행되니 모든 내용을 완벽하게 작성하신 후에 제출해주세요!');
                location.href = "/My/ClassBoard/";
              } else {
                alert('수업 등록이 완료되었습니다.');
                location.href = "/My/ClassBoard/";
              }
            } else {
              alert('임시저장이 완료되었습니다.');
              location.reload();
            }
          }
        },
        error: function(response) {
          isUploading = false;
        },
      });
      return false;
    });

    $(document).
        on('keyup',
            '#TutorInfo, #Introduction, #Target, #Curriculum1, #Curriculum2, #Curriculum3, #Curriculum4, #Curriculum5, #Curriculum6',
            function() {
              let contentMaxLimit = 1000;
              let contentMinLimit = 20;
              let $displayEl = null;
              let inputType = '';

              switch ($(this).attr('id')) {
                case 'TutorInfo':
                  inputType = '강사소개';
                  $displayEl = $('#span-tutor-info-length');
                  break;
                case 'Target':
                  inputType = '수업대상';
                  $displayEl = $('#span-tutee-info-length');
                  break;
                case 'Introduction':
                  inputType = '수업소개';
                  contentMaxLimit = 5000;
                  contentMinLimit = 100;
                  $displayEl = $('#span-class-intro-length');
                  break;
                case 'Curriculum1':
                  inputType = '커리큘럼';
                  $displayEl = $('#span-class-curri1-length');
                  break;
                case 'Curriculum2':
                  inputType = '커리큘럼';
                  $displayEl = $('#span-class-curri2-length');
                  break;
                case 'Curriculum3':
                  inputType = '커리큘럼';
                  $displayEl = $('#span-class-curri3-length');
                  break;
                case 'Curriculum4':
                  inputType = '커리큘럼';
                  $displayEl = $('#span-class-curri4-length');
                  break;
                case 'Curriculum5':
                  inputType = '커리큘럼';
                  $displayEl = $('#span-class-curri5-length');
                  break;
                case 'Curriculum6':
                  inputType = '커리큘럼';
                  $displayEl = $('#span-class-curri6-length');
                  break;
                default:
                  break;
              }

      let content = $(this).val();
      let currentLength = byteCheck(content);
      $displayEl.text(currentLength);

      if (currentLength < contentMinLimit) {
        $displayEl.css('color', 'red');
      } else {
        $displayEl.css('color', 'black');
      }

      if (currentLength > contentMaxLimit) {
        alert(inputType + '의 길이는 ' + contentMaxLimit + '바이트를 초과할 수 없습니다!');
        let limitedContent = byteCut(content, contentMaxLimit);
        $(this).val(limitedContent);
        let limitedContentLength = byteCheck(limitedContent);
        $displayEl.text(limitedContentLength);
        return false;
      }
    });

    function byteCheck(content) {
      let len = 0;
      for (let i = 0; i < content.length; i++) {
        len += (content.charCodeAt(i) > 128) ? 2 : 1;
      }
      return len;
    }

    function byteCut(content, len) {
      let l = 0;
      for (let i = 0; i < content.length; i++) {
        l += (content.charCodeAt(i) > 128) ? 2 : 1;
        if (l > len) {
          return content.substring(0, i);
        }
      }

      return content;
    }
</script>
</div>



</body>
</html>