BEGIN G#TRS25P

  IF ~Global("G#TF.KickedOut","LOCALS",0)
      !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN KickOutDialogue#1.1
    SAY @0
    ++ @1 GOTO KickOutDialogue#1.2
    + ~AreaCheck("AR4500")~ + @2 GOTO KickOutDialogue#1.3
    + ~!AreaCheck("AR4500")
       !AreaCheck("AR4000")
       !AreaCheck("AR6200")~ + @2 GOTO KickOutDialogue#1.4
    + ~!AreaCheck("AR4500")
       !AreaCheck("AR4000")
       !AreaCheck("AR6200")~ + @3 GOTO KickOutDialogue#1.5
  END
  
  IF ~~ BEGIN KickOutDialogue#1.2 //From KickOutDialogue#1.1.1
    SAY @4
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN KickOutDialogue#1.3 //From KickOutDialogue#1.1.2
    SAY @5
    IF ~~ DO ~
      SetGlobal("G#TF.KickedOut","LOCALS",1)
      MoveToPointNoInterrupt([2248.1144])
      Face(0)
    ~ EXIT
  END
  
  IF ~~ BEGIN KickOutDialogue#1.4 //From KickOutDialogue#1.1.3
    SAY @6
    IF ~~ DO ~SetGlobal("G#TF.KickedOut","LOCALS",1)~ EXIT
  END
  
  IF ~~ BEGIN KickOutDialogue#1.5 //From KickOutDialogue#1.1.4
    SAY @7
    IF ~~ DO ~
      SetGlobal("G#TF.KickedOut","LOCALS",1)
      CreateVisualEffectObject("SPDIMNDR",Myself)
      Wait(2)
      MoveBetweenAreas("AR4500",[2248.1144],0)
    ~ EXIT
  END
  
  IF ~Global("G#TF.KickedOut","LOCALS",0)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN KickOutDialogue#2.1
    SAY @8
    ++ @9 GOTO KickOutDialogue#2.2
    + ~AreaCheck("AR4500")~ + @10 GOTO KickOutDialogue#2.3
    + ~!AreaCheck("AR4500")
       !AreaCheck("AR4000")
       !AreaCheck("AR6200")~ + @10 GOTO KickOutDialogue#2.4
    + ~!AreaCheck("AR4500")
       !AreaCheck("AR4000")
       !AreaCheck("AR6200")~ + @11 GOTO KickOutDialogue#2.5
  END
  
  IF ~~ BEGIN KickOutDialogue#2.2 //From KickOutDialogue#2.1.1
    SAY @12
    IF ~~ DO ~JoinParty()~ EXIT
  END
  
  IF ~~ BEGIN KickOutDialogue#2.3 //From KickOutDialogue#2.1.2
    SAY @13
    IF ~~ DO ~
      SetGlobal("G#TF.KickedOut","LOCALS",1)
      MoveToPointNoInterrupt([2248.1144])
      Face(0)
    ~ EXIT
  END
  
  IF ~~ BEGIN KickOutDialogue#2.4 //From KickOutDialogue#2.1.3
    SAY @14
    IF ~~ DO ~SetGlobal("G#TF.KickedOut","LOCALS",1)~ EXIT
  END
  
  IF ~~ BEGIN KickOutDialogue#2.5 //From KickOutDialogue#2.1.4
    SAY @15
    IF ~~ DO ~
      SetGlobal("G#TF.KickedOut","LOCALS",1)
      CreateVisualEffectObject("SPDIMNDR",Myself)
      Wait(2)
      MoveBetweenAreas("AR4500",[2248.1144],0)
    ~ EXIT
  END
  
  IF ~Global("G#TF.KickedOut","LOCALS",1)
      !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN RejoinDialogue#1.1
    SAY @16
    ++ @17 GOTO RejoinDialogue#1.2
    + ~AreaCheck("AR4500")
       !Dead("botsmith")~ + @18 GOTO RejoinDialogue#1.3
    + ~AreaCheck("AR4500")
       Dead("botsmith")~ + @18 GOTO RejoinDialogue#1.4
    + ~!AreaCheck("AR4500")~ + @18 GOTO RejoinDialogue#1.5
  END

  IF ~~ BEGIN RejoinDialogue#1.2 //From RejoinDialogue#1.1.1
    SAY @19
    IF ~~ DO ~
      SetGlobal("G#TF.KickedOut","LOCALS",0)
      JoinParty()
    ~ EXIT
  END

  IF ~~ BEGIN RejoinDialogue#1.3 //From RejoinDialogue#1.1.2
    SAY @20
    IF ~~ EXIT
  END

  IF ~~ BEGIN RejoinDialogue#1.4 //From RejoinDialogue#1.1.3
    SAY @21
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN RejoinDialogue#1.5 //From RejoinDialogue#1.1.4
    SAY @22
    IF ~~ EXIT
  END

  IF ~Global("G#TF.KickedOut","LOCALS",1)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN RejoinDialogue#2.1
    SAY @23
    ++ @24 GOTO RejoinDialogue#2.2
    ++ @25 GOTO RejoinDialogue#2.3
  END
  
  IF ~~ BEGIN RejoinDialogue#2.2 //From RejoinDialogue#2.1.1
    SAY @26
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN RejoinDialogue#2.3 //From RejoinDialogue#2.1.2
    SAY @27
    IF ~~ EXIT
  END
