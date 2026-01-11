APPEND bshart

CHAIN IF ~InParty("Sharteel")  InParty("Edwin")
See("Edwin")
See("Sharteel")
!ActuallyInCombat()         GlobalGT("chapter","GLOBAL",7)
Global("k9SharteelEdwin","GLOBAL",0)~ THEN BShart k9SharteelEdwin1
@1
DO ~SetGlobal("k9SharteelEdwin","GLOBAL",1)~
== BEDWIN @2
== Bshart @3
== BEDWIN @4
EXIT
END

