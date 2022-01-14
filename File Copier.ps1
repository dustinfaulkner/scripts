$Numberofcopiesarray = (1..10)
$files = Get-ChildItem -Path C:\Users\Dfaulkn10\Documents\TEST\*


ForEach ($numberofcopies in $Numberofcopiesarray){
    ForEach ($file in $files){

        Copy-Item -Path $file   -Destination ($file.BaseName + $numberofcopies + ".png")
        
    }
}