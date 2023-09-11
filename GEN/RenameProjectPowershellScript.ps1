#Replace PROJECTNAME WITH YOUR PROJECTCODE

$DefaultFiles =  Get-ChildItem | Where-Object {$_.Name -like "*GEN*"}
ForEach($File in $DefaultFiles) 
{
   $newname = ([String]$File).Replace("GEN","PROJECTCODE")
    Rename-item -Path $File $newname
}
