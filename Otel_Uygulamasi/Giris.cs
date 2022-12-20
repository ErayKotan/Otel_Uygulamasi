using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Otel_Uygulamasi
{
    public partial class frmGirisEkranı : Form
    {
        public frmGirisEkranı()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = .; Database=DB_Bilgi_Hotel;Trusted_Connection=True;");
        private void frmGirisEkranı_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
        }

        private void btngiris_Click(object sender, EventArgs e)
        {
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
           

            SqlCommand sorgu = new SqlCommand("select k.KullaniciAd,k.KullaniciParola,kp.YetkiId,kp.PersonelId from tbl_Kullanici as k join tbl_KullaniciPersonel as kp on k.KullaniciId=kp.KullaniciId where KullaniciAd='" + txtkullanici.Text + "' and KullaniciParola='" + txtsifre.Text + "'", baglanti);

            SqlDataReader dr = sorgu.ExecuteReader();
            if (txtkullanici.Text == "" ||  txtsifre.Text =="")
            {
                MessageBox.Show("Alanlar Boş Bırakılamaz !!!");
                baglanti.Close();
                
            }
            else
            {
                if (Convert.ToInt32(dr.Read()) > 0)
                {

                    Anasayfa anasyf = new Anasayfa();
                    anasyf.gelenyetki = dr[2].ToString();
                    anasyf.gelenpersonel = dr[3].ToString();
                    anasyf.Show();
                    this.Hide();
                    baglanti.Close();
                }
                else
                {
                    MessageBox.Show("Giriş Başarısız !!!");
                    txtkullanici.Clear();
                    txtsifre.Clear();
                    baglanti.Close();
                }
            }

            
            
        }
    }
}
