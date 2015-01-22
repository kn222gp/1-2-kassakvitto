<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        </div>
        <div>
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="SendButton_Click" />
        </div>
        <div id="ReceiptDiv" runat="server">
            <h2>Kvitto</h2>
            <div>
                <p>
                    Totalt:
                </p>
                <asp:Label ID="TotalSumLabel" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <p>
                    Rabattsats:
                </p>
                <asp:Label ID="DiscountPercentLabel" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <p>
                    Rabatt:
                </p>
                <asp:Label ID="TotalDiscount" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <p>
                    Att betala:
                </p>
                <asp:Label ID="Pay" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
