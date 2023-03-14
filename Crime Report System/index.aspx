<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="~/include/navbarUse.ascx" TagPrefix="uc1" TagName="navbarUse" %>
<%@ Register Src="~/include/FooterUse.ascx" TagPrefix="uc1" TagName="FooterUse" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>

      <link rel="stylesheet" href="include/userNavBar.css" />
    <link rel="stylesheet" href="include/userFooter.css" />

     <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body{
            background:url(user/imagesbg/imgbg2.jpg);
            background-size:cover;
        }   

        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 95%;
            margin: auto;
            height:400px;
        }
        .loginbox hr{
            width:90%;
           color:#CCCCCC;
        }
        .loginbox h5{
            font-size:25px;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:navbarUse runat="server" ID="navbarUse" />
  </div>
         <h1  style="color:white; text-align:center; text-shadow: 3px 6px 5px rgba(134, 137, 137, 0.82); font-size:55px; font-weight:bold;">Welcome To Crime Reporting System <br /> In Sri Lanka</h1> 
       
 <div class="container">
        <br />
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>

            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">         


                <div class="item active">
                    <img src="image/Image_slider/1.jpg" class="img-responsive"/>
                    <div class="carousel-caption">
                </div>
                </div>

                <div class="item">
                    <img src="image/Image_slider/2.jpg" class="img-responsive"/>
                    <div class="carousel-caption">
                </div>
                </div>

                <div class="item">
                    <img src="image/Image_slider/3.jpg" class="img-responsive"/>
                    <div class="carousel-caption">
                 </div>
                </div>

                <div class="item">
                    <img src="image/Image_slider/5.jpg" class="img-responsive"/>
                    <div class="carousel-caption">
                 </div>
                </div>

                <div class="item">
                    <img src="image/Image_slider/6.jpg" class="img-responsive"/>
                    <div class="carousel-caption">
                 </div>
                </div>

                <div class="item">
                    <img src="image/Image_slider/7.jpg" class="img-responsive"/>
                    <div class="carousel-caption">
                 </div>
                </div>

                <div class="item">
                    <img src="image/Image_slider/8.jpg" class="img-responsive"/>
                    <div class="carousel-caption">
                 </div>
                </div>

            </div>

            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="false"></span>
                <span class="sr-only">Next</span>
            </a>
            </div>
            </div><br /><br />
         <div class="loginbox" style="width:100%; position:center; background: rgba(0, 0, 0, 0.5); padding: 3% 3% 3% 3%;" >
        
        <h5 class="abstract">Abstract</h5>
             <hr  style="color:#CCCCCC"/>
        <p style="font-size:17px;">The huge success of internet and information technology have a remarkable effect on both public and private sectors within a country.
           The internet services and applications have drastically increased. That's why people find it more convenient to use internet applications to give an online complain regarding any suspicious activity rather than visiting a police station.
           This method is reasonably secure since it is possible to hide the identity of the person who reported the complain about the crime. Many cases are not registered in police station since the person complained wants to hide the identity due to the possible risk or danger. 
           It is also feared that there are many pending investigations due to lack of proper evidences from the reporting people. An online application can bridge this communication gap between police and the individuals to send reports or other required information.
           This paper proposes an application that can be used by the individuals in Sri Lanka to report and manage their complains effectively. Further the system can be used by the people to register the complaints and is helpful to the police department in identifying the criminals. 
           The main purpose of the application is to improve the effectiveness and efficiency of interaction procedures between the police officials and common people. It would be an outstanding tool to monitor and track the criminals around the country.
        </p>
        </div>


        <uc1:FooterUse runat="server" ID="FooterUse" />
    </form>
</body>
</html>
