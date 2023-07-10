$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Update-ZNSettingsAiRuleReview.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Update-ZNSettingsAiRuleReview' {
    It 'UpdateExpanded' {
        $setting = Get-ZNSettingsAiRuleReview
        if(($setting.RuleClassesList) -eq 3){
            $newsetting = 6
        }else{
            $newsetting = 3
        }
        Update-ZNSettingsAiRuleReview -RuleClassesList @($newsetting) -PostponeProtection
        $updatedSetting = Get-ZNSettingsAiRuleReview
        $updatedSetting.RuleClassesList | should -be $newsetting
    }
}
