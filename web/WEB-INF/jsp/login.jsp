<%-- 
    Document   : login
    Created on : 2015-7-1, 13:04:58
    Author     : pengyan
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>后台管理</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
        <meta name="author" content="Muhammad Usman">

        <!-- The styles -->
        <link id="bs-css" href="/admin/css/bootstrap-cerulean.min.css" rel="stylesheet">

        <link href="/admin/css/charisma-app.css" rel="stylesheet">
        <link href='/admin/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
        <link href='/admin/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
        <link href='/admin/bower_components/chosen/chosen.min.css' rel='stylesheet'>
        <link href='/admin/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
        <link href='/admin/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
        <link href='/admin/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
        <link href='/admin/css/jquery.noty.css' rel='stylesheet'>
        <link href='/admin/css/noty_theme_default.css' rel='stylesheet'>
        <link href='/admin/css/elfinder.min.css' rel='stylesheet'>
        <link href='/admin/css/elfinder.theme.css' rel='stylesheet'>
        <link href='/admin/css/jquery.iphone.toggle.css' rel='stylesheet'>
        <link href='/admin/css/uploadify.css' rel='stylesheet'>
        <link href='/admin/css/animate.min.css' rel='stylesheet'>

        <!-- jQuery -->
        <script src="/admin/bower_components/jquery/jquery.min.js"></script>
        <link rel="shortcut icon" href="img/favicon.ico">
    </head>
    <body>
        <div class="ch-container">
            <div class="row">
                <div class="row">
                    <div class="col-md-12 center login-header">
                        <h2>后台管理系统</h2>
                    </div>
                    <div class="row">
                        <div class="well col-md-5 center login-box">
                            <div class="alert alert-info">
                                请输入你的用户名和密码
                            </div>
                            <form class="form-horizontal" action="login_form.do" method="post">
                                <fieldset>
                                    <div class="input-group input-group-lg">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                                        <input type="text" name="telephone" class="form-control" placeholder="用户名">
                                    </div>
                                    <div class="clearfix"></div><br>

                                    <div class="input-group input-group-lg">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                                        <input type="password" name="password" class="form-control" placeholder="密码">
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="input-prepend">
                                        <label class="remember" for="remember"><input type="checkbox" id="remember">记住我？</label>
                                    </div>
                                    <div class="clearfix"></div>

                                    <p class="center col-md-5">
                                        <button type="submit" class="btn btn-primary">登陆</button>
                                    </p>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <script src="/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
            <script src="/admin/js/jquery.cookie.js"></script>
            <script src='/admin/bower_components/moment/min/moment.min.js'></script>
            <script src='/admin/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
            <script src='/admin/js/jquery.dataTables.min.js'></script>
            <script src="/admin/bower_components/chosen/chosen.jquery.min.js"></script>
            <script src="/admin/bower_components/colorbox/jquery.colorbox-min.js"></script>
            <script src="/admin/js/jquery.noty.js"></script>
            <script src="/admin/bower_components/responsive-tables/responsive-tables.js"></script>
            <script src="/admin/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
            <script src="/admin/js/jquery.raty.min.js"></script>
            <script src="/admin/js/jquery.iphone.toggle.js"></script>
            <script src="/admin/js/jquery.autogrow-textarea.js"></script>
            <script src="/admin/js/jquery.uploadify-3.1.min.js"></script>
            <script src="/admin/js/jquery.history.js"></script>
            <script src="/admin/js/charisma.js"></script>
    </body>
</html>

