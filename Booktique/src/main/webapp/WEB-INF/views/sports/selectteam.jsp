<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="//ticketimage.interpark.com/TicketImage/uidev/desktop/styles/common/common.css?v=20230515">
    <link rel="stylesheet" href="//ticketimage.interpark.com/TicketImage/uidev/desktop/styles/pages/category/sports/sportsDetail.css">

</head>

<body>

    <div class="wrap">



        <div class="sportsDetailHeader">
            <div class="sportsDetailContent">
                <div id="divTeamName" class="teamName">키움 히어로즈</div>
                <div class="selectTeam selectBox">
                    야구
                    <ul id="sportsList">
                        <li><a href="/Contents/Sports/GoodsInfo?SportsCode=07001" onclick="ChangeSportsCode('07001');"
                                class="07001">야구</a></li>
                        <li><a href="/Contents/Sports/GoodsInfo?SportsCode=07002" onclick="ChangeSportsCode('07002');"
                                class="07002">축구</a></li>
                        <li><a href="/Contents/Sports/GoodsInfo?SportsCode=07003" onclick="ChangeSportsCode('07003');"
                                class="07003">배구</a></li>
                    </ul>
                </div>
                <div class="selectSports selectBox">
                    <span id="spanTeamName">키움 히어로즈</span>
                    <ul id="TeamList">
                        <li class="PB003"><a href="/Contents/Sports/GoodsInfo?SportsCode=07001&amp;TeamCode=PB003">키움
                                히어로즈</a></li>
                        <li class="PB004"><a href="/Contents/Sports/GoodsInfo?SportsCode=07001&amp;TeamCode=PB004">두산
                                베어스</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="sportsDetailTop"
            style="background-image: url('//ticketimage.interpark.com/TicketImage/sports/web/bg/PB003.jpg'), url(//ticketimage.interpark.com/TicketImage/sports/web/bg/07001.jpg);">
            <div class="sportsDetailContent">
                <div class="logo"><img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB003.png"
                        alt=""></div>
                <div class="teamContents type2">
                    <!--  type2 클래스로 경기숫자 있을 때와 없을 때 조절 -->
                    <div class="teamName">KIWOOM HEROES BASEBALL CLUB</div>
                    <div class="teamName_kor">키움 히어로즈</div>
                    <div class="teamGround"><span>홈구장</span>:&nbsp;&nbsp;&nbsp;고척스카이돔</div>
                </div>
            </div>
        </div>
        <div class="sportsDetailTicketCast">
            <div class="sportsDetailContent">
                <a href="javascript:sendMySNS('twitter',' ','','','키움 히어로즈 경기일정 https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07001');"
                    class="sns twitter">
                    <img src="//ticketimage.interpark.com/TicketImage/2016/20160304_sports/detail/img/twitter.gif"
                        alt="트위터">
                </a>
                <a href="javascript:sendMySNS('facebook','키움 히어로즈 경기일정', 'https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07001','http://ticketimage.interpark.com/TicketImage/sports/web/large/PB003.png','키움 히어로즈 경기일정');"
                    class="sns facebook">
                    <img src="//ticketimage.interpark.com/TicketImage/2016/20160304_sports/detail/img/facebook.gif"
                        alt="페이스북">
                </a>
            </div>
        </div>
        <div class="sportsDetailContent" style="padding-bottom: 30px;">
            

            <div class="buyTitle">
                <b>예매하기</b>

            </div>
            <div class="noGameResultWrap" id="noGameResultWrap" style="display:none;">
                <p>현재 예매 가능한 경기가 없습니다.</p>
            </div>
            <div class="timeScheduleList">

                <div class="timeSchedule lineColor_Y">
                    <div class="scheduleDate">

                        <div class="num num0"></div>
                        <div class="num num8"></div>
                        <div class="num dot"></div>
                        <div class="num num2"></div>
                        <div class="num num0"></div>
                        <div class="date">(화)</div>
                    </div>
                    <div class="scheduleTime">

                        <div class="num num1"></div>
                        <div class="num num6"></div>
                        <div class="num colon"></div>
                        <div class="num num0"></div>
                        <div class="num num0"></div>
                    </div>
                    <div class="textInfoBox">
                        <p>고양 vs 한화 (8.20)</p>
                    </div>
                    <div class="ground">
                        <div>

                            <div>홈</div>

                            <span>고척스카이돔</span>
                        </div>
                    </div>
                    <div class="btns   ">

                        <a href="javascript:;"
                            onclick="CallWynsBooking('False','N','Y','N','24010659','','20240820','001','','','','04a903ae33740d3e2205ba628d5f4a6d','1723769390126','N','N')"
                            class="BtnColor_Y
                            btn1
                            ">
                            예매하기


                        </a>
                    </div>
                </div>
                <div class="timeSchedule lineColor_Y">
                    <div class="scheduleDate">

                        <div class="num num0"></div>
                        <div class="num num8"></div>
                        <div class="num dot"></div>
                        <div class="num num2"></div>
                        <div class="num num1"></div>
                        <div class="date">(수)</div>
                    </div>
                    <div class="scheduleTime">

                        <div class="num num1"></div>
                        <div class="num num6"></div>
                        <div class="num colon"></div>
                        <div class="num num0"></div>
                        <div class="num num0"></div>
                    </div>
                    <div class="textInfoBox">
                        <p>고양 vs 한화 (8.21)</p>
                    </div>
                    <div class="ground">
                        <div>

                            <div>홈</div>

                            <span>고척스카이돔</span>
                        </div>
                    </div>
                    <div class="btns   ">

                        <a href="javascript:;"
                            onclick="CallWynsBooking('False','N','Y','N','24010660','','20240821','001','','','','f571b7644101a4a6598b26832b7409c2','1723769390126','N','N')"
                            class="BtnColor_Y
                            btn1
                            ">
                            예매하기


                        </a>
                    </div>
                </div>
                <div class="timeSchedule lineColor_Y">
                    <div class="scheduleDate">

                        <div class="num num0"></div>
                        <div class="num num8"></div>
                        <div class="num dot"></div>
                        <div class="num num2"></div>
                        <div class="num num2"></div>
                        <div class="date">(목)</div>
                    </div>
                    <div class="scheduleTime">

                        <div class="num num1"></div>
                        <div class="num num6"></div>
                        <div class="num colon"></div>
                        <div class="num num0"></div>
                        <div class="num num0"></div>
                    </div>
                    <div class="textInfoBox">
                        <p>고양 vs 한화 (8.22)</p>
                    </div>
                    <div class="ground">
                        <div>

                            <div>홈</div>

                            <span>고척스카이돔</span>
                        </div>
                    </div>
                    <div class="btns   ">

                        <a href="javascript:;"
                            onclick="CallWynsBooking('False','N','Y','N','24010661','','20240822','001','','','','9e58703f0a064a96786bdaeb9ce64804','1723769390126','N','N')"
                            class="BtnColor_Y
                            btn1
                            ">
                            예매하기


                        </a>
                    </div>
                </div>
                <div class="timeSchedule lineColor_P">
                    <div class="scheduleDate">

                        <div class="num num0"></div>
                        <div class="num num8"></div>
                        <div class="num dot"></div>
                        <div class="num num2"></div>
                        <div class="num num3"></div>
                        <div class="date">(금)</div>
                    </div>
                    <div class="scheduleTime">

                        <div class="num num1"></div>
                        <div class="num num8"></div>
                        <div class="num colon"></div>
                        <div class="num num3"></div>
                        <div class="num num0"></div>
                    </div>
                    <div class="teamMatch">

                        <div class="team1">
                            <a href="javascript:;" style="cursor: default">
                                <img src="http://ticketimage.interpark.com/TicketImage/sports/web/small/PB003.png?v=20170703"
                                    onerror="this.src='//ticketimage.interpark.com/Play/image/small/NoImage.gif';"
                                    alt="키움 히어로즈">
                            </a>

                            <a href="javascript:;" style="cursor: default">키움 히어로즈</a>
                        </div>
                        <div class="team2">
                            <a href="javascript:;" style="cursor: default">
                                <img src="http://ticketimage.interpark.com/TicketImage/sports/web/small/PB008.png?v=20170703"
                                    onerror="this.src='//ticketimage.interpark.com/Play/image/small/NoImage.gif';"
                                    alt="엘지 트윈스"></a>
                            <a href="javascript:;" style="cursor: default">엘지 트윈스</a>
                        </div>

                    </div>
                    <div class="ground">
                        <div>

                            <div>홈</div>

                            <span>고척스카이돔</span>
                        </div>
                    </div>
                    <div class="btns   ">

                        <a class="BtnColor_P
                            btn2
                            double">
                            판매예정
                            <br><span>일반 08월 16일 14시 </span>
                            <br><span>선예매 08월 16일 12시 </span>
                        </a>
                    </div>
                </div>
                <div class="timeSchedule lineColor_P">
                    <div class="scheduleDate">

                        <div class="num num0"></div>
                        <div class="num num8"></div>
                        <div class="num dot"></div>
                        <div class="num num2"></div>
                        <div class="num num4"></div>
                        <div class="date">(토)</div>
                    </div>
                    <div class="scheduleTime">

                        <div class="num num1"></div>
                        <div class="num num8"></div>
                        <div class="num colon"></div>
                        <div class="num num0"></div>
                        <div class="num num0"></div>
                    </div>
                    <div class="teamMatch">

                        <div class="team1">
                            <a href="javascript:;" style="cursor: default">
                                <img src="http://ticketimage.interpark.com/TicketImage/sports/web/small/PB003.png?v=20170703"
                                    onerror="this.src='//ticketimage.interpark.com/Play/image/small/NoImage.gif';"
                                    alt="키움 히어로즈">
                            </a>

                            <a href="javascript:;" style="cursor: default">키움 히어로즈</a>
                        </div>
                        <div class="team2">
                            <a href="javascript:;" style="cursor: default">
                                <img src="http://ticketimage.interpark.com/TicketImage/sports/web/small/PB008.png?v=20170703"
                                    onerror="this.src='//ticketimage.interpark.com/Play/image/small/NoImage.gif';"
                                    alt="엘지 트윈스"></a>
                            <a href="javascript:;" style="cursor: default">엘지 트윈스</a>
                        </div>

                    </div>
                    <div class="ground">
                        <div>

                            <div>홈</div>

                            <span>고척스카이돔</span>
                        </div>
                    </div>
                    <div class="btns   ">

                        <a class="BtnColor_P
                            btn2
                            double">
                            판매예정
                            <br><span>일반 08월 17일 14시 </span>
                            <br><span>선예매 08월 17일 12시 </span>
                        </a>
                    </div>
                </div>
                <div class="timeSchedule lineColor_P">
                    <div class="scheduleDate">

                        <div class="num num0"></div>
                        <div class="num num8"></div>
                        <div class="num dot"></div>
                        <div class="num num2"></div>
                        <div class="num num5"></div>
                        <div class="date">(일)</div>
                    </div>
                    <div class="scheduleTime">

                        <div class="num num1"></div>
                        <div class="num num4"></div>
                        <div class="num colon"></div>
                        <div class="num num0"></div>
                        <div class="num num0"></div>
                    </div>
                    <div class="teamMatch">

                        <div class="team1">
                            <a href="javascript:;" style="cursor: default">
                                <img src="http://ticketimage.interpark.com/TicketImage/sports/web/small/PB003.png?v=20170703"
                                    onerror="this.src='//ticketimage.interpark.com/Play/image/small/NoImage.gif';"
                                    alt="키움 히어로즈">
                            </a>

                            <a href="javascript:;" style="cursor: default">키움 히어로즈</a>
                        </div>
                        <div class="team2">
                            <a href="javascript:;" style="cursor: default">
                                <img src="http://ticketimage.interpark.com/TicketImage/sports/web/small/PB008.png?v=20170703"
                                    onerror="this.src='//ticketimage.interpark.com/Play/image/small/NoImage.gif';"
                                    alt="엘지 트윈스"></a>
                            <a href="javascript:;" style="cursor: default">엘지 트윈스</a>
                        </div>

                    </div>
                    <div class="ground">
                        <div>

                            <div>홈</div>

                            <span>고척스카이돔</span>
                        </div>
                    </div>
                    <div class="btns   ">

                        <a class="BtnColor_P
                            btn2
                            double">
                            판매예정
                            <br><span>일반 08월 18일 14시 </span>
                            <br><span>선예매 08월 18일 12시 </span>
                        </a>
                    </div>
                </div>



                <script type="text/javascript">
                    if ("Y" == "Y") {
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
                        if ("24004410" != "") {
                            funcWynsStressCount("24004410");
                        }
                    });
                </script>

            </div>
            <a href="javascript:;" class="moreBtn" onclick="GetGoodsInfoList(&quot;Y&quot;);" style="">더보기</a>

            <a href="https://tickets.interpark.com/contents/reward/heros" class="banner">
                <img src="http://ticketimage.interpark.com/TCMS3.0/SPORT/WEBBN/2405/240514030243_20240514030243.gif"
                    alt="" onerror="this.src='//ticketimage.interpark.com/Play/image/large/NoImage.gif'">
            </a>
            <div class="sportsTabWrapper tabModule">
                <div class="tabWrapper">

                    <ul class="tabWrap">
                        <li class="active" onclick="fnShowTabIframe(1, '');" id="SportsTab1"><span>예매/관람안내</span></li>
                        <li onclick="fnShowTabIframe(2, '');" id="SportsTab2" class=""><span>좌석도/가격</span></li>
                        <li onclick="fnShowTabIframe(4, '');" id="SportsTab4" class=""><span>예매TIP</span></li>
                    </ul>
                </div>
                <div class="tabContentsWrapper">
                    <div class="tabcontentsWrap current">
                        <h3>정규리그 예매안내</h3>
                        <div class="dataContents">
                            <div 맑은="" sd="" gothic="" color:=""
                                style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: -apple-system, system-ui, BlinkMacSystemFont, "
                                고딕',="" 'malgun="" gothic' ,="" 돋움,="" dotum,="" helvetica,="" 'apple="" neo' ,=""
                                sans-serif;="" rgb(51,="" 51,="" 51);'=""><span lang="EN-US"
                                    style="font-size: small; font-family: Arial; line-height: 12.72px;">1.&nbsp;</span><span
                                    style="font-size: small; font-family: Arial; line-height: 12.72px;">예매 가능시간
                                    시간&nbsp;</span><span lang="EN-US"
                                    style="font-size: small; font-family: Arial; line-height: 12.72px;">:&nbsp;</span><span
                                    style="font-size: small; font-family: Arial; line-height: 12.72px;">경기
                                    시작&nbsp;</span><span lang="EN-US"
                                    style="font-size: small; font-family: Arial; line-height: 12.72px;">1</span><span
                                    style="font-size: small; font-family: Arial; line-height: 12.72px;">시간 후 마감</span>
                            </div>
                            <p class="MS" style="margin: 0cm 0cm 8pt;"><span style="font-family: Arial;"><span
                                        style="font-size: small;"><br><span lang="EN-US"
                                            style="line-height: 12.72px;">2.&nbsp;</span><span
                                            style="line-height: 12.72px;">예매티켓 취소 가능시간&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">:&nbsp;</span><span
                                            style="line-height: 12.72px;">경기당일 경기시간&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">4</span><span style="line-height: 12.72px;">시간
                                            전까지</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><br><span lang="EN-US"
                                            style="line-height: 12.72px;">3.&nbsp;</span><span
                                            style="line-height: 12.72px;">현장 매표소 운영시간&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">:&nbsp;</span><span
                                            style="line-height: 12.72px;">평일 경기 시작&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">2</span><span style="line-height: 12.72px;">시간
                                            전&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">/&nbsp;</span><span
                                            style="line-height: 12.72px;">주말</span><span lang="EN-US"
                                            style="line-height: 12.72px;">,</span><span
                                            style="line-height: 12.72px;">공휴일 경기 시작&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">2</span><span style="line-height: 12.72px;">시간
                                            전 시작&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">(</span><span style="line-height: 12.72px;">변경
                                            시 별도 공지</span><span lang="EN-US"
                                            style="line-height: 12.72px;">)</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><br><span lang="EN-US"
                                            style="line-height: 12.72px;">4.&nbsp;</span><span
                                            style="line-height: 12.72px;">예매정책</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">매수제한</span><span lang="EN-US"
                                            style="line-height: 12.72px;">: 1인</span><b><span lang="EN-US"
                                                style="color: red; line-height: 12.72px;">&nbsp;10</span><span
                                                style="color: red; line-height: 12.72px;">매</span></b></span><br><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">예매수수료</span><span lang="EN-US"
                                            style="line-height: 12.72px;">:&nbsp;</span><span
                                            style="line-height: 12.72px;">장당&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">1,000</span><span
                                            style="line-height: 12.72px;">원<br>*</span></span></span><span
                                    style="font-family: Arial; font-size: small;">&nbsp;어린이: 36개월 이상 ~ 만 12세 이하(단, 중학교
                                    재학중일 경우 청소년으로 간주)</span><span style="font-family: Arial;"><span
                                        style="font-size: small;"><span style="line-height: 12.72px;"><br><br>5.
                                            3경기권/8경기권<br>*3경기권/8경기권의 경우 할인권종과 중복 할인이 불가합니다.<br>*할인 권종<br>&nbsp;- 어린이,
                                            경로, 군경, 국가유공자, 장애인, 구로/영등포 주민, 회사원, 체크인 리워드, 멤버십 할인, 어린이 회원 등<br>&nbsp;- 이외
                                            일반 권종에서 할인된 가격으로 판매되는 권종 일체<br>&nbsp;- 할인 권종과 함께 3경기권/8경기권을 사용할 경우 불이익이 발생할
                                            수 있으며 이 경우 취소 후 재예매 진행하셔야 합니다.<br><br>6. 유아동반석 안내<br>*유아동반석은 만 36개월 이하의 유아를
                                            동반한 경우에 이용 가능합니다.<br>*만 36개월이 초과되는 유아의 경우 별도 좌석을 예매하셔도 유아동반석 이용이
                                            불가합니다.</span></span><br><span style="font-size: small;"><br>7. 사석방지 기능 활성화
                                        안내</span><br><span style="font-size: small;">* 사석방지 기능 : 타인이 예매를 하지 못하도록 1자리를
                                        남겨두고 좌석을 선택할 경우, 예매 불가능한 기능</span><br><span style="font-size: small;">* 남아있는 좌석
                                        중, 끝 1자리만 남겨두면 예매불가</span><br><span style="font-size: small;">* 중간 1자리를 띄우면
                                        예매불가</span></span>
                            </p>
                        </div>
                        <h3>정규리그 취소/환불정책</h3>
                        <div class="dataContents">
                            <p class="MS" style="margin: 0cm 0cm 8pt;"><span style="font-family: Arial;"><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">1.&nbsp;</span><span
                                            style="line-height: 12.72px;">취소/환불 정책</span></span></span><span
                                    style="font-family: Arial;"><br><span style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">예매 당일은 취소수수료가 없으며</span><span lang="EN-US"
                                            style="line-height: 12.72px;">,&nbsp;</span><span
                                            style="line-height: 12.72px;">예매수수료도 환불됩니다</span><span lang="EN-US"
                                            style="line-height: 12.72px;">.<br>* 취소 마감 시간(경기 시작 4시간 전) 이후에는 취소가
                                            불가합니다.<br></span></span><span style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">예매 익일부터는 티켓금액의&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">10%&nbsp;</span><span
                                            style="line-height: 12.72px;">취소수수료 부과되며</span><span lang="EN-US"
                                            style="line-height: 12.72px;">,&nbsp;</span><span
                                            style="line-height: 12.72px;">예매수수료도 환불되지 않습니다</span><span lang="EN-US"
                                            style="line-height: 12.72px;">.<br></span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">경기일자 및 좌석변경은 불가합니다</span><span lang="EN-US"
                                            style="line-height: 12.72px;">.</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">부분취소는 불가합니다</span><span lang="EN-US"
                                            style="line-height: 12.72px;">.&nbsp;</span><span
                                            style="line-height: 12.72px;">기존 건을 전체취소후 재예매하셔야 하며</span><span lang="EN-US"
                                            style="line-height: 12.72px;">,&nbsp;</span><span
                                            style="line-height: 12.72px;">취소좌석에 대한 좌석선점은 보장되지 않습니다</span><span
                                            lang="EN-US" style="line-height: 12.72px;">.</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">재예매서비스</span><span lang="EN-US"
                                            style="line-height: 12.72px;">/</span><span
                                            style="line-height: 12.72px;">예매대기서비스는 불가합니다</span><span lang="EN-US"
                                            style="line-height: 12.72px;">.</span></span></span>
                            </p>
                        </div>
                        <h3>정규리그 티켓수령 및 입장</h3>
                        <div class="dataContents">
                            <p class="MS" style="margin: 0cm 0cm 8pt;"><span style="font-family: Arial;"><span
                                        style="font-size: small;"><span lang="EN-US" style="line-height: 12.72px;">1. 경기
                                            당일 교통 체증 및 입장 지연이 있을 수 있으니&nbsp;</span><span
                                            style="line-height: 12.72px;">여유 있는 도착을 권장 드리며</span><span lang="EN-US"
                                            style="line-height: 12.72px;">,&nbsp;</span><span
                                            style="line-height: 12.72px;">모바일티켓을 활용한 편안한 입장을 부탁 드립니다</span><span
                                            lang="EN-US" style="line-height: 12.72px;">.</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">모바일 티켓은 바로 출입구에서 입장이 가능합니다</span><span
                                            lang="EN-US" style="line-height: 12.72px;">.</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">모바일 티켓 캡쳐 혹은 이미지는 입장 불가&nbsp;</span><span
                                            lang="EN-US" style="line-height: 12.72px;">(</span><span
                                            style="line-height: 12.72px;">어플에서 예약번호 혹은 바코드가 실시간으로 움직이는 티켓만 입장
                                            가능</span><span lang="EN-US"
                                            style="line-height: 12.72px;">)</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><span lang="EN-US"
                                            style="line-height: 12.72px;">*&nbsp;</span><span
                                            style="line-height: 12.72px;">모바일 티켓으로 티켓선물하기 기능 사용하여 티켓을 선물한 경우 취소
                                            불가&nbsp;</span><span lang="EN-US"
                                            style="line-height: 12.72px;">(</span><span
                                            style="line-height: 12.72px;">선물한 티켓이 반납된 이후 취소가능</span><span lang="EN-US"
                                            style="line-height: 12.72px;">)</span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><br><span
                                        style="font-size: small;"><br><span lang="EN-US"
                                            style="line-height: 12.72px;">2. 입장권 교환 시&nbsp;</span><span
                                            style="line-height: 12.72px;">본인확인이 힘들 경우</span><span lang="EN-US"
                                            style="line-height: 12.72px;">,&nbsp;</span><span
                                            style="line-height: 12.72px;">입장권 교환이 불가할 수 있습니다</span><span lang="EN-US"
                                            style="line-height: 12.72px;">.<br><br></span></span></span>
                                <font face="맑은 고딕"><span lang="EN-US" style="font-size: 9pt; line-height: 12.72px;">
                                        <o:p></o:p>
                                    </span></font><span style="font-family: Arial;"><span style="font-size: small;">3.
                                        할인권종은 현장 매표소에서 증빙 확인 후 입장 교환이 가능하며 불가할 경우 교환이 불가합니다.<br>* 대상 할인권종:&nbsp;<span
                                            style="color: rgb(51, 51, 51);">어린이, 경로, 군경, 국가유공자, 장애인, 구로/영등포 주민, 회사원, 어린이
                                            회원 등<br></span>* 어린이 권종은 현장 매표소에서 어린이의 실물이 확인된 후 입장권 교환이 가능합니다.<br>* 할인권종은
                                        대리 수령 및 대리 관람이 불가합니다.<br>* 현장 증빙 시 할인 대상자가 부재할 경우 티켓 수령에 제한이 있을 수
                                        있습니다.<br><br></span></span><span style="font-size: small;"><span
                                        style="font-family: Arial;"><span
                                            style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(239, 62, 67);">&nbsp;4.
                                            예매하신 티켓의 전매, 위조 등의 위법행위를 엄격히 금지합니다.</span></span></span><br><span
                                    style="font-size: small;"><span style="font-family: Arial;"><span
                                            style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(239, 62, 67);">&nbsp;*
                                            티켓 예매 후 타인에게 재판매하거나 양도/양수 과정에서 예매자의 신상정보를 타인에게 임의로 전달시에는 판매자와 구매자 모두 피해를 입을
                                            수 있습니다. 이로 인한 피해에 대해서는 구단과 구단과 계약된 티켓판매 업체는 일절 책임지지
                                            않습니다.</span></span></span><br><span style="font-size: small;"><span
                                        style="font-family: Arial;"><span
                                            style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(239, 62, 67);">&nbsp;*
                                            예매한 티켓을 순수한 관람 목적이 아닌 재판매의 의도로 예매를 하거나, 티켓의 위조나 변조 등을 통하여 티켓을 판매하는 등의 경우
                                            주최측의 권한으로 사전 통보없이 구매취소 및 강제폐기(압류)할 수 있음을
                                            알려드립니다.</span></span></span><br><span style="font-family: Arial;"><span
                                        style="font-size: small;"><br><span lang="EN-US"
                                            style="line-height: 12.72px;">5.&nbsp;</span><span
                                            style="line-height: 12.72px;">고척교 인근의 교통난과 돔구장 주차시설 부족으로 인해 프로야구 경기 시 고척스카이돔
                                            내부 주차장은 이용 불가합니다</span><span lang="EN-US"
                                            style="line-height: 12.72px;">.<br></span><span
                                            style="line-height: 12.72px;">&nbsp; &nbsp;불편하시더라도 인근 민영주차장을 이용해주시기
                                            바랍니다</span><span lang="EN-US" style="line-height: 12.72px;">.<br><br>6. 식음
                                            관련 주요 내용<br></span>* 구장 내 음식물 섭취는 모두 가능합니다.<br>* 최초 입장 시에는 음식물 반입 가능하며, 병에만
                                        담겨있지 않으면 됩니다. 단, 재입장 시에는 외부 음식 반입은 제한됩니다.<br>* 주류는 8도 이하의 주류만 반입이 가능합니다. 올 시즌부터는
                                        캔 반입도 허용이 되며, 1인당 총 용량은 1리터까지 입니다.<br>&nbsp; (맥주 1.6L 피처, 컵와인, 팩소주, 플라스틱용기 소주 반입
                                        불가)&nbsp;<br>* 총 용량 1리터 기준: 맥주 500ml 2캔 가능, 맥주 1L 피처 1개 가능, 생수 1.8L반입 불가) ▶ KBO
                                        SAFE캠페인 내용을 따릅니다.</span></span><span style="font-size: small;">
                                    <font face="맑은 고딕"><br><img
                                            src="http://ticketimage.interpark.com/TicketImage/sportsteam/editer/2024/02/29/4b9e1dc0.png"
                                            style="width: 100%;" alt=""><br type="_moz"></font>
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- 팝업 S -->
        <div class="swiperPopupSection">

        </div>
        <!-- 팝업 E -->
    </div>

</body>

</html>