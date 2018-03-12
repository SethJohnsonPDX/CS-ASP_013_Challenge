<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CS_ASP_013_Challenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; height: 134px;">
    
        <asp:Image ID="bobImage" runat="server" Height="122px" ImageUrl="~/PapaBob.png" Width="120px" />
&nbsp;&nbsp; Papa Bob&#39;s Pizza and Software</div>
        <p>
            <asp:RadioButton ID="babyRadioButton" runat="server" GroupName="pizzaSize" Text="Baby Bob Size (10&quot;) - $10" />
            <br />
            <asp:RadioButton ID="mamaRadioButton" runat="server" GroupName="pizzaSize" Text="Mama Bob Size (13&quot;) - $13" />
            <br />
            <asp:RadioButton ID="papaRadioButton" runat="server" GroupName="pizzaSize" Text="Papa Bob Size (16&quot;) - $16" />
        </p>
        <asp:RadioButton ID="thinCrustRadioButton" runat="server" GroupName="pizzaCrust" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepDishRadioButton" runat="server" GroupName="pizzaCrust" Text="Deep Dish (+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni(+$1.50)" />
        <br />
        <asp:CheckBox ID="onionCheckBox" runat="server" Text="Onion (+$0.75)" />
        <br />
        <asp:CheckBox ID="greenPepCheckBox" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="redPepCheckBox" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2.00)" />
        <br />
        <p style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold">
            Papa Bob&#39;s <span style="color:red;">Special Deal</span></p>
        <p>
            Save $2.00 when you add Pepperoni, Green Peppers, and Anchovies OR Pepperoni, Green Peppers, and Onions<br />
            <br />
            <asp:Button ID="purchaseButton" runat="server" Text="Purchase" OnClick="purchaseButton_Click" />
            <br />
            <br />
            <asp:Label ID="purchaseLabel" runat="server"></asp:Label>
            <br />
            <br />
            Sorry, at this time you can only order one pizza online, and pick-up only - we need a better website!</p>
    </form>
</body>
</html>
