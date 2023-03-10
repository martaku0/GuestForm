using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace GuestForm
{
    public partial class GuestForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           lbOnlineValue.Text = Application.Get("usersOnline").ToString();
           lbTotalValue.Text = Application.Get("usersTotal").ToString();
        }

        private void AddXmlContent(XmlDocument doc, XmlElement element, string tag, string value)
        {
            XmlElement newElement = doc.CreateElement(tag);
            XmlText text = doc.CreateTextNode(value);
            element.AppendChild(newElement);
            newElement.AppendChild(text);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                XmlDocument document = new XmlDocument();
                document.Load(Server.MapPath("book.xml"));
                XmlElement newElement;
                newElement = document.CreateElement("guest");
                document.DocumentElement.PrependChild(newElement);
                AddXmlContent(document, newElement, "name", tbName.Text);
                AddXmlContent(document, newElement, "email", tbEmail.Text);
                AddXmlContent(document, newElement, "inscription", tbInscription.Text);
                document.Save(Server.MapPath("book.xml"));
                Response.Redirect("View.aspx");
            }
        }
    }
}