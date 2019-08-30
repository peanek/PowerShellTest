Add-Type -AssemblyName System.Windows.Forms



$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = "CSB-190517-1-FCT-EMS-SQL-DB-Correction-for-Upgrade"
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true

# 2019_07_10
$main_form.StartPosition = "CenterScreen"


#

#background
$backgroundImage = [system.drawing.image]::FromFile(".\forti.jpg")
$main_form.BackgroundImage = $backgroundImage

#

$labelInformation = New-Object System.Windows.Forms.Label
$labelInformation.Text = "Output message : "
$labelInformation.Location = New-Object System.Drawing.Point(0,10)
$labelInformation.AutoSize = $true
$main_form.Controls.Add($labelInformation)

$labelOutputMessage = New-Object System.Windows.Forms.Label
$labelOutputMessage.Text = "OUTPUT"
$labelOutputMessage.Location = New-Object System.Drawing.Point(100,10)
$labelOutputMessage.AutoSize = $true
$main_form.Controls.Add($labelOutputMessage)

$buttonCSB

$buttonCheckConnection = New-Object System.Windows.Forms.Button
$buttonCheckConnection.Text = "Check SQL Connection"
$buttonCheckConnection.Location = New-Object System.Drawing.Point(10,40)
$buttonCheckConnection.AutoSize = $false
$buttonCheckConnection.Size =  (50,100)
$main_form.Controls.Add($buttonCheckConnection)



$buttonCheckConnection.Add_Click(
    {

        $labelOutputMessage.Text = "Is it working?"
        $

    }  
)

$textSqlQuery = New-Object System.Windows.Forms.TextBox
$textSqlQuery.Text = "SQL Query put here"
$textSqlQuery.Location = New-Object System.Drawing.Point(10,100)
$textSqlQuery.Size = New-Object System.Drawing.Size(500,500)
#$textSqlQuery.AutoSize = $true
$main_form.Controls.Add($textSqlQuery)

 





$labelInformation


$main_form.ShowDialog()






<#Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Executing SQL script'
$main_form.Width = 500
$main_form.Height = 600
$main_form.AutoSize = $true
$main_form.ShowDialog()

Add. 

Get-

#>