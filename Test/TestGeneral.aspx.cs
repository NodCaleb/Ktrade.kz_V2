using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Common;

public partial class Test_TestGeneral : System.Web.UI.Page
{
    private static string CreateSalt(int size)
    {
        //Generate a cryptographic random number.
        RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        byte[] buff = new byte[size];
        rng.GetBytes(buff);

        // Return a Base64 string representation of the random number.
        return Convert.ToBase64String(buff);
    }    
    protected void Page_Load(object sender, EventArgs e)
    {

        //string SCVString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=""Statuses.csv"";Extended Properties=""text;HDR=Yes;FMT=Delimited"";";
        //TestLabel.Text = DateTime.Now.TimeOfDay.ToString();
        //using (OleDbConnection SCVConnection = new OleDbConnection(SCVString))
        //{
        //	SCVConnection.Open();
        //}
        //if (Session["Xrate"] != null)
        //{
        //    TestLabel.Text = Session["Xrate"].ToString();
        //}
        //else	
        //{
        //    TestLabel.Text = "[]";
        //}
        //if (Request.QueryString["Param"] != null)
        //{
        //    TestLabel.Text = Request.QueryString["Param"].ToString();
        //}
        //else
        //{
        //    TestLabel.Text = CreateSalt(18); //"No parameter";
        //}
        Session["Customer_id"] = "-5";
        //Session.Contents.Remove("Customer_id");
        if (Session["Customer_id"]!=null)
        {
        	TestLabel.Text = Session["Customer_id"].ToString();
        }
        else
        {
        	TestLabel.Text = "No parameter";
        }
        //if (Session["user_id"])
    }
}