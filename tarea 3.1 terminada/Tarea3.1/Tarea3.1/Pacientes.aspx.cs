using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea3._1
{
    public partial class Pacientes : System.Web.UI.Page
    {
    
        protected void BInformacion_Click(object sender, EventArgs e)
        {

         
          /* foreach (GridViewRow row in GridView1.Rows)
            {
                if (Tid.Text == (row.Cells[0].Text))
                {
                    String info = ("---Nombre :" + row.Cells[1].Text + "\n---Edad :" + row.Cells[2].Text + "\n---Sexo :" + row.Cells[3].Text + "\n---Domicilio :"
                        + row.Cells[4].Text+","+row.Cells[5].Text+","+row.Cells[6].Text+"." + "\n---Telefono :" + row.Cells[7].Text + "\n---Seguro :" + row.Cells[8].Text);
                    Linformacion.Text = info;

                }
                else
                {
                    Linformacion.Text = ("Esa persona no se encuntra registrada");
                }
            }*/
        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            SqlPacientes.Insert();
         LimpiarCampos();
        }

        protected void LimpiarCampos()
        {
            Tid.Text = "";
            Tnombre.Text = "";
            Tedad.Text = "";
            Tcalle.Text = "";
            Tnumero.Text = "";
            Tciudad.Text = "";
            Ttelefono.Text = "";
        }


        protected void Bhospetalizados_Click1(object sender, EventArgs e)
        {
            int ninos = 0;
            int jovenes = 0;
            int adultos = 0;
            int hombres = 0;
            int mujeres = 0;
            float contador = 0;
            float contador2 = 0;
            Lninos.Text = "";
            Ljovenes.Text = "";
            Ladultos.Text = "";
            Lhombres.Text = "";
            Lmujeres.Text = "";

            foreach (GridViewRow row in GridView1.Rows)
            {
                if (int.Parse(row.Cells[2].Text) < 13)
                
                    ninos++;
                
                else if (int.Parse(row.Cells[2].Text) > 30)
                
                    adultos++;
                
                else if (int.Parse(row.Cells[2].Text) > 13 & int.Parse(row.Cells[0].Text) < 30)
                
                    jovenes++;
                
                contador++;

            }
            Lninos.Text += ((ninos / contador) * 100).ToString() + "%";
            Ljovenes.Text += ((jovenes / contador) * 100).ToString() + "%";
            Ladultos.Text += ((adultos / contador) * 100).ToString() + "%";
        
            foreach (GridViewRow row in GridView1.Rows)
            {

                if (int.Parse(row.Cells[3].Text) == 1)

                {
                    hombres++;
                }
                else if (int.Parse(row.Cells[3].Text) == 2)
                {
                    mujeres++;
                }
                contador2++;
            }
            Lhombres.Text = ((hombres/contador2)*100).ToString()+"%";
            Lmujeres.Text = ((mujeres / contador2) * 100).ToString()+"%";
     
        }

        protected void BConsultar_Click(object sender, EventArgs e)
        {
            int asegu = 0;
            int noAsegu = 0;
            float cant = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                if (int.Parse(row.Cells[8].Text) == 1)
                {
                    asegu++;
                }
                else if (int.Parse(row.Cells[8].Text) == 2)
                {
                    noAsegu++;
                }
                cant++;
            }
            Lasegurados.Text = ((asegu/cant)*100).ToString()+"%";
            Lnoasegurados.Text = ((noAsegu / cant) * 100).ToString()+"%";
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            SqlPacientes.Delete();
        }
    }
    
    
}