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
    public partial class kampanyaekle : Form
    {
        public kampanyaekle()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = .; Database=DB_Bilgi_Hotel;Trusted_Connection=True;");
        private void btnKampanyaKaydet_Click(object sender, EventArgs e) ///KAMPANYA EKLE 
        {
            baglanti.Open();
            try
            {
                SqlCommand sorgu = new SqlCommand("sp_KampanyaEkle", baglanti);
                sorgu.CommandType = CommandType.StoredProcedure;
                sorgu.Parameters.AddWithValue("@kampanyaAd", txtKampanyaAd.Text);
                sorgu.Parameters.AddWithValue("@indirimorani", txtIndirimOrani.Text);
                sorgu.Parameters.AddWithValue("@ilktarih", dtpilktarih.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@ikincitarih", dtpikincitarih.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@aciklama", txtKampanyaAciklama.Text);
                sorgu.ExecuteNonQuery();
                MessageBox.Show("Kampanya Eklendi");
                txtKampanyaAd.Clear();
                txtIndirimOrani.Clear();
                txtKampanyaAciklama.Clear();

            }
            catch (Exception)
            {
                MessageBox.Show("Kampanya Ekleme Başarısız !!!");
            }
            finally
            {
                listegetir();
                baglanti.Close();
            }
        }

        private void btnGetir_Click(object sender, EventArgs e) // ADA GÖRE KAMPANYA GETİR
        {
            groupBox2.Visible = true;
            groupBox1.Visible = false;
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand("select KampanyaBilgileri, KampanyaIndirimOran, KampanyaBaslangicZaman, KampanyaBitisTarihi, KampanyaTanim from tbl_Kampanyalar where KampanyaBilgileri='" + listView1.SelectedItems[0].SubItems[0].Text +"'",baglanti);
            SqlDataReader dr=sorgu.ExecuteReader();
            while (dr.Read())
            {
                txtad2.Text = dr[0].ToString();
                txtindirim2.Text = dr[1].ToString();
                dtpbaslangic2.Value = Convert.ToDateTime(dr[2]);
                dtpbitis2.Value = Convert.ToDateTime(dr[3]);
                txtaciklama2.Text=dr[4].ToString();
            } 
            baglanti.Close();
            
        }

        private void btnyenikampanya_Click(object sender, EventArgs e) //GROUPBOX KONTROLU
        {
            groupBox1.Visible = true;
            groupBox2.Visible = false;
        }

        private void btnGuncelle_Click(object sender, EventArgs e) //KAMPANYA GÜNCELLE
        {
             if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            try
            {
                SqlCommand sorgu = new SqlCommand("sp_KampanyaGuncelle", baglanti);
                sorgu.CommandType = CommandType.StoredProcedure;
                sorgu.Parameters.AddWithValue("@kampanyaAd", txtad2.Text);
                sorgu.Parameters.AddWithValue("@indirimorani", txtindirim2.Text);
                sorgu.Parameters.AddWithValue("@ilktarih", dtpbaslangic2.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@ikincitarih", dtpbitis2.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@aciklama", txtaciklama2.Text);
                sorgu.ExecuteNonQuery();
                MessageBox.Show("Kampanya Güncellendi");
                txtKampanyaAd.Clear();
                txtIndirimOrani.Clear();
                txtKampanyaAciklama.Clear();

            }
            catch (Exception)
            {
                MessageBox.Show("Kampanya Güncelleme Başarısız !!!");
            }
            finally
            {
                listegetir();
                baglanti.Close();
            }
        }
        public void listegetir() //LİSTBOXA VERİ ÇEKME METODU
        {

            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            listView1.Items.Clear();
            listView1.View = View.Details;
            listView1.GridLines = true;
            listView1.FullRowSelect = true;
            SqlCommand sorgu = new SqlCommand("select KampanyaBilgileri, KampanyaIndirimOran, KampanyaBaslangicZaman, KampanyaBitisTarihi, KampanyaTanim from tbl_Kampanyalar", baglanti);
            SqlDataReader dr=sorgu.ExecuteReader();
            while (dr.Read())
            {
                ListViewItem ekle =new ListViewItem(dr[0].ToString());
                ekle.SubItems.Add(dr[1].ToString());
                ekle.SubItems.Add(dr[2].ToString());
                ekle.SubItems.Add(dr[3].ToString());
                ekle.SubItems.Add(dr[4].ToString());

                listView1.Items.Add(ekle);
            }
        }

        private void kampanyaekle_Load(object sender, EventArgs e)
        {   
            
            listegetir();
            baglanti.Close();
        }
    }
}
