<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/intro_style.css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/myPage/swiper.min.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/myPage/awesomplete.css">
<link type="text/css" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/myPage/style_base.css" />
<!-- <link type="text/css/myPage" rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myPage/style_base.css?bid=jWuYNsKu" /> -->
<link type="text/css" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/myPage/style.css" />
<!-- <link type="text/css/myPage" rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myPage/style.css?bid=jWuYNsKu" /> -->
<link type="text/css" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/myPage/style_effect.css" />
<!-- <link type="text/css/myPage" rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myPage/style_effect.css?bid=jWuYNsKu" /> -->
<link type="text/css" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/myPage/style_responsible.css" />
<!-- <link type="text/css/myPage" rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myPage/style_responsible.css?bid=jWuYNsKu" /> -->
<link type="text/css" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/myPage/style_nalrarang.css" />
<!-- <link type="text/css/myPage" rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myPage/style_nalrarang.css?bid=jWuYNsKu" /> -->

<!-- <link rel="shortcut icon" href="/static/img/favicon.png" />
<link rel="apple-touch-icon" href="/static/img/m_favicon.png" /> -->
<script type="text/javascript"
	src="${ pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/myPage/mypage.js"></script>

<!-- 마이페이지 스크립트 -->
<script type="text/javascript">
/* $(document).ready(function(){
	$("#myclass").click(function(){
		  $("#myclass").html("마이클래스"); 
		  $(".mymenu-sub-wrap").show();  
		$("#myclass").html("마이클래스");
	});
}); */


