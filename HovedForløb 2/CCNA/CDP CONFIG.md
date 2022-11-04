Configure and Verify CDP:
```bash
cdp er en cisco propriatary.
vis cdp informtion
# show cdp

tænd/sluk for cdp
(config)# no cdp run
(config)# exit
# show cdp
her skulle den gerne sige: "cdp is not enabled"
#configure terminal
(config)# cdp run

Det samme kan gøres på individuelle interfaces.
(config)# interface gigabitethernet 0/0/1
(config-if)# cdp enable

få vist de omkring liggende devices der sender cdp advertisements
# show cdp neighbors
der er flere muligheder, brug "?" for at se dem!

Få vidst de cdp enablede interfaces
# show cdp interface
```

Configure and Verify LLDP:
```bash
Dette er en non-proprietary udgave, den gør det samme som cdp.
(config)# lldp run
(config)# interface gigabitethernet 0/1
(config-if)# lldp transmit
(config-if)# lldp receive
(config-if)# end

Få vist lldp neibors:
# show lldp neighbors
brug "?" for muligheder!
```