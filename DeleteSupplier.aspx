<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteSupplier.aspx.cs" Inherits="Supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            border: 1px solid #808080;
        }
        .auto-style3 {
            width: 146px;
        }
        .auto-style4 {
            width: 182px;
        }
        .auto-style5 {
            width: 146px;
            height: 23px;
        }
        .auto-style6 {
            width: 182px;
            height: 23px;
        }
        .auto-style8 {
            width: 146px;
            height: 28px;
        }
        .auto-style9 {
            width: 182px;
            height: 28px;
        }
        .auto-style10 {
            width: 130px;
        }
        .auto-style11 {
            width: 130px;
            height: 23px;
        }
        .auto-style12 {
            width: 130px;
            height: 28px;
        }
        .auto-style13 {
            width: 146px;
            height: 30px;
        }
        .auto-style14 {
            width: 182px;
            height: 30px;
        }
        .auto-style15 {
            width: 130px;
            height: 30px;
        }
            body {
            background: url(image//supplier.jpg);
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
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Supplier Id"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="t1" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="b1" runat="server" Text="New" CssClass="button" Width="84px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="t2" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="b2" runat="server" Text="Delete" Width="87px" CssClass="button" OnClick="b2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="t3" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:Button ID="b3" runat="server" Text="All Seatch" Width="86px" CssClass="button" OnClick="b3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="t4" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Button ID="b4" runat="server" Text="P search" Width="88px" class="button" OnClick="b4_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/menu.aspx">Home</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Fax"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="t5" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="t6" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label7" runat="server" Text="Other Details"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="t7" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sid" DataSourceID="SqlDataSource1" Width="592px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="sid" HeaderText="Supplier Id" ReadOnly="True" SortExpression="sid" />
                <asp:BoundField DataField="snm" HeaderText="Name" SortExpression="snm" />
                <asp:BoundField DataField="sadd" HeaderText="Address" SortExpression="sadd" />
                <asp:BoundField DataField="sphone" HeaderText="Phone" SortExpression="sphone" />
                <asp:BoundField DataField="sfax" HeaderText="Fax" SortExpression="sfax" />
                <asp:BoundField DataField="semail" HeaderText="Email" SortExpression="semail" />
                <asp:BoundField DataField="sother" HeaderText="Other Details" SortExpression="sother" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
    </form>
</body>
</html>
