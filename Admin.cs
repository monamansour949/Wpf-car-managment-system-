using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfCarManagmentSystem
{
    internal class Admin
    {
        //Props
        #region Props
        public string Name { get; set; }

        public string Password { get; set; }

        #endregion

        //Ctors
        #region Ctors
        public Admin()
        {
            Name = "admin";
            Password = "admin";
        }
        public Admin(string _name, string _password)
        {
            Name = _name;
            Password = _password;
        }
        #endregion
    }
}
