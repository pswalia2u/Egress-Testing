$udpobject = new-Object system.Net.Sockets.Udpclient(10000) # local port  
$a = new-object system.text.asciiencoding
for($i=1; $i -le 65535; $i++)
{
$byte = $a.GetBytes("chota-bheem") # set random text you want to send
$udpobject.Connect("127.0.0.1",$i) # set remote host IP
#Write-Host $i
[void]$udpobject.Send($byte,$byte.length)
}