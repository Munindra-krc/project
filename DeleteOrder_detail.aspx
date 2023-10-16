<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteOrder_detail.aspx.cs" Inherits="Order_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 71%;
            height: 401px;
        }
        .auto-style2 {
            width: 187px;
        }
        .auto-style3 {
            width: 190px;
        }
        .auto-style4 {
            width: 187px;
            height: 37px;
        }
        .auto-style5 {
            width: 190px;
            height: 37px;
        }
        .auto-style6 {
            height: 37px;
        }
        body {
            background: url(image//order_detail.jpg);
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
                    <asp:Button ID="o" runat="server" Text="New" CssClass="button" Width="89px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Unit price"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t2" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="o0" runat="server" Text="Delete" Width="89px" class="button" OnClick="o0_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Size" ></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t3" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="o1" runat="server" Text="AllSearch" Width="89px" class="button" OnClick="o1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="t4" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="o2" runat="server" Text="Psearch" Width="89px" class="button" OnClick="o2_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/menu.aspx">Home</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Discount"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t5" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t6" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t7" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Product id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t8" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Order id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t9" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Bill number"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="t10" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ordid" DataSourceID="SqlDataSource1" Width="606px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ordid" HeaderText="ordid" ReadOnly="True" SortExpression="ordid" />
                <asp:BoundField DataField="ordprice" HeaderText="ordprice" SortExpression="ordprice" />
                <asp:BoundField DataField="ordsize" HeaderText="ordsize" SortExpression="ordsize" />
                <asp:BoundField DataField="ordqty" HeaderText="ordqty" SortExpression="ordqty" />
                <asp:BoundField DataField="orddist" HeaderText="orddist" SortExpression="orddist" />
                <asp:BoundField DataField="ordtot" HeaderText="ordtot" SortExpression="ordtot" />
                <asp:BoundField DataField="orddt" HeaderText="orddt" SortExpression="orddt" />
                <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                <asp:BoundField DataField="ordidf" HeaderText="ordidf" SortExpression="ordidf" />
                <asp:BoundField DataField="billno" HeaderText="billno" SortExpression="billno" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [order_detail]"></asp:SqlDataSource>
    </form>
</body>
</html>
