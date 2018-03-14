<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML5 >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>歌曲展示页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/music.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="shortcut icon" href="<%=basePath%>images/logo.png">
    
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
 <body>
    <header>
        <div class="wrap">
            <ul class="fr">
         <c:choose>
	       <c:when test="${customer.name ==null}">
	        <li><span>您还未登录,</span><a href="login.jsp">马上登录</a><span></span></li>
            <!--   <li><a href="loginadmin。jsp"><span id="adm"></span>管理员通道</a><span></span></li>   -->  
	       </c:when>
	       <c:otherwise>
	       <!-- <c:out value="${customer.name}"></c:out>, 欢迎您!
                <li><a href="loginadmin.jsp"><span id="adm"></span>管理员通道</a><span></span></li>
                 --> 
	       </c:otherwise>
	     </c:choose>
	  <f>
	  <s:form action="song/song_querySongs" method="post">
      <div><input class="search" type="text" name="keywords" placeholder="请输入歌曲名称">
      <s:submit value="查询" cssClass="btn btn-default"></s:submit>
      </div>
      </s:form>
      </f>   
	     </ul>    
       </div>	    
    </header>    
    <!-- 导航栏以及搜索框 -->
        <!-- 导航栏以及搜索框 -->
        <div id="top">
            
                <!-- 导航栏 -->
                <div id="nav" class="fl">
                    <ul class="nav">
                     <li>
                            <a href="main.jsp">首页</a>
                            <div>
                                <a href="#">首页</a><span>|</span>
                                <a href="#">排行榜</a><span>|</span>
                                <a href="#">歌单广场</a><span>|</span>
                                <a href="#">电台</a><span>|</span>
                                <a href="#">歌手</a><span>|</span>
                                <a href="#">专辑</a>
                            </div>
                        </li>
                        <li>
                            <a href="homepage.jsp">原创音乐馆</a>
                            <div>
                                <a href="#">首页</a><span>|</span>
                                <a href="#">排行榜</a><span>|</span>
                                <a href="#">歌单广场</a><span>|</span>
                                <a href="#">电台</a><span>|</span>
                                <a href="#">歌手</a><span>|</span>
                                <a href="#">专辑</a>
                            </div>
                        </li>
                        <li>
                            <a href="mymusic.jsp">我的音乐</a>
                            <div>
                                <a href="#">主题</a><span>|</span>
                                <a href="#">歌单</a><span>|</span>
                                <a href="#">MV收藏</a><span>|</span>
                                <a href="#">听众</a><span>|</span>
                                <a href="#">收听</a>
                            </div>
                        </li>
                       
                    </ul>
                </div>
                <!-- 搜索 -->
                、
            </div>
        <!-- 内容区 -->
    <lunbo>
                <!-- 轮播图 -->
                <div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1" ></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/yiyangqianxi1.jpg" alt="First slide" style="width:100%;height:100%">
            <div class="carousel-caption">易烊千玺全新专辑</div>
        </div>
        <div class="item">
            <img src="images/wuyuetian.jpg" alt="Second slide" style="width:100%;height:100%">
            <div class="carousel-caption">五月天第二人生</div>
        </div>
        <div class="item">
            <img src="images/Tylor.jpg" alt="Third slide" style="width:100%;height:100%">
            <div class="carousel-caption">Reputation</div>
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
        data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel" 
        data-slide="next">&rsaquo;
    </a>
    </div>
    </lunbo>
     <div id="main" class="wrap">
                <!-- 原创新歌首发 -->
                <div id="online_first">
                    <div class="section_top red_border">
                        <h1>原创新歌首发</h1><a href="homepage.jsp">/更多</a>
                        <div class="fr">
                            <a href="#" class="pre"></a>
                            <a href="#" class="next"></a>
                        </div>
                    </div>
                    <ul>
                        <li class="mg_r_b"><a href="#"><img src="img/online_img/000HbmZA1fHnoD.jpg" alt="" /><h3>中国好声音第三...</h3><span>中国好歌曲</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r_b"><a href="#"><img src="img/online_img/000xeDc04TWB6K.jpg" alt="" /><h3>神秘世界</h3><span>萧煌奇</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r_b"><a href="#"><img src="img/online_img/000yVdgC09dcPS.jpg" alt="" /><h3>所谓如君</h3><span>魏如君</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r_b"><a href="#"><img src="img/online_img/000ZmnKf4fuO0O.jpg" alt="" /><h3>火锅英雄</h3><span>赵英俊</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_b"><a href="#"><img src="img/online_img/001BeN6N1Rte52.jpg" alt="" /><h3>At least for now</h3><span>At least for now</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="img/online_img/002iLj0R01DDgx.jpg" alt="" /><h3>曾经在</h3><span>冲击力乐队</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="img/online_img/002qntlg0OJhb5.jpg" alt="" /><h3>时光机</h3><span>张博林</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="img/online_img/002UHYrG2vReCi.jpg" alt="" /><h3>谁是大歌神</h3><span>谁是大歌神</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="img/online_img/004EvugT3C2fi7.jpg" alt="" /><h3>张磊的</h3><span>张磊</span></a><p></p><a href="#" class="btn"></a></li>
                        <li><a href="#"><img src="img/online_img/0012LUMJ3hkJon.jpg" alt="" /><h3>HIM</h3><span>history</span></a><p></p><a href="#" class="btn"></a></li>
                    </ul>
                </div>
                <div class="cl"></div>
                <!-- 最新推荐 -->
                <div id="recommend">
                        <div class="section_top green_border">
                            <h1 class="fl">最新推荐</h1>
                            <a href="#" class="broadcast"></a>
                            <a href="#" class="add"></a>
                            <div class="language fr">
                                <a href="#" class="select">华语</a>
                                <a href="#">英语</a>
                                <a href="#">其他</a>
                            </div>
                        </div>
                        <div class="cl"></div>
                        <div class="recommend_list">
                            <ul>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                

                            </ul>
                        </div>
                    </div>
                    <!-- 最热推荐 -->
                    <div id="hot_recommend">
                        <div class="section_top green_border">
                            <h1 class="fl">最热推荐</h1>
                            <a href="#" class="broadcast"></a>
                            <a href="#" class="add"></a>
                        </div>
                        <div class="cl"></div>
                        <div class="recommend_list">
                            <ul>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                </ul>
                        </div>
                    </div>
                    <div class="cl"></div>
                
                <div id="user_login">
                    <a href="#"><img src="img/side_right/bg_login.png" alt="" /></a>
                </div>
                <div id="ranking">
           
                <!-- 热门歌手 -->
                <div id="hot_singer">
                    <div class="hot_singer_title">
                        <h3 class="side_right_title">热门歌手</h3>
                        <a href="#">/更多</a>
                    </div>
                    <ul class="singer_list">
                        <li class="singer_list_mg_r singer_list_mg_b"><img src="img/side_right/0025NhlN2yWrP4.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_r singer_list_mg_b"><img src="img/side_right/0025NhlN2yWrP4.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_b"><img src="img/side_right/0025NhlN2yWrP4.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_r"><img src="img/side_right/0025NhlN2yWrP4.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_r"><img src="img/side_right/0025NhlN2yWrP4.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li><img src="img/side_right/0025NhlN2yWrP4.jpg" alt="" /><a href="#">周杰伦</a></li>
                    </ul>
                    <ul class="singer_area">
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r"><a href="#">华语男歌手</a></li>
                        <li><a href="#">华语男歌手</a></li>
                    </ul>
     </div>           
    </body>
</html>