<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배구</title>
	<link rel="stylesheet"
		href="//ticketimage.interpark.com/TicketImage/uidev/desktop/styles/common/common.css?v=20230515">
    <link rel="stylesheet" href="//ticketimage.interpark.com/TicketImage/uidev/desktop/styles/pages/category/sports/sportsDetail.css">

</head>
<body>

<div class="wrap">
	
	
	
		<div class="sportsDetailHeader">
			<div class="sportsDetailContent">
				<div id="divTeamName" class="teamName">배구</div>
				<div class="selectTeam selectBox">
					배구 
					<ul id="sportsList">
                                    <li><a href="/Contents/Sports/GoodsInfo?SportsCode=07001" onclick="ChangeSportsCode('07001');" class="07001">배구</a></li>
                                    <li><a href="/Contents/Sports/GoodsInfo?SportsCode=07002" onclick="ChangeSportsCode('07002');" class="07002">야구</a></li>
                                    <li><a href="/Contents/Sports/GoodsInfo?SportsCode=07032" onclick="ChangeSportsCode('07032');" class="07032">축구</a></li>
					</ul>
				</div>
				<div class="selectSports selectBox">
					<span id="spanTeamName">IBK기업은행</span>
					<ul id="TeamList">
									<li class="PE015"><a href="/Contents/Sports/GoodsInfo?SportsCode=07032&amp;TeamCode=PE015">LCK</a></li>
									<li class="PE021"><a href="/Contents/Sports/GoodsInfo?SportsCode=07032&amp;TeamCode=PE021">LCK CL</a></li>
									<li class="PE023"><a href="/Contents/Sports/GoodsInfo?SportsCode=07032&amp;TeamCode=PE023">VCT 퍼시픽 리그</a></li>
									<li class="PE017"><a href="/Contents/Sports/GoodsInfo?SportsCode=07032&amp;TeamCode=PE017">부산이스포츠경기장</a></li>
					</ul>
				</div>
			</div>
		</div>
			<div class="sportsDetailTop"
				style="background-image: url('//ticketimage.interpark.com/TicketImage/sports/web/bg/PB003.jpg'), url(//ticketimage.interpark.com/TicketImage/sports/web/bg/07001.jpg);">
			<div class="sportsDetailContent" style="display:none;">
				<div class="logo"><img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PE023.png" alt=""></div>
				<div class="teamContents type2">
					<!--  type2 클래스로 경기숫자 있을 때와 없을 때 조절 -->
					<div class="teamName">VCT Pacific</div>
					<div class="teamName_kor">VCT 퍼시픽 리그</div>
									</div>
			</div>
		</div>
		<div class="sportsDetailTicketCast">
			<div class="sportsDetailContent">
				<a href="javascript:sendMySNS('twitter',' ','','','VCT 퍼시픽 리그 경기일정 https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07032&amp;TeamCode=PE023');" class="sns twitter">
					<img src="//ticketimage.interpark.com/TicketImage/2016/20160304_sports/detail/img/twitter.gif" alt="트위터">
				</a>
				<a href="javascript:sendMySNS('facebook','VCT 퍼시픽 리그 경기일정', 'https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07032&amp;TeamCode=PE023','http://ticketimage.interpark.com/TicketImage/sports/web/large/PE023.png','VCT 퍼시픽 리그 경기일정');" class="sns facebook">
					<img src="//ticketimage.interpark.com/TicketImage/2016/20160304_sports/detail/img/facebook.gif" alt="페이스북">
				</a>
			</div>
		</div>
	<div class="sportsDetailContent" style="padding-bottom: 30px;">
			<div class="rollingBannerWrap">
				<div class="bannerWrapper">
					<div class="bx-wrapper" style="max-width: 0px; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative;"><ul style="width: 215%; position: relative;">
					</ul></div></div>
				</div>
			</div>

		<div class="buyTitle">
			<b>예매하기</b>
			
		</div>
		<div class="noGameResultWrap" id="noGameResultWrap" style="">
			<p>현재 예매 가능한 경기가 없습니다.</p>
		</div>
		<div class="timeScheduleList">




<script type="text/javascript">
    if ("" == "Y") {
        jQuery(".moreBtn").show();
    } else {
        jQuery(".moreBtn").hide();
    }

    //TODO : 스크립트로 따로 빼야함
    function popMemberBizCert(GoodsCode, PlaceCode) {
        if ("False" != "True") {
            //alert("로그인 이후 이용가능합니다.");
            self.location.href = "/Gate/TPLogin.asp?CPage=B&MN=Y&GPage=" + encodeURIComponent(document.location.href);

            return;
        }

		var strUrl = "//ticket.interpark.com/gate/MemberAuth.asp?GoodsCode=" + GoodsCode + "&PlaceCode=" + PlaceCode + "&PreSalesKind=&PreSalesSeq=0&reloadYN=Y";
        var strStyle = "width=530,height=400,left=100,top=100";


        window.open(strUrl, "BizCert", strStyle);


    }

    jQuery(document).ready(function () {
        if ("" != "")
        {
            funcWynsStressCount("");
        }
    });
</script>

</div>
		<a href="javascript:;" class="moreBtn" onclick="GetGoodsInfoList(&quot;Y&quot;);" style="display:none;">더보기</a>

					<div class="sportsTabWrapper tabModule" style="display:none;">
				<div class="tabWrapper" style="display:none;">
					
					<ul class="tabWrap">
																	</ul>
				</div>
				<div class="tabContentsWrapper"><div class="tabcontentsWrap current"><h3>예매 안내</h3> <div class="dataContents">* 직계가족 외 티켓 양도 및 대리수령은 불가합니다.<br>* 대리수령은 직계가족만 가능하며 현장에서 가족관계증명서 및 신분증을 통한 확인이 진행됩니다.&nbsp;</div><h3>SEASON FINALS</h3> <div class="dataContents"><img src="http://ticketimage.interpark.com/TicketImage/sportsteam/editer/2024/07/08/6ae3471e.jpg" style="width: 100%;" alt=""></div></div></div>
			</div>

	</div>
	<!-- 팝업 S -->
	<!-- 팝업 E -->
</div>

</body>
</html>