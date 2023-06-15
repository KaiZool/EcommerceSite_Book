using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserInfoModel
/// </summary>
public class UserInfoModel
{
    public UserInfo GetUserInformation(string guId)
    {
        BookEntities db = new BookEntities();
        UserInfo info = (from x in db.UserInfoes
                                where x.GUID == guId
                                   select x).FirstOrDefault();
        return info;
    }

    public void InserUserInformation(UserInfo info)
    {
        BookEntities db = new BookEntities();
        db.UserInfoes.Add(info);
        db.SaveChanges();
    }
}