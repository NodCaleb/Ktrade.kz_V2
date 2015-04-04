using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class News : System.Web.UI.Page
{
    static string KtradeConnectionString = ConfigurationManager.ConnectionStrings["KtradeConnectionString"].ConnectionString;
    static SqlConnection KtradeConnection = new SqlConnection(KtradeConnectionString);
    static string RequestTitleString = "select Header from News where id = @Article";
    SqlCommand RequestTitle = new SqlCommand(RequestTitleString, KtradeConnection);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (KtradeConnection.State.ToString() == "Closed") KtradeConnection.Open();
        Page.MetaDescription = "Каждый день мы выкладываем на спец-предложение один товар с большой скидкой. На странице товар дня вы можете видеть сегодняшнее спец предложение, а также товары, которые появятся на спец-предложении в ближайшие дни.";
    }
}