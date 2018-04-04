<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validation.aspx.cs" Inherits="WebAppValidation.validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                <br />
                Validated Control Demo:<br />
            </h2>
            <table style="width:100%;">
                <tr>
                    <td>Full Name</td>
                    <td>
                        <asp:TextBox ID="fNameTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="fNameRFV" runat="server" ControlToValidate="fNameTextBox" Display="Dynamic" ErrorMessage="You must enter a name." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Select a Semester</td>
                    <td>
                        <asp:ListBox ID="semesterListBox" runat="server">
                            <asp:ListItem Selected="True">None</asp:ListItem>
                            <asp:ListItem>Fall 2018</asp:ListItem>
                            <asp:ListItem>Spring 2019</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="semesterRFV" runat="server" ControlToValidate="semesterListBox" Display="Dynamic" ErrorMessage="Please select a semester." ForeColor="Red" InitialValue="None"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>
                        <asp:TextBox ID="quantityTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="quantityCV" runat="server" ControlToValidate="quantityTextBox" Display="Dynamic" ErrorMessage="Quantity must be greater than zero." ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Days</td>
                    <td>
                        <asp:TextBox ID="daysTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="daysRV" runat="server" ControlToValidate="daysTextBox" Display="Dynamic" ErrorMessage="Days must be between 1 and 31" ForeColor="Red" MaximumValue="31" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Address</td>
                    <td>
                        <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="emailREV" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="Please enter a valid US email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <asp:Button ID="submitButton" runat="server" Text="Submit" />
    </form>
</body>
</html>
