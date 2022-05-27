using System;
using BusinessObject;
using BusinessLogic;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    UserBO objUserBO = new UserBO();
    UserBL objUserBL = new UserBL();


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        objUserBO.Name = txtname.Text;
        objUserBO.Address = txtAddress.Text;
        objUserBO.EmailID = txtEmailid.Text;
        objUserBO.MobileNumber = txtmobile.Text;

        int returnVal = 0;
        returnVal= objUserBL.saveUserRegistration(objUserBO);
        if (returnVal != 0)
        {
            Response.Write("<Script>alert('Data Insert Successful')</Script>");
            txtAddress.Text = "";
            txtEmailid.Text = "";
            txtmobile.Text = "";
            txtname.Text = "";
        }
    }

   
}