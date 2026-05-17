# Add-type -AssemblyName System.Windows.Forms
# Add-type -AssemblyName System.Drawing
# Add-type -AssemblyName Microsoft.VisualBasic

# function tamanhoFormulario {
#     param (
#         [int]$Largura,
#         [int]$Altura
        
#     )
#     return New-Object System.Drawing.Size($Largura, $Altura)
# }

# function posicao {
#      param (
#         [int]$linha,
#         [int]$coluna
#     )
#     return New-Object System.Drawing.Point($coluna, $linha)
# }

# #declaração de iniciação dos componentes do formulário
# $form = New-Object System.Windows.Forms.Form
# $label = New-Object System.Windows.Forms.Label
# $textBox = New-Object System.Windows.Forms.TextBox
# $button = New-Object System.Windows.Forms.Button

# #desenho do $form
# $form.Text = "Minha primeira tela"
# $form.Size = (tamanhoFormulario 350 250)
# $form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

# #Desenho do label
# $label.location = (posicao 20 20)
# $label.Size = (tamanhoFormulario 280 20)
# $label.Text = "Digite seu nome:"
# $form.Controls.Add($label)

# #Desenho do textBox
# $textBox.location = (posicao 20 50)
# $textBox.Size = (tamanhoFormulario 280 20)
# $form.Controls.Add($textBox)

# #Desenho do button
# $button.location = (posicao 20 80)
# $button.Size = (tamanhoFormulario 100 30)
# $button.Text = "OK"
# $button.Add_Click(
#     {
#         [Microsoft.VisualBasic.Interaction]::MsgBox("Olá, $($textBox.Text)!")
#     }
# )

# $form.Controls.Add($button)

# #Exibir o formulário
# $form.Add_Shown({$form.Activate()})
# [System.Windows.Forms.Application]::Run($form)

Add-type -AssemblyName System.Windows.Forms
Add-type -AssemblyName System.Drawing
Add-type -AssemblyName Microsoft.VisualBasic

function New-Size {
    param ([int]$Largura, [int]$Altura)
    New-Object System.Drawing.Size($Largura, $Altura)
}

function New-Point {
    param ([int]$x, [int]$y) # X = Horizontal, Y = Vertical
    New-Object System.Drawing.Point($x, $y)
}

# Iniciação
$form = New-Object System.Windows.Forms.Form
$label = New-Object System.Windows.Forms.Label
$textBox = New-Object System.Windows.Forms.TextBox
$button = New-Object System.Windows.Forms.Button

# Configuração do Form (Aumentei a largura para 350)
$form.Text = "Minha primeira tela"
$form.Size = New-Size 350 250
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

# Label (X=20, Y=20)
$label.Location = New-Point 20 20
$label.Size = New-Size 280 20
$label.Text = "Digite seu nome:"
$form.Controls.Add($label)

# TextBox (X=20, Y=50)
$textBox.Location = New-Point 20 50
$textBox.Size = New-Size 280 20
$form.Controls.Add($textBox)

# Button (X=20, Y=90)
$button.Location = New-Point 20 90
$button.Size = New-Size 100 30
$button.Text = "OK"
$button.Add_Click({
    [Microsoft.VisualBasic.Interaction]::MsgBox("Olá, $($textBox.Text)!")
})
$form.Controls.Add($button)

# Exibição
$form.Add_Shown({$form.Activate()})
$form.ShowDialog() # Mais seguro para scripts do que o Application::Run