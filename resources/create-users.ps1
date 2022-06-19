param ( [Parameter(Mandatory=$true)] $jsonFile )

Write-Host $jsonFile

$json = (Get-Content $jsonFile | ConvertFrom-Json)

Write-Host $json.password
Write-Host $json.namespace


function CreateGroups() {

}

function CreateADAccount() {
    # Parameter help description
    param ( [Parameter(Mandatory=$true)] $jFile )

    
}

