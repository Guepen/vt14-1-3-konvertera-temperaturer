<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Temperaturer.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Konvertera temperaturer</h1>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        <%--Första Värdet--%>
    <div>
        <p>Starttemperatur:</p>
        <asp:TextBox ID="FirstTemp" runat="server" Text=""></asp:TextBox>
        <asp:RequiredFieldValidator ID="NotEmpty" runat="server" ErrorMessage="Fyll i en starttemperatur" ControlToValidate="FirstTemp" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="TypeCheck" runat="server" ErrorMessage="Du måste ange ett heltal" ControlToValidate="FirstTemp" Display="Dynamic" Type="Integer" Operator="DataTypeCheck" Text="*"></asp:CompareValidator>
    </div>

        <%--Andra Värdet--%>
    <div>
        <p>Sluttemperatur</p>
        <asp:TextBox ID="SecondTemp" runat="server" Text=""></asp:TextBox>
        <asp:RequiredFieldValidator ID="NotEmpty2" runat="server" ErrorMessage="Fyll i en sluttemperatur" ControlToValidate="SecondTemp" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="GreatherThanFirst" runat="server" ErrorMessage="Sluttemperaturen måste vara högre än starttemperaturen" ControlToValidate="SecondTemp" Operator="GreaterThan" Text="*" ControlToCompare="FirstTemp" Display="Dynamic" Type="Integer"></asp:CompareValidator>
        <asp:CompareValidator ID="TypeCheck2" runat="server" ErrorMessage="Du måste ange ett heltal" ControlToValidate="SecondTemp" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" Text="*"></asp:CompareValidator>
    </div>

        <%--Tredje Värdet--%>
    <div>
        <p>Temperatursteg</p>
        <asp:TextBox ID="ThirdTemp" runat="server" Text=""></asp:TextBox>
        <asp:RequiredFieldValidator ID="NotEmpty3" runat="server" ErrorMessage="Fyll i ett temperatursteg" ControlToValidate="ThirdTemp" Text="*"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Ange ett värde mellan 1-100" MaximumValue="100" MinimumValue="1" ControlToValidate="ThirdTemp" Text="*" Display="Dynamic" Type="Integer"></asp:RangeValidator>
        <asp:CompareValidator ID="TypeCheck3" runat="server" ErrorMessage="Du måste ange ett heltal" Type="Integer" ControlToValidate="ThirdTemp" Operator="DataTypeCheck" Text="*"></asp:CompareValidator>
    </div>

        <%--Vad att konvertera --%>
    <div>
        <asp:Label ID="TypeToConvert" runat="server" Text="Typ av konvertering"></asp:Label>
    </div>
    <div>
        <asp:RadioButton ID="CF" runat="server" Text="Celcius till Fahrenheit" GroupName="Convert" Checked="true" />
    </div>
        <asp:RadioButton ID="FC" runat="server" Text="Fahrenheit till Celcius" GroupName="Convert" Checked="false" />
    </div>
        <%--Knapp för konvertering--%>
    <div>
        <asp:Button ID="Send" runat="server" Text="Konvertera" OnClick="Send_Click"/>
    </div>

    <%-- Tabellen --%>
    <div>
        <asp:Table ID="TempTable" runat="server" Visible="false" CssClass="Table"></asp:Table>
    </div>
    </form>
</body>
</html>
