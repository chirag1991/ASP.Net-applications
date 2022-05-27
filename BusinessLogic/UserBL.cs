using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using BusinessObject;


namespace BusinessLogic
{
    public class UserBL
    {
        public int saveUserRegistration(UserBO objUserBL)
        {
            try
            {
                UserDA objUserDA = new UserDA();
                return objUserDA.AddUserDetails(objUserBL);
            }
            catch
            {
                throw;
                return 0;
            }
        }
    }
}
