using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;

namespace _006_FormSample
{
    public partial class Default : System.Web.UI.Page
    {

        protected void OkButton_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length != 0)
            {
                string greeting = "Привет, " + TextBox1.Text + "!";
                Label1.Text = greeting;
            }
            else {
                string greeting = "Могли бы что-нибудь написать...";
                Label1.Text = greeting;
            }
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Обновление текста в серверном элементе управления
            Calendar1.VisibleDate = DateTime.Parse("10.06.2020");
            Calendar1.SelectedDate = Calendar1.VisibleDate;

            Calendar2.VisibleDate = DateTime.Parse("10.07.2020");
            Calendar2.SelectedDate = Calendar2.VisibleDate;

            Calendar3.VisibleDate = DateTime.Parse("10.08.2020");
            Calendar3.SelectedDate = Calendar3.VisibleDate;

            if (!IsPostBack)
            {
                refreshdata();

            }
        }

        protected void ItemsBulletedList_Click(object sender, System.Web.UI.WebControls.BulletedListEventArgs e)
        {

            // Change the message displayed in the label based on the index
            // of the list item that was clicked.
            switch (e.Index)
            {
                case 0:
                    Message.Text = "You clicked list item 1.";
                    break;
                case 1:
                    Message.Text = "You clicked list item 2.";
                    break;
                case 2:
                    Message.Text = "You clicked list item 3.";
                    break;
                default:
                    throw new Exception("You did not click a valid list item.");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string b = "Yep, you are right!";
            Button2.Text = b;
            Response.Redirect("https://developer.mozilla.org/ru/docs/Web/CSS/CSS_Flexible_Box_Layout/Выравнивание_элементов_в_Flex_контейнере",false);

        }

        protected void Button1_Click(object sender, System.EventArgs e)
        {
            if (Label5.Visible)
            {
                Label5.Visible = false;
            }
            else
            {
                Label5.Visible = true;
            }
                
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Listbox1.Items.Count < 3)
            {
                for (int i = 3; i <= 5; i++)
                {
                    Listbox1.Items.Add("Option " + i.ToString());
                    DropdownList2.Items.Add("Option " + i.ToString());
                    CheckboxList2.Items.Add("Option " + i.ToString());
                    RadiobuttonList1.Items.Add("Option " + i.ToString());
                }
            }
        }
        //MultiView
        protected void btnview1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        protected void btnview2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        protected void btnview3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }
        //Widard
        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 3)
            {
                refreshdata();
            }

        }

        private void refreshdata()
        {
            Label6.Text = TextBox1.Text;
            Label7.Text = TextBox2.Text;
            Label8.Text = TextBox3.Text;
            Label9.Text = TextBox4.Text;
            Label10.Text = TextBox5.Text;
            Label11.Text = TextBox6.Text;
            Label12.Text = TextBox7.Text;


        }
    }
}