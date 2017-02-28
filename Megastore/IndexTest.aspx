<%@  Master Language="C#" AutoEventWireup="true" CodeBehind="Site.master.cs" Inherits="Megastore.Site" %>

<%@ Register Src="~/LoginUser.ascx" TagPrefix="uc1" TagName="LoginUser" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <asp:ContentPlaceHolder ID="title" runat="server">
        </asp:ContentPlaceHolder>
    </title>
    <link rel="stylesheet" href="https://bootswatch.com/simplex/bootstrap.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <asp:ContentPlaceHolder ID="head" runat="server">
    </asp:ContentPlaceHolder>
</head>
<body>


    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">MegaStore</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Books<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Products.aspx?category=Book">Movies</a></li>
                                <li><a href="SubCategory.aspx?category=Book&subcat=Children">Children</a></li>
                                <li><a href="SubCategory.aspx?category=Book&subcat=Manga">Manga</a></li>
                                <li><a href="SubCategory.aspx?category=Book&subcat=Thriller">Thriller</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Movies<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Products.aspx?category=Movie">Movie</a></li>
                                <li><a href="SubCategory.aspx?category=Movie&subcat=Children">Children</a></li>
                                <li><a href="SubCategory.aspx?category=Movie&subcat=Action">Action</a></li>
                                <li><a href="SubCategory.aspx?category=Movie&subcat=Thriller">Thriller</a></li>
                            </ul>

                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Smartphones<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Products.aspx?category=Smartphone">Smartphone</a></li>
                                <li><a href="SubCategory.aspx?category=Smartphone&subcat=Iphone">Iphone</a></li>
                                <li><a href="SubCategory.aspx?category=Smartphone&subcat=Android">Android</a></li>
                                <li><a href="SubCategory.aspx?category=Smartphone&subcat=Blackberry">Blackberry</a></li>
                            </ul>

                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Computers<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Products.aspx?category=Computer">Computer</a></li>
                                <li><a href="SubCategory.aspx?category=Computer&subcat=Processor">Processors</a></li>
                                <li><a href="SubCategory.aspx?category=Computer&subcat=Graphics">Graphics Card</a></li>
                                <li><a href="SubCategory.aspx?category=Computer&subcat=Motherboard">Motherboard</a></li>
                                <li><a href="SubCategory.aspx?category=Computer&subcat=Ram">RAM</a></li>
                                <li><a href="SubCategory.aspx?category=Computer&subcat=Harddrive">HDD,SSD</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Games<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Products.aspx?category=Game">Games</a></li>
                                <li><a href="SubCategory.aspx?category=Game&subcat=RPG">RPG</a></li>
                                <li><a href="SubCategory.aspx?category=Game&subcat=Fps">FPS</a></li>
                                <li><a href="SubCategory.aspx?category=Game&subcat=Strategy">Strategy</a></li>
                            </ul>
                        </li>


                    </ul>

                    <ul class="nav navbar-nav navbar-right">

                        <li>
                            <asp:TextBox ID="searchBox" runat="server" class="form-control" Text="Search"></asp:TextBox>
                            
                        </li>
                        

                        <li>
                            <asp:LinkButton ID="LinkButton2"
                                OnCommand="button_Click"
                                runat="server"><i class="glyphicon glyphicon-search"></i></asp:LinkButton>
                        </li>
                        <li><a href="AdvancedSearch.aspx">Advance</span></a>
                        </li>

                        <li>

                            <asp:LinkButton ID="Welcome"
                                Text="Welcome"
                                runat="server" Visible="false" /></li>
                        <li>

                            <asp:LinkButton ID="LinkButton1"
                                Text="Log out"
                                runat="server" OnClick="LinkButton1_Click" Visible="false" /></li>

                        <li>
                            <asp:LoginView ID="LoginView1" runat="server">
                                <LoggedInTemplate>
                                </LoggedInTemplate>
                                <AnonymousTemplate>

                                    <uc1:LoginUser runat="server" ID="LoginUser" onloggedin="OnLoggedIn" />
                                </AnonymousTemplate>

                            </asp:LoginView>
                        </li>

                        <li><a href="cart.aspx">Cart</a></li>
                    </ul>

                </div>
            </div>
        </nav>

        <div class="container-fluid text-center">
            <div class="row content">
                <div class="col-sm-10 text-left">
                    <div class="content">
                        <div class="well">
                        <asp:ContentPlaceHolder ID="contentBody" runat="server">
                        </asp:ContentPlaceHolder>
                            </div>
                    </div>
                </div>

                <div class="col-sm-2 sidenav">

                    <asp:ContentPlaceHolder ID="rightbarHolder" runat="server">
                        <asp:Timer ID="Timer1" Interval="10000" runat="server" />

                        <asp:UpdatePanel ID="up1" runat="server">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>
                            <ContentTemplate>
                                <asp:AdRotator
                                    ID="AdRotator1"
                                    AdvertisementFile="ads/comAd.xml"
                                    runat="server"
                                    Height="128px" Width="200px" />
                                <asp:AdRotator
                                    ID="AdRotator2"
                                    AdvertisementFile="ads/comAd.xml"
                                    runat="server"
                                    Height="128px" Width="200px" />
                                <asp:AdRotator
                                    ID="AdRotator3"
                                    AdvertisementFile="ads/comAd.xml"
                                    runat="server"
                                    Height="128px" Width="200px" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </asp:ContentPlaceHolder>
                </div>

            </div>
        </div>

        <div class="clear"></div>

        <div class="clear"></div>

        <footer class="container-fluid text-center">
            <i>
                <p>Footer company ALL RIGHTS RESERVERD</p>
            </i>
        </footer>
        </div>

        <script>
            (function ($) {
                var element = $('.col-sm-2 sidenav'),
                    originalY = element.offset().top;



                // Space between element and top of screen (when scrolling)
                var topMargin = 20;

                $(window).on('scroll', function (event) {
                    var scrollTop = $(window).scrollTop();
                    element.stop(true, false).animate({

                        top: scrollTop < originalY
                               ? 0
                               : scrollTop - originalY + topMargin
                    }, 300);

                });

            })(jQuery);
        </script>

    </form>


</body>
</html>
