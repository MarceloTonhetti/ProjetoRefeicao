<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoRefeicao.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 137px;
		}
		.auto-style2 {
			width: 301px;
		}
		.auto-style3 {
			width: 137px;
			height: 23px;
		}
		.auto-style4 {
			width: 301px;
			height: 23px;
		}
		.auto-style5 {
			height: 23px;
		}
		.auto-style6 {
			width: 137px;
			height: 26px;
		}
		.auto-style7 {
			width: 301px;
			height: 26px;
		}
		.auto-style8 {
			height: 26px;
		}
		.auto-style9 {
			height: 23px;
			width: 101px;
		}
		.auto-style10 {
			height: 26px;
			width: 101px;
		}
		.auto-style11 {
			width: 101px;
		}
		.auto-style12 {
			width: 137px;
			height: 146px;
		}
		.auto-style13 {
			width: 301px;
			height: 146px;
		}
		.auto-style14 {
			height: 146px;
		}
		.auto-style15 {
			width: 101px;
			height: 146px;
		}
		.auto-style16 {
			width: 137px;
			height: 35px;
		}
		.auto-style17 {
			width: 301px;
			height: 35px;
		}
		.auto-style18 {
			height: 35px;
			width: 101px;
		}
		.auto-style19 {
			height: 35px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<table style="width: 100%;">
				<tr>
					<td class="auto-style3">
						<asp:Label ID="Label4" runat="server" Text="Cadastro de refeições"></asp:Label>
					</td>
					<td class="auto-style4">&nbsp;</td>
					<td class="auto-style9">&nbsp;</td>
					<td class="auto-style5">&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style3">
						&nbsp;</td>
					<td class="auto-style4">&nbsp;</td>
					<td class="auto-style9">&nbsp;</td>
					<td class="auto-style5">&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style3">
						<asp:Label ID="lblPizza" runat="server" Text="Pizza"></asp:Label>
					</td>
					<td class="auto-style4"></td>
					<td class="auto-style9">&nbsp;</td>
					<td class="auto-style5">&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style6">
						<asp:Label ID="lblPizzaDesc" runat="server" Text="Descrição"></asp:Label>
					</td>
					<td class="auto-style7">
						<asp:TextBox ID="tbPizzaDesc" runat="server" Width="254px"></asp:TextBox>
					</td>
					<td class="auto-style10">&nbsp;</td>
					<td class="auto-style8">&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">
						<asp:Label ID="lblPizzaValor" runat="server" Text="Valor"></asp:Label>
					</td>
					<td class="auto-style2">
						<asp:TextBox ID="tbPizzaVal" runat="server" Width="254px"></asp:TextBox>
					</td>
					<td class="auto-style11">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">
						<asp:Button ID="btnPizzaInsert" runat="server" OnClick="btnPizzaInsert_Click" Text="Inserir" />
					</td>
					<td class="auto-style2">
						<asp:Label ID="lblPizzaMsgInsert" runat="server"></asp:Label>
					</td>
					<td class="auto-style11">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">
						&nbsp;</td>
					<td class="auto-style2">
						&nbsp;</td>
					<td class="auto-style11">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">
						<asp:Label ID="Label2" runat="server" Text="Excluir Pizza"></asp:Label>
					</td>
					<td class="auto-style2">
						&nbsp;</td>
					<td class="auto-style11">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">
						<asp:Label ID="lblPizzaId" runat="server" Text="Id"></asp:Label>
					</td>
					<td class="auto-style2">
						<asp:TextBox ID="tbPizzaId" runat="server" Width="105px"></asp:TextBox>
					</td>
					<td class="auto-style11">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">
						<asp:Button ID="btnPizzaDelete" runat="server" OnClick="btnPizzaDelete_Click" Text="Excluir" />
					</td>
					<td class="auto-style2">
						<asp:Label ID="lblPizzaMsgDelete" runat="server"></asp:Label>
					</td>
					<td class="auto-style11">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style1">
						&nbsp;</td>
					<td class="auto-style2">
						<asp:Label ID="Label1" runat="server" Text="Pizzas Cadastradas"></asp:Label>
					</td>
					<td class="auto-style11">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="auto-style12">
					</td>
					<td class="auto-style13">
						<asp:GridView ID="gvPizza" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
							<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
							<EditRowStyle BackColor="#999999" />
							<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
							<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
							<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
							<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
							<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
							<SortedAscendingCellStyle BackColor="#E9E7E2" />
							<SortedAscendingHeaderStyle BackColor="#506C8C" />
							<SortedDescendingCellStyle BackColor="#FFFDF8" />
							<SortedDescendingHeaderStyle BackColor="#6F8DAE" />
						</asp:GridView>
					</td>
					<td class="auto-style15"></td>
					<td class="auto-style14"></td>
				</tr>
				<tr>
					<td class="auto-style16">
					</td>
					<td class="auto-style17">
					</td>
					<td class="auto-style18"></td>
					<td class="auto-style19"></td>
				</tr>
				<tr>
					<td class="auto-style16">
						<asp:Button ID="btnLogs" runat="server" OnClick="btnLogs_Click" Text="Consultar Logs" />
					</td>
					<td class="auto-style17">
						<asp:Label ID="lblLogs" runat="server" Text="Logs"></asp:Label>
					</td>
					<td class="auto-style18"></td>
					<td class="auto-style19"></td>
				</tr>
				<tr>
					<td class="auto-style12">
						&nbsp;</td>
					<td class="auto-style13">
						<asp:GridView ID="gvLogs" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
							<AlternatingRowStyle BackColor="White" />
							<FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
							<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
							<PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
							<RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
							<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
							<SortedAscendingCellStyle BackColor="#FDF5AC" />
							<SortedAscendingHeaderStyle BackColor="#4D0000" />
							<SortedDescendingCellStyle BackColor="#FCF6C0" />
							<SortedDescendingHeaderStyle BackColor="#820000" />
						</asp:GridView>
					</td>
					<td class="auto-style15">&nbsp;</td>
					<td class="auto-style14">&nbsp;</td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
