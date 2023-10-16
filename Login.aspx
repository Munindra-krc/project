<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
            height: 411px;
            margin-bottom: 114px;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 293px;
            height: 78px;
        }
        .auto-style3 {
            width: 278px;
            height: 101px;
        }
        .auto-style4 {
            height: 101px;
        }
        .auto-style5 {
            width: 278px;
            height: 79px;
        }
        .auto-style6 {
            height: 79px;
        }
        .auto-style7 {
            height: 78px;
        }
           body {
            background: url(image//login.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .auto-style9 {
            width: 293px;
            height: 78px;
            margin-left: 120px;
        }
         .button
         {
            background-color: #9972ad; /* voilet */
            border: none;
            color: white;
            padding: 10px;
            text-align: center;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
        }
       .txt {
              width: 100%;
              padding: 10px 10px;
              margin: 8px 0;
              box-sizing: border-box;
              border: 2px solid gray;
              border-radius: 4px;
            }
        .auto-style10 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #9972ad; /* voilet */;
            color: white;
            padding: 10px;
            text-align: center;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px 4px 23px;
            cursor: pointer;
            border-radius: 12px;
        }
        </style>
</head>

<body style="height: 356px; width: 946px; margin-left: 201px;">
    <center>
    <form id="form1" runat="server">
        <table bgcolor="white" class="auto-style1">
            <tr>
                <td colspan="2">
                 <h1 align="center">Inventory Management System</h1>
                </td>

            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Login Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="t1" runat="server" placeholder="User"  CssClass="txt" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Login password"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="t2" runat="server" TextMode="Password" placeholder="Password" class="txt" Width="200px"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr >
                <td colspan="2" class="auto-style2">
                    <asp:Button ID="lo" runat="server" style="margin-left: 29px" Text="Login" Width="477px" class="button" OnClick="lo_Click1" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style7">
                    <asp:LinkButton ID="LinkButton1" CssClass="auto-style10" runat="server" PostBackUrl="~/signup.aspx" OnClick="LinkButton1_Click" Width="465px">SignUp</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td  colspan=2 class="auto-style9">
                    &nbsp;</td>
            </tr>
           
        </table>
    <div>
    
    </div>
    </form>
</center>
</body>
</html>
