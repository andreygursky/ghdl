Write-Host "Print env:PATH..."
$env:PATH.Split(";") | % { Write-Host "  $_" }
Write-Host "Print GCC setup..."
c:\msys64\mingw64\bin\gcc.exe -v 2>&1 | %{ "$_" }
Write-Host "Print GCC search directories..."
c:\msys64\mingw64\bin\gcc.exe -print-search-dirs
Write-Host "Print CLang setup..."
c:\msys64\mingw64\bin\clang.exe -v 2>&1 | %{ "$_" }
Write-Host "Print CLang search directories..."
c:\msys64\mingw64\bin\clang.exe -print-search-dirs
