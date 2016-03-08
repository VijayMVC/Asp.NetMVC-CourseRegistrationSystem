using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AdvCSharpQ1Project
{
    public static class StoredProcedureExecutor
    {
        private const string InsertLoginRequestProcedure = "dbo.pInsLoginRequest";
        private const string InsertClassStudentsProcedure = "dbo.pInsClassStudents";
        private const string DeleteClassStudentsProcedure = "dbo.pDelClassStudents";

        private static Dictionary<string, Func<string, Dictionary<string, string>, string>> storedProcedureDelegates = new Dictionary<string, Func<string, Dictionary<string, string>, string>>();
        private static List<string> storedProcedureNames = new List<string>() { InsertLoginRequestProcedure, InsertClassStudentsProcedure, DeleteClassStudentsProcedure }; //Add to this list as more stored procedures are required to be executed
        
        static StoredProcedureExecutor()
        {
            foreach(var spName in storedProcedureNames)
            {
                Func<string, Dictionary<string, string>, string> function = (name, argsDict) =>
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["AdvWebDevProjectConnectionString2"].ConnectionString;

                    SqlConnection con = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand(name, con) { CommandType = CommandType.StoredProcedure };

                    foreach (var kvp in argsDict)
                    {
                        cmd.Parameters.Add(new SqlParameter(kvp.Key, kvp.Value));
                    }

                    try
                    {   //1. Make a Connection
                        con.Open();
                        //2. Issue a Command
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex) { return "An exception occured while trying to execute a sql command.  The exception is: " + ex.Message; }
                    finally { con.Close(); } //3. Run clean up code

                    return String.Empty;
                };

                storedProcedureDelegates.Add(spName, function);
            }
        }

        public static string Execute(string storedProcedureName, Dictionary<string, string> parameters)
        {
            var storedProcedureExecutor = storedProcedureDelegates[storedProcedureName];
            var error = storedProcedureExecutor(storedProcedureName, parameters);
            return error;
        }
    }

    
}