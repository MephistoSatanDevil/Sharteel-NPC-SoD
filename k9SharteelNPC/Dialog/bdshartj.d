BEGIN bdshartj


IF ~Global("k9Sharteel_Party_Talk","GLOBAL",1)~ THEN BEGIN 0

SAY @1 IF ~~ THEN DO ~AddJournalEntry(@665566,QUEST_DONE) SetGlobal("k9Sharteel_Party_Talk","GLOBAL",2)~ EXIT
END


//Responding to Duke Eltan
IF ~~ THEN BEGIN 1

SAY @2 IF ~~ THEN  EXTERN bdeltan 34
END

IF ~Global("k9Sharteel_Talk_ELTAN","GLOBAL",1)~ THEN BEGIN 2
SAY @3
++ @4 GOTO 3
++ @5 GOTO 4
++ @6 GOTO 5
++ @7 DO ~SetGlobal("k9Sharteel_shutup","GLOBAL",1) SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 3

SAY @8 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 4

SAY @9 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 5

SAY @10 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_ELTAN","GLOBAL",2)~ EXIT
END

IF ~Global("k9Sharteel_Talk_BRIDGE","GLOBAL",1)~ THEN BEGIN 6
SAY @11 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_BRIDGE","GLOBAL",2)~ EXIT
END

IF ~Global("k9Sharteel_Talk_LEVER","GLOBAL",1)~ THEN BEGIN 7
SAY @12 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_LEVER","GLOBAL",2)~ EXIT
END

IF ~Global("k9Sharteel_Talk_LEVER_FREE","GLOBAL",1)~ THEN BEGIN 8
SAY @13 IF ~~ THEN DO ~SetGlobal("k9Sharteel_Talk_LEVER_FREE","GLOBAL",2)~ EXIT
END


