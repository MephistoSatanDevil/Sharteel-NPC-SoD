BEGIN bdshartp

IF ~Global("SharTeelJoined", "GLOBAL", 1)~ THEN
BEGIN Rejoin
SAY @1

	IF ~~ THEN
	REPLY @2
		DO ~SetGlobal("SharTeelJoined", "GLOBAL", 1) JoinParty()~ EXIT

	IF ~~ THEN
	REPLY @3
		DO ~SetGlobal("SharTeelJoined", "GLOBAL", 1) JoinParty()~ EXIT

	IF ~~ THEN
	REPLY @4 EXIT
END



IF ~  !HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",1)
~ THEN BEGIN 0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @8
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
~ EXIT
END

IF ~  HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF ~  !HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",0)
~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
~ EXIT
END
