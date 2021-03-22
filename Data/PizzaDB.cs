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
	public class PizzaDB : IPizzaDB
	{
		private ConnectionDB _conn;

		public bool Delete(int id)
		{
			bool status;

			string sql = string.Format("DELETE FROM TB_PIZZA WHERE id = {0}", id);
			using (_conn = new ConnectionDB())
			{
				status = _conn.ExecQuery(sql);
			}

			return status;
		}

		public bool Insert(Pizza pizza)
		{
			bool status;

			string sql = string.Format("INSERT INTO dbo.TB_PIZZA (descricao, valor) VALUES ('{0}', {1})", pizza.Descricao, pizza.Valor.ToString().Replace(',', '.'));
			using (_conn = new ConnectionDB()) {
				status = _conn.ExecQuery(sql);
			};

			return status;
		}

		public IEnumerable<Pizza> Select()
		{
			using ( _conn = new ConnectionDB())
			{
			string sql = "SELECT id, descricao, valor FROM TB_PIZZA";
			var returnData = _conn.ExecQueryReturn(sql);
			return TransformSQLReaderToList(returnData);
			}
		}

		private IEnumerable<Pizza> TransformSQLReaderToList(SqlDataReader returData)
		{
			var list = new List<Pizza>();

			while (returData.Read())
			{
				var item = new Pizza()
				{
					Id = int.Parse(returData["id"].ToString()),
					Descricao = returData["descricao"].ToString(),
					Valor = decimal.Parse(returData["valor"].ToString())
				};

				list.Add(item);
			}
			return list;
		}

		public Pizza Select(int id)
		{
			throw new NotImplementedException();
		}
	}
}
