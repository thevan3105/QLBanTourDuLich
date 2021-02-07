﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLTour
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //form tim kiem
            if (!IsPostBack)
            {
                getData();
            }
        }
        public void getData()
        {
            TourDLEntities db = new TourDLEntities();

            List<QLTour.Tour> lstTour = db.Tour.ToList();
            List<string> lst = new List<string>();
            int c =  1;
            for (int i = 0; i < txtSearch.Text.Length; i++)
            {
                if (txtSearch.Text[i] == ' ')
                {
                    c++;
                }
            }
            string[] tu = txtSearch.Text.Split(' ');
            for (int i = 0; i < c; i++)
            {
                lst.Add(tu[i]);
            }
            List<QLTour.Tour> lstT = db.Tour.Where(x => lst.Any(k => x.TenTour.Contains("than"))).ToList();
            int t1 = lstT.Count();
            for (int i = 0; i < t1; i++)
            {
                Tour obj = lstT.ElementAt(i);
            }
            //List<QLTour.Tour> lst = db.Tour.OrderBy(x => x.MaTour).Take(5).ToList();
            rpSanPhamHot.DataSource = lstT;
            rpSanPhamHot.DataBind();
        }
        public string getAnhDaiDien(string MaTour)
        {
            TourDLEntities db = new TourDLEntities();
            QLTour.Tour obj = db.Tour.FirstOrDefault(x => x.MaTour == MaTour);
            if (obj.Media.Count(x => x.Main == true) > 0)
            {
                return obj.Media.First(x => x.Main == true).Url;
            }
            else
            {
                return "";
            }
        }

    }
}