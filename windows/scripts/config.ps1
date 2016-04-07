# Configuration file
#
# Windows
#
$openstackDir = "C:\OpenStack"
$pythonDir = "C:\Python27"
$configDir = "$openstackDir\etc"
$downloadLocation = "http://dl.openstack.tld/"
$scriptdir = "C:\cinder-ci"

$templateDir = "$scriptdir\windows\templates"
$cinderTemplate = "$templateDir\cinder.conf"
$pythonDir = "C:\Python27"
$pythonExec = "python.exe"
$pythonArchive = "python27.tar.gz"
$lockPath = "C:\Openstack\locks"
$remoteLogs="\\"+$devstackIP+"\openstack\logs"
$remoteConfigs="\\"+$devstackIP+"\openstack\config"

$eventlogPath= "C:\OpenStack\Logs\Eventlog"
$eventlogcsspath = "$templateDir\eventlog_css.txt"
$eventlogjspath = "$templateDir\eventlog_js.txt"