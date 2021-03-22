using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace RSVP
{
    public class GuestResponse
    {

        static int i = 1;
        public int GuestResponseId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool? WillAttend { get; set; }
        public DateTime Rdata { get; set; }
        public GuestResponse() { }
        public GuestResponse(string name, string email, string phone, bool? willattend)
        {

            GuestResponseId = i++;
            Name = name;
            Email = email;
            Phone = phone;
            WillAttend = willattend;
            Rdata = DateTime.Now;
            Reports = new List<Report>();
        }
        public virtual List<Report> Reports { get; set; }

    }
    public class Report
    {
        public int ReportId { get; set; } = 0;
        public string NameReport { get; set; }
        public string Annotation { get; set; }
        public GuestResponse GuestRes { get; set; }
        public Report() { }
        public Report(string title, string annot)
        {
            ReportId = ReportId++;
            NameReport = title;
            Annotation = annot;
        }
    }
}