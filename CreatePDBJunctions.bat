set /p dxBuild=Set major build (13.1/13.2/...):
rem set /p srcPath=Set Source path:
set srcPath=C:\Program Files (x86)\DevExpress %dxBuild%\Components\Sources


mkdir "C:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v%dxBuild%.2005"
chdir "C:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v%dxBuild%.2005"
mklink /j XPF "%srcPath%"
mklink /j Win "%srcPath%"
mklink /j ASP "%srcPath%"
chdir "%UserProfile%\Documents\Source Links"
mklink /j "Sources %dxBuild%" "%srcPath%"
chdir "%srcPath%\DevExpress.Mvvm\"
rename DevExpress.Mvvm.Wpf DevExpress.Mvvm
chdir "%srcPath%\DevExpress.Data\"
mklink /j DevExpress.Data "%srcPath%\DevExpress.Data\"
chdir "C:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v%dxBuild%.2005"
mklink /j XAF "%srcPath%\DevExpress.ExpressApp"
mklink /j X "%srcPath%\DevExpress.ExpressApp"
chdir "%srcPath%\DevExpress.ExpressApp\"
mklink /j DevExpress.ExpressApp.Modules "%srcPath%\DevExpress.ExpressApp.Modules"
mklink /j DevExpress.Persistent "%srcPath%\DevExpress.Persistent"

chdir "%srcPath%"
mkdir DevExpress.Dashboard.Web
chdir "%srcPath%\DevExpress.Dashboard.Web"
mklink /j DevExpress.Dashboard.Web "%srcPath%\DevExpress.Dashboard\DevExpress.Dashboard.Web"

chdir "%srcPath%"
mkdir DevExpress.Dashboard.Win
chdir "%srcPath%\DevExpress.Dashboard.Win"
mklink /j DevExpress.Dashboard.Win "%srcPath%\DevExpress.Dashboard\DevExpress.Dashboard.Win"

chdir "%srcPath%"
mkdir DevExpress.Dashboard.Core
chdir "%srcPath%\DevExpress.Dashboard.Core"
mklink /j DevExpress.Dashboard.Core "%srcPath%\DevExpress.Dashboard\DevExpress.Dashboard.Core"

chdir "%srcPath%"\DevExpress.Utils
mklink /j DevExpress.Utils "%srcPath%\DevExpress.Utils"

chdir "C:\Projects\%dxBuild%\BuildLabel\"
mklink /j tmp "C:\Projects\%dxBuild%\BuildLabel\Temp"

chdir "C:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v17.2.2005\XAF"
mklink /j DevExpress.ExpressApp.Modules "%srcPath%\DevExpress.ExpressApp.Modules\"

chdir "c:\Projects\%dxBuild%\BuildLabel\Temp\NetStudio.v18.1.2005\Win\DevExpress.XtraPivotGrid"
mklink /j DevExpress.XtraPivotGrid.Core "%srcPath%\DevExpress.XtraPivotGrid\DevExpress.PivotGrid.Core\"


pause