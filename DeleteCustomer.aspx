<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteCustomer.aspx.cs" Inherits="Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 295px;
        }
        .auto-style2 {
            width: 180px;
        }
        .auto-style3 {
            width: 191px;
        }
        .auto-style4 {
            width: 347px;
        }
            body {
            background: url(image//customer.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
                    .button
         {
            background-color: #696969; /* Gray */
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
              padding: 12px 20px;
              margin: 8px 0;
              box-sizing: border-box;
              border: 2px solid gray;
              border-radius: 4px;
            }
    </style>
</head>
<body style="width: 591px; height: 348px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Customer Id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t1" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="c" runat="server" Text="New" style="margin-left: 53px" Width="96px" class="button" OnClick="c_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t2" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="c0" runat="server" Text="Delete" style="margin-left: 53px" Width="96px" CssClass="button" OnClick="c0_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t3" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="c1" runat="server" Text="AllSearch" style="margin-left: 53px" Width="96px" class="button" OnClick="c1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t4" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="c2" runat="server" Text="Psearch" style="margin-left: 53px" Width="96px" CssClass="button
                        " OnClick="c2_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/menu.aspx">Home</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t5" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Staff id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t6" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" Width="584px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cid" HeaderText="Customer Id" ReadOnly="True" SortExpression="cid" />
                <asp:BoundField DataField="cfnm" HeaderText="Customer First Name" SortExpression="cfnm" />
                <asp:BoundField DataField="clnm" HeaderText="Customer Last Name" SortExpression="clnm" />
                <asp:BoundField DataField="cphone" HeaderText="Customer Phone No" SortExpression="cphone" />
                <asp:BoundField DataField="cemail" HeaderText="Customer Email Id" SortExpression="cemail" />
                <asp:BoundField DataField="stid" HeaderText="Staff Id" SortExpression="stid" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
    </form>
</body>
</html>
