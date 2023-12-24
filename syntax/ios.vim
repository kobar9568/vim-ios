" Vim syntax file
" Language: Cisco IOS config file
" Maintainer: Ryota Kobayashi
" Latest Revision: 25 December 2023

if exists("b:current_syntax")
  finish
endif

" Keywords
"
"Patterns were referred to woodjme/vscode-cisco-syntax.
syntax match Error /^\s*no /
syntax match Function /access-list/
syntax match String /crypto /
syntax region String start=/\^C/ skip=/\\/ end=/\^C/ extend contains=SpecialChar
syntax match String /any[46]? /
syntax match Constant /deny /
syntax match Special /permit /

" [TODO]
syntax match Delimiter /object-group/
syntax match Delimiter /object/
syntax match Delimiter /host/

syntax match Comment /^[\s]*!(.*)/
syntax match Number /static/
syntax match Stracture /tunnel-group/
syntax match Stracture /crypto/

" [TODO]
syntax match Number /\d+\.\d+\.\d+\.\d+(\/\d{1,2})?/
syntax match Number /[0-9a-fA-F]{0,4}:([0-9a-fA-F]{0,4}:)+[0-9a-fA-F]{0,4}(\/\d{1,3})?/

syntax match Error /(\bshutdown\b|^boot-(start|end)-marker)/
syntax match Statement /((^$|no )(interface|line|ip (access-list (extended|standard)|dhcp (pool|excluded-address)|route|classless|subnet-zero|nat|http|local pool|flow-export|flow-top-talkers|inspect|domain|ips|host)|router|voice-(card|port)|dial-peer|voice (translation-(rule|profile)|register (global|pool|dn)|service)|application$|crypto (pki|keyring|isakmp (profile|policy|client configuration)|ipsec (profile|transform-set)|(dynamic-)?map)|telephony-service|ephone(-dn)?|banner|(class|policy|route)-map|map-class)|\b(ssid|pvc|certificate)|service|clock|boot|logging|control-plane|aaa|(tftp|snmp|radius)-server|ntp|bridge|(access|dialer)-list|archive)\b/
syntax match Number /\b([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}|\h{1,4}\.\h{1,4}\.\h{1,4}(\.\h{1,2})?)\b/
syntax match String /\b((Fast|Gigabit|TenGigabit|FortyGigabit)?Ethernet|Dialer|Dot11Radio|ATM|BRI|Tunnel(Group-)?Async|BVI|[Ll]oopback|Null|[Pp]ort-channel|Virtual-(Access|Dot11Radio|PPP|Template)|TenGigE|TwentyFiveGigE|HundredGigE|tunnel-ip|Bundle-Ether|MgmtEth0)/
syntax match String /\binterface/
syntax match Comment /^!.*$/
syntax match Comment /\b(description|remark|system message)\s.*$/
syntax match String /\bno\b/
syntax match String /^version.*$/
syntax match Keyword /^(username|hostname|enable)\b/
syntax match Keyword /\b(network|passive-interface|redistribute|auto-summary|synchronization|bgp|neighbor|default-information)\b/
syntax match Keyword /\b(ip (address|unnumbered|proxy-arp|nat|nbar|virtual-reassembly|access-group|verify)|speed|(full-|half-)?duplex|cdp enable|encapsulation|dialer(-group)?|compress|ppp|crypto|channel|station-role|encryption|broadcast-key|snmp|isdn|dsl|tunnel|bandwidth|fair-queue|physical-layer|async mode|peer default|switchport|media-type|clockrate)\b/
syntax match Keyword /\b(ipv(4|6) (address|address-family|unnumbered|proxy-arp|nat|nbar|virtual-reassembly|access-group|verify)|speed|(full-|half-)?duplex|cdp enable|encapsulation|dialer(-group)?|compress|ppp|crypto|channel|station-role|encryption|broadcast-key|snmp|isdn|dsl|tunnel|bandwidth|fair-queue|physical-layer|async mode|peer default|switchport|media-type|clockrate|bundle|vrf|mtu|lacp|bfd)\b/
