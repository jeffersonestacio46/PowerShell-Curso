#InputBox na parte gráfica
#   prompt - Mensagem que o sistema pede para o usuario digitar
#   title - Titulo da caixa do inputbox
#   default - valor pré_digitado
#   xpos - Coluna que será apresentada a caixa do inputbox
#   ypos - Linha que será apresentada a caixa do inputbox



add-type -AssemblyName Microsoft.VisualBasic
$interacao = [Microsoft.VisualBasic.Interaction]
$interacao::InputBox("Informe algo")