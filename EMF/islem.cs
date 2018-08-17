using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Xml;


namespace EMF
{
    public class islem
    {
        public static DataTable Table;
        public static SqlCommand komut = new SqlCommand();
        public static SqlConnection baglanti = new SqlConnection("Server = mssql13.trwww.com; Database=emf_db;Uid=emf_admin;Pwd='123QWEasd;");

        private static void parametreEkle(string adi, SqlDbType tipi, string deger, int size = -1, int precision = -1, int scale = -1)
        {
            if (size == -1) komut.Parameters.Add(adi, tipi);
            else komut.Parameters.Add(adi, tipi, size);
            switch (tipi)
            {
                case SqlDbType.Decimal:
                    if (!deger.Equals("")) komut.Parameters[adi].Value = deger.Replace('.', ',');
                    else komut.Parameters[adi].Value = 0;
                    komut.Parameters[adi].Precision = (byte)precision;
                    komut.Parameters[adi].Scale = (byte)scale;
                    break;
                case SqlDbType.Int: if (deger == "") deger = "0"; komut.Parameters[adi].Value = Convert.ToInt32(deger); break;
                case SqlDbType.NVarChar: komut.Parameters[adi].Value = deger; break;

            }
        }

        public static bool sqlCalistir(string sql)
        {
            int etkilenenSatir = 0;
            try
            {
                baglanti = new SqlConnection("Server = mssql13.trwww.com; Database=emf_db;Uid=emf_admin;Pwd='123QWEasd;");
                komut.Connection = baglanti;
                komut.CommandText = sql;
                baglanti.Close();
                baglanti.Open();
                etkilenenSatir = komut.ExecuteNonQuery();
                baglanti.Close();
            }
            catch (Exception e)
            {
                baglanti.Close();
            }
            return etkilenenSatir > 0;
        }
        public static string GetLanIPAddress()
        {
            string ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (string.IsNullOrEmpty(ip))
            {
                ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
            return ip;
        }
        public static void sqlTabloCalistir(string sql)
        {
            Table = new DataTable();
            Table.Rows.Clear();
            Table.Columns.Clear();
            try
            {
                baglanti = new SqlConnection("Server = mssql13.trwww.com; Database=emf_db;Uid=emf_admin;Pwd='123QWEasd;");
                komut.Connection = baglanti;
                komut.CommandText = sql;
                baglanti.Open();
                SqlDataAdapter _da = new SqlDataAdapter(komut);

                _da.Fill(Table);
                baglanti.Close();
            }
            catch (Exception e)
            {
                baglanti.Close();
            }
        }
        public static DataTable GenelAyarlarGetir()
        {
            komut.Parameters.Clear();
            sqlTabloCalistir("Select * from genel_ayarlar");
            return Table;
        }
        public static bool MailGonder(string mail, string icerik, string konu)
        {
            DataTable gn_ayarlar = GenelAyarlarGetir();
            try
            {
                MailMessage Mail = new MailMessage();
                Mail.From = new MailAddress(gn_ayarlar.Rows[0]["smtp_mail"].ToString(), "EMF Yönetimi");
                Mail.To.Add(mail);
                Mail.Subject = konu;
                Mail.Body = icerik;
                Mail.IsBodyHtml = true;
                SmtpClient smpt = new SmtpClient();
                smpt.Credentials = new NetworkCredential(gn_ayarlar.Rows[0]["smtp_user"].ToString(), gn_ayarlar.Rows[0]["smtp_pass"].ToString());
                smpt.Port = Convert.ToInt32(gn_ayarlar.Rows[0]["smtp_port"].ToString());
                smpt.Host = gn_ayarlar.Rows[0]["smtp_host"].ToString();
                smpt.Send(Mail);
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public static bool MesajEkle(string ad, string email, string tel, string mesaj)
        {
            komut.Parameters.Clear();
            parametreEkle("adsoyad", SqlDbType.NVarChar, ad);
            parametreEkle("email", SqlDbType.NVarChar, email);
            parametreEkle("tel", SqlDbType.Int, tel);
            parametreEkle("mesaj", SqlDbType.Text, mesaj);
            parametreEkle("tarih",DateTime.Now.ToString("yyyy-MM-dd H:mm:ss"));
            islem.parametreEkle("ip", GetLanIPAddress());

            if (sqlCalistir("insert into mesajlar()adi,mail,tel,mesaj,tarih,ip) values(@adsoyad,@email,@tel,@mesaj,@tarih,@ip)"))
            {
                string icerik = "<p>Mesaj İçeriği Aşağıdaki gibidir:</p> <p><strong> Adı Soyadı:</strong> " + ad + " </p> " +
                "<p><strong>E-mail :</strong>" + email + " </p>" +
                "<p><strong>Telefon :</strong>" + tel + " </p>" +
                "<p><strong>Mesaj :</strong>" + mesaj + " </p> ";
                sqlTabloCalistir("select * from mesaj_alici_listesi");
                DataTable alicilar = Table;

                for(int i = 0; i<alicilar.Rows.Count; i++)
                {
                    MailGonder(alicilar.Rows[i]["alici_mail"].ToString(), icerik, "EMF A.S Sitesinden Mesajınınız Var!");
                }
                return true;
            }
            return false;
        }

        private static void parametreEkle(string v1, string v2)
        {
            throw new NotImplementedException();
        }
    }
}