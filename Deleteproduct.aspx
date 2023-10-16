﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deleteproduct.aspx.cs" Inherits="Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 76%;
            height: 362px;
        }
        .auto-style2 {
            width: 229px;
        }
        .auto-style3 {
            width: 229px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 211px;
        }
        .auto-style6 {
            width: 211px;
            height: 29px;
        }
        .auto-style7 {
            width: 229px;
            height: 41px;
        }
        .auto-style8 {
            width: 211px;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
        }
            body {
            background: url(image//product.jpg);
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
<body style="height: 261px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Product Id"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="t1" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="pb" runat="server" Text="New" CssClass="button" Width="89px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t2" runat="server" class="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="pb0" runat="server" Text="Delete" Width="89px" class="button" OnClick="pb0_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Product Description"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t3" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="pb1" runat="server" Text="AllSearch" Width="89px" class="button" OnClick="pb1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Product Unit"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t4" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="pb2" runat="server" Text="Psearch" Width="89px" CssClass="button" OnClick="pb2_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/menu.aspx">Home</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Product Price"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t5" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Product Quantity"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t6" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Product Status"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t7" runat="server" class="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Other Details"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t8" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Supplier Id"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t9" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Category Id"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="t10" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="646px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="Product Id" SortExpression="pid" />
                <asp:BoundField DataField="pnm" HeaderText="Name" SortExpression="pnm" />
                <asp:BoundField DataField="pdesc" HeaderText="Description" SortExpression="pdesc" />
                <asp:BoundField DataField="punit" HeaderText="Unit" SortExpression="punit" />
                <asp:BoundField DataField="pprice" HeaderText="Price" SortExpression="pprice" />
                <asp:BoundField DataField="pqty" HeaderText="Quantity" SortExpression="pqty" />
                <asp:BoundField DataField="pstatus" HeaderText="Status" SortExpression="pstatus" />
                <asp:BoundField DataField="pother" HeaderText="Other Details" SortExpression="pother" />
                <asp:BoundField DataField="sid" HeaderText="Supplier Id" SortExpression="sid" />
                <asp:BoundField DataField="cid" HeaderText="Category Id" SortExpression="cid" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
