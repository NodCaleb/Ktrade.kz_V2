using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class rss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Change the page's ContentTpye to XML.
        Response.ContentType = "application/rss+xml";

        //Set the encoding of the page to UTF8 for international language.
        Response.ContentEncoding = Encoding.UTF8;

        //Create the XML writer instance
        XmlTextWriter rsswriter = new XmlTextWriter(Response.OutputStream, Encoding.UTF8);

        //Get the RSS source from the method which returns the datatable from db.
        DataTable rsssource = GetDataSet();

        //Create the RSS Feeds.
        CreateRSS(rsswriter, rsssource);

        rsswriter.Flush();
        Response.End();
    }

    private void CreateRSS(XmlTextWriter rsswriter, DataTable rsssource)
    {
        //Write the beginning part of the RSS Feeds.
        WriteRssOpening(rsswriter);

        //Write out the source items to RSS body one item by another. 
        WriteRssBody(rsswriter, rsssource);

        //End the RSS Feeds writing. Close the XML elements.
        WriteRssEnding(rsswriter);
    }

    private void WriteRssOpening(XmlTextWriter rsswriter)
    {
        String PItext = "type='text/rss' href='http://www.w3.org/2000/08/w3c-synd/style.css'";
        //rsswriter.w
        //rsswriter.WriteDocType("xml", null, null, null);
        rsswriter.WriteProcessingInstruction("xml-stylesheet", PItext);
        rsswriter.WriteStartElement("rss");
        rsswriter.WriteAttributeString("version", "2.0");
        rsswriter.WriteStartElement("channel");
        rsswriter.WriteElementString("title", "Новости Ktrade.kz");
        rsswriter.WriteElementString("link", "http://ktrade.kz/News.aspx");
        //rsswriter.WriteElementString("description", "This is a sample telling how to create rss feeds for a website.");
    }

    private void WriteRssBody(XmlTextWriter rsswriter, DataTable data)
    {
        //Loop the records in the RSS source table and write them out one by one.
        foreach (DataRow rssitem in data.Rows)
        {
            //start an item.
            rsswriter.WriteStartElement("item");

            //title element
            rsswriter.WriteElementString("title", rssitem["Title"].ToString());

            //author element
            //rsswriter.WriteElementString("author", rssitem["Author"].ToString());

            //link element
            //The RSS will navigate the user to the article page when he clicks on the link.
            rsswriter.WriteElementString("link", rssitem["Link"].ToString());

            //description element
            rsswriter.WriteElementString("description", rssitem["Description"].ToString());

            //date element
            rsswriter.WriteElementString("pubDate", rssitem["CreationDate"].ToString());

            //close this item.
            rsswriter.WriteEndElement();
        }
    }

    private void WriteRssEnding(XmlTextWriter rsswriter)
    {
        rsswriter.WriteEndElement();
        rsswriter.WriteEndElement();
    }

    private DataTable GetDataSet()
    {
        DataTable rsstable = new DataTable();

        //Set connention string
        string KtradeConnectionString = ConfigurationManager.ConnectionStrings["KtradeConnectionString"].ConnectionString;
        SqlConnection KtradeConnection = new SqlConnection(KtradeConnectionString);

        //Simply select all the records from the table
        //You can also just select the top 10 or top 20 records form the table and
        //order by the inserting date (desc) of them. 
        string NewsString = "select Header as Title, 'http://ktrade.kz/News.aspx' as Link, Body as description, CreationDate from News as Item where Published = 1 and DATEDIFF(DD, CreationDate, GETDATE()) < 90 order by CreationDate desc";

        //Use DataAdapter to fill the DataTable.
        SqlDataAdapter NewsAdapter = new SqlDataAdapter(NewsString, KtradeConnection);
        NewsAdapter.Fill(rsstable);

        return rsstable;
    }
}