<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="font-size:x-large; margin-top: 24px;" align="center"> Student Information Manager</div>
    <br/>

  
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="height: 20px; width: 157px"></td>
            <td style="height: 20px; width: 113px">ID</td>
            <td style="height: 20px">
                <asp:TextBox ID="ID" runat="server" Font-Size="Medium" Width="594px"></asp:TextBox>
                <asp:Button ID="GetButton" runat="server" BackColor="#9966FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="GetButton_click" Text="Get" Width="125px" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">Name</td>
            <td>
                <asp:TextBox ID="Name" runat="server" Font-Size="Medium" Width="592px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">Country</td>
            <td>
                <asp:DropDownList ID="Country" runat="server" Height="16px" style="margin-right: 258" Width="601px">
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>Bulgaria</asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>Turkey</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">Age</td>
            <td>
                <asp:TextBox ID="Age" runat="server" Font-Size="Medium" Width="593px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">Contact</td>
            <td>
                <asp:TextBox ID="Contact" runat="server" Font-Size="Medium" Width="592px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 20px; width: 157px"></td>
            <td style="width: 113px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">&nbsp;</td>
            <td>
                <asp:Button ID="InsertButton" runat="server" BackColor="#9966FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="InsertButton_Click" Text="Insert" Width="125px" />
                <asp:Button ID="UpdateButton" runat="server" BackColor="#9966FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="UpdateButton_click" Text="Update" Width="125px" />
                <asp:Button ID="DeleteButton" runat="server" BackColor="#9966FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="DeleteButton_click" OnClientClick="return confirm ('are you sure you want ToolTip delete this entry?'); " Text="Delete" Width="125px" />
                <asp:Button ID="SearchButton" runat="server" BackColor="#9966FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="SearchButton_click" Text="Search" Width="125px" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 157px">&nbsp;</td>
            <td style="width: 113px">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" style="margin-left: 0px" Width="610px">
                </asp:GridView>
            </td>
        </tr>
    </table>

  
</asp:Content>
