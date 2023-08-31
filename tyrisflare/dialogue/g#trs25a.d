BEGIN G#TRS25A

  IF ~Global("G#TF.TyrisSummoned","GLOBAL",1)
      !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN TyrisSummoned#1.1
    SAY @2
    = @3
    ++ @4 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ GOTO TyrisSummoned#1.2
    ++ @5 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ GOTO TyrisSummoned#1.3
    ++ @6 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ GOTO TyrisSummoned#1.4
    ++ @7 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ GOTO TyrisSummoned#1.5
  END
  
  IF ~~ BEGIN TyrisSummoned#1.2 //From TyrisSummoned#1.1.1
    SAY @8
    ++ @9 GOTO TyrisSummoned#1.3
    ++ @10 GOTO TyrisSummoned#1.4
    ++ @7 GOTO TyrisSummoned#1.5
  END

  IF ~~ BEGIN TyrisSummoned#1.3 //From TyrisSummoned#1.1.2, TyrisSummoned#1.2.1, TyrisSummoned#1.4.1
    SAY @11
    = @12
    ++ @13 GOTO TyrisSummoned#1.6
    ++ @14 GOTO TyrisSummoned#1.7
    ++ @15 GOTO TyrisSummoned#1.8
  END
  
  IF ~~ BEGIN TyrisSummoned#1.4 //From TyrisSummoned#1.1.3, TyrisSummoned#1.2.2
    SAY @16
    ++ @9 GOTO TyrisSummoned#1.3
    ++ @7 GOTO TyrisSummoned#1.5
  END
  
  IF ~~ BEGIN TyrisSummoned#1.5 //From TyrisSummoned#1.1.4, TyrisSummoned#1.2.3, TyrisSummoned#1.4.3
    SAY @17
    = @18
    IF ~~ DO ~
      SetGlobal("G#TF.AngryWhenSummoned","LOCALS",1)
      MoveToPointNoInterrupt([2248.1144])
      Face(0)
    ~ EXIT
  END
  
  IF ~~ BEGIN TyrisSummoned#1.6 //From TyrisSummoned#1.3.1
    SAY @19
    = @20
    ++ @21 GOTO TyrisSummoned#1.9
    ++ @22 GOTO TyrisSummoned#1.10
    ++ @23 GOTO TyrisSummoned#1.8
  END

  IF ~~ BEGIN TyrisSummoned#1.7 //From TyrisSummoned#1.3.2
    SAY @24
    COPY_TRANS G#TRS25A TyrisSummoned#1.6
  END
  
  IF ~~ BEGIN TyrisSummoned#1.8 //From TyrisSummoned#1.3.3, TyrisSummoned#1.6.3
    SAY @25
    = @26
    IF ~~ DO ~
      SetGlobal("G#TF.AngryWhenSummoned","LOCALS",1)
      MoveToPointNoInterrupt([2248.1144])
      Face(0)
    ~ EXIT
  END
  
  IF ~~ BEGIN TyrisSummoned#1.9 //From TyrisSummoned#1.6.1
    SAY @27
    IF ~~ DO ~JoinParty()~ EXIT
  END
  
  IF ~~ BEGIN TyrisSummoned#1.10 //From TyrisSummoned#1.6.2
    SAY @28
    IF ~~ DO ~
      MoveToPointNoInterrupt([2248.1144])
      Face(0)
    ~ EXIT
  END

  IF ~Global("G#TF.TyrisSummoned","GLOBAL",1)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN TyrisSummoned#2.1
    SAY @29
    ++ @30 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ GOTO TyrisSummoned#2.2
    ++ @31 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ GOTO TyrisSummoned#2.3
    ++ @32 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ GOTO TyrisSummoned#2.4
  END

  IF ~~ BEGIN TyrisSummoned#2.2 //From TyrisSummoned#2.1.1, TyrisSummoned#2.7.1
    SAY @33
    = @34
    ++ @35 GOTO TyrisSummoned#2.5
    ++ @36 GOTO TyrisSummoned#2.6
  END
  
  IF ~~ BEGIN TyrisSummoned#2.3 //From TyrisSummoned#2.1.1, TyrisSummoned#2.7.2
    SAY @37
    COPY_TRANS G#TRS25A TyrisSummoned#2.2
  END
  
  IF ~~ BEGIN TyrisSummoned#2.4 //From TyrisSummoned#2.1.1
    SAY @38
    ++ @39 GOTO TyrisSummoned#2.7
    ++ @40 GOTO TyrisSummoned#2.8
    ++ @41 GOTO TyrisSummoned#2.9
  END
  
  IF ~~ BEGIN TyrisSummoned#2.5 //From TyrisSummoned#2.2.1
    SAY @42
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN TyrisSummoned#2.6 //From TyrisSummoned#2.2.2
    SAY @43
    = @44
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN TyrisSummoned#2.7 //From TyrisSummoned#2.4.1
    SAY @45
    = @46
    ++ @30 GOTO TyrisSummoned#2.2
    ++ @31 GOTO TyrisSummoned#2.3
  END
  
  IF ~~ BEGIN TyrisSummoned#2.8 //From TyrisSummoned#2.4.2
    SAY @47
    COPY_TRANS G#TRS25A TyrisSummoned#2.7
  END
  
  IF ~~ BEGIN TyrisSummoned#2.9 //From TyrisSummoned#2.4.3
    SAY @48
    = @49
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      SetGlobal("G#TF.AngryWhenSummoned","LOCALS",1)
      MoveToPointNoInterrupt([2248.1144])
      Face(0)
    ~ EXIT
  END

  IF ~Global("G#TF.TyrisSummoned","GLOBAL",2)
      !Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.AngryWhenSummoned","LOCALS",1)~ BEGIN TyrisReturnedTo#1.1
    SAY @50
    ++ @21 GOTO TyrisReturnedTo#1.2
    + ~!Dead("botsmith")~ + @51 GOTO TyrisReturnedTo#1.3
    + ~Dead("botsmith")~ + @51 GOTO TyrisReturnedTo#1.4
  END
  
  IF ~~ BEGIN TyrisReturnedTo#1.2 //From TyrisReturnedTo#1.1.1, TyrisReturnedTo#2.2.1
    SAY @52
    IF ~~ DO ~JoinParty()~ EXIT
  END
  
  IF ~~ BEGIN TyrisReturnedTo#1.3 //From TyrisReturnedTo#1.1.2, TyrisReturnedTo#2.2.2
    SAY @53
    IF ~~ EXIT
  END

  IF ~~ BEGIN TyrisReturnedTo#1.4 //From TyrisReturnedTo#1.1.3, TyrisReturnedTo#2.2.3
    SAY @54
    IF ~~ EXIT
  END

  IF ~Global("G#TF.TyrisSummoned","GLOBAL",2)
      !Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      Global("G#TF.AngryWhenSummoned","LOCALS",1)~ BEGIN TyrisReturnedTo#2.1
    SAY @55
    ++ @56 GOTO TyrisReturnedTo#2.2
    ++ @57 GOTO TyrisReturnedTo#2.3
    ++ @58 GOTO TyrisReturnedTo#2.4
  END
  
  IF ~~ BEGIN TyrisReturnedTo#2.2 //From TyrisReturnedTo#2.1.1
    SAY @59
    ++ @21 GOTO TyrisReturnedTo#1.2
    + ~!Dead("botsmith")~ + @60 GOTO TyrisReturnedTo#1.3
    + ~Dead("botsmith")~ + @60 GOTO TyrisReturnedTo#1.4
  END
  
  IF ~~ BEGIN TyrisReturnedTo#2.3 //From TyrisReturnedTo#2.1.1
    SAY @61
    COPY_TRANS G#TRS25A TyrisReturnedTo#2.2
  END

  IF ~~ BEGIN TyrisReturnedTo#2.4 //From TyrisReturnedTo#2.1.1
    SAY @62
    IF ~~ EXIT
  END

  IF ~Global("G#TF.TyrisSummoned","GLOBAL",2)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN TyrisReturnedTo#3.1
    SAY @63
    ++ @64 GOTO TyrisReturnedTo#3.2
    ++ @65 GOTO TyrisReturnedTo#3.3
  END
  
  IF ~~ BEGIN TyrisReturnedTo#3.2 //From TyrisReturnedTo#3.1.1
    SAY @66
    IF ~~ DO ~JoinParty()~ EXIT
  END
  
  IF ~~ BEGIN TyrisReturnedTo#3.3 //From TyrisReturnedTo#3.1.2
    SAY @67
    IF ~~ EXIT
  END
