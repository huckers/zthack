<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>后台管理-${settings.blog_name}管理系统 V1.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="${request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${request.contextPath}/css/weadmin.css">
    <script type="text/javascript" src="${request.contextPath}/plugin/layui/layui.js" charset="utf-8"></script>

</head>

<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <#--<img src="/images/logo.png" height="50px">-->
        <a href="/">${settings.blog_name}管理系统</a>
    </div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>
    <ul class="layui-nav left fast-add" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="WeAdminShow('资讯','https://www.youfa365.com/')"><i class="iconfont">&#xe6a2;</i>资讯</a>
                </dd>
                <dd>
                    <a onclick="WeAdminShow('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a>
                </dd>
                <dd>
                    <a onclick="WeAdminShow('用户','https://www.youfa365.com/')"><i class="iconfont">&#xe6b8;</i>用户</a>
                </dd>
            </dl>
        </li>
    </ul>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">Admin</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="WeAdminShow('个人信息','http://www.baidu.com')">个人信息</a>
                </dd>
                <dd>
                    <a onclick="WeAdminShow('切换帐号','./login.html')">切换帐号</a>
                </dd>
                <dd>
                    <a class="loginout" href="login.html">退出</a>
                </dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index">
            <a href="/">前台首页</a>
        </li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>会员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${request.contextPath}/admin/user/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>会员列表</cite>

                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>会员管理</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe705;</i>
                    <cite>文章管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${request.contextPath}/admin/post/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>文章列表</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="./pages/article/category.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>分类管理</cite>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="wenav_tab" id="WeTabTip" lay-allowclose="true">
        <ul class="layui-tab-title" id="tabName">
            <li>我的桌面</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='/pages/welcome.html' frameborder="0" scrolling="yes" class="weIframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2018 ${settings.blog_name} All Rights Reserved</div>
</div>
<!-- 底部结束 -->
<script type="text/javascript">
    //			layui扩展模块的两种加载方式-示例
    //		    layui.extend({
    //			  admin: '{/}../../static/js/admin' // {/}的意思即代表采用自有路径，即不跟随 base 路径
    //			});
    //			//使用拓展模块
    //			layui.use('admin', function(){
    //			  var admin = layui.admin;
    //			});
    layui.config({
        base: '/js/'
        ,version: '101100'
    }).use('admin');
//    layui.use(['jquery','admin'], function(){
//        var $ = layui.jquery;
//        $(function(){
//            var login = JSON.parse(localStorage.getItem("login"));
//            if(login){
//                if(login=0){
//                    window.location.href='./login.html';
//                    return false;
//                }else{
//                    return false;
//                }
//            }else{
//                window.location.href='./login.html';
//                return false;
//            }
//        });
//    });

</script>
</body>
<!--Tab菜单右键弹出菜单-->
<ul class="rightMenu" id="rightMenu">
    <li data-type="fresh">刷新</li>
    <li data-type="current">关闭当前</li>
    <li data-type="other">关闭其它</li>
    <li data-type="all">关闭所有</li>
</ul>

</html>