using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using GML;

namespace ClassLibrary2
{
   public class BuildingInfo
    {
        private int _BuildingInfoID;
        public int BuildingInfoID
        {
            get { return _BuildingInfoID; }
            set { _BuildingInfoID = value; }
        }

        private string _Name;
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        private string _Area;
        public string Area
        {
            get { return _Area; }
            set { _Area = value; }
        }

        private string _Floor;
        public string Floor
        {
            get { return _Floor; }
            set { _Floor = value; }
        }

        private string _Type;
        public string Type
        {
            get { return _Type; }
            set { _Type = value; }
        }

        private string _Linkman;
        public string Linkman
        {
            get { return _Linkman; }
            set { _Linkman = value; }
        }

        private string _Telephone;
        public string Telephone
        {
            get { return _Telephone; }
            set { _Telephone = value; }
        }

        private string _PropertyMF;
        public string PropertyMF
        {
            get { return _PropertyMF; }
            set { _PropertyMF = value; }
        }

        private string _Saleaddress;
        public string Saleaddress
        {
            get { return _Saleaddress; }
            set { _Saleaddress = value; }
        }

        private string _Transport;
        public string Transport
        {
            get { return _Transport; }
            set { _Transport = value; }
        }

        private string _GreenR;
        public string GreenR
        {
            get { return _GreenR; }
            set { _GreenR = value; }
        }

        private string _PlotR;
        public string PlotR
        {
            get { return _PlotR; }
            set { _PlotR = value; }
        }

        private int _Parking;
        public int Parking
        {
            get { return _Parking; }
            set { _Parking = value; }
        }

        private int _UID;
        public int UID
        {
            get { return _UID; }
            set { _UID = value; }
        }
    }
}
