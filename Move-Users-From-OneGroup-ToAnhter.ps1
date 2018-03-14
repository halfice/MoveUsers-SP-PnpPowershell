Connect-PNPOnline -url "*******************" -Credentials MyManager 
$Sourcegroup = Get-PnPGroup -Identity "GroupName"  | Select-Object Title,Users  
$DestGroupTitle="Destination Group";
foreach ($item in $Sourcegroup.Users)
{
$temp="i:0#.f|membership|"+$item.Email;
Add-PnPUserToGroup  -LoginName $temp -Identity $GroupTitle
}
