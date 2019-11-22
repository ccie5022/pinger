tclsh
proc pinger { iplist } {
	  foreach ip $iplist {
	    if { [regexp "(!!!)" [exec "ping $ip timeout 1" ]] } {
	      puts "$ip **** good ****"
	    } else { puts "$ip **** failed ***" }
	  }
	}
pinger {
8.8.8.8
8.8.4.4
10.1.1.1
10.1.1.2
}
