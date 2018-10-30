<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/page/commons.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title style="text-align: center">下载搜券宝</title>
    <meta name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui" charset="UTF-8">
    <link rel="stylesheet" href="../../page/js/share.css" type="text/css" />
    <!-- UC强制全屏 QQ强制全屏 -->
    <meta name="full-screen" content="yes">
    <meta name="x5-fullscreen" content="true">

    <script type="text/javascript">
        !function(J){function H(){var d=E.getBoundingClientRect().width;var e=(d/7.5>100*B?100*B:(d/7.5<42?42:d/7.5));E.style.fontSize=e+"px",J.rem=e}var G,F=J.document,E=F.documentElement,D=F.querySelector('meta[name="viewport"]'),B=0,A=0;if(D){var y=D.getAttribute("content").match(/initial\-scale=([\d\.]+)/);y&&(A=parseFloat(y[1]),B=parseInt(1/A))}if(!B&&!A){var u=(J.navigator.appVersion.match(/android/gi),J.navigator.appVersion.match(/iphone/gi)),t=J.devicePixelRatio;B=u?t>=3&&(!B||B>=3)?3:t>=2&&(!B||B>=2)?2:1:1,A=1/B}if(E.setAttribute("data-dpr",B),!D){if(D=F.createElement("meta"),D.setAttribute("name","viewport"),D.setAttribute("content","initial-scale="+A+", maximum-scale="+A+", minimum-scale="+A+", user-scalable=no"),E.firstElementChild){E.firstElementChild.appendChild(D)}else{var s=F.createElement("div");s.appendChild(D),F.write(s.innerHTML)}}J.addEventListener("resize",function(){clearTimeout(G),G=setTimeout(H,300)},!1),J.addEventListener("pageshow",function(b){b.persisted&&(clearTimeout(G),G=setTimeout(H,300))},!1),H()}(window);
        if (typeof(M) == 'undefined' || !M){
            window.M = {};
        }
    </script>
    <style>

    </style>
</head>
<body>
    <div class="share-header">
        <img src="../../page/img/share.jpg">
    </div>
    <div class="share-floot">
        <div>
            <div class="share-android">
                <a id="J_weixin" style="text-decoration:none;color: #FFFFFF;" href="../../page/apk/souquanbao.apk">Android版下载</a>
            </div>
            <div class="share-android">
                <a style="text-decoration:none;color: #FFFFFF" href="#">ios 敬请期待</a>
            </div>
        </div>
    </div>
    <!--弹层-->
    <div id="weixin-tip">
        <p>
            <img style="width:100%;" src="../../page/img/live_weixin.png" alt="微信打开"><span id="close" title="关闭" class="close">×</span></p>
    </div>
</body>
<script>
    document.addEventListener("plusready", function() {
        // 注册返回按键事件
        plus.key.addEventListener('backbutton', function() {
            // 事件处理
            window.history.back();
        }, false);
    });
</script>
<script type="text/javascript">
    var is_weixin = (function () { return navigator.userAgent.toLowerCase().indexOf('micromessenger') !== -1 })();
    window.onload = function () {
        var winHeight = typeof window.innerHeight != 'undefined' ? window.innerHeight : document.documentElement.clientHeight; //兼容IOS，不需要的可以去掉
        var btn = document.getElementById('J_weixin');
        var tip = document.getElementById('weixin-tip');
        var close = document.getElementById('close');
        if (is_weixin) {
            btn.onclick = function (e) {
                tip.style.height = winHeight + 'px'; //兼容IOS弹窗整屏
                tip.style.display = 'block';
                return false;
            }
            close.onclick = function () {
                tip.style.display = 'none';
            }
        }
    }
</script>
</html>