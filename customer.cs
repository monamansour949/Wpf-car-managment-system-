using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfCarManagmentSystem
{
    public class customer
    {
        public string name { get; set; }

        public customer(string _name)
        {

            name = _name;
        }
        public customer()
        { }

        public override string ToString()
        {
            return name;
        }
    }
}
