<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2.Default"  ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="TotalbuyLabel" runat="server" Text="Totalsumma:"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="InputTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="ValutaTextBox" runat="server" Text="kr"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="InputTextBox" Display="Dynamic" CssClass="errors">Du måste fylla i fältet.</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Display="Dynamic" Operator="GreaterThan" ValueToCompare="0" Type="Double" Text="Du måste skriva något över 0." ControlToValidate="InputTextBox" CssClass="errors"></asp:CompareValidator>

        </div>
        <div>
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="SendButton_Click"/>
        </div>
        <div id="ReceiptDiv" runat="server" visible="false">
            <div id="infoDiv">
                <h1>Hittepå AB ens</h1>
                <h4>Öppettider</h4>
                <p>Aldrig: 10-18</p>
            </div>
            <div id="buyDiv">
                <div>
                    <h2>Kvitto</h2>
                    <p>
                        Totalt:
                    <asp:Label CssClass="labels" ID="TotalSumLabel" runat="server"></asp:Label>
                    </p>
                </div>
                <div>
                    <p>
                        Rabattsats:
                    <asp:Label CssClass="labels" ID="DiscountPercentLabel" runat="server"></asp:Label>
                    </p>
                </div>
                <div>
                    <p>
                        Rabatt:
                    <asp:Label CssClass="labels" ID="TotalDiscountLabel" runat="server"></asp:Label>
                    </p>
                </div>
                <div>
                    <p>
                        Att betala:
                    <asp:Label CssClass="labels" ID="PayLabel" runat="server"></asp:Label>
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
