$folder="D:\CODE\Jenkins";             # Directory to place the new folders in.
$txtFile="C:\Jenkins\workspace\CreateFolders-Step2\Folders.txt"; # File with list of new folder-names
$pattern=".+";              # Pattern that lines must match      


get-content $txtFile | %{

    if($_ -match $pattern)
    {
        mkdir "$folder\$_";
    }
}