<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
<style type="text/css">
      
/* The slideshow CSS. Customize to meet your taste. */
.slideshow {
	font-family:Arial, Helvetica, sans-serif;
	width:337px;
	height:375px;
	overflow:hidden;
	background-color:#000000;
	color:#FFFFFF;
	border:5px solid #000000;
            top: -2px;
            left: 161px;
            position: absolute;
        }
.slideshow > ul {
	margin: 0;
	padding: 0;
        width: 483px;
    }
.slideshow > ul > li {
	display:inline;
	margin:0px;
	padding:0px;
	font-size:1px;
	margin-right: -1px;
}
.slideshow > ul > li > div {
  display: none;
  text-decoration: none;
  float:left;
}
.slideshow > ul > li > div > p {
  font-size:11px;
  text-align:center;
  padding:10px 0px 0px 0px;
  margin:0px;
  color:#FFFFFF;
}
.slideshow > ul > li > div > a > img {
	border:2px solid #000000;
	width:332px;
}
.slideshow  > ul > li > img {
	border:2px solid #000000;
	margin:0px;
	padding:0px;
	width:80px;
	height:60px;
}
/* Shows slides when mouse pointer is over a thumbnail image */
.slideshow > ul > li:hover > div {
	display: block;
}
/* Highlights the thumbnail image when mouse pointer is over it */
.slideshow > ul > li:hover > img {
	border-color:#000000;
}
-->
</style>

    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            font-weight: bold;
            font-style: italic;
            font-family: Aharoni;
            color: #000000;
        }
        .style2
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body background="images/www.jpg">
    <form id="form1" runat="server">
    <div style="height: 151px; top: 0px; left: 0px; position: absolute; width: 1241px">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/head.jpg" 
            
            
            
            
            style="top: 4px; left: 15px; position: absolute; width: 988px; height: 151px; " />
    
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/mainpic.jpg" 
            
            
            
            
            
            
            style="height: 281px; top: 2px; left: 1006px; position: absolute; width: 283px; margin-top: 1px;" />
    
    </div>
    <div style="top: 162px; left: 15px; position: absolute; height: 55px; width: 1034px">
   

        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/images/HOMEBT.jpg" onclick="ImageButton1_Click" Width="111px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="53px" 
            ImageUrl="~/images/SEARBT.jpg" onclick="ImageButton2_Click" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="53px" 
            ImageUrl="~/images/CSBT.jpg" onclick="ImageButton3_Click" />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="53px" 
            ImageUrl="~/images/ABTBT.jpg" onclick="ImageButton4_Click" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="53px" 
            ImageUrl="~/images/CNTBT.jpg" onclick="ImageButton5_Click" />
        <asp:ImageButton ID="ImageButton6" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNINBT.jpg" onclick="ImageButton6_Click" />
        <asp:ImageButton ID="ImageButton7" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNUPBT.jpg" onclick="ImageButton7_Click" Width="110px" />
   

        <asp:ImageButton ID="ImageButton8" runat="server" Height="53px" 
            ImageUrl="~/images/JPBT.jpg" onclick="ImageButton8_Click" />
   

    </div>
    <div class="style1" 
        
        
        
        style="top: 238px; left: 18px; position: absolute; height: 58px; width: 983px; background-color: #000099">
        <br class="style2" />
        <span class="style2">Advanced Job Search: </span>&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            PostBackUrl="~/searchjob.aspx" style="color: #FFFFFF">Jobs By Function</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
            style="color: #FFFFFF">Jobs By Location</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
            style="color: #FFFFFF">Jobs By Companies</asp:LinkButton>
    </div>
    <div class="slideshow" 
        style="top: 301px; position: absolute; height: 331px; left: 17px; width: 483px">
    <ul>
        <li>
            <img src="images/electronics-companies.jpg" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/electronics-companies.jpg"  target="_blank">
                    <img src="images/electronics-companies.jpg" alt="" />
                </a>
                <p>Worlds famous Electronic Companies on Your Choice <a href="images/electronics-companies.jpg" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
<img src="images/indian-it-companies2.jpg" />
            <div>
                <a href="images/indian-it-companies2.jpg"  target="_blank">
                    <img src="images/indian-it-companies2.jpg" alt="" />
                </a>
                <p>Worlds Famous IT companies Now on Your Choice</p>
            </div>
        </li>
        <li>
