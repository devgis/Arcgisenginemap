using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using GML;

namespace ClassLibrary2
{
   public class HousingInfo
    {
        private int _HouseInfoID;
        public int HouseInfoID
        {
            get { return _HouseInfoID; }
            set { _HouseInfoID = value; }
        }

        private int ?_UID;
        public int ?UID
        {
            get { return _UID; }
            set { _UID = value; }
        }

        private string _Title;
        public string Title
        {
            get { return _Title; }
            set { _Title = value; }
        }

        private string _Contents;
        public string Contents
        {
            get { return _Contents; }
            set { _Contents = value; }
        }

        private string _State;
        public string State
        {
            get { return _State; }
            set { _State = value; }
        }

        private string _Editor;
        public string Editor
        {
            get { return _Editor; }
            set { _Editor = value; }
        }

        private string _ReleaseTime;
        public string ReleaseTime
        {
            get { return _ReleaseTime; }
            set { _ReleaseTime = value; }
        }

        private U _UObject = null;
        private int HousingInfoid;

        public HousingInfo(int HouseInfoid)
        {
            SqlConnection conn = TTHelper.GetConnection();
            conn.Open();

            string sql = "select * from Housinglnfo where HouseInfoID=" + HouseInfoid;
            SqlDataReader reader = TTHelper.GetExcuteReader(conn, sql);
            if (reader.Read())
            {
                _HouseInfoID = HouseInfoid;
                //_WZLX_ID = Convert.ToInt32(reader["WZLX_ID"]);
                _Title = reader["Title"].ToString();
                _Contents = reader["Contents"].ToString();
                _State = reader["State"].ToString();
                _UID = Convert.ToInt32(reader["UID"]);
                _Editor = reader["Editor"].ToString();
                _ReleaseTime = reader["ReleaseTime"].ToString();
            }
            conn.Close();
            conn.Dispose();
            reader.Close();
        }

        public HousingInfo()
        {
            // TODO: Complete member initialization
        }


        public U UObject
        {
            get
            {
                if (_UID.HasValue && _UObject == null)
                {
                    _UObject = new U(_UID.Value);
                }
                return _UObject;
            }
            set { _UObject = value; }
        }

    }
}
