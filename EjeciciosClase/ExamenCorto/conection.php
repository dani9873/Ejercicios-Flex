<?php
// FTP server details
$ftpUsername = 'ftpuser';
$ftpPassword = '*****';
$ftpHost = 'ftp://ftp.example.com';
$ip1='10.60.1.200';
$ip2='10.60.1.195';
$ip3='192.168.1.1';
// open an FTP connection
$connId = ftp_connect($ftpHost) or die("Couldn't connect to $ftpHost");
// login to FTP server
$ftpLogin = ftp_login($connId, $ftpUsername, $ftpPassword);
// local & server file path
$localFilePath = 'index.php';
$remoteFilePath = 'public_html/index.php';
// try to upload file
if(ftp_put($connId, $remoteFilePath, $localFilePath, FTP_ASCII)){
echo "File transfer successful - $localFilePath";
}else{
echo "There was an error while uploading $localFilePath";
}
// close the connection
ftp_close($connId);
?>