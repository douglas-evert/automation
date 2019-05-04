<#
$users = Import-CSV "./users.csv"
$hashuser = @{}
foreach ($user in $users){
  $username = $user.username
  $firstName = $user.firstName
  $lastName = $user.lastName
  $name = "$lastName , $firstName"
  $hashuser.add($username,$name)

}
$hashuser
' '
$hashuser['devert']
#>
<#
$pipeline_files = get-childitem "./pipe/"
$pipe1 = @{}
$pipe2 = @{}
$i = 1
foreach ($pipeline in $pipeline_files){
  $users = import-csv $pipeline
  foreach ($user in $users){
    $username = $user.Username
    $firstName = $user.firstName
    $lastName = $user.lastName
    $name = "$lastName , $firstName"
    if ($i -eq 1){
      $pipe1.add($username,$name)
    }elseif($i -eq 2){
      $pipe2.add($username,$name)
    }

  }
  $i++
}
$pipe1
' '
$pipe2
#>
$scores = "WP", "X", "P", "I"
$pass = "V", "P", "CR", "S", "NE", "COMP", "Certified"
$fail = "E", "F", "I", "NB", "X", "AU", "U", "W", "WN", "WP", "WF", "INPO", "Expired"
foreach ($score in $scores){
  switch ($score) {
    {$pass -contains $_} {
      write-output "Passed"; 
      break;
    }
    {$fail -contains $_} {
      Write-output "Failed";
      break;
    }
    "default" {

    }
  }
}