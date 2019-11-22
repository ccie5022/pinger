# pinger
TCL script for Cisco IOS to ping IPs<br>
To run:<br>
At the # prompt enter tclsh<br>
paste in the the first part of the script:<br>
proc pinger { iplist } {<br>
	  foreach ip $iplist {<br>
	    if { [regexp "(!!!)" [exec "ping $ip timeout 1" ]] } {<br>
	      puts "$ip **** good ****"<br>
	    } else { puts "$ip **** failed ***" }<br>
	  }<br>
	}<br>
<br>
Which IP's to ping?<br>
type in pinger {<br>
8.8.8.8<br>
8.8.4.4<br>
10.1.1.1<br>
}<br>
<br>
Here are the results.<br>
8.8.8.8 **** good ****<br>
8.8.4.4 **** good ****<br>
10.1.1.1 **** failed ***<br>
