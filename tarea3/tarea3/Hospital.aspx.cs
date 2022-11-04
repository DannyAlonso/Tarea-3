using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarea3
{
    public partial class Hospital : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BInformacion_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (Tnombre.Text==(row.Cells[1].Text))
                {
                    String info = ("Edad :"+row.Cells[0].Text+"\n---Nombre :" + row.Cells[1].Text +"\n---Sexo :" + row.Cells[2].Text+ "\n---Domicilio :"
                        + row.Cells[3].Text +"\n---Telefono :" + row.Cells[4].Text + "\n---Seguro :" + row.Cells[5].Text );
                Linformacion.Text = info;
                
                }else
                {
                    Linformacion.Text = ("Esa persona no se encuntra registrada");
                }           
            }
        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            SqlHospital.Insert();
        }

      

        protected void Bhospetalizados_Click1(object sender, EventArgs e)
        {

            int ninos = 0;
            int jovenes = 0;
            int adultos = 0;
            int hombres = 0;
            int mujeres = 0;

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (int.Parse(row.Cells[0].Text) < 13)
                {
                    ninos++;
                }
                else if (int.Parse(row.Cells[0].Text) > 30)
                {
                    adultos++;
                }
                else if (int.Parse(row.Cells[0].Text) > 13 || int.Parse(row.Cells[0].Text) < 30)
                {
                    jovenes++;
                }
               
            }
            Lninos.Text += ninos.ToString();
            Ljovenes.Text += jovenes.ToString();
            Ladultos.Text += adultos.ToString();
            foreach (GridViewRow row in GridView1.Rows)
            {
            
                if (int.Parse(row.Cells[2].Text) == 7)
                {
                    hombres++;
                }
                else if (int.Parse(row.Cells[2].Text) == 8)
                { 
                 mujeres++;
                }
            }
            Lhombres.Text = hombres.ToString();
            Lmujeres.Text = mujeres.ToString();
        }

        protected void BConsultar_Click(object sender, EventArgs e)
        {
            int asegu = 0;
            int noAsegu = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {
              
                if (int.Parse(row.Cells[5].Text) == 7)
                {
                    asegu++;
                }
                else if (int.Parse(row.Cells[5].Text) == 8)
                {
                    noAsegu++;
                }
            }
            Lasegurados.Text = asegu.ToString();
            Lnoasegurados.Text = noAsegu.ToString();
        }
    }
}