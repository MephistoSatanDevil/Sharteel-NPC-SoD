BEGIN Bk9shart

CHAIN IF ~InParty("Sharteel")  InParty("Edwin")
See("Edwin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelEdwin","GLOBAL",1) GlobalGT("BD_Plot","GLOBAL",0) !AreaCheck("BD0120") !AreaCheck("BD0130")~ THEN bdshartj k9SharteelEdwin1
@1
DO ~SetGlobal("k9SharteelEdwin","GLOBAL",2)~
== BDEDWINJ @2
== bdshartj @3
== BDEDWINJ @4
EXIT



CHAIN IF ~InParty("Sharteel")  InParty("Corwin")
See("Corwin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelCorwin","GLOBAL",1)  ~ THEN bdshartj k9SharteelCorwin1
@5
DO ~SetGlobal("k9SharteelCorwin","GLOBAL",2)~
== BDCORWIJ @6
EXIT


CHAIN IF ~InParty("Sharteel")  InParty("Corwin")
See("Corwin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelCorwin","GLOBAL",3)  ~ THEN bdshartj k9SharteelCorwin2
@7
DO ~SetGlobal("k9SharteelCorwin","GLOBAL",4)~
== BDCORWIJ @8
== bdshartj @9
EXIT


CHAIN IF ~InParty("Sharteel")  InParty("Dynaheir")
See("Dynaheir")
See("Sharteel")
!ActuallyInCombat()   InParty("Minsc")
Global("k9SharteelDynaheir","GLOBAL",1)  ~ THEN bdshartj k9SharteelDynaheir1
@10
DO ~SetGlobal("k9SharteelDynaheir","GLOBAL",2)~
== BDDynahj @11
== bdshartj @12
== BDDynahj @13
EXIT



CHAIN IF ~InParty("Sharteel")  InParty("MKHIIN")
See("Mkhiin")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelMkhiin","GLOBAL",1)  ~ THEN bdshartj k9SharteelMKHIIN1
@14
DO ~SetGlobal("k9SharteelMkhiin","GLOBAL",2)~
== BDMKHIIJ @15
EXIT



CHAIN IF ~InParty("Sharteel")  
InParty("Jaheira")
InParty("Khalid")
See("Khalid")
See("Jaheira")
See("Sharteel")
!ActuallyInCombat()
Global("k9SharteelJaheira","GLOBAL",1)  ~ THEN bdshartj k9SharteelJaheira1
@16
DO ~SetGlobal("k9SharteelJaheira","GLOBAL",2)~
== BDJAHEIJ @17
== bdshartj @18
== BDJAHEIJ @19
= @20
EXIT