using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Otel_Uygulamasi
{
    public partial class odasatis : Form
    {
        public odasatis()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = .; Database=DB_Bilgi_Hotel;Trusted_Connection=True;");
        List<string> odakontrol = new List<string>();
        private void odasatis_Load(object sender, EventArgs e)
        {
            dtp3.MinDate = DateTime.Now;
            dtp1.MinDate = DateTime.Now;
            dtp2.MinDate = DateTime.Now;
            odasorgula();
        }
        public void odasorgula() //ODA SORGULAMA METHODU
        {
            odakontrol.Clear();
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlCommand sorgu = new SqlCommand("sp_TarihlerArasiDurum", baglanti);
            sorgu.CommandType = CommandType.StoredProcedure;
            sorgu.Parameters.AddWithValue("@ilktarih", dtp1.Value.ToString("MM / dd / yyyy HH: mm:ss"));
            sorgu.Parameters.AddWithValue("@ikincitarih", dtp2.Value.ToString("MM / dd / yyyy HH: mm:ss"));
            SqlDataReader dr = sorgu.ExecuteReader();
            while (dr.Read())
            {
                odakontrol.Add(dr[0].ToString());

            }
            baglanti.Close();
            dr.Close();

            foreach (Button x in groupBox1.Controls) //GROUPBOX1
            {
                if (odakontrol.Contains(x.Text))
                {
                    x.BackColor = Color.Red;
                }
                else
                {
                    x.BackColor = Color.Green;
                }
            }

            foreach (Button x in groupBox2.Controls) //GROUPBOX2
            {
                if (odakontrol.Contains(x.Text))
                {
                    x.BackColor = Color.Red;
                }
                else
                {
                    x.BackColor = Color.Green;
                }
            }

            foreach (Button x in groupBox3.Controls) //GROUPBOX3
            {
                if (odakontrol.Contains(x.Text))
                {
                    x.BackColor = Color.Red;
                }
                else
                {
                    x.BackColor = Color.Green;
                }
            }
            foreach (Button x in groupBox4.Controls) //GROUPBOX4
            {
                if (odakontrol.Contains(x.Text))
                {
                    x.BackColor = Color.Red;
                }
                else
                {
                    x.BackColor = Color.Green;
                }
            }

        }
        private void btnsorgula_Click(object sender, EventArgs e) //ODA DURUM SORGULAMA
        {
            odasorgula();
            
        }

        private void btnsatis_Click(object sender, EventArgs e)
        {
            grpsatis.Visible = true;
            grprezarvasyon.Visible = false;
        }

        private void btnrezarvasyon_Click(object sender, EventArgs e)
        {
            grpsatis.Visible = false;
            grprezarvasyon.Visible = true;
        }

        private void button1_Click(object sender, EventArgs e)//ODA ÖZELLİKLERİ
        {
            
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }

            Button btn = (Button)sender;
            if (btn.BackColor==Color.Green)
            {
                SqlCommand sorgu = new SqlCommand("sp_OdaOzellikGetirme", baglanti);
                sorgu.CommandType = CommandType.StoredProcedure;
                sorgu.Parameters.AddWithValue("@odaid",btn.Text);
                SqlDataReader dr=sorgu.ExecuteReader();

                while (dr.Read())
                {
                    txtodanosorgu.Text = dr[0].ToString();
                    txtodafiyat2.Text = dr[2].ToString();
                    txtodakat2.Text=dr[14].ToString();
                    txtodaaciklama2.Text=dr[3].ToString();
                    txtodano.Text= dr[0].ToString();

                    chcminibar.Checked = Convert.ToBoolean(dr[4]);
                    chcbalkon.Checked = Convert.ToBoolean(dr[9]);
                    chcklima.Checked = Convert.ToBoolean(dr[5]);
                    chckurutma.Checked = Convert.ToBoolean(dr[6]);
                    chctv.Checked = Convert.ToBoolean(dr[10]);
                    chcwifi.Checked = Convert.ToBoolean(dr[7]);
                    chckasa.Checked = Convert.ToBoolean(dr[8]);
                }
            }
            else
            {
                MessageBox.Show("Oda Müsait Değildir");
            }
            baglanti.Close();
        }
        
        private void btnsatisyap_Click(object sender, EventArgs e)//SATIŞ YAP
        {
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlCommand sorgu = new SqlCommand("sp_indirimsorgu", baglanti);
            sorgu.CommandType = CommandType.StoredProcedure;
            sorgu.Parameters.AddWithValue("@gelentarih",dtp3.Value.ToString("MM / dd / yyyy HH: mm:ss"));
            int indirim = Convert.ToInt32(sorgu.ExecuteScalar());
            txtindirimorani.Text = indirim.ToString();
            baglanti.Close();

            DateTime ilktarih = dtp3.Value;
            DateTime ikincitarih = dtp4.Value;
           
                TimeSpan gunsayisi = (ikincitarih - ilktarih);
                double gunfarki = gunsayisi.TotalDays;
                double odatutar = Convert.ToDouble(txtodafiyat2.Text) * gunfarki;
                txtfark.Text = Convert.ToString(gunfarki);
                if (indirim > 0)
                {
                    double indirimson = (odatutar / 100) * indirim;
                    odatutar = odatutar - indirimson;
                    txttutar.Text = odatutar.ToString();
                }
                else
                {
                    txttutar.Text = odatutar.ToString();
                }
            
        
            baglanti.Close();
            
        }

        private void dtp4_ValueChanged(object sender, EventArgs e)
        {
            
        }

        private void dtp3_ValueChanged(object sender, EventArgs e)
        {
            dtp4.MinDate = dtp3.Value;
        }

        private void dtp1_ValueChanged(object sender, EventArgs e)
        {
            dtp2.MinDate = dtp1.Value;
        }
    }
}
