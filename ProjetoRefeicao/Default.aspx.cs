using Data;
using Model;
using Proxy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoRefeicao
{
	public partial class Index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			GridPizzaLoad();
		}

		protected void btnPizzaInsert_Click(object sender, EventArgs e)
		{
			var pizza = new Pizza()
			{ 
				Descricao = tbPizzaDesc.Text,
				Valor = decimal.Parse(tbPizzaVal.Text)
			};

			if (new PizzaDB().Insert(pizza))
			{
				lblPizzaMsgInsert.Text = "Cadastro realizado com sucesso.";
				SaveLog("Registro Inserido!");
				GridPizzaLoad();
			}
			else
			{
				lblPizzaMsgInsert.Text = "Erro ao realizar cadastro.";
				SaveLog("Erro ao inserir registro!");
			}

			ClearPizzaTextBox();
		}

		private void GridPizzaLoad()
		{
			gvPizza.DataSource = new PizzaDB().Select();
			gvPizza.DataBind();
			SaveLog("Consultou Informações");
		}

		protected void btnPizzaDelete_Click(object sender, EventArgs e)
		{
			if (new PizzaDB().Delete(int.Parse(tbPizzaId.Text)))
			{
				lblPizzaMsgDelete.Text = "Refeição excluída com sucesso.";
				SaveLog("Registro deletado!");
				GridPizzaLoad();
			}
			else
			{
				lblPizzaMsgDelete.Text = "Erro ao realizar exclusão.";
				SaveLog("Erro ao deletar registro!");
			}

			ClearPizzaTextBox();

		}

		private void ClearPizzaTextBox()
		{
			tbPizzaDesc.Text = string.Empty;
			tbPizzaVal.Text = string.Empty;
			tbPizzaId.Text = string.Empty;
		}

		private void SaveLog(string msg)
		{
			IMonitore proxy = new Proxy.Proxy(new LogDB());
			proxy.SaveLog(msg);
		}

		protected void btnLogs_Click(object sender, EventArgs e)
		{
			gvLogs.DataSource = new LogDB().Select();
			gvLogs.DataBind();
			SaveLog("Consultou Informações");
		}
	}
}