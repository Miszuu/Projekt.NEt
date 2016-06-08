<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rekrutujemy.aspx.cs" Inherits="WebApplication9.Rekrutujemy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS_Rekrutujemy.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="srodek">
                <div style="text-align: center; font-size: 30px;">Wypełnij Ankiete</div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

                <div class="lacze">
                    <div class="lewy">
                        <div class="przerwy">Imie:</div>
                        <div class="przerwy">Naziwsko:</div>
                        <div class="przerwy">Email:</div>
                        <div class="przerwy">Rasa:</div>
                    </div>
                    <div class="prawy">
                        <asp:TextBox ID="TBImie" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFVImie" runat="server" ControlToValidate="TBImie" ErrorMessage="Pole imie jest obowiazkowe" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="TBNazwisko" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFVNazwisko" runat="server" ControlToValidate="TBNazwisko" ErrorMessage="Pole nazwisko jest obowiazkowe" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="TBEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RFVEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TBEmail" ErrorMessage="Zły Format Email. np user@domena.domena" Text="*" ForeColor="Red">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBEmail" ErrorMessage="Pole email jest obowiazkowe" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator><br />
                        <asp:DropDownList ID="DDLRasa" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="T">Terran</asp:ListItem>
                            <asp:ListItem Value="Z">Zerg</asp:ListItem>
                            <asp:ListItem Value="P">Protoss</asp:ListItem>
                        </asp:DropDownList>
                    </div>



                    <div class="lacze">
                        <div  class="lewy"><br /><br /><br /><br />
                            W które dni możesz grać:
                        </div>
                        <div class="prawy">
                            <asp:CheckBoxList ID="CBLDniTygodnia" runat="server">
                                <asp:ListItem>Poniedziałek</asp:ListItem>
                                <asp:ListItem>Wtorek</asp:ListItem>
                                <asp:ListItem>Środa</asp:ListItem>
                                <asp:ListItem>Czwartek</asp:ListItem>
                                <asp:ListItem>Piątek</asp:ListItem>
                                <asp:ListItem>Sobota</asp:ListItem>
                                <asp:ListItem>Niedziela</asp:ListItem>
                            </asp:CheckBoxList>
                        </div>
                      <asp:CustomValidator runat="server" ID="ZnaneSsytemyValdator" ClientValidationFunction="ValidateCheckBoxList" ErrorMessage="Conajzmniej 1 dzien jest obwiązkowy" Text="*" ForeColor="Red"></asp:CustomValidator>
                    </div>

                          <div class="lacze">
                            <div class="lewy"><br />
                               Czy to jest twoja pierwsza druzyna ?
                            </div>
                            <div class="prawy">
                                <asp:RadioButtonList ID="RBVtakNie" runat="server" AutoPostBack="True">
                                    <asp:ListItem>tak</asp:ListItem>
                                    <asp:ListItem>nie</asp:ListItem>
                                </asp:RadioButtonList>
                                <div>
                                    <asp:RequiredFieldValidator ID="RFVtakNieRBV" runat="server" ControlToValidate="RBVtakNie" ErrorMessage="Pole czy to jest twoja pierwsza druzyna jest obowiazkowe" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
                            </div>
                        </div>
                     <asp:Button ID="Wroc" runat="server" Text="Wroc" OnClick="Wroc_Click" CausesValidation="false" ></asp:Button>
                     <asp:Button ID="Zatwierdz" runat="server" Text="Zatwierdz" OnClick="Zatwierdz_Click" ></asp:Button>
                </div>
            </div>
           
        </div>


           <script type="text/javascript">
               function ValidateCheckBoxList(sender, args) {
                   var checkBoxList = document.getElementById("<%=CBLDniTygodnia.ClientID %>");
              var checkboxes = checkBoxList.getElementsByTagName("input");
              var isValid = false;
              for (var i = 0; i < checkboxes.length; i++) {
                  if (checkboxes[i].checked) {
                      isValid = true;
                      break;
                  }
              }
              args.IsValid = isValid;
          }
</script>

    </form>
</body>
</html>
