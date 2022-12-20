using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Otel_Uygulamasi
{
    public partial class Anasayfa : Form
    {
        public Anasayfa()
        {
            InitializeComponent();
        }
        public string gelenyetki;
        public string gelenpersonel;
        private void Anasayfa_Load(object sender, EventArgs e) //ID YE GÖRE YÖNLENDİRME
        {
            this.FormBorderStyle = FormBorderStyle.FixedSingle;

            if (Convert.ToInt32( gelenyetki)==1)
            {
                groupBox1.Visible = true;
            }
            else if (Convert.ToInt32( gelenyetki)==9)
            {
                groupBox2.Visible = true;

            }
            else if (Convert.ToInt32(gelenyetki) == 2)
            {
                groupBox3.Visible = true;

            }
            else if (Convert.ToInt32(gelenyetki) == 10)
            {
                groupBox4.Visible = true;

            }
            else if (Convert.ToInt32(gelenyetki) == 7)
            {
                groupBox5.Visible = true;

            }

        }

        private void button1_Click(object sender, EventArgs e) //GİRİŞ YAP
        {
            frmGirisEkranı grs=new frmGirisEkranı();
            grs.Show();
            this.Hide();
        }

        private void btn_musteri_ekle_Click(object sender, EventArgs e) // BUNDAN SONRAKİLER İSTEDİĞİN FORMU PANEL İÇİNDE AÇIYOR
        {
            panel2.Controls.Clear();
            musteriekle musteri=new musteriekle();
            musteri.TopLevel = false;
            panel2.Controls.Add(musteri);
            musteri.Show();
            
        }

        private void btn_rezarvasyon_Click(object sender, EventArgs e)
        {

           
        }

        private void btn_oda_satis_Click(object sender, EventArgs e)
        {
            panel2.Controls.Clear();
            odasatis odasatis = new odasatis();
            odasatis.TopLevel = false;
            panel2.Controls.Add(odasatis);
            odasatis.Show();
        }

        private void btn_müsteri_listesi_Click(object sender, EventArgs e)
        {
            panel2.Controls.Clear();
            MessageBox.Show("musteriliste");
        }

        private void btn_personel_düzenleme_Click(object sender, EventArgs e)
        {
            panel2.Controls.Clear();
            MessageBox.Show("personeldüzenleme");
        }

        private void btn_oda_durum_Click(object sender, EventArgs e)
        {
            panel2.Controls.Clear();
            MessageBox.Show("odadurum");
        }

        private void btn_kampanyalar_Click(object sender, EventArgs e)
        {
            panel2.Controls.Clear();
            kampanyaekle kampanya = new kampanyaekle();
            kampanya.TopLevel = false;
            panel2.Controls.Add(kampanya);
            kampanya.Show();
        }

        private void btn_personel_listesi_Click(object sender, EventArgs e)
        {
            panel2.Controls.Clear();
            personellistesi personel=new personellistesi();
            personel.TopLevel = false;
            panel2.Controls.Add(personel);
            personel.Show();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
