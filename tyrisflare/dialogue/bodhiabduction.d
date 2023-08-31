BEGIN G#TFVAMP

// Kidnapping

ADD_TRANS_TRIGGER BODHIAMB 5 ~
  OR(2)
    !InParty("G#Tyris")
    !Global("G#TF.TyrisRomanceActive","GLOBAL",2)
~ DO 0

INTERJECT BODHIAMB 5 GI#TF.BodhiAbduction1 //BodhiAbduction#1.1
  == BODHIAMB IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)
                  InParty("G#Tyris")~ THEN @0
END
  IF ~OR(2)
        !InPartyAllowDead("G#Tyris")
        Dead("G#Tyris")~ EXTERN BODHIAMB 6
  IF ~InPartyAllowDead("G#Tyris")
      !Dead("G#Tyris")~ EXTERN BODHIAMB BodhiAbduction#1.2

CHAIN BODHIAMB BodhiAbduction#1.2 //From BodhiAbduction#1.1.2
  @1
  == G#TYRISJ @2
  == BODHIAMB @3
END
  IF ~~ DO ~ClearAllActions()
            StartCutSceneMode()
            StartCutScene("G#TFCUTV")~ UNSOLVED_JOURNAL @4 EXIT

// The Final Battle

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("G#TF.TyrisVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 GI#TF.BodhiAbduction2 //BodhiAbduction#2.1
  == C6BODHI IF ~Global("G#TF.TyrisVampire","GLOBAL",2)~ THEN @5
END
  ++ @6 EXTERN C6BODHI BodhiAbduction#2.2
  ++ @7 EXTERN C6BODHI BodhiAbduction#2.2
  ++ @8 EXTERN C6BODHI BodhiAbduction#2.2
  ++ @9 EXTERN C6BODHI BodhiAbduction#2.3

APPEND C6BODHI

  IF ~~ BEGIN BodhiAbduction#2.2 //From BodhiAbduction#2.1.1, BodhiAbduction#2.1.2, BodhiAbduction#2.1.3, BodhiAdduction#2.3.1
    SAY @10
    IF ~~ UNSOLVED_JOURNAL @11 EXTERN G#TFVAMP BodhiAbduction#2.4
  END

  IF ~~ BEGIN BodhiAbduction#2.3 //From BodhiAbduction#2.1.4
    SAY @12
    IF ~~ GOTO BodhiAbduction#2.2
  END

END

CHAIN G#TFVAMP BodhiAbduction#2.4 //From BodhiAbduction#2.2.1
  @13
   == C6BODHI @14
END C6BODHI 28

// Finding a Cure

EXTEND_BOTTOM C6ELHAN2 69 70
  + ~PartyHasItem("G#TFBODY")~ + @15 GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 #5
  + ~Global("RevealUmar","GLOBAL",1)
     PartyHasItem("G#TFBODY")~ + @16 GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
  + ~Global("RevealUmar","GLOBAL",1)
     PartyHasItem("G#TFBODY")~ + @16 GOTO 10
END

EXTEND_BOTTOM IMNBOOK1 0
  + ~Global("RevealUmar","GLOBAL",1)
     PartyHasItem("G#TFBODY")~ + @17 GOTO 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("G#TFBODY")~ 1 2 3

APPEND OGHMONK1

  IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1)
                 PartyHasItem("G#TFBODY")~ BEGIN OghmaMonk#1.1
    SAY @18
    ++ @19 GOTO 5
    ++ @16 GOTO 6
  END

END

EXTEND_BOTTOM SUDEMIN 2
  + ~PartyHasItem("G#TFBODY")~ + @20 GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
  + ~!Dead("c6bodhi")
     Global("G#TF.TyrisVampire","GLOBAL",2)~ + @21 GOTO 6
  + ~PartyHasItem("G#TFBODY")~ + @22 GOTO 5
END

// My Hero!

APPEND_EARLY G#TYRISP

  IF WEIGHT #-1 ~Global("G#TF.TyrisVampire","GLOBAL",5)~ BEGIN TyrisUnvamped#1.1
    SAY @23 
    = @24
    ++ @25 DO ~
      EraseJournalEntry(32084)
      EraseJournalEntry(32085)
      EraseJournalEntry(16351)
      EraseJournalEntry(@4)
      EraseJournalEntry(15710)
      EraseJournalEntry(6589)
      EraseJournalEntry(@11)
      SetGlobal("G#TF.TyrisVampire","GLOBAL",6)~ SOLVED_JOURNAL @26 GOTO TyrisUnvamped#1.2
    ++ @27 DO ~
      EraseJournalEntry(32084)
      EraseJournalEntry(32085)
      EraseJournalEntry(16351)
      EraseJournalEntry(@4)
      EraseJournalEntry(15710)
      EraseJournalEntry(6589)
      EraseJournalEntry(@11)
      SetGlobal("G#TF.TyrisVampire","GLOBAL",6)~ SOLVED_JOURNAL @26 GOTO TyrisUnvamped#1.3
    ++ @28 DO ~
      EraseJournalEntry(32084)
      EraseJournalEntry(32085)
      EraseJournalEntry(16351)
      EraseJournalEntry(@4)
      EraseJournalEntry(15710)
      EraseJournalEntry(6589)
      EraseJournalEntry(@11)
      SetGlobal("G#TF.TyrisVampire","GLOBAL",6)~ SOLVED_JOURNAL @26 GOTO TyrisUnvamped#1.4
  END

  IF ~~ BEGIN TyrisUnvamped#1.2 //From TyrisUnvamped#1.1.1
    SAY @29
    ++ @30 GOTO TyrisUnvamped#1.5
    ++ @31 GOTO TyrisUnvamped#1.6
  END

  IF ~~ BEGIN TyrisUnvamped#1.3 //From TyrisUnvamped#1.1.2
    SAY @32
    COPY_TRANS G#TYRISP TyrisUnvamped#1.2
  END
  
  IF ~~ BEGIN TyrisUnvamped#1.4 //From TyrisUnvamped#1.1.3
    SAY @33
    COPY_TRANS G#TYRISP TyrisUnvamped#1.2
  END
  
  IF ~~ BEGIN TyrisUnvamped#1.5 //From TyrisUnvamped#1.2.1
    SAY @34
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN TyrisUnvamped#1.6 //From TyrisUnvamped#1.2.2
    SAY @35
    ++ @36 GOTO TyrisUnvamped#1.7
    ++ @37 GOTO TyrisUnvamped#1.8
  END

  IF ~~ BEGIN TyrisUnvamped#1.7 //From TyrisUnvamped#1.2.1
    SAY @38
    COPY_TRANS G#TYRISP TyrisUnvamped#1.5
  END
  
  IF ~~ BEGIN TyrisUnvamped#1.8 //From TyrisUnvamped#1.2.2
    SAY @39
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      EscapeArea()~ EXIT
  END

END
