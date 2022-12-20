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
    public partial class musteriekle : Form
    {
        public musteriekle()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = .; Database=DB_Bilgi_Hotel;Trusted_Connection=True;");
        List <KeyValuePair<int,string>> ulke = new List<KeyValuePair<int, string>>();
        List<KeyValuePair<int, string>> il = new List<KeyValuePair<int, string>>();
        List<KeyValuePair<int, string>> ilce = new List<KeyValuePair<int, string>>();
        List<KeyValuePair<int, string>> dil = new List<KeyValuePair<int, string>>();
        List<int> istenen = new List<int>(); 
        private void musteriekle_Load(object sender, EventArgs e)
        {
            //ULKE 
            SqlCommand sorgu = new SqlCommand("select UlkeId,UlkeAd from tbl_Ulke", baglanti);
            baglanti.Open();
            SqlDataReader dr = sorgu.ExecuteReader();
            while (dr.Read())
            {
                ulke.Add(new KeyValuePair<int, string>((int)dr[0], (string)dr[1]));
            }
            cmbulke.DataSource=ulke.ToList();
            cmbulke.ValueMember = "Key";
            cmbulke.DisplayMember = "Value";
            dr.Close();
            baglanti.Close();

            //DİL

            SqlCommand sorgu4 = new SqlCommand("select DilId,DilAd from tbl_Diller", baglanti);
            baglanti.Open();
            SqlDataReader dr4 = sorgu4.ExecuteReader();
            while (dr4.Read())
            {
                dil.Add(new KeyValuePair<int, string>((int)dr4[0], (string)dr4[1]));
            }
            cmbDil.DataSource = dil.ToList();
            cmbDil.ValueMember = "Key";
            cmbDil.DisplayMember = "Value";
            dr4.Close();
            baglanti.Close();



        }

        private void btnAnasayfa_Click(object sender, EventArgs e)
        {
            Anasayfa anasayfa = new Anasayfa();
            anasayfa.Show();
            this.Hide();
        }

        private void cmbil_SelectionChangeCommitted(object sender, EventArgs e)
        {
            //İLCE
            ilce.Clear();
            SqlCommand sorgu3 = new SqlCommand("select IlceId,IlceAd from tbl_Ilce where IlId=" + cmbil.SelectedValue, baglanti);
            baglanti.Open();
            SqlDataReader dr3 = sorgu3.ExecuteReader();
            while (dr3.Read())
            {
                ilce.Add(new KeyValuePair<int, string>((int)dr3[0], (string)dr3[1]));
            }
            cmbilce.DataSource = ilce.ToList();
            cmbilce.ValueMember = "Key";
            cmbilce.DisplayMember = "Value";
            dr3.Close();
            baglanti.Close();
        }

        private void cmbulke_SelectionChangeCommitted(object sender, EventArgs e)
        {
            //SEHİR
            il.Clear();
            SqlCommand sorgu2 = new SqlCommand("select IlId,IlAd from tbl_Il where UlkeId=" + cmbulke.SelectedValue, baglanti);
            baglanti.Open();
            SqlDataReader dr2 = sorgu2.ExecuteReader();
            while (dr2.Read())
            {
                il.Add(new KeyValuePair<int, string>((int)dr2[0], (string)dr2[1]));
            }
            cmbil.DataSource = il.ToList();
            cmbil.ValueMember = "Key";
            cmbil.DisplayMember = "Value";
            dr2.Close();
            baglanti.Close();
        }
        // MUSTERİ EKLEME
        private void btnKaydet_Click(object sender, EventArgs e) 
        {
            if (baglanti.State==ConnectionState.Closed)
            {
                baglanti.Open();
            }
            try
            {
                SqlCommand sorgu = new SqlCommand("sp_musteri_Ekle", baglanti);
                sorgu.CommandType = CommandType.StoredProcedure;
                sorgu.Parameters.AddWithValue("@MusteriAd", txtAd.Text);
                sorgu.Parameters.AddWithValue("@MusteriSoyad", txtSoyad.Text);
                sorgu.Parameters.AddWithValue("@MusteriTCKimlik", txtTc.Text);
                sorgu.Parameters.AddWithValue("@MusteriPasaportNo", txtPasaport.Text);
                sorgu.Parameters.AddWithValue("@MusteriUnvan", txtunvan.Text);
                sorgu.Parameters.AddWithValue("@MusteriYetkiliAdSoyad", txtYetkili.Text);
                sorgu.Parameters.AddWithValue("@MusteriVergiNo", txtVergiNo.Text);
                sorgu.Parameters.AddWithValue("@MusteriVergiDairesi", txtVergiDairesi.Text);
                sorgu.Parameters.AddWithValue("@MusteriTelefon", txtTelefon.Text);
                sorgu.Parameters.AddWithValue("@MusteriPosta", txtEposta.Text);
                sorgu.Parameters.AddWithValue("@UlkeID", cmbulke.SelectedValue);
                sorgu.Parameters.AddWithValue("@IlID", cmbil.SelectedValue);
                sorgu.Parameters.AddWithValue("@IlceID", cmbilce.SelectedValue);
                sorgu.Parameters.AddWithValue("@MusteriAdres", txtAdres.Text); 
                sorgu.Parameters.AddWithValue("@MusteriKurumsalOK", chcevet.Checked);
                sorgu.Parameters.AddWithValue("@DilID", cmbDil.SelectedValue);
                sorgu.Parameters.AddWithValue("@MusteriAciklama", txtAciklama.Text);
                sorgu.ExecuteNonQuery();
                MessageBox.Show("Kayıt Ekleme Başarılı...");
            }
            catch (Exception hata)
            {
                MessageBox.Show("Ekleme Başarısız !!!"+hata.Message);
            }
            finally
            {
                baglanti.Close();
            }

            foreach (object item in Controls)
            {
                if (item is TextBox)
                {
                    TextBox textBox = (TextBox)item;
                   textBox.Clear();
                }
               
            }
        }
        //MUSTERİ ARAMA
        private void btnara_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand sorgu = new SqlCommand("select [MusteriAd], [MusteriSoyad], [MusteriTCKimlik], " +
                "[MusteriPasaportNo], [MusteriUnvan], [MusteriYetkiliAdSoyad], [MusteriVergiNo], [MusteriVergiDairesi], " +
                "[MusteriTelefon], [MusteriPosta], [MusteriAdres], [IlID], [IlceID], [UlkeID], [MusteriAciklama], " +
                "[MusteriKurumsalOK], [DilID] from tbl_Musteriler where MusteriTCKimlik ='" + txtsorgu.Text + "'", baglanti);
            sorgu.ExecuteNonQuery();
            SqlDataReader dr=sorgu.ExecuteReader();
                
            while (dr.Read())
            {
                txtAd.Text = dr[0].ToString();
                txtSoyad.Text = dr[1].ToString();
                txtTc.Text = dr[2].ToString();
                txtPasaport.Text = dr[3].ToString();
                txtunvan.Text = dr[4].ToString();
                txtYetkili.Text = dr[5].ToString();
                txtVergiNo.Text = dr[6].ToString();
                txtVergiDairesi.Text = dr[7].ToString();
                txtTelefon.Text = dr[8].ToString();
                txtEposta.Text = dr[9].ToString();
                txtAdres.Text = dr[10].ToString();
                txtAciklama.Text = dr[14].ToString();
                chcevet.Text = dr[15].ToString();
                istenen.Add(Convert.ToInt32(dr["IlID"]));
                istenen.Add(Convert.ToInt32(dr["IlceID"]));
                istenen.Add(Convert.ToInt32(dr["UlkeID"]));
                istenen.Add(Convert.ToInt32(dr["DilID"]));
            }
            baglanti.Close();
            //İLCE
            ilce.Clear();
            SqlCommand sorgu3 = new SqlCommand("select IlceId,IlceAd from tbl_Ilce where IlId=" + istenen[0], baglanti);
            baglanti.Open();
            SqlDataReader dr3 = sorgu3.ExecuteReader();
            while (dr3.Read())
            {
                ilce.Add(new KeyValuePair<int, string>((int)dr3[0], (string)dr3[1]));
            }
            cmbilce.DataSource = ilce.ToList();
            cmbilce.ValueMember = "Key";
            cmbilce.DisplayMember = "Value";
            dr3.Close();
            baglanti.Close();
            /////////////
            /////SEHİR
            il.Clear();
            SqlCommand sorgu2 = new SqlCommand("select IlId,IlAd from tbl_Il where UlkeId=" + istenen[2], baglanti);
            baglanti.Open();
            SqlDataReader dr2 = sorgu2.ExecuteReader();
            while (dr2.Read())
            {
                il.Add(new KeyValuePair<int, string>((int)dr2[0], (string)dr2[1]));
            }
            cmbil.DataSource = il.ToList();
            cmbil.ValueMember = "Key";
            cmbil.DisplayMember = "Value";
            dr2.Close();
            baglanti.Close();
            ///////////////
            cmbulke.SelectedValue = istenen[2];
            cmbil.SelectedValue= istenen[0];
            cmbilce.SelectedValue = istenen[1];
            cmbDil.SelectedValue = istenen[3];
        }
        //MUSTERİ GUNCELLEME
        private void btnguncelle_Click(object sender, EventArgs e)
        {

            
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            try
            {
                SqlCommand sorgu = new SqlCommand("sp_musteri_Guncelle", baglanti);
                sorgu.CommandType = CommandType.StoredProcedure;
                sorgu.Parameters.AddWithValue("@MusteriAd", txtAd.Text);
                sorgu.Parameters.AddWithValue("@MusteriSoyad", txtSoyad.Text);
                sorgu.Parameters.AddWithValue("@MusteriTCKimlik", txtTc.Text);
                sorgu.Parameters.AddWithValue("@MusteriPasaportNo", txtPasaport.Text);
                sorgu.Parameters.AddWithValue("@MusteriUnvan", txtunvan.Text);
                sorgu.Parameters.AddWithValue("@MusteriYetkiliAdSoyad", txtYetkili.Text);
                sorgu.Parameters.AddWithValue("@MusteriVergiNo", txtVergiNo.Text);
                sorgu.Parameters.AddWithValue("@MusteriVergiDairesi", txtVergiDairesi.Text);
                sorgu.Parameters.AddWithValue("@MusteriTelefon", txtTelefon.Text);
                sorgu.Parameters.AddWithValue("@MusteriPosta", txtEposta.Text);
                sorgu.Parameters.AddWithValue("@UlkeID", cmbulke.SelectedValue);
                sorgu.Parameters.AddWithValue("@IlID", cmbil.SelectedValue);
                sorgu.Parameters.AddWithValue("@IlceID", cmbilce.SelectedValue);
                sorgu.Parameters.AddWithValue("@MusteriAdres", txtAdres.Text);
                sorgu.Parameters.AddWithValue("@MusteriKurumsalOK", chcevet.Checked);
                sorgu.Parameters.AddWithValue("@DilID", cmbDil.SelectedValue);
                sorgu.Parameters.AddWithValue("@MusteriAciklama", txtAciklama.Text);
                sorgu.ExecuteNonQuery();
                MessageBox.Show("Güncelleme Başarılı...");
            }
            catch (Exception hata)
            {
                MessageBox.Show("Güncelleme Başarısız !!!" + hata.Message);
            }
            finally
            {
                baglanti.Close();
            }
        }
    }
}
