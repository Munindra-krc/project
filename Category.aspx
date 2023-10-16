<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 79%;
            height: 227px;
        }
        .auto-style2 {
            width: 211px;
        }
        .auto-style3 {
            width: 210px;
        }
        body {
            background: url(image//category.jpg);
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
        .auto-style4 {
            margin-left: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Category Id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t1" runat="server" class="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="c" runat="server" Text="New" Width="98px" class="button" OnClick="c_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t2" runat="server" class="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="c0" runat="server" Text="Save" Width="98px" class="button" OnClick="c0_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t3" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="c1" runat="server" Text="AllSearch" Width="98px" class="button" OnClick="c1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
                <td>
                    <asp:Button ID="c2" runat="server" Text="Psearch" Width="98px" class="button" OnClick="c2_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/menu.aspx">Home</asp:LinkButton>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" Width="528px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style4">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cid" HeaderText="Category Id" ReadOnly="True" SortExpression="cid" />
                <asp:BoundField DataField="cname" HeaderText="Category Name" SortExpression="cname" />
                <asp:BoundField DataField="descl" HeaderText="Category Description" SortExpression="descl" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    </form>
</body>
</html>
