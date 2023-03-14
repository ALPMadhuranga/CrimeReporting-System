<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="user_about_us" %>

<%@ Register Src="~/include/navbarUse.ascx" TagPrefix="uc1" TagName="navbarUse" %>
<%@ Register Src="~/include/FooterUse.ascx" TagPrefix="uc1" TagName="FooterUse" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About us</title>
    
    <style>
        body{
            background:url(imagesbg/imgbg2.jpg);
            background-size:cover;
        }
        .logo{
            width:300px;
            height:100px;
            margin-left:35%;
            margin-right:30%;
            margin-top:20px;
            display:inline-block;
            border: 1px solid #BFBFBF;
            border-radius:5px;
            box-shadow: 8px 8px 5px #262424;
            -moz-box-shadow: 10px 10px 5px #262424;
            -webkit-box-shadow: 10px 10px 5px #121212;
        }
        p{
            color:#999999;
        }
    </style>
    <link rel="stylesheet" href="../include/userFooter.css" />
    <link rel="stylesheet" href="../include/userNavBar.css" />
</head>
<body>
    <form id="form1" runat="server">

    <!-- Navbar -->
        <uc1:navbarUse runat="server" ID="navbarUse" />
    <!-- Navbar -->
        
        

    
    <div class="loginbox" style="width:80%; margin: 5% 10%; background: rgba(0, 0, 0, 0.8); padding: 5% 5% 5% 5%;" >
        <div style=" margin-bottom:50px;">
        <img src="images3/crs logo2.png" class="logo" />
        </div>
        <div>
            <ol class="breadcrumb mb-4" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width:300px; ">
                 <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:20px; font-weight:600; "> About us</li>
            </ol>
       <p>The Sri Lanka Police is the civilian national police force of the Democratic Socialist Republic of Sri Lanka.<br /></p>
       <p>The police force has a manpower of approximately 77,000, and is responsible for enforcing criminal- and traffic law, enhancing public safety, maintaining order and keeping the peace throughout Sri Lanka.
          The professional head of the police is the Inspector General of Police who reports to the Minister of Law and Order as well as the National Police Commission. 
          Specially trained commando/counter-terrorist units named Special Task Force are regularly deployed in joint operations with the armed forces for counter-terrorism operations and VVIP protection. 
          The police command structure in Northern and Eastern provinces is closely integrated with the other security organisations under the authority of the Joint Operations Command.<br /><br />

          With the escalation of the Sri Lankan Civil War the strength and the number of police stations have increased.
          Since 1971 the police service has suffered large number of casualties, with officers and constables killed and wounded as a result of terrorists and insurgents.
          In more remote rural areas beyond the immediate range of existing police stations, enforcement of simple crimes are carried out by the Grama Seva Niladhari (village service officers), but this has now become rare, with most villages covered by new police stations. 
          In addition to its regular forces, the police service operated a reserve contingent until 2007 when the Reserve Police Force was disbanded and its personnel transferred to the regular police force. The police service has a number of specialised units responsible for investigative, protective, counter-terrorism and paramilitary functions. <br /><br />

           Investigation of organised criminal activity and detective work are handled by the Criminal Investigation Department (CID) under the command of a Deputy Inspector General of Police (DIG).

           Protective security units which are entrusted the security includes the Ministerial Security Division (elected public figures), Diplomatic Security Division (foreign diplomats) and Judicial Security Division (judges). The President's Security Division and the Prime Minister's Security Division function independently but consist of mostly police personnel. 
           Other specialised units includes the Information Technology Division, the Mounted Division, the Anti-riot Squad, Traffic Police, K9 units, the Marine Division, the Police Narcotic Bureau, and the Children & Women Bureau. The police service also operates the Sri Lanka Police College of personnel training and the Police Hospital. 
       </p></div>
        <div>
            <ol class="breadcrumb mb-4" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-top:15px; width:350px; ">
                 <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:20px; font-weight:600; "> Roles of SL police department</li>
            </ol>
            <ul style="color:#666666">
                <li>Law enforcement</li>
                <li>Fighting crime</li>
                <li>Carrying out investigations</li>
                <li>Drug enforcement</li>
                <li>Security </li>
                <li>Keeping public security</li>
                <li>Maintaining public order</li>
                <li>Counter-terrorism</li>
                <li>Securing public events, rallies and holidays</li>
                <li>Riot control / crowd control</li>
                <li>Intelligence services</li>
                <li>Providing VIP security (VVIP security is handled by the Special Task Force)</li>
                <li>Handling suspicious objects and bomb disposal (EOD) (handled by the Special Task Force)</li>
                <li>Handling the local command of the Home Guard</li>
                <li>Assisting the Prison Service in prisoner transport and control of prison unrest</li>
                <li>Traffic control</li>
                <li>Coordinating emergency services</li>
                <li>Police and community </li>
                <li>Handling civilian complaints</li>
                <li>Handling youth violence and crime</li>
                <li>Educating the community and participating in educational campaigns</li>
                <li>Providing ceremonial escorts to the President, the Prime Minister and foreign ambassadors on state functions</li>
                <li>Assist and coordinate community policing</li>
            </ul>
        </div>
         <div>
            <ol class="breadcrumb mb-4" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-top:15px; width:300px; ">
                 <li class="breadcrumb-item active" style="color:black; text-shadow: 2px 2px 4px #000000; font-size:20px; font-weight:600; "> Our Mission and Vision</li>
            </ol>
             <h6 style="color:#CCCCCC; font-size:20px;">Our Vision:-</h6>&nbsp;<p> Towards a Peaceful environment to live with confidence, without fear of Crime and Violence.</p><br /><br />
             <h6 style="color:#CCCCCC; font-size:20px;">Our Mission:-</h6>&nbsp;<p> Sri Lanka Police is committed and confident to uphold and enforce the law of the land, to preserve the public order, prevent crime and Terrorism with prejudice to none – equity to all. </p>
          </div><br />
        <h6 style="text-align:center; color:#666666;"> The Police service is reached islandwide on the 119 emergency number.</h6>
      </div >
    

        <uc1:FooterUse runat="server" ID="FooterUse" />
    </form>
</body>
</html>
