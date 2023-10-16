<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateOrder1.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77%;
            height: 273px;
        }
        .auto-style2 {
            width: 204px;
        }
        .auto-style3 {
            width: 198px;
        }
        body {
            background: url(image//order1.jpg);
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
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Order Id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t1" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="o" runat="server" Text="New" class="button" Width="98px" OnClick="o_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t2" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="o0" runat="server" Text="Update" Width="98px" class="button" OnClick="o0_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Order Details"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t3" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="o1" runat="server" Text="AllSearch" CssClass="button" Width="98px" OnClick="o1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Customer Id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t4" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="o2" runat="server" Text="PSearch" Width="98px" CssClass="button" OnClick="o2_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/menu.aspx">Home</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ordid" DataSourceID="SqlDataSource1" Width="657px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ordid" HeaderText="Order Id" ReadOnly="True" SortExpression="ordid" />
                <asp:BoundField DataField="date1" HeaderText="Date" SortExpression="date1" />
                <asp:BoundField DataField="detail" HeaderText="Order Detail" SortExpression="detail" />
                <asp:BoundField DataField="cid" HeaderText="Customer Id" SortExpression="cid" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order1]"></asp:SqlDataSource>
    </form>
</body>
</html>
