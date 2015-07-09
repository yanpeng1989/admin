<%-- 
    Document   : delete_goods
    Created on : 2015-7-5, 21:42:27
    Author     : pengyan
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>后端管理</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
        <meta name="author" content="Muhammad Usman">
        <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
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
        <script src="/admin/bower_components/jquery/jquery.min.js"></script>
        <link rel="shortcut icon" href="img/favicon.ico">
    </head>

    <body>
        <div class="navbar navbar-default" role="navigation">
            <div class="navbar-inner">
                <button type="button" class="navbar-toggle pull-left animated flip">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"> <img alt="Charisma Logo" src="img/logo20.png" class="hidden-xs"/>
                    <span>admin</span></a>
                <div class="btn-group pull-right">
                    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> 管理员</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">切换账户</a></li>
                        <li class="divider"></li>
                        <li><a href="login.do">退出</a></li>
                    </ul>
                </div>
                <div class="btn-group pull-right theme-container animated tada">
                    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <i class="glyphicon glyphicon-tint"></i><span
                            class="hidden-sm hidden-xs"> 改变主题</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" id="themes">
                        <li><a data-value="classic" href="#"><i class="whitespace"></i> Classic</a></li>
                        <li><a data-value="cerulean" href="#"><i class="whitespace"></i> Cerulean</a></li>
                        <li><a data-value="cyborg" href="#"><i class="whitespace"></i> Cyborg</a></li>
                        <li><a data-value="simplex" href="#"><i class="whitespace"></i> Simplex</a></li>
                        <li><a data-value="darkly" href="#"><i class="whitespace"></i> Darkly</a></li>
                        <li><a data-value="lumen" href="#"><i class="whitespace"></i> Lumen</a></li>
                        <li><a data-value="slate" href="#"><i class="whitespace"></i> Slate</a></li>
                        <li><a data-value="spacelab" href="#"><i class="whitespace"></i> Spacelab</a></li>
                        <li><a data-value="united" href="#"><i class="whitespace"></i> United</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="ch-container">
            <div class="row">
                <div class="col-sm-2 col-lg-2">
                    <div class="sidebar-nav">
                        <div class="nav-canvas">
                            <div class="nav-sm nav nav-stacked">

                            </div>
                            <ul class="nav nav-pills nav-stacked main-menu">
                                <li class="accordion">
                                    <a href="#"><i class="glyphicon glyphicon-plus"></i><span>物品管理</span></a>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#">增加物品</a></li>
                                        <li><a href="#">删除物品</a></li>
                                    </ul>
                                </li>
                                <li class="accordion">
                                    <a href="#"><i class="glyphicon glyphicon-plus"></i><span>人员管理</span></a>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><a href="#">增加人员</a></li>
                                        <li><a href="#">删除人员</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="content" class="col-lg-10 col-sm-10">
                    <div>
                        <ul class="breadcrumb">
                            <li>
                                <a href="#">账户管理</a>
                            </li>
                            <li>
                                <a href="#">权限管理</a>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="box col-md-12">
                            <div class="box-inner">
                                <div class="box-header well">
                                    <h2><i class="glyphicon glyphicon-info-sign"></i>操作区域</h2>
                                </div>
                                <div  class="box-content row">
                                    <div style="width: 99%;margin-left: 5px;margin-top: -5px" class="well">
                                        <div class="page-header">
                                            <h3 style="margin-top: -40px">删除物品</h3>
                                        </div>
                                        <div class="control-group">
                                            <div class="box-content">
                                                <table class="table table-striped table-bordered bootstrap-datatable  responsive">
                                                    <thead>
                                                        <tr>
                                                            <th>序号</th>
                                                            <th>姓名</th>
                                                            <th>电话</th>
                                                            <th>类型</th>
                                                            <th>授权码</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="mm" items="${man}">
                                                            <tr>
                                                                <td>${mm.id}</td>
                                                                <td>${mm.name}</td>
                                                                <td class="center">${mm.telephone}</td>
                                                                <td class="center">${mm.type}</td>
                                                                <td class="center">${mm.authority}</td>
                                                                <td class="center">
                                                                    <a class="btn btn-danger" href="/admin/delete_m.do?id=${mm.id}">
                                                                        <i class="glyphicon glyphicon-trash icon-white"></i>
                                                                        删除
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
            <hr>
        </div>
        <script type="text/javascript">
        </script>
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
