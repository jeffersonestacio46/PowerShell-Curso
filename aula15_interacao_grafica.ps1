
# MsgBox
# Texto da caixa
    # informamos o texto a ser exibido
# buttons
    # Grupo botões
    #     0 - Só botão ok
    #     1 - Botões ok e cancelar
    #     2 - Botões anular, repetir e ignorar
    #     3 - Botões sim, não e cancelar
    #     4 - Botões sim e não
    #     5 - Botões repetir e cancelar
    # Grupo dos icones
    #     0 - Sem ícone
    #     16 - Ícone de crítica
    #     32 - Ícone de questão
    #     48 - Ícone de exclamação
    #     64 - Ícone de informação
    # Grupo dos botoões padrão
    #     0 - O primeiro botão será o botão padrão
    #     256 - O segundo botão será o botão padrão
    #     512 - O terceiro botão será o botão padrão
    #     768 - O quarto botão será o botão padrão
    # Grupo do modal #fica fixo na tela, não permite clicar em outra janela
    #     0 - Sem modal
    #     4096 - Com modal
# Títulos
    # informamos o título da caixa de mensagem

Add-Type -AssemblyName Microsoft.VisualBasic
#[Microsoft.VisualBasic.Interaction]::MsgBox("Olá, mundo!",4096, "ATENÇÃO")
$interacao = [Microsoft.VisualBasic.Interaction]
$interacao::MsgBox("Olá, mundo!",4096, "ATENÇÃO")