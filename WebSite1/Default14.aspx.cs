using NPOI.SS.Formula.Functions;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default14 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        IList<test> list;

        Type type = typeof(test);

        string tempName = string.Empty;

        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
        SqlDataReader reader;
        SqlCommand cmd = new SqlCommand("select * from test ", Conn);
        Conn.Open();
        reader = cmd.ExecuteReader();



        if (reader.HasRows)
        {
            list = new List<test>();


            foreach (test x in list)
            {
                //x.id;
            }


                while (reader.Read())
            {
                test t = new test();

                PropertyInfo[] propertys = t.GetType().GetProperties();

                foreach (PropertyInfo pi in propertys)
                {
                    tempName = pi.Name;

                    if (readerExists(reader, tempName))
                    {
                        if (!pi.CanWrite)
                        {
                            continue;
                        }
                        var value = reader[tempName];

                        if (value != DBNull.Value)
                        {
                            pi.SetValue(t, value, null);
                        }

                    }

                }



                   
                list.Add(t);

            }

            var test = list.Where(x => x.id == 3).ToList();

        }


        
        return ;
    }

    /// <summary>
    /// 判断SqlDataReader是否存在某列
    /// </summary>
    /// <param name="dr">SqlDataReader</param>
    /// <param name="columnName">列名</param>
    /// <returns></returns>
    private bool readerExists(SqlDataReader dr, string columnName)
    {

        dr.GetSchemaTable().DefaultView.RowFilter = "ColumnName= '" + columnName + "'";

        return (dr.GetSchemaTable().DefaultView.Count > 0);

    }

    ///<summary>
    ///利用反射和泛型将SqlDataReader转换成List模型
    ///</summary>
    ///<param name="sql">查询sql语句</param>
    ///<returns></returns>

    public IList<T> ExecuteToList<T>(string sql) where T : new()

    {
        IList<T> list;

        Type type = typeof(T);

        string tempName = string.Empty;

        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
        SqlDataReader reader;
        SqlCommand cmd = new SqlCommand("select * from test ", Conn);
        Conn.Open();
        reader = cmd.ExecuteReader();

        
        
            if (reader.HasRows)
            {
                list = new List<T>();
                while (reader.Read())
                {
                    T t = new T();

                    PropertyInfo[] propertys = t.GetType().GetProperties();

                    foreach (PropertyInfo pi in propertys)
                    {
                        tempName = pi.Name;

                        if (readerExists(reader, tempName))
                        {
                            if (!pi.CanWrite)
                            {
                                continue;
                            }
                            var value = reader[tempName];

                            if (value != DBNull.Value)
                            {
                                pi.SetValue(t, value, null);
                            }

                        }

                    }

                    list.Add(t);

                }
                return list;
            }
        
        return null;
    }
}