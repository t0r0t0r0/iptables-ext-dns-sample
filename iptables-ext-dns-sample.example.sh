#!/bin/bash
######################################################
DNSSERVER=$1
dig SOA example.ne.jp @${DNSSERVER} +time=1
dig ANY example.ne.jp @${DNSSERVER} +time=1
dig A example.ne.jp @${DNSSERVER} +time=1
dig AAAA example.ne.jp @${DNSSERVER} +time=1
dig CNAME example.ne.jp @${DNSSERVER} +time=1
dig MX example.ne.jp @${DNSSERVER} +time=1
dig NS example.ne.jp @${DNSSERVER} +time=1

dig A example.net @${DNSSERVER} +time=1
dig A example.jp @${DNSSERVER} +time=1
dig ANY example.jp @${DNSSERVER} +time=1
dig A no12345678901234567890.example.org @${DNSSERVER} +time=1
dig A example.co.jp +tcp @${DNSSERVER} +time=1
dig A example.ad.jp +norec @${DNSSERVER} +time=1
dig A example.or.jp +rec @${DNSSERVER} +time=1
