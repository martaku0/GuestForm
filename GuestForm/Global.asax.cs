using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace GuestForm
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            string JQueryVer = "1.11.3";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/js/jquery-" + JQueryVer + ".min.js",
                DebugPath = "~/js/jquery-" + JQueryVer + ".js",
                CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".min.js",
                CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "window.jQuery"
            });

            Application.Add("usersOnline", 0);
            Application.Add("usersTotal", 0);
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(Application.Get("usersOnline").ToString());
            int j = Convert.ToInt32(Application.Get("usersTotal").ToString());
            Application.Set("usersOnline", ++i);
            Application.Set("usersTotal", ++j);
        }

        protected void Session_End(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(Application.Get("usersOnline").ToString());
            Application.Set("usersOnline", --i);
        }
    }
}