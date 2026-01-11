BEGIN k9sodfis


IF ~!InParty("Sharteel") Global("k9Sharteel_Guard","GLOBAL",0)~ THEN BEGIN 0

SAY @1
+~StateCheck("k9sodfis",STATE_CHARMED)~+ @2 GOTO 5
++ @3 GOTO 1
++ @4 GOTO 2
END

IF ~~ THEN BEGIN 1

SAY @5 IF ~~ THEN DO ~ SetGlobal("k9Sharteel_Talk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2

SAY @6
+~StateCheck("k9sodfis",STATE_CHARMED)~+ @7 GOTO 5
+~OR(2) ReputationGT(Player1,16) CheckStatGT(Player1,14,CHR)~+ @8 GOTO 3
+~CheckStatGT(Player1,14,STR)~+ @9 GOTO 4
+~PartyHasItem("k9eltle2") CheckStatGT(Player1,5,CHR)~+ @10 GOTO 3
++ @11 DO ~AddJournalEntry(@665567, QUEST) SetGlobal("k9NarlenTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3

SAY @12 IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4

SAY @13 IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5

SAY @14 IF ~~ THEN DO ~SetGlobal("k9shar_unlock_door","GLOBAL",1) SetGlobal("k9Sharteel_Guard","GLOBAL",1) SetGlobal("k9Sharteel_Guard_FREE","GLOBAL",1)~ EXIT
END

IF ~InParty("Sharteel")~ THEN BEGIN 6
SAY @15
+~Global("k9Sharteel_Item_GIVE","GLOBAL",0)~+ @16 GOTO 7
++ @17 EXIT
END

IF ~~ THEN BEGIN 7
SAY @18 IF ~~ THEN DO ~GiveItemCreate("sw1h08",LastTalkedToBy,0,0,0) GiveItemCreate("sw1h07",LastTalkedToBy,0,0,0)  GiveItemCreate("helm01",LastTalkedToBy,0,0,0) GiveItemCreate("leat06",LastTalkedToBy,0,0,0) SetGlobal("k9Sharteel_Item_GIVE","GLOBAL",1) AddJournalEntry(@665571,QUEST)~ EXIT

END


