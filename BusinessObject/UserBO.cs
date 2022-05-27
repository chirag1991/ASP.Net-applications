using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BusinessObject
{
    public class UserBO
    {
        private string _Name;
        private string _Address;
        private string _EmailID;
        private string _MobileNumber;

        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }

        public string EmailID
        {
            get { return _EmailID; }
            set { _EmailID  = value; }
        }
         public string MobileNumber
        {
            get { return _MobileNumber; }
            set { _MobileNumber = value; }
        }

    }
}
