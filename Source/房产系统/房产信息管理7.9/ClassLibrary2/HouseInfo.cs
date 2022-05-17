using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using GML;


namespace ClassLibrary2
{
  public  class HouseInfo
    {
        private int _HouseInfoID;
        public int HouseInfoID
        {
            get { return _HouseInfoID; }
            set { _HouseInfoID = value; }
        }

        private int _UID;
        public int UID
        {
            get { return _UID; }
            set { _UID = value; }
        }

        private int _BuildingInfoID;
        public int BuildingInfoID
        {
            get { return _BuildingInfoID; }
            set { _BuildingInfoID = value; }
        }

        private string _Location;
        public string Location
        {
            get { return _Location; }
            set { _Location = value; }
        }

        private string _Space;
        public string Space
        {
            get { return _Space; }
            set { _Space = value; }
        }

        private string _Price;
        public string Price
        {
            get { return _Price; }
            set { _Price = value; }
        }

        private string _State;
        public string State
        {
            get { return _State; }
            set { _State = value; }
        }

        private string _Type;
        public string Type
        {
            get { return _Type; }
            set { _Type = value; }
        }

        private string _ImageUrl;
        public string ImageUrl
        {
            get { return _ImageUrl; }
            set { _ImageUrl = value; }
        }

        private string _Face;
        private int HouseInfoid;

        public HouseInfo(int HouseInfoid)
        {
            SqlConnection conn = TTHelper.GetConnection();
            conn.Open();
            string sql = "select * from HouseInfo where HouseInfoID=" + HouseInfoid;
            SqlDataReader reader = TTHelper.GetExcuteReader(conn, sql);
            if (reader.Read())
            {
                _HouseInfoID = HouseInfoid;
                //_WZLX_ID = Convert.ToInt32(reader["WZLX_ID"]);
                _Location = reader["Location"].ToString();
                _Space = reader["Space"].ToString();
                _Price = reader["Price"].ToString();
                //_WZ_ZZID = Convert.ToInt32(reader["WZ_ZZID"]);
                //_WZ_EJLX = reader["WZ_EJLX"].ToString();
            }
            conn.Close();
            conn.Dispose();
            reader.Close();
        }
        public string Face
        {
            get { return _Face; }
            set { _Face = value; }
        }
    }
}
