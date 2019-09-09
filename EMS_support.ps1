######################################################################## 
# Code Generated By: Fortinet Corporation 
# Generated On: 05/09/2019 17:00 AM 
# Generated By: ppeczkowski@fortinet.com
########################################################################


#Generate Form Function
function generateForm {
    #region import System. assembly
    [reflection.assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
    [reflection.assembly]::LoadWithPartialName("System.Drawing") | Out-Null
    # [System.windows.Forms.Application]::EnableVisualStyles()
    #end region
    
    #region generate form objects code
    $main_form = New-Object System.Windows.Forms.Form
    $credentialsProviderButton = New-Object System.Windows.Forms.Button 

    $credentialsProviderForm = New-Object System.Windows.Forms.Form

    #end region 'region generate form objects code'

    #main form
    $main_form.Font = 'Consolas,8'
    $main_form.Text = 'EMS tools v1.0'
    $main_form.Name = 'EMS tools form'
    $main_form.DataBindings.DefaultDataSourceUpdateMode = 0

    $drawing_size = New-Object System.Drawing.Size
    $drawing_size.Width = 400
    $drawing_size.Height = 300
    $main_form.Size = $drawing_size
    #end main form

    #credentialsProviderButton
    $credentialsProviderButton.Text = "Provide credentials"
    $drawing_size = New-Object System.Drawing.Size
    $drawing_size.Width = 50
    $drawing_size.Height = 50

    $credentialsProviderButton.Size = $drawing_size
    $credentialsProviderButton.Location = New-Object System.Drawing.Point(150,150)
    $main_form.Controls.Add($credentialsProviderButton)
    

    function generateCredentialForm {
        # param (
        #     OptionalParameters
        # )
        $labelCredentialUser = New-Object System.Windows.Forms.Label
        $labelCredentialUser.Size = (10,50)
        $labelCredentialUser.Text = 'Pass login: '
        $labelCredentialUser.Location = New-Object System.Drawing.Point(5,5)

        $labelCredentialPassword = New-Object System.Windows.Forms.Label

        $credentialsProviderForm.Controls.Add($labelCredentialUser)
        
        $credentialsProviderForm.Text = 'Credentials Provider'
        $drawing_size.Width = 250
        $drawing_size.Height = 100
        $credentialsProviderForm.Size = $drawing_size
        $credentialsProviderForm.ShowDialog()

        ## ADD CONTROL OF CLOXING WINDOW BY X !!!!


    }


    $credentialsProviderButton.Add_Click(
        {
            generateCredentialForm
            $labelStatusBar.Text 
        }
    )


    
    #end credentialsProviderButton




    #labelInformation 
    $labelStatusBar = New-Object System.Windows.Forms.Label
    $labelStatusBar.Size.Height = 20
    $labelStatusBar.Size.Width = 400
    $labelStatusBar.AutoSize = $true
    

    $labelStatusBar.Location = New-Object System.Drawing.Point(5,235)
    # $labelStatusBar.Font = 'Consolas,8'
    $main_form.Controls.Add($labelStatusBar)
    $labelStatusBar.Text = 'Status: OK !'

    #end labelInformation


    $main_form.ShowDialog()
    #end region
    
    

}
generateForm











