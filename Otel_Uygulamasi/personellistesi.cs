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
    public partial class personellistesi : Form
    {
        public personellistesi()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection("Server = .; Database=DB_Bilgi_Hotel;Trusted_Connection=True;");
        List<KeyValuePair<int, string>> gorevlistesi = new List<KeyValuePair<int, string>>();
        List<KeyValuePair<int, string>> kategorilistesi = new List<KeyValuePair<int, string>>();
        List<KeyValuePair<int, string>> vardiyalistesi = new List<KeyValuePair<int, string>>();
        List<KeyValuePair<int, string>> yetkilistesi = new List<KeyValuePair<int, string>>();
        public void personelliste() //LİSTBOXA VERİ ÇEKME METODU
        {

            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            listView1.Items.Clear();
            SqlCommand sorgu = new SqlCommand("sp_PersonelGetir", baglanti);
            sorgu.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = sorgu.ExecuteReader();
            while (dr.Read())
            {
                ListViewItem ekle = new ListViewItem(dr[0].ToString());
                ekle.SubItems.Add(dr[1].ToString());
                ekle.SubItems.Add(dr[2].ToString());
                ekle.SubItems.Add(dr[3].ToString());
                ekle.SubItems.Add(dr[4].ToString());
                ekle.SubItems.Add(dr[5].ToString());
                ekle.SubItems.Add(dr[6].ToString());
                ekle.SubItems.Add(dr[7].ToString());
                ekle.SubItems.Add(dr[8].ToString());
                ekle.SubItems.Add(dr[9].ToString());

                listView1.Items.Add(ekle);
            }
        }

        private void personellistesi_Load(object sender, EventArgs e)
        {
            personelliste();
            baglanti.Close();

            SqlCommand sorgugorev = new SqlCommand("SELECT GorevId,GorevAd FROM tbl_Gorevler", baglanti); //GÖREV LİSTESİ
            baglanti.Open();
            SqlDataReader dr = sorgugorev.ExecuteReader();
            while (dr.Read())
            {
                gorevlistesi.Add(new KeyValuePair<int, string>((int)dr[0], (string)dr[1]));
            }
            cmbgorev.DataSource = gorevlistesi.ToList();
            cmbgorev.ValueMember = "Key";
            cmbgorev.DisplayMember = "Value";

            cmbgorev2.DataSource = gorevlistesi.ToList();
            cmbgorev2.ValueMember = "Key";
            cmbgorev2.DisplayMember = "Value";
            dr.Close();
            baglanti.Close();

            SqlCommand sorgukategori = new SqlCommand("select PersonelKategoriId,PersonelKategoriTip from tbl_PersonelKategori", baglanti); //KATEGORİ LİSTESİ
            baglanti.Open();
            SqlDataReader dr2 = sorgukategori.ExecuteReader();
            while (dr2.Read())
            {
                kategorilistesi.Add(new KeyValuePair<int, string>((int)dr2[0], (string)dr2[1]));
            }
            cmbkategori.DataSource = kategorilistesi.ToList();
            cmbkategori.ValueMember = "Key";
            cmbkategori.DisplayMember = "Value";
            cmbkategori2.DataSource = kategorilistesi.ToList();
            cmbkategori2.ValueMember = "Key";
            cmbkategori2.DisplayMember = "Value";
            dr2.Close();
            baglanti.Close();

            SqlCommand sorguvardiya = new SqlCommand("select VardiyaId,VardiyaTipi from tbl_Vardiya", baglanti); //VARDİYA LİSTESİ
            baglanti.Open();
            SqlDataReader dr3 = sorguvardiya.ExecuteReader();
            while (dr3.Read())
            {
                vardiyalistesi.Add(new KeyValuePair<int, string>((int)dr3[0], (string)dr3[1]));
            }
            cmbvardiya.DataSource = vardiyalistesi.ToList();
            cmbvardiya.ValueMember = "Key";
            cmbvardiya.DisplayMember = "Value";
            cmbvardiya2.DataSource = vardiyalistesi.ToList();
            cmbvardiya2.ValueMember = "Key";
            cmbvardiya2.DisplayMember = "Value";
            dr3.Close();
            baglanti.Close();

            SqlCommand sorgyetki= new SqlCommand("select YetkiId,YetkiAd from tbl_Yetkiler", baglanti); //YETKİ LİSTESİ
            baglanti.Open();
            SqlDataReader dr4 = sorgyetki.ExecuteReader();
            while (dr4.Read())
            {
                yetkilistesi.Add(new KeyValuePair<int, string>((int)dr4[0], (string)dr4[1]));
            }
            cmbyetki.DataSource = yetkilistesi.ToList();
            cmbyetki.ValueMember = "Key";
            cmbyetki.DisplayMember = "Value";
            cmbyetki2.DataSource = yetkilistesi.ToList();
            cmbyetki2.ValueMember = "Key";
            cmbyetki2.DisplayMember = "Value";
            dr4.Close();
            baglanti.Close();
        }

        private void btnkaydet_Click(object sender, EventArgs e)
        {
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            try
            {
                
                SqlCommand sorgu = new SqlCommand("sp_Personelkayit", baglanti);
                sorgu.CommandType = CommandType.StoredProcedure;
                sorgu.Parameters.AddWithValue("@PersonelAd", txtad.Text);
                sorgu.Parameters.AddWithValue("@PersonelSoyad", txtsoyad.Text);
                sorgu.Parameters.AddWithValue("@PersonelTcKimlik", txttcno.Text);
                sorgu.Parameters.AddWithValue("@PersonelDogumTarihi", dtpdogumtarihi.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@PersonelEposta", txteposta.Text);
                sorgu.Parameters.AddWithValue("@PersonelTelefon", txttelefon.Text);
                sorgu.Parameters.AddWithValue("@PersonelIseGirisTarihi", dtpisegiris.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@PersonelSaatlikUcret", txtsaatlikucret.Text);
                sorgu.Parameters.AddWithValue("@PersonelMaas", txtmaas.Text);
                sorgu.Parameters.AddWithValue("@PersonelSicilNo", txtsicilno.Text);
                sorgu.Parameters.AddWithValue("@GorevId", cmbgorev.SelectedValue);
                sorgu.Parameters.AddWithValue("@PersonelKategoriID", cmbkategori.SelectedValue);
                sorgu.Parameters.AddWithValue("@PersonelAdres", txtadres.Text);
                sorgu.Parameters.AddWithValue("@vardiyaId", cmbvardiya.SelectedValue);
                sorgu.Parameters.AddWithValue("@kullaniciad", txtkullaniciadi.Text);
                sorgu.Parameters.AddWithValue("@sifre", txtsifreson.Text);
                sorgu.Parameters.AddWithValue("@yetkiid", cmbyetki.SelectedValue);
                sorgu.ExecuteNonQuery();
                MessageBox.Show("Personel Ekleme Başarılı...");
            }
            catch (Exception)
            {
                MessageBox.Show("Personel Ekleme Başarısız !!!");
            }
            finally
            { 
            baglanti.Close();
                temizle();
            }
            
        }
        public void temizle()
        {
            txtad.Clear();
            txtsoyad.Clear();
            txttcno.Clear();
            dtpdogumtarihi.Value = DateTime.Now;
            txteposta.Clear();
            txttelefon.Clear();
            dtpisegiris.Value = DateTime.Now;
            txtsaatlikucret.Clear();
            txtmaas.Clear();
            txtsicilno.Clear();
            cmbgorev.SelectedValue=0;
            cmbkategori.SelectedValue = 0;
            cmbvardiya.SelectedValue = 0;
            cmbyetki.SelectedValue = 0;
            txtkullaniciadi.Clear();
            txtsifreson.Clear();
            txtadres.Clear();

        }

        private void btnara_Click(object sender, EventArgs e)
        {
            
        
        }

        private void bptnyenipersonel_Click(object sender, EventArgs e)
        {
            groupBox1.Visible = true;
            groupBox2.Visible = false;
        }

        private void btnduzenle_Click(object sender, EventArgs e)
        {
            groupBox1.Visible = false;
            groupBox2.Visible = true;

            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlCommand sorgu = new SqlCommand("sp_TCyeGoreGetir", baglanti);
            sorgu.CommandType = CommandType.StoredProcedure;
            sorgu.Parameters.AddWithValue("@tcno", txtpersoneltc.Text);
            sorgu.ExecuteNonQuery();

            SqlDataReader dr = sorgu.ExecuteReader();

            while (dr.Read())
            {
                txtad2.Text = dr[0].ToString();
                txtsoyad2.Text = dr[1].ToString();
                txttc2.Text = dr[2].ToString();
                dtpdogum2.Value = Convert.ToDateTime(dr[3]);
                txteposta2.Text = dr[4].ToString();
                txttelefon2.Text = dr[5].ToString();
               // dtpistencikis.Value = Convert.ToDateTime(dr[6]);
                txtsaatlikucret2.Text = dr[7].ToString();
                txtmaas2.Text = dr[8].ToString();
                txtsicilno2.Text = dr[9].ToString();
                cmbgorev2.SelectedValue = Convert.ToInt32( dr[10]);
                cmbkategori2.SelectedValue = Convert.ToInt32(dr[11]);
                txtadres2.Text = dr[12].ToString();
                cmbvardiya2.SelectedValue = Convert.ToInt32(dr[13]);
                txtkullaniciad2.Text = dr[14].ToString();
                txtsifre2.Text = dr[15].ToString();
                cmbyetki2.SelectedValue = Convert.ToInt32(dr[16]);

            }
            groupBox2.Visible = true;
            baglanti.Close();







        }

        private void btnguncelle_Click(object sender, EventArgs e)
        {
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            try
            {

                SqlCommand sorgu = new SqlCommand("sp_PersonelGuncelleme", baglanti);
                sorgu.CommandType = CommandType.StoredProcedure;
                sorgu.Parameters.AddWithValue("@PersonelAd", txtad2.Text);
                sorgu.Parameters.AddWithValue("@PersonelSoyad", txtsoyad2.Text);
                sorgu.Parameters.AddWithValue("@PersonelTcKimlik", txttc2.Text);
                sorgu.Parameters.AddWithValue("@PersonelDogumTarihi", dtpdogum2.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@PersonelEposta", txteposta2.Text);
                sorgu.Parameters.AddWithValue("@PersonelTelefon", txttelefon2.Text);
                sorgu.Parameters.AddWithValue("@PersonelIstenCikisTarihi", dtpistencikis.Value.ToString("MM / dd / yyyy HH: mm:ss"));
                sorgu.Parameters.AddWithValue("@PersonelSaatlikUcret",Convert.ToDecimal(txtsaatlikucret2.Text));
                sorgu.Parameters.AddWithValue("@PersonelMaas", Convert.ToDecimal(txtmaas2.Text));
                sorgu.Parameters.AddWithValue("@PersonelSicilNo", txtsicilno2.Text);
                sorgu.Parameters.AddWithValue("@GorevId", cmbgorev2.SelectedValue);
                sorgu.Parameters.AddWithValue("@PersonelKategoriID", cmbkategori2.SelectedValue);
                sorgu.Parameters.AddWithValue("@PersonelAdres", txtadres2.Text);
                sorgu.Parameters.AddWithValue("@vardiyaId", cmbvardiya2.SelectedValue);
                sorgu.Parameters.AddWithValue("@kullaniciad", txtkullaniciad2.Text);
                sorgu.Parameters.AddWithValue("@sifre", txtsifre2.Text);
                sorgu.Parameters.AddWithValue("@yetkiid", cmbyetki.SelectedValue);
                sorgu.ExecuteNonQuery();
                MessageBox.Show("Personel Güncelleme Başarılı...");
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Personel Güncelleme Başarısız !!!");
            }
            finally
            {
                baglanti.Close();
                temizle();
            }
        }
    }
}
