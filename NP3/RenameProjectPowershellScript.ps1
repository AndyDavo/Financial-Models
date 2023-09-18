#Replace PROJECTNAME WITH YOUR PROJECTCODE

$DefaultFiles =  Get-ChildItem | Where-Object {$_.Name -like "*PROJECTCODE*"}
ForEach($File in $DefaultFiles) 
{
   $newname = ([String]$File).Replace("PROJECTCODE","NP3")
    Rename-item -Path $File $newname
}
