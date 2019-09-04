Add-Type -AssemblyName System.Windows.Forms



$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = "CSB-190517-1-FCT-EMS-SQL-DB-Correction-for-Upgrade"
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true

$labelInformation = New-Object System.Windows.Forms.Label
$labelInformation.Text = "Output message : "
$labelInformation.Location = New-Object System.Drawing.Point(0,10)
$labelInformation.AutoSize = $true
$main_form.Controls.Add($labelInformation)

$labelOutputMessage = New-Object System.Windows.Forms.Label
$labelOutputMessage.Text = "OUTPUT"
$labelOutputMessage = New-Object System.Drawing.Point(50.10)
$labelOutputMessage.AutoSize = $true
$main_form.Controls.Add($labelOutputMessage)


$buttonCheckConnection = New-Object System.Windows.Forms.Button
$buttonCheckConnection.Text = "Check SQL Connection"
$buttonCheckConnection.Location = New-Object System.Drawing.Point(10,40)
$buttonCheckConnection.AutoSize = $false
$buttonCheckConnection.Size = (50,100)
$main_form.Controls.Add($buttonCheckConnection)

$buttonCheckConnection.Add_Click(
    {
        $labelInformation.Text = "Czy  dziala??"
        $labelInformation.Text = "Tak działa"
    }  
)




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