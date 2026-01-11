BEGIN bdsharte


IF ~Global("k9SharTeelPrison","GLOBAL",0)~ THEN BEGIN 0

SAY @1
+~Global("k9shar_unlock_door","GLOBAL",1)~+ @2 GOTO 11
+~GlobalGT("k9eltanSharteelDiscovery","GLOBAL",1)~+ @3 GOTO 18
+~Gender(Player1Fill,FEMALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @4 GOTO 3
+~Gender(Player1Fill,FEMALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @4 GOTO 4
+~Gender(Player1Fill,MALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @4 GOTO 1
+~Gender(Player1Fill,MALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @4 GOTO 5
+~Gender(Player1Fill,MALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @5 GOTO 1
+~Gender(Player1Fill,MALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @6 GOTO 2
+~Gender(Player1Fill,MALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @6 GOTO 2
+~Gender(Player1Fill,FEMALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @5 GOTO 3
+~Gender(Player1Fill,FEMALE) !BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @6 GOTO 4
+~Gender(Player1Fill,FEMALE) BeenInParty("Sharteel") GlobalLT("k9eltanSharteelDiscovery","GLOBAL",2)~+ @6 GOTO 4
END

IF ~~ THEN BEGIN 1

SAY @7 
++ @8 GOTO 6
END




IF ~~ THEN BEGIN 2

SAY @9 IF ~~ GOTO 20
END



IF ~~ THEN BEGIN 3

SAY @10
++ @11 GOTO 6
END




IF ~~ THEN BEGIN 4

SAY @12 IF ~~ GOTO 12
END


IF ~~ THEN BEGIN 5
SAY @13 IF ~~ GOTO 12
END


IF ~~ THEN BEGIN 6

SAY @14
++ @15 GOTO 8
++ @16 GOTO 10
END

IF ~~ THEN BEGIN 7

SAY @17 
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @18 GOTO 11
++ 19 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) ~ EXIT
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ @20 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST) ~ EXIT
++ @21 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 8

SAY @22
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @23 GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @24 GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ @20 DO ~ SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ @21 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 9

SAY @25
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @26 GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @27 GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ @20 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ @21 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN 10

SAY @25
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @29 GOTO 11
++ @30 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 11

SAY @31 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",2) SetGlobal("k9SharTeelPrison","GLOBAL",1) SetGlobal("SharTeelJoined","GLOBAL",1) JoinParty()~ EXIT
END


IF ~~ THEN BEGIN 12

SAY @32
+~BeenInParty("Sharteel")~+ @33 GOTO 3
++ @33 GOTO 7
++ @35 GOTO 13
++ @36 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 13

SAY ~@37
+~BeenInParty("Sharteel")~+ @33 GOTO 3
++ @34 GOTO 7
++ @38 GOTO 9
++ @39 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN 14

SAY @40
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @41 GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @42 GOTO 11
++ @43 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~  EXIT
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ @20 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ @21 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 15

SAY @44
++ @45 GOTO 16
END

IF ~~ THEN BEGIN 16
SAY @46
++ @47 GOTO 17
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @48 GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ @20 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ @21 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) ~ EXIT
END

IF ~~ THEN BEGIN 17

SAY @49
++ @50 GOTO 7
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @51 GOTO 11
+~Global("k9Sharteel_Guard_FREE","GLOBAL",0)~+ @20 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) AddJournalEntry(@665570,QUEST)~ EXIT
++ @21 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0) ~ EXIT
END


IF ~~ THEN BEGIN 18
SAY @52
+~Gender(Player1Fill,MALE)~+ @53 GOTO 22
+~Gender(Player1Fill,FEMALE)~+ @53 GOTO 23
+~Global("k9Sharteel_Guard_FREE","GLOBAL",1)~+ @54 GOTO 19
++ @21 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN 19

SAY @55 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",2) SetGlobal("k9SharTeelPrison","GLOBAL",1) SetGlobal("SharTeelJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 20
SAY @56 IF ~~ GOTO 21
END

IF ~~ THEN BEGIN 21
SAY @57
+~BeenInParty("Sharteel")~+ @33 GOTO 1
++ @34 GOTO 7
++ @58 GOTO 9
++ @59 DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 22

SAY @60 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 23

SAY @61 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk","GLOBAL",0) SetGlobal("k9Sharteel_Talk_Talk","GLOBAL",0)~ EXIT
END