<img src="Company/career.jpg" />            <div>
                <a href="Company/career.jpg"  target="_blank">
                    <img src="Company/career.jpg" alt="Fluvial Parade" />
                </a>
                <p>The fluvial parade commemorating the arrival of Child Jesus Christ in Cebu City and the birth of Christianity in the Philippines.</p>
            </div>
        </li>
         <li>
            <img src="images/logos/logo-boeing.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-boeing.gif"  target="_blank">
                    <img src="images/logos/logo-boeing.gif" alt="" />
                </a>
                <p>Relaxing calm waters back home in <a href="images/logos/logo-boeing.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
            <img src="images/logos/logo-citigroup.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-citigroup.gif"  target="_blank">
                    <img src="images/logos/logo-citigroup.gif" alt="" />
                </a>
                <p>Relaxing calm waters back home in <a href="images/logos/logo-citigroup.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
            <img src="images/logos/logo-general-motors.jpg" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-general-motors.jpg"  target="_blank">
                    <img src="images/logos/logo-general-motors.jpg" alt="" />
                </a>
                <p>Relaxing calm waters back home in <a href="images/logos/logo-general-motors.jpg" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
            <img src="images/logos/logo-ibm.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-ibm.gif"  target="_blank">
                    <img src="images/logos/logo-ibm.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-ibm.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
         <li>
            <img src="images/logos/logo-kroger.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-kroger.gif"  target="_blank">
                    <img src="images/logos/logo-kroger.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-kroger.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
            <img src="images/logos/logo-nippon-telegraph-telephone.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-nippon-telegraph-telephone.gif"  target="_blank">
                    <img src="images/logos/logo-nippon-telegraph-telephone.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-nippon-telegraph-telephone.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
         <li>
            <img src="images/logos/logo-peugeot.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-peugeot.gif"  target="_blank">
                    <img src="images/logos/logo-peugeot.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-peugeot.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
            <img src="images/logos/logo-prudential.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-prudential.gif"  target="_blank">
                    <img src="images/logos/logo-prudential.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-prudential.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
         <li>
            <img src="images/logos/logo-samsung.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-samsung.gif"  target="_blank">
                    <img src="images/logos/logo-samsung.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-samsung.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
            <img src="images/logos/logo-sony.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-sony.gif"  target="_blank">
                    <img src="images/logos/logo-sony.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-sony.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
            <img src="images/logos/logo-tesco.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-tesco.gif"  target="_blank">
                    <img src="images/logos/logo-tesco.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-tesco.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
         <li>
            <img src="images/logos/logo-dexia-group.gif" />
            <!-- 
            	The slide contents inside DIV. 
                Put anything you like to show.
            -->
            <div>
                <a href="images/logos/logo-dexia-group.gif"  target="_blank">
                    <img src="images/logos/logo-dexia-group.gif" alt="" />
                </a>
                <p> <a href="images/logos/logo-dexia-group.gif" target="_blank">Samboan</a>, Cebu, Philippines.</p>
            </div>
        </li>
        <li>
       
    </ul>

    <%--<marquee behaviour="alternate">
    <marquee width="1000">
    <img src="cmp.jpg" /></img>
    <img src="corporations.jpg" /></img>
    <img src="career.jpg" /></img>
    </marquee>
    </marquee>--%>
</div>
    <div style="top: 304px; left: 860px; position: absolute; height: 327px; width: 435px; bottom: 0px;">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Advertise.jpg" 
            
            
            
            style="top: -1px; left: 4px; position: absolute; width: 435px; height: 90px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="gdjob" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="jobid" GridLines="None" 
            onselectedindexchanged="gdjob_SelectedIndexChanged" 
            
            style="top: 91px; left: 5px; position: absolute; width: 436px; height: 221px; bottom: 15px;" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellSpacing="1">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="compid" HeaderText="Company" />
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" />
                <asp:BoundField DataField="salary" HeaderText="Salary" />
                <asp:CommandField HeaderText="Apply To The Job" SelectText="Apply Now" 
                    ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
    </div>
        <div style="top: 298px; left: 513px; position: absolute; height: 339px; width: 342px">
            <asp:Image ID="Image4" runat="server" Height="333px" 
                ImageUrl="~/Company/immap.jpg" Width="347px" />
            <div style="top: 565px; left: -495px; position: absolute; height: 32px; width: 1269px; color: #FFFFFF; text-align: center; margin-top: 0px; background-color: #000099">
                Copyright©2012 E-Recruiter All Rights Reserved</div>
        </div>
    </form>
    </body>
</html>
