using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace GridPopupMenu {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Init(object sender, EventArgs e) {
            ASPxGridView1.DataSource = GetDataTable();
            ASPxGridView1.KeyFieldName = "ID";
        }

        private DataTable GetDataTable() {
            DataTable table = new DataTable();
            table.Columns.Add("ID", typeof(int));
            table.Columns.Add("Name", typeof(string));
            table.Columns.Add("Group", typeof(string));
            table.Rows.Add(1, "Ann", "Group 1");
            table.Rows.Add(2, "Bill", "Group 1");
            table.Rows.Add(3, "Dave", "Group 2");
            return table;
        }
        protected void Page_Load(object sender, EventArgs e) {
            ASPxGridView1.DataBind();
        }

    }
}
