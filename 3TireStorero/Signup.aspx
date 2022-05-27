<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Signup.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 0px auto; padding-left: 370px; padding-right: 30px;overflow: auto;">  
        <div>  
            <table width="50%">  
                <tr>  
                    <td colspan="2" style="background-color: Green; height: 30px;color: White;" align="center">  
                        User Registration  
                    </td>  
                </tr>  
                <tr>  
                    <td> Name </td>  
                    <td>  
           <asp:TextBox ID="txtname" Width="150px" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        Address </td>  
                    <td>  
                        <asp:TextBox ID="txtAddress" Width="150px" runat="server"></asp:TextBox>
            
                    </td>  
                </tr>  
                <tr>  
                    <td> EmailID </td>  
             <td>  
            <asp:TextBox ID="txtEmailid" Width="150px" runat="server"></asp:TextBox>  
             </td>  
                </tr>  
                <tr>  
                    <td> Mobile Number   </td>  
                    <td>  
            <asp:TextBox ID="txtmobile" Width="150px" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td align="center" colspan="2">  
         <asp:Button ID="BtnSave" runat="server" Width="100px" Text="Save" OnClick="BtnSave_Click" />  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </div>
    </form>
</body>
</html>
