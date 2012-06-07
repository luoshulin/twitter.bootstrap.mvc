﻿@using System.Web.Optimization
@using $rootnamespace$
@using $rootnamespace$.BootstrapSupport
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>@ViewBag.Title</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="@Styles.Url("~/css")" rel="stylesheet"/>
        <script type="text/javascript" src="@Scripts.Url("~/js")"></script>
        <style type="text/css">
          body {
            padding-top: 60px;
            padding-bottom: 40px;
          }
        </style>
        @RenderSection("head", required: false)
        @Html.Partial("_html5shiv")
        @* favicons and touch icons go here *@
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">QD</a>
                    <div class="nav-collapse">
                        <ul class="nav">
                           @Html.Navigation()
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div class="container">
            @RenderBody()   
            <hr>
            <footer>
@*                <p>&copy; Company 2012</p>*@
            </footer> 
        </div>
         @RenderSection("scripts", required: false)
    </body>
</html>
