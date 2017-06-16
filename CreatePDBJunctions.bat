set /p dxBuild=Set major build (13.1/13.2/...):
rem set /p srcPath=Set Source path:
set srcPath=C:\Program Files (x86)\DevExpress %dxBuild%\Components\Sources


mkdir "C:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v%dxBuild%.2005"
chdir "C:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v%dxBuild%.2005"
mklink /j XPF "%srcPath%"
mklink /j Win "%srcPath%"
chdir "%UserProfile%\Documents\Source Links"
mklink /j "Sources %dxBuild%" "%srcPath%"
chdir "%srcPath%\DevExpress.Mvvm\"
rename DevExpress.Mvvm.Wpf DevExpress.Mvvm
chdir "%srcPath%\DevExpress.Data\"
mklink /j DevExpress.Data "%srcPath%\DevExpress.Data\"
chdir "C:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v%dxBuild%.2005"
mklink /j XAF "%srcPath%\DevExpress.ExpressApp"
chdir "%srcPath%\DevExpress.ExpressApp\"
mklink /j DevExpress.ExpressApp.Modules "%srcPath%\DevExpress.ExpressApp.Modules"
pause