// 마이페이지 > 메인토픽눌렀을때 실행되는 함수
$(function(){
	// 시간나면 코드줄이기
	
	// 내 클래스 관리 클릭시
	$("#myClass").click(function(){
		$(".mymenu-sub", "#myClassList").css('display','block');
		$(".mymenu-sub", "#myBoardList").css('display',"none");
		$(".mymenu-sub", "#myPageList").css('display', 'none');
		$(".mymenu-sub", "#favorite_sub").css("display", "none");
	});	
	
	$("#myClassSub").click(function(){
		$("#myClassSubContent").css("display","block");
	});
	
	// 내 클래스 관리 > 나의 클래스 목록 실행 함수
	function classList(){
		var html = "";
		
		html +='<table>';
			 +	'<tr>';
			 +	'<td>이름</td><td> 김재윤</td>';
			 +	'</tr>';
			 +	'<tr>';
			 +	'<td rowspan="3">수강클래스</td>';
			 + '<td>SNPE 바디리셋 프로젝트. 척추운동으로 밸런스 회복하기!</td>';
			 +	'</tr>';
			 +   '<tr>';
			 +   '<td>[작심1월] 파이썬 풀패키지, 김신의 자동화 프로그램 만들기!</td>';
			 +   '</tr>';
			 +	'</table>';
	
		$("#myClassSubContent").append(html);
	}
	
	// 나의 활동내역 클릭시
	$("#myBoard").click(function(){
		$(".mymenu-sub", "#myClassList").css('display','none');
		$(".mymenu-sub", "#myBoardList").css('display',"block");
		$(".mymenu-sub", "#myPageList").css('display', 'none');
		$(".mymenu-sub", "#favorite_sub").css("display", "none");
		$("#myMenuContent").css("display","none");
	});
	
	// 내 정보 관리 클릭시 
	$("#myPage").click(function(){
		$(".mymenu-sub", "#myClassList").css('display','none');
		$(".mymenu-sub", "#myBoardList").css('display',"none");
		$(".mymenu-sub", "#myPageList").css('display', 'block');
		$(".mymenu-sub", "#favorite_sub").css("display", "none");
		
		
		// 서브메뉴 클릭시 함수
		$("#changeProfile").click(function(){
			$("#changeProfileContent").css("display","block");
			$("#changePassContent").css("display","none");
			$("#quitContent").css("display","none");
			$("#insertTeacherContent").css("display","none");
		});
		
		$("#changePass").click(function(){
			$("#changeProfileContent").css("display","none");
			$("#changePassContent").css("display","block");
			$("#quitContent").css("display","none");
			$("#insertTeacherContent").css("display","none");
		});
		
		$("#quit").click(function(){
			$("#changeProfileContent").css("display","none");
			$("#changePassContent").css("display","none");
			$("#quitContent").css("display","block");
			$("#insertTeacherContent").css("display","none");
		});
		
		$("#insertTeacher").click(function(){
			$("#changeProfileContent").css("display","none");
			$("#changePassContent").css("display","none");
			$("#quitContent").css("display","none");
			$("#insertTeacherContent").css("display","block");
		});
		// 회원정보수정
		$("#changeProfile").click(function(){
			setChangeProfile();
		}); 
		// 비밀번호 변경
		$("#changePass").click(function(){
			changePass();
		});
		// 회원 탈퇴
		$("#quit").click(function(){
			exitUser();
		});
		//강사로 회원가입
		$("#insertTeacher").click(function(){
			applyTeacher();
		});
	});// 내 정보관리 end
	
	// 회원정보 실행하는 함수
	 function setChangeProfile(){
		var html= "";
		
		html += "<table width='500' border='1'>"
			  + "<tr><td>이름</td><td><input type='text' value='김재윤'></td>"	//input type 수정해야함 
			  + "</tr>"
			  +	"<tr>"
			  +	"<td>이메일</td>"
			  +	"<td>jaeyeun95@naver.com</td>"
			  +	"</tr>"
			  +	"<tr>"
			  +	"<td>전화번호</td>"
			  +	"<td><input type='text' name='phone'></td>"
			  +	"</tr>"
			  +	"</table>";
		
		$("#changeProfileContent").append(html);
	}	//setChangeProfile end 
	
	// 비밀번호 변경 실행 함수
		function changePass(){
			var html ="";
			
			html += '<div class="edit-membership-tit">';
	        html += '비밀번호 변경';
	        html += '</div>';
	        html += '<div class="edit-membership-cont">';
	        html += '<div class="edit-membership edit-membership-border">';
	        html += '<table class="table-edit-membership">';
	        html += '<colgroup>';
	        html += '<col class="col-membership01" />';
	        html += '<col class="col-membership02" />';
	        html += '</colgroup>';
	        html += '<tbody>';
	        html += '<tr>';
	        html += '<th class="edit-membership-th2">현재 비밀번호</th>';
	        html += '<td class="edit-membership-td">';
	        html += '<div class="input-wrap"><input type="password" class="input cur-password" /></div>';
	        html += '</td>';
	        html += '</tr>';
	        html += '<tr>';
	        html += '<th class="edit-membership-th2">새 비밀번호</th>';
	        html += '<td class="edit-membership-td">';
	        html += '<div class="input-wrap"><input type="password" class="input new-password" /></div>';
	        html += '<div class="change-pw-info">비밀번호는 6~16자 영문, 숫자를 사용해주세요.</div>';
	        html += '</td>';
	        html += '</tr>';
	        html += '<tr>';
	        html += '<th class="edit-membership-th2">새 비밀번호 확인</th>';
	        html += '<td class="edit-membership-td">';
	        html += '<div class="input-wrap"><input type="password" class="input confirm-password" /></div>';
	        html += '<div class="change-pw-info">비밀번호 확인을 위해 새 비밀번호를 다시 한번 더 입력해주세요.</div>';
	        html += '</td>';
	        html += '</tr>';
	        html += '</tbody>';
	        html += '</table>';
	        html += '</div>';
	        html += '<div class="edit-membership-btn">';
	        html += '<a href="#link" title="변경완료" class="btn-edit-membership change-pass-btn">변경완료</a>';
	        html += '</div>';
	        html += '</div>';
	        
	        $("#changePassContent").append(html);
		}
	
	// 회원탈퇴 실행하는 함수
	function exitUser() {
        var html = '';

        html += '<div class="quit-membership-tit">';
        html += '<div class="quit-tit">그 동안 언투온을 이용해주셔서 감사합니다.</div>';
        html += '<div class="quit-txt">';
        html += '고객님께서 회원 탈퇴를 원하신다니 저희 서비스가 많이 부족하고 미흡했나 봅니다.<br/>';
        html += '불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.';
        html += '</div>';
        html += '</div>';
        html += '<div class="quit-membership-cont">';
        html += '<div class="edit-membership-tit">';
        html += '회원탈퇴 안내';
        html += '</div>';
        html += '<div class="info-quit-membership">';
        html += '• 회원 탈퇴 시 고객님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 hobbyful 고객정보 보호정책에 따라 관리 됩니다.<br/>';
        html += '• 탈퇴 시 보유하고있던 마일리지, 쿠폰은 모두 영구 삭제됩니다.<br/>';
        html += '• 정기구독이 진행 중인 경우에는 탈퇴가 불가능하며, 취소/반품이 완료된 이후 가능합니다.<br/>';
        html += '• 탈퇴 후 24시간 동안 기존에 사용하신 이메일과 휴대폰 번호로는 재가입이 불가능합니다.';
        html += '</div>';
        html += '</div>';
        html += '<div class="quit-membership-cont">';
        html += '<div class="edit-membership-tit">';
        html += '탈퇴 사유 확인';
        html += '</div>';
        html += '<div class="write-reply-area">';
        html += '<div class="write-reply">';
        html += '<div class="write-reply-tit">사유선택</div>';
        html += '<div class="write-reply-input">';
        html += '<span class="ask-category ask-category-on">';
        html += '<input type="radio" class="check-ask" id="quit-product" name="quit-category" checked>';
        html += '<label class="label-ask" for="quit-product">상품 품질 불만</label>';
        html += '</span>';
        html += '<span class="ask-category ask-category-on">';
        html += '<input type="radio" class="check-ask" id="quit-use" name="quit-category">';
        html += '<label class="label-ask" for="quit-use">이용빈도 낮음</label>';
        html += '</span>';
        html += '<span class="ask-category ask-category-on">';
        html += '<input type="radio" class="check-ask" id="quit-delivery" name="quit-category">';
        html += '<label class="label-ask" for="quit-delivery">배송불만</label>';
        html += '</span>';
        html += '<span class="ask-category ask-category-on">';
        html += '<input type="radio" class="check-ask" id="quit-return" name="quit-category">';
        html += '<label class="label-ask" for="quit-return">교환/환불 불만</label>';
        html += '</span><br class="-m" />';
        html += '<span class="ask-category ask-category-on">';
        html += '<input type="radio" class="check-ask" id="quit-as" name="quit-category">';
        html += '<label class="label-ask" for="quit-as">A/S 불만</label>';
        html += '</span>';
        html += '<span class="ask-category ask-category-on">';
        html += '<input type="radio" class="check-ask" id="quit-nofun" name="quit-category">';
        html += '<label class="label-ask" for="quit-nofun">재미없음</label>';
        html += '</span>';
        html += '<span class="ask-category ask-category-on">';
        html += '<input type="radio" class="check-ask" id="quit-etc" name="quit-category">';
        html += '<label class="label-ask" for="quit-etc">기타</label>';
        html += '</span>';
        html += '</div>';
        html += '</div>';
        html += '<div class="write-reply write-textarea">';
        html += '<div class="write-reply-tit">기타(선택)</div>';
        html += '<div class="write-reply-input">';
        html += '<div class="input-wrap">';
        html += '<textarea class="textarea exit-reason" rows="" cols="" placeholder="기타 사유를 입력해 주세요." maxlength="300" ></textarea>';
        html += '<span class="change-reason-txt-count">0/300</span>';
        html += '</div>';
        html += '</div>';
        html += '</div>';
        html += '<div class="write-reply">';
        html += '<div class="write-reply-tit">비밀번호</div>';
        html += '<div class="write-reply-input">';
        html += '<div class="input-wrap">';
        html += '<input type="password" class="input exit-password" />';
        html += '</div> <div class="change-pw-info">간편로그인으로 가입하신 경우, <a href="#" onclick="User.showFindPassword(); return false;">비밀번호 찾기</a>를 통해 임시비밀번호를 발급받은 후 입력해 주세요.</div>';
        html += '</div>';
        html += '</div>';
        html += '</div>';
        html += '<div class="edit-membership-btn">';
        html += '<a href="#link" title="탈퇴하기" class="btn-edit-membership exit-user-btn">탈퇴하기</a>';
        html += '</div>';
        html += '</div>';

        $('#quitContent').append(html);
        
	} // exitUser end
	
	// 강사 지원하기 실행함수
	function applyTeacher(){
		var html="";
		
		html += '<div class="head_cont">';
		html +=	'<div class="inbox">';
		html +=	'<a href="/Account/LoginPage.php" onclick="alert("로그인이 필요합니다"); ">';		// 강사지원하기로 태그바꿔야함
		html +=	'<div class="button"  id="btn-menu-login">';
		html +=	'강사 등록하기';
		html +=	'</div>';
		html +=	'</a>';
		html +=	'</div>';
		html += '</div>';
		
		$("#insertTeacherContent").append(html);
	}
	
	
	$("#favorite").click(function(){
		$(".mymenu-sub", "#myClassList").css('display','none');
		$(".mymenu-sub", "#myBoardList").css('display',"none");
		$(".mymenu-sub", "#myPageList").css('display', 'none');
		$(".mymenu-sub", "#favorite_sub").css("display", "block");
		$("#myMenuContent").css("display","none");
	});
	
	
	
	//마이페이지 서브메뉴
	 
 	/* $("#changeProfile").click(function(){
		$(".mymenu-content").html(
			"<div align='center'>회원정보 수정하기 입니다.</div>").css("color", "red");
				
	}); */
	
	
	// 내정보 수정 클릭시
	/*  $("#changeProfile").click(function(){
		setMyPage();
	});   */ 
	 
});
</script>
</head>
<body>

	<!-- 마이페이지 시작 -->
	<div class="wrap" id="wrap">
		<div class="container">
			<div class="my-summary-wrap">
				<div class="profile-wrap">
					<div class="profile-thumb-wrap">
						<!-- <img src="../static/img/bg-add-thumb.png" onError="this.src='../static/img/bg-add-thumb.png'" class="thumb-profile" alt="프로필사진" /> -->
					</div>
					<div class="profile-info-wrap">
						안녕하세요.
						<div class="profile-name cut-txt"></div>
						<!--a href="javascript:;" title="프로필 사진 편집" class="btn-profile-thumb">프로필 사진 편집</a-->
						<label for="upload" class="btn-profile-thumb">프로필 사진 편집</label>
					</div>
				</div>
			</div>

			<!-- MyMenu -->
			<div class="mymenu-wrap">
				<div class="mymenu-cont">
					<ul class="mymenu-list">

						<li class="mymenu"><a href="#" id="myClass" title="내 클래스 관리" class="btn-mymenu btn-mymenu-on">내 클래스 관리</a></li>
						<!-- <li class="mymenu"><a href="#" onclick="return myMenu();" title="주문/배송관리" class="btn-mymenu btn-mymenu-on">주문/배송관리</a></li> -->
						<!-- <li class="mymenu"><button title="주문/배송관리" id="btn-mymenu btn-mymenu-on">주문/배송관리</button></li> -->
						<!-- <li class="mymenu"><button id="mymenu"
								class="btn-mymenu btn-mymenu-on">내 클래스 관리</button></li> -->
						<!--         <li class="mymenu i-subscript"><a href="/mypage.html?m=subscript&s=subscript" title="정기구독 관리" data-submenu="mymenu-subscript" class="btn-mymenu">정기구독 관리</a></li>-->
						<li class="mymenu"><a href="#" id="myBoard" title="나의 활동 내역"
							data-submenu="mymenu-address" class="btn-mymenu">나의 활동 내역</a></li>
						<li class="mymenu"><a href="#" id="myPage" title="내 정보 관리"
							data-submenu="mymenu-action-history"
							class="btn-mymenu btn-mymenu-action-history">내 정보 관리</a></li>
						<!-- <li class="mymenu"><a href="/mypage.html?m=myinfo&s=profile"
							title="내 정보 관리" data-submenu="mymenu-myinfo" class="btn-mymenu">내
								정보 관리</a></li> -->
					</ul>
				</div>
				<a href="#" id="favorite" title="취미 보관함" class="btn-favorite">찜한 클래스</a>
			</div>
			<!-- MyMenuSubMenu -->
			<div class="mymenu-sub-wrap">
				<div class="mymenu-sub-cont">
					<ul class="mymenu-sub-list" id="myClassList">
						<li class="mymenu-sub"><a href="#" id="myClassSub" title="내 클래스 관리" data-submenu="order"
							class="btn-mymenu-sub mymenu-order sub-menu-order">내 클래스 관리</a></li>
						<li class="mymenu-sub"><a href="#" id="payList" title="정기구독 일정 확인"
							data-submenu="subscript"
							class="btn-mymenu-sub mymenu-subscript sub-menu-subscript">결제 내역</a></li>
					</ul>
					<ul class="mymenu-sub-list" id="myBoardList">
						<li class="mymenu-sub"><a href="/mypage.html?m=subscript&s=payment" title="내가 쓴 댓글"
							data-submenu="payment"
							class="btn-mymenu-sub mymenu-subscript sub-menu-payment">내가 쓴 댓글</a></li>
						<li class="mymenu-sub"><a href="/mypage.html?m=address&s=addresslist" title="클래스 후기"
							data-submenu="addresslist"
							class="btn-mymenu-sub mymenu-address sub-menu-addresslist">클래스 후기</a></li>
						<li class="mymenu-sub"><a href="/mypage.html?m=address&s=newaddress" title="1:1 문의 내역"
							data-submenu="newaddress"
							class="btn-mymenu-sub mymenu-address sub-menu-newaddress">1:1 문의 내역</a></li>
					</ul>
					<ul class="mymenu-sub-list" id="myPageList">
						<li class="mymenu-sub"><a href="#" id="changeProfile" title="회원정보 수정" data-submenu="comment" 
							class="btn-mymenu-sub mymenu-action-history sub-menu-comment">회원정보 수정</a></li>
						<li class="mymenu-sub"><a href="#" id="changePass" title="비밀번호 변경" data-submenu="review"
							class="btn-mymenu-sub mymenu-action-history sub-menu-review">비밀번호 변경</a></li>
						<li class="mymenu-sub"><a href="#" id="quit" title="회원 탈퇴"
							data-submenu="qna"
							class="btn-mymenu-sub mymenu-action-history sub-menu-qna">회원 탈퇴</a></li>
						<li class="mymenu-sub"><a href="#" id="insertTeacher" title="강사로 지원하기"
							data-submenu="profile"
							class="btn-mymenu-sub mymenu-myinfo sub-menu-profile">강사로 지원하기</a>
						</li>
					</ul>
					<ul class="mymenu-sub-list" id="favorite_sub">
						<li class="mymenu-sub"><a
							href="/mypage.html?m=myinfo&s=password" title="취미 클래스"
							data-submenu="password"
							class="btn-mymenu-sub mymenu-myinfo sub-menu-password">취미 클래스</a></li>
					</ul>
					<!-- <ul>
						<li class="mymenu-sub"><a href="/mypage.html?m=myinfo&s=exit"
							title="회원탈퇴" data-submenu="exit"
							class="btn-mymenu-sub mymenu-myinfo sub-menu-exit">회원탈퇴</a></li>
						<li class="mymenu-sub"><a
							href="/mypage.html?m=favorite&s=class" title="취미 클래스"
							data-submenu="class"
							class="btn-mymenu-sub mymenu-favorite sub-menu-class">취미 클래스</a>
						</li>
						<li class="mymenu-sub"><a
							href="/mypage.html?m=favorite&s=magazine" title="매거진"
							data-submenu="magazine"
							class="btn-mymenu-sub mymenu-favorite sub-menu-magazine">매거진</a>
						</li>
					</ul> -->
				</div>
				<div class="reply-info-wrap"></div>
				<div class="mymenu-sub-tab-wrap"></div>
			</div>
			<!-- MyMenu Content -->
			<article class="mymenu-content">
				<section class="order-list-wrap order-list" id="myMenuContent"></section>
				<section class="order-list-wrap order-list" id="myClassSubContent">
				<!-- <table>
					<tr>
						<td>이름</td><td> 김재윤</td>
					</tr>
					<tr>
						<td rowspan="3">수강클래스</td>
						<td>SNPE 바디리셋 프로젝트. 척추운동으로 밸런스 회복하기!</td>
					</tr>
				    <tr>
				    	<td>[작심1월] 파이썬 풀패키지, 김신의 자동화 프로그램 만들기!</td>
				    </tr>
				</table> -->
				</section>
				<div id="payListContent"></div>
				<div id="#"></div>
				<div id="#"></div>
				<section class="order-list-wrap order-list" id="changeProfileContent"></section>
				<section class="order-list-wrap order-list" id="changePassContent"></section>
				<section class="order-list-wrap order-list" id="quitContent"></section>
				<section class="haed_count" id="insertTeacherContent"></section>
			</article>
		</div>


	</div>
	<!-- 마이페이지 끝 -->
</body>
</html>