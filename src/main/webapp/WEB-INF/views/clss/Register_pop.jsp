<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
			body{
				background:white;
			}
			.container{
				margin:0 auto;max-width:800px;border:1px solid #ccc;
			}
			.header{
				padding:30px;background:#f2f1f2;overflow:hidden;
			}
			.header .left{
				float:left;box-sizing:border-box;width:80%;
			}
			.header .left.right{
				width:20%;
			}
			.header .title{
				font-size:28px;letter-spacing:-1px;
			}
			.box{
				background:url(//front-img.taling.me/Content/Images/sub/btn_tutor_reg02.jpg);background-size:cover;background-repeat:no-repeat;margin:15px 25px;
			}
			.box .boxs{
				padding:30px;color:white;font-size:16px;box-sizing:border-box;
			}
			.tab_box{
				overflow:hidden;padding:10px 5px 0 5px;
			}
			.tab_box .tab{
				width:50%;box-sizing:border-box;float:left;
			}
			.tab_box .tab .txt{
				text-align:center;width:50%;min-width:100px;margin:0 auto;padding:5px; border-radius:20px;cursor:pointer;
			}
			.tab_box .tab .txt.on{
				background:#ffeff5;
			}
			
		</style>
</head>
<body>
<div class="container">
			<div class="header">
				<div class="left">
					<div class="left" style="width:15%;padding-top:15px">
						<img src="//front-img.taling.me/Content/Images/Q.png" width="100%">
					</div>
					<div class="left title" style="width:85%;box-sizing:border-box;padding-left:5%;padding-top:20px;">
						왜 이런<br>
						결제 정책을 사용하나요?
					</div>
				</div>
				<div class="left right" style="text-align:right;float:right">
					<img src="//front-img.taling.me/Content/Images/Qmoney.png"width="100%">
				</div>
			</div>
			<div class="tab_box">
				<div class="tab">
					<div class="txt on"id="oneday_b">
						원데이클래스
					</div>
				</div>
				<div class="tab">
					<div class="txt" id="days_b">
						다회차수업
					</div>
				</div>
			</div>
			<div class="box"id="oneday">
				<div class="boxs" style="background:url(//front-img.taling.me/Content/Images/sub/btn_tutor_reg02_pink.jpg)">
					<h3>강사님과 수강생분 모두를 보호하기 위함입니다</h3>
					수업 진행 전 결제된 전체수업료를 탈잉이 안전하게 보관하고 있다가<br>
					수업 진행 후 강사님께 전달해드림으로써 강사님과 수강생분 모두를 보호할 수 있습니다.
				</div>
				<div style="padding-top:10px;background:#fff"></div>
		
				<div class="boxs">
					<h3>No-Show를 방지합니다</h3>
					최초 입금이 없을 시, 온라인으로 수업을 신청한 고객들의<br>No-Show 확률은 35%에 달합니다.<br>
					이는 강사님께 시간과 금전 손실의 낭비를 가져오게합니다.
				</div>
				<div style="padding-top:10px;background:#fff"></div>
	
				<div class="boxs">
					<h3>실제 만남까지의 책임을 다하기 위함입니다</h3>
					만일 수강생분과의 스케쥴이 맞지 않아 취소가 발생할 시,<br>
					탈잉에서 손쉽게 환불을 해줌으로써 빠른 대응을 할 수 있습니다.
				</div>
			</div>

			<div class="box" id="days" style="display:none">
				<div class="boxs" style="background:url(//front-img.taling.me/Content/Images/sub/btn_tutor_reg02_pink.jpg)">
					<h3>배움이 쉽고 즐거워지게 하기 위함입니다</h3>
					수강생이 한번에 20~30만원을 결제하기는 부담스럽습니다.<br>
					따라서 1시간 결제를 유도함으로써 강사님의 수업을 쉽게 경험할 수 있습니다.
				</div>
				<div style="padding-top:10px;background:#fff"></div>
		
				<div class="boxs">
					<h3>No-Show를 방지합니다</h3>
					최초 입금이 없을 시, 온라인으로 수업을 신청한 고객들의<br>No-Show 확률은 35%에 달합니다.<br>
					이는 강사님께 시간과 금전 손실의 낭비를 가져오게합니다.
				</div>
				<div style="padding-top:10px;background:#fff"></div>
	
				<div class="boxs">
					<h3>실제 만남까지의 책임을 다하기 위함입니다</h3>
					만일 수강생분과의 스케쥴이 맞지 않아 취소가 발생할 시,<br>
					탈잉에서 손쉽게 환불을 해줌으로써 빠른 대응을 할 수 있습니다.
				</div>
			</div>
		</div>
		
		<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js"></script>
		<script>
			$(function(){
				$('#oneday_b').click(function(){
					
					$('#oneday_b').addClass('on');
					$('#days_b').removeClass('on');
					$('#oneday').show();
					$('#days').hide();
				});

				$('#days_b').click(function(){
					
					$('#days_b').addClass('on');
					$('#oneday_b').removeClass('on');
					$('#oneday').hide();
					$('#days').show();
				});
			});
		</script>
</body>
</html>