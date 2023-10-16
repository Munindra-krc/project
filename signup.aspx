<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 82%;
            height: 222px;
        }
        .auto-style3 {
            width: 201px;
        }
                   body {
            background: url(image//signup.jpg);
            background-repeat: no-repeat;
            background-size: cover;
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
        .auto-style4 {
            padding: 10px 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 2px solid gray;
            border-radius: 4px;
        }
    </style>
</head>
    <script>
        function validateForm() {
            var username = document.forms["form1"]["t2"].value;
            if (username == null || username == "") {
                alert("Please enter> the username. Can’t be blank or empty !!!");
                return false;
            }
        }
        function validate1Form() {
            var x = document.forms["form1"]["t1"].value;
            if (x == "") {
                alert("Name must be filled out");
                return false;
            }
        }
    </script>
<body style="width: 428px; height: 261px; margin-left: 378px; margin-top: 100px;">
    <form id="form1" runat="server">
    <div>
  
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="User Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="t1" class="txt" runat="server" onsubmit="return validate1Form()" Width="178px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="t2" CssClass="auto-style4" TextMode="Password" runat="server" onsubmit="return validateForm()" Width="178px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan=2 class="auto-style3">
                    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Create" class="button" Width="380px" />
                </td>
             </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="LinkButton1" class="button" runat="server" PostBackUrl="~/Login.aspx" Width="362px">Back</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
