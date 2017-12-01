<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PapaBobs.Web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <!-- This is the Header of the page -->
            <div class="page-header">
                <h1>Papa Bob's Pizza</h1>
                <h3>Pizza to Code By</h3>
            </div>

                        
            <!-- Here we start the form -->
            <div class="form-group">
                <label>Size: </label>
                <asp:DropDownList ID="sizeDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="recalculateTotalCost">
                    <asp:ListItem Text="Choose one..." Value="" Selected="True" />
                    <asp:ListItem Text="Small (12 inch - $12)" Value ="Small" />
                    <asp:ListItem Text="Medium (14 inch - $14)" Value="Medium" />
                    <asp:ListItem Text="Large (16 inch - $16)" Value="Large" />
                </asp:DropDownList>

                <br />

                <label>Crust: </label>
                <asp:DropDownList ID="crustDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="recalculateTotalCost">
                    <asp:ListItem Text="Choose one..." Value="" Selected="True" />
                    <asp:ListItem Text="Regular" Value="Regular" />
                    <asp:ListItem Text="Thin" Value="Thin" />
                    <asp:ListItem Text="Thick (+ $2)" Value="Thick" />
                </asp:DropDownList>
            </div>

            <div class="checkbox"><label><asp:CheckBox ID ="sausageCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="recalculateTotalCost" /> Sausage (+ $2)</label></div>
            <div class="checkbox"><label><asp:CheckBox ID ="pepperoniCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="recalculateTotalCost" /> Pepperoni (+ $1.50)</label></div>
            <div class="checkbox"><label><asp:CheckBox ID ="onionsCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="recalculateTotalCost" /> Onions (+ $1)</label></div>
            <div class="checkbox"><label><asp:CheckBox ID ="greenPeppersCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="recalculateTotalCost" /> Green Peppers (+ $1)</label></div>

            
            <!-- This is The Text boxes with the customer info -->
            <h3>Deliver To: </h3>
            <div class="form-group">
                <label>Name: </label>
                <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <label>Address: </label>
                <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <br /> 
                <label>Zip: </label>
                <asp:TextBox ID="zipTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <label>Phone: </label>
                <asp:TextBox ID="phoneTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <!-- This section is for the payment and total cost -->
            <h2>Payment: </h2>
            <div class="radio"><label><asp:RadioButton ID="cashRadioButton" runat="server" GroupName="paymentType" Checked="true" /> Cash</label></div>
            <div class="radio"><label><asp:RadioButton ID="creditRadioButton" runat="server" GroupName="paymentType" /> Credit</label></div>
            
            <asp:Button ID="orderButton" runat="server" Text="Order" CssClass="btn btn-lg btn-primary" OnClick="orderButton_Click" />
            <p>&nbsp;</p>
            <asp:label ID="validationLabel" runat="server" Text="" CssClass="bg-danger" Visible="false"></asp:label>
            <h3>Total Cost: <asp:Label ID="totalCostLabel" runat="server" Text=""></asp:Label></h3>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </form>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
