<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
                 body {
            background: url(image//inventorymenu.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body style="height: 49px; width: 1290px; margin-left: 0px; margin-top: 0px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#009900" BorderColor="#003366" BorderStyle="Solid" CssClass="dynamic" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White" Width="100%">
            <DynamicHoverStyle ForeColor="Black" />
            <DynamicMenuStyle BackColor="#006600" />
            <Items>
                <asp:MenuItem Text="Category Details" Value="Category Details">
                    <asp:MenuItem NavigateUrl="~/Category.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateCategory.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteCategory.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Reportcategory.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Deleteproduct.aspx" Text="Product Details" Value="Product Details">
                    <asp:MenuItem NavigateUrl="~/Product.aspx" Text="Save" Value="product save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Updateproduct.aspx" Text="Update" Value="Product Update"></asp:MenuItem>
                    <asp:MenuItem Text="Delete" Value="Product Delete" NavigateUrl="~/Deleteproduct.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportProduct.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Staff Details" Value="Staff Details">
                    <asp:MenuItem NavigateUrl="~/Staff.aspx" Text="Save" Value="staff save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateStaff.aspx" Text="Update" Value="Staff update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteStaff.aspx" Text="Delete" Value="Staff Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Reportstaff.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Supplier Details" Value="Supplier Details">
                    <asp:MenuItem NavigateUrl="~/Supplier.aspx" Text="Save" Value="save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/updateSupplier.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteSupplier.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportSupplier.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Order Detail" Value="Order Details">
                    <asp:MenuItem NavigateUrl="~/Order_detail.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateOrder_detail.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteOrder_detail.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportOrder_Detail.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Customer Details" Value="Customer Details" NavigateUrl="~/ReportSupplier.aspx">
                    <asp:MenuItem NavigateUrl="~/Customer.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateCustomer.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteCustomer.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Reportcustomer.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Payment Detail" Value="Payment Detail">
                    <asp:MenuItem NavigateUrl="~/Payment.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/updatePayment.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeletePayment.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Reportpayment.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Order1" Value="Order">
                    <asp:MenuItem NavigateUrl="~/Order1.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UpdateOrder1.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/DeleteOrder1.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Reportorder1.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#006600" ForeColor="Black" />
            <StaticMenuItemStyle Height="25px" VerticalPadding="10px" HorizontalPadding="25px" />
            <StaticMenuStyle BackColor="#00CC00" Height="50px" HorizontalPadding="20px" />
            <StaticItemTemplate>
                <%# Eval("Text") %>
            </StaticItemTemplate>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
