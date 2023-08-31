BEGIN G#TYRISP

  IF ~Global("G#TF.KickedOut","LOCALS",0)
      !Global("G#TF.TyrisRomanceActive","GLOBAL",1)
      !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN KickOutDialogue#1.1
    SAY @0 
    ++ @1 GOTO KickOutDialogue#1.2
    ++ @2 GOTO KickOutDialogue#1.3
    ++ @3 GOTO KickOutDialogue#1.4
  END
  
  IF ~~ BEGIN KickOutDialogue#1.2 //From KickOutDialogue#1.1.1
    SAY @4
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN KickOutDialogue#1.3 //From KickOutDialogue#1.1.2
    SAY @5
    + ~!AreaCheck("AR0602")
       !AreaCheck("AR0603")
       !AreaCheck("AR0410")
       !AreaCheck("AR0411")
       !AreaCheck("AR0412")
       !AreaCheck("AR0413")
       !AreaCheck("AR0414")
       !AreaCheck("AR1512")
       !AreaCheck("AR1513")
       !AreaCheck("AR1514")
       !AreaCheck("AR1515")
       !AreaCheck("AR1516")
       !AreaCheck("AR1501")
       !AreaCheck("AR1502")
       !AreaCheck("AR1503")
       !AreaCheck("AR1504")
       !AreaCheck("AR1505")
       !AreaCheck("AR1506")
       !AreaCheck("AR1507")
       !AreaCheck("AR1508")
       !AreaCheck("AR1509")
       !AreaCheck("AR1510")
       !AreaCheck("AR1511")
       !AreaCheck("AR2100")
       !AreaCheck("AR2101")
       !AreaCheck("AR2102")
       !AreaCheck("AR2200")
       !AreaCheck("AR2202")
       !AreaCheck("AR2203")
       !AreaCheck("AR2204")
       !AreaCheck("AR2205")
       !AreaCheck("AR2206")
       !AreaCheck("AR2207")
       !AreaCheck("AR2208")
       !AreaCheck("AR2209")
       !AreaCheck("AR2210")
       !AreaCheck("AR2300")
       !AreaCheck("AR2400")
       !AreaCheck("AR2401")
       !AreaCheck("AR2402")
       !AreaCheck("AR2900")
       !AreaCheck("AR2901")
       !AreaCheck("AR2902")
       !AreaCheck("AR2903")
       !AreaCheck("AR2904")
       !AreaCheck("AR2905")
       !AreaCheck("AR2906")
       !InWatchersKeep()~ + @6 GOTO KickOutDialogue#1.4
    ++ @7 GOTO KickOutDialogue#1.5
  END
  
  IF ~~ BEGIN KickOutDialogue#1.4 //From KickOutDialogue#1.1.3
    SAY @8
    COPY_TRANS G#TYRISP KickOutDialogue#1.3
  END
  
  IF ~~ BEGIN KickOutDialogue#1.5 //From KickOutDialogue#1.2.1
    SAY @9
    IF ~~ DO ~
      SetGlobal("G#TF.KickedOut","LOCALS",1)
      MoveGlobal("AR1105","G#Tyris",[1063.262])
      EscapeAreaMove("AR1105",1063,262,4)
    ~ EXIT
  END

  IF ~~ BEGIN KickOutDialogue#1.6 //From KickOutDialogue#1.2.2
    SAY @10
    IF ~~ DO ~SetGlobal("G#TF.KickedOut","LOCALS",1)~ EXIT
  END
  
  IF ~Global("G#TF.KickedOut","LOCALS",0)
      OR(2)
        Global("G#TF.TyrisRomanceActive","GLOBAL",1)
        Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN KickOutDialogue#2.1
    SAY @11 
    ++ @12 GOTO KickOutDialogue#2.2
    ++ @2 GOTO KickOutDialogue#2.3
    ++ @3 GOTO KickOutDialogue#2.4
  END
  
  IF ~~ BEGIN KickOutDialogue#2.2 //From KickOutDialogue#2.1.1, KickOutDialogue#2.2.1
    SAY @13
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN KickOutDialogue#2.3 //From KickOutDialogue#2.1.2
    SAY @14
    ++ @15 GOTO KickOutDialogue#2.2
    + ~!AreaCheck("AR0602")
       !AreaCheck("AR0603")
       !AreaCheck("AR0410")
       !AreaCheck("AR0411")
       !AreaCheck("AR0412")
       !AreaCheck("AR0413")
       !AreaCheck("AR0414")
       !AreaCheck("AR1512")
       !AreaCheck("AR1513")
       !AreaCheck("AR1514")
       !AreaCheck("AR1515")
       !AreaCheck("AR1516")
       !AreaCheck("AR1501")
       !AreaCheck("AR1502")
       !AreaCheck("AR1503")
       !AreaCheck("AR1504")
       !AreaCheck("AR1505")
       !AreaCheck("AR1506")
       !AreaCheck("AR1507")
       !AreaCheck("AR1508")
       !AreaCheck("AR1509")
       !AreaCheck("AR1510")
       !AreaCheck("AR1511")
       !AreaCheck("AR2100")
       !AreaCheck("AR2101")
       !AreaCheck("AR2102")
       !AreaCheck("AR2200")
       !AreaCheck("AR2202")
       !AreaCheck("AR2203")
       !AreaCheck("AR2204")
       !AreaCheck("AR2205")
       !AreaCheck("AR2206")
       !AreaCheck("AR2207")
       !AreaCheck("AR2208")
       !AreaCheck("AR2209")
       !AreaCheck("AR2210")
       !AreaCheck("AR2300")
       !AreaCheck("AR2400")
       !AreaCheck("AR2401")
       !AreaCheck("AR2402")
       !AreaCheck("AR2900")
       !AreaCheck("AR2901")
       !AreaCheck("AR2902")
       !AreaCheck("AR2903")
       !AreaCheck("AR2904")
       !AreaCheck("AR2905")
       !AreaCheck("AR2906")
       !InWatchersKeep()~ + @16 GOTO KickOutDialogue#2.5
    ++ @17 GOTO KickOutDialogue#2.6
  END
  
  IF ~~ BEGIN KickOutDialogue#2.4 //From KickOutDialogue#2.1.3
    SAY @18
    COPY_TRANS G#TYRISP KickOutDialogue#2.3
  END
  
  IF ~~ BEGIN KickOutDialogue#2.5 //From KickOutDialogue#2.2.1
    SAY @19
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      SetGlobal("G#TF.KickedOut","LOCALS",1)
      MoveGlobal("AR1105","G#Tyris",[1063.262])
      EscapeAreaMove("AR1105",1063,262,4)
    ~ EXIT
  END

  IF ~~ BEGIN KickOutDialogue#2.6 //From KickOutDialogue#2.2.2
    SAY @20
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      SetGlobal("G#TF.KickedOut","LOCALS",1)
    ~ EXIT
  END
  
  IF ~Global("G#TF.KickedOut","LOCALS",1)~ BEGIN RejoinDialogue#1.1
    SAY @21 
    ++ @22 GOTO RejoinDialogue#1.2
    ++ @23 GOTO RejoinDialogue#1.3
    ++ @24 GOTO RejoinDialogue#1.4
  END

  IF ~~ BEGIN RejoinDialogue#1.2 //From RejoinDialogue#1.1.1
    SAY @25
    = @26
    IF ~~ DO ~
      SetGlobal("G#TF.KickedOut","LOCALS",0)
      JoinParty()
    ~ EXIT
  END

  IF ~~ BEGIN RejoinDialogue#1.3 //From RejoinDialogue#1.1.2
    SAY @27
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN RejoinDialogue#1.4 //From RejoinDialogue#1.1.3
    SAY @28
    IF ~~ EXIT
  END
