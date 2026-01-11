BEGIN k9sodnar

IF ~GlobalGT("NarlenMove","GLOBAL",0) Dead("Resar") Global("k9NarlenLoop","GLOBAL",0)~ THEN BEGIN 0
SAY @1 IF ~~ THEN GOTO 1
END


IF ~~ THEN BEGIN 1
SAY @2
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ @3  GOTO 2
++ @4 GOTO 3
++ @5  EXIT
END

IF ~~ THEN BEGIN 2
SAY @6
++ @7 GOTO 4
++ @8 GOTO 5
++ @9 EXIT
END


IF ~~ THEN BEGIN 3
SAY @10
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ @11 GOTO 4
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ @12 GOTO 5
++ @13 EXIT
END

IF ~~ THEN BEGIN 4
SAY @14
++ @15  GOTO 5
END

IF ~~ THEN BEGIN 5
SAY @16 IF  ~~ THEN DO ~SetGlobal("k9NarlenLoop","GLOBAL",1) SetGlobal("k9KnowsNarlen","GLOBAL",1) AddJournalEntry(@665568,QUEST) SetGlobal("k9narlenletter","GLOBAL",1)~ EXIT
END
      
IF ~Global("k9narlenletter","GLOBAL",1) !InParty("Sharteel") ~ THEN BEGIN 6
SAY @17 
+~PartyGoldGT(99)~+ @18  GOTO 7
+~PartyGoldGT(99)~+ @19 GOTO 7
++ @20  EXIT
END

IF ~~ THEN BEGIN 7
SAY @21 IF  ~~ THEN DO ~TakePartyItem("k9eltlet") FadeToColor([20.0],0)  SetGlobal("k9narlenletter","GLOBAL",2)~ EXIT
END

IF ~Global("k9narlenletter","GLOBAL",3)~ THEN BEGIN 8
SAY @22 IF ~~ THEN DO ~ SetGlobal("k9narlenletter","GLOBAL",4)  GiveItemCreate("k9eltle2",PLAYER1,0,0,0) AddJournalEntry(@665569,QUEST)~ EXIT
END



IF ~Global("k9KnowsNarlen","GLOBAL",0)~ THEN BEGIN 18
SAY @23 IF ~~ THEN GOTO 1
+~!InParty("Sharteel") Global("k9NarlenTalk","GLOBAL",1)~+ @24  GOTO 2
++ @25 GOTO 3
++ @26 EXIT

END