#Replace PROJECTNAME WITH YOUR PROJECT NAME

$DefaultFiles =  Get-ChildItem | Where-Object {$_.Name -like "*GEN*"}
ForEach($File in $DefaultFiles) 
{
   $newname = ([String]$File).Replace("GEN","PROJECTNAME")
    Rename-item -Path $File $newname
}

#ls *.* | Rename-Item -NewName {$_.name -re12:32 27/08/2023place "Default","VOD"}