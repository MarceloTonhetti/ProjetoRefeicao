using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Util;

namespace Data
{
	public class LogDB : ILogDB
	{
		private ConnectionDB _conn;
		public void Insert(string msg)
		{
			string sql = string.Format("INSERT INTO TB_LOG (dateInformation, description) VALUES (GETDATE(), '{0}')", msg);
			using ( _conn = new ConnectionDB())
			{
				_conn.ExecQuery(sql);
			}
		}

		public IEnumerable<Log> Select()
		{
			string sql = string.Format("SELECT dateInformation, description FROM TB_LOG");
			using (_conn = new ConnectionDB())
			{
				var returnData = _conn.ExecQueryReturn(sql);
				return TransformSQLReaderToList(returnData);
			}
		}

		private IEnumerable<Log> TransformSQLReaderToList(SqlDataReader returnData)
		{
			var list = new List<Log>();

			while (returnData.Read())
			{
				var item = new Log()
				{ 
					Description = returnData["description"].ToString()
				};

				list.Add(item);
			}

			return list;
		}
	}
}
