using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfCarManagmentSystem
{
    public class category
    {
       
        public string name { get; set; }

        public category(string _name )
        {
           
            name = _name;
        }
        public category()
        { }

        public override string ToString()
        {
            return name;
        }
    }
}
