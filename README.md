# pinger
TCL script for Cisco IOS to ping IPs
To run:<br>
At the # prompt enter tclsh
paste in the the first part of the script:
proc pinger { iplist } {
	  foreach ip $iplist {
	    if { [regexp "(!!!)" [exec "ping $ip timeout 1" ]] } {
	      puts "$ip **** good ****"
	    } else { puts "$ip **** failed ***" }
	  }
	}

Which IP's to ping?
type in pinger {
8.8.8.8
8.8.4.4
10.1.1.1
}

Here are the results.
8.8.8.8 **** good ****
8.8.4.4 **** good ****
10.1.1.1 **** failed ***

