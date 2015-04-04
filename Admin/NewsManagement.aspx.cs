using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_NewsManagement : System.Web.UI.Page
{
    public ClientScriptManager CSM;
    static string KtradeConnectionString = ConfigurationManager.ConnectionStrings["KtradeConnectionString"].ConnectionString;
    static SqlConnection KtradeConnection = new SqlConnection(KtradeConnectionString);
    static string AddNewTagString = "AddNewTag";
    static string AddExistingTagString = "AddExistingTag";
    static string DeleteTagString = "delete from NewsTags where Tag_id = @Tag_id and News_id = @News_id";
    SqlCommand AddNewTag = new SqlCommand(AddNewTagString, KtradeConnection);
    SqlCommand AddExistingTag = new SqlCommand(AddExistingTagString, KtradeConnection);
    SqlCommand DeleteTag = new SqlCommand(DeleteTagString, KtradeConnection);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        CSM = Page.ClientScript;
        if (KtradeConnection.State.ToString() == "Closed") KtradeConnection.Open();
    }
    
    protected void AddNewTagButton_Click(object sender, EventArgs e)
    {
        if (AddNewTag.Parameters.Count != 0) AddNewTag.Parameters.Clear();
        AddNewTag.CommandType = CommandType.StoredProcedure;
        SqlParameter Tag = new SqlParameter("@Tag", SqlDbType.NVarChar);        
        Tag.Value = NewTagTextBox.Text.ToString();
        Tag.Direction = ParameterDirection.Input;
        AddNewTag.Parameters.Add(Tag);
        
        SqlParameter News_id = new SqlParameter("@News_id", SqlDbType.Int);
        News_id.Value = NewsDropDownList.SelectedValue;
        News_id.Direction = ParameterDirection.Input;
        AddNewTag.Parameters.Add(News_id);

        AddNewTag.ExecuteNonQuery();
        CurrentTagsRepeater.DataBind();
        TagsDropDownList.DataBind();
        TagsUpdatePanel.Update();
    }
    
    protected void AddExistingTagButton_Click(object sender, EventArgs e)
    {
        if (AddExistingTag.Parameters.Count != 0) AddExistingTag.Parameters.Clear();
        AddExistingTag.CommandType = CommandType.StoredProcedure;
        SqlParameter Tag_id = new SqlParameter("@Tag_id", SqlDbType.Int);        
        Tag_id.Value = TagsDropDownList.SelectedValue;
        Tag_id.Direction = ParameterDirection.Input;
        AddExistingTag.Parameters.Add(Tag_id);
        
        SqlParameter News_id = new SqlParameter("@News_id", SqlDbType.Int);
        News_id.Value = NewsDropDownList.SelectedValue;
        News_id.Direction = ParameterDirection.Input;
        AddExistingTag.Parameters.Add(News_id);

        AddExistingTag.ExecuteNonQuery();
        CurrentTagsRepeater.DataBind();
        //TagsDropDownList.DataBind(); не сильно в общем-то надо
        TagsUpdatePanel.Update();
    }
    
        protected void CurrentTagsRepeaterCommand(object sender, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            DeleteTag.Parameters.AddWithValue("Tag_id", e.CommandArgument.ToString());
            DeleteTag.Parameters.AddWithValue("News_id", NewsDropDownList.SelectedValue.ToString());
            DeleteTag.ExecuteNonQuery();
            CurrentTagsRepeater.DataBind();
            TagsUpdatePanel.Update();   
        }
    }
}