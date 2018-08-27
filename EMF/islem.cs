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
        public static SqlConnection baglanti = new SqlConnection("server=mssql13.trwww.com;user id=emf_admin;password=123QWEasd;persistsecurityinfo=True;database=emf_db");

        public static bool sqlCalistir(string sql)
        {
            int etkilenenSatir = 0;
            try
            {
                komut.Connection = baglanti;
                komut.CommandText = sql;
                if (baglanti.State != ConnectionState.Closed)
                {
                    baglanti.Close();
                }
                baglanti.Open();
                etkilenenSatir = komut.ExecuteNonQuery();
                baglanti.Close();
            }
            catch (Exception)
            {
                baglanti.Close();
            }
            return etkilenenSatir > 0;
        }

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

        public static DataTable UrunGetir(string id)
        {
            if (baglanti.State != ConnectionState.Closed)
            {
                baglanti.Close();
            }

            Table = new DataTable();
            sqlTabloCalistir("Select * from Urunler where urun_id = " + id);
            return Table;
        }

        public static DataTable ResimGetir(string id)
        {
            if (baglanti.State != ConnectionState.Closed)
            {
                baglanti.Close();
            }

            Table = new DataTable();
            sqlTabloCalistir("Select * from urunler_resim where kontrol = 3 and urun_id = " + id);
            return Table;
        }

        public static void sqlTabloCalistir(string sql)
        {
            Table = new DataTable();
            Table.Rows.Clear();
            Table.Columns.Clear();
            try
            {
                baglanti = new SqlConnection("server=mssql13.trwww.com;user id=emf_admin;password=123QWEasd;persistsecurityinfo=True;database=emf_db");
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
    }
}