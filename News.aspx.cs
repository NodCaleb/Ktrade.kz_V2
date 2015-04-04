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
    static string RequestTitleString = "select Header, Teaser from News where id = @Article";
    static string RequestTagString = "select Tag from Tags where id = @Tag_id";
    static string GetKeywordsString = "select Tag from	NewsTags as NT join Tags as T on T.id = NT.Tag_id where News_id = @News_id";
    SqlCommand RequestTitle = new SqlCommand(RequestTitleString, KtradeConnection);
    SqlCommand RequestTag = new SqlCommand(RequestTagString, KtradeConnection);
    SqlCommand GetKeywords = new SqlCommand(GetKeywordsString, KtradeConnection);

    protected int Positive(int SkipStep)
    {
        if (SkipStep < 0) return 0;
        return SkipStep;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.Header.Title = "Ktrade - новости портала";
        if (KtradeConnection.State.ToString() == "Closed") KtradeConnection.Open();
        
        int Article = -1;
        int Tag = -1;

        if (Request.QueryString["Article"] != null)
        {
            try
            {
                Article = Int16.Parse(Request.QueryString["Article"].ToString());

                RequestTitle.Parameters.AddWithValue("Article", Article);
                SqlDataReader TitleReader = RequestTitle.ExecuteReader();
                TitleReader.Read();
                Page.Header.Title = TitleReader["Header"].ToString();
                Page.MetaDescription = TitleReader["Teaser"].ToString();
                TitleReader.Close();
                
                string KeyWords = "";
                
                GetKeywords.Parameters.AddWithValue("News_id", Article);
                SqlDataReader KeyWordsReader = GetKeywords.ExecuteReader();
                while (KeyWordsReader.Read())
                {
                    KeyWords += KeyWordsReader["Tag"].ToString();
                    KeyWords += " ";
                }
                KeyWordsReader.Close();
                Page.MetaKeywords = KeyWords;
                
            }
            catch
            {
                Article = -1;
                Page.Header.Title = "Ktrade - новости портала";
            }

            NewsSource.SelectParameters["Article"].DefaultValue = Article.ToString();
            //Page.Title = "Новость";
        }
        else
        {
            NewsSource.SelectParameters["Article"].DefaultValue = "-1";
            Page.Header.Title = "Ktrade - новости портала";
        }
        if ((Request.QueryString["Tag"] != null) & (Request.QueryString["Article"] == null))
        {
            try
            {
                Tag = Int16.Parse(Request.QueryString["Tag"].ToString());
                
                RequestTag.Parameters.AddWithValue("Tag_id", Tag);
                SqlDataReader TagReader = RequestTag.ExecuteReader();
                TagReader.Read();
                Page.Header.Title += " (" + TagReader["Tag"].ToString() + ")";
                TagLabel.Text = " (" + TagReader["Tag"].ToString() + ")";
                TagReader.Close();
            }
            catch
            {
                Tag = -1;
            }
            
            NewsSource.SelectParameters["Tag_id"].DefaultValue = Tag.ToString();
        }
        else
        {
            NewsSource.SelectParameters["Tag_id"].DefaultValue = "-1";
        }
        if (Request.QueryString["Skip"] != null)
        {
            int Skip;
            try
            {
                Skip = Int16.Parse(Request.QueryString["Skip"].ToString());
            }
            catch
            {
                Skip = 0;
            }

            NewsSource.SelectParameters["Skip"].DefaultValue = Skip.ToString();

            PreviouseLink.NavigateUrl = "~/News.aspx?Skip=" + Positive(Skip - 5).ToString() + "&Tag=" + Tag.ToString();
            NextLink.NavigateUrl = "~/News.aspx?Skip=" + (Skip + 5).ToString() + "&Tag=" + Tag.ToString();
        }
        else
        {
            NewsSource.SelectParameters["Skip"].DefaultValue = "0";
            PreviouseLink.NavigateUrl = "~/News.aspx" + "?Tag=" + Tag.ToString();
            NextLink.NavigateUrl = "~/News.aspx?Skip=5" + "&Tag=" + Tag.ToString();
        }
        if (Article != -1)
        {
            PreviouseLink.NavigateUrl = "~/News.aspx?Article=" + (Article + 1).ToString();
            PreviouseLink.Text = "следующая >";
            NextLink.NavigateUrl = "~/News.aspx?Article=" + (Article - 1).ToString();
            NextLink.Text = "< предыдущая";
        }             
    }
}