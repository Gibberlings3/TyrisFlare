// Flirter flirts

APPEND_EARLY G#TRS25J

  IF ~Global("G#TF.TyrisFlirtNow","LOCALS",1)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN ExpFlirterFlirts#1.1
    SAY @0 
    IF ~~ GOTO ExpFlirterFlirts#1.2
    IF ~RandomNum(5,1)~ GOTO ExpFlirterFlirts#1.3
    IF ~RandomNum(5,2)~ GOTO ExpFlirterFlirts#1.4
    IF ~RandomNum(5,3)
        OR(2)
          HasItemEquiped("G#TFARMR","G#Tyris")
          HasItemEquiped("G#TFAMR2","G#Tyris")~ GOTO ExpFlirterFlirts#1.5
    IF ~RandomNum(5,4)
        AreaType(CITY)~ GOTO ExpFlirterFlirts#1.6
    IF ~RandomNum(5,5)
        AreaType(FOREST)~ GOTO ExpFlirterFlirts#1.7
    IF ~HPLT(Player1,10)~ GOTO ExpFlirterFlirts#1.8
  END

  IF ~~ BEGIN ExpFlirterFlirts#1.2 //From ExpFlirterFlirts#1.1.1
    SAY @1
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisFlirtNow","LOCALS",0)
      RealSetGlobalTimer("G#TF.TyrisFlirt","LOCALS",900)
    ~ EXIT
  END

  IF ~~ BEGIN ExpFlirterFlirts#1.3 //From ExpFlirterFlirts#1.1.2
    SAY @2
    COPY_TRANS G#TRS25J ExpFlirterFlirts#1.2
  END

  IF ~~ BEGIN ExpFlirterFlirts#1.4 //From ExpFlirterFlirts#1.1.3
    SAY @3
    COPY_TRANS G#TRS25J ExpFlirterFlirts#1.2
  END

  IF ~~ BEGIN ExpFlirterFlirts#1.5 //From ExpFlirterFlirts#1.1.4
    SAY @4
    = @5
    = @6
    COPY_TRANS G#TRS25J ExpFlirterFlirts#1.2
  END

  IF ~~ BEGIN ExpFlirterFlirts#1.6 //From ExpFlirterFlirts#1.1.5
    SAY @7
    COPY_TRANS G#TRS25J ExpFlirterFlirts#1.2
  END

  IF ~~ BEGIN ExpFlirterFlirts#1.7 //From ExpFlirterFlirts#1.1.6
    SAY @8
    COPY_TRANS G#TRS25J ExpFlirterFlirts#1.2
  END

  IF ~~ BEGIN ExpFlirterFlirts#1.8 //From ExpFlirterFlirts#1.1.7
    SAY @9
    COPY_TRANS G#TRS25J ExpFlirterFlirts#1.2
  END

END

// Flirtee flirts

APPEND_EARLY G#TRS25J

  // Regular flirts

  IF ~IsGabber(Player1)
      CombatCounter(0)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.ExpLovetalk","LOCALS",5)
      !Global("G#TF.ExpLovetalk","LOCALS",9)
      !AreaCheck("AR6200")~ BEGIN ExpFlirteeFlirts#1.1
    SAY @10 
    + ~RandomNum(4,1)~ + @11 GOTO ExpFlirteeFlirts#1.2
    + ~RandomNum(4,2)~ + @11 GOTO ExpFlirteeFlirts#1.3
    + ~RandomNum(4,3)~ + @11 GOTO ExpFlirteeFlirts#1.4
    + ~RandomNum(4,4)~ + @11 GOTO ExpFlirteeFlirts#1.5
    + ~RandomNum(4,1)~ + @12 GOTO ExpFlirteeFlirts#1.6
    + ~RandomNum(4,2)~ + @12 GOTO ExpFlirteeFlirts#1.7
    + ~RandomNum(4,3)~ + @12 GOTO ExpFlirteeFlirts#1.8
    + ~RandomNum(4,4)~ + @12 GOTO ExpFlirteeFlirts#1.9
    + ~Global("G#TF.HairFlirtReflection","LOCALS",0)~ + @13 DO ~SetGlobal("G#TF.HairFlirtReflection","LOCALS",1)~ GOTO ExpFlirteeFlirts#1.10
    + ~Global("G#TF.HairFlirtReflection","LOCALS",1)
       RandomNum(3,1)~ + @13 GOTO ExpFlirteeFlirts#1.11
    + ~Global("G#TF.HairFlirtReflection","LOCALS",1)
       RandomNum(3,2)~ + @13 GOTO ExpFlirteeFlirts#1.12
    + ~Global("G#TF.HairFlirtReflection","LOCALS",1)
       RandomNum(3,3)~ + @13 GOTO ExpFlirteeFlirts#1.13
    + ~RandomNum(4,1)~ + @14 GOTO ExpFlirteeFlirts#1.14
    + ~RandomNum(4,2)~ + @14 GOTO ExpFlirteeFlirts#1.15
    + ~RandomNum(4,3)~ + @14 GOTO ExpFlirteeFlirts#1.16
    + ~RandomNum(4,4)~ + @14 GOTO ExpFlirteeFlirts#1.17
    + ~RandomNum(4,1)~ + @15 GOTO ExpFlirteeFlirts#1.18
    + ~RandomNum(4,2)~ + @15 GOTO ExpFlirteeFlirts#1.19
    + ~RandomNum(4,3)~ + @15 GOTO ExpFlirteeFlirts#1.20
    + ~RandomNum(4,4)~ + @15 GOTO ExpFlirteeFlirts#1.21
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",0)~ + @16 DO ~SetGlobal("G#TF.TickleFlirt","LOCALS",1)~ GOTO ExpFlirteeFlirts#1.22
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,1)~ + @16 GOTO ExpFlirteeFlirts#1.23
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,2)~ + @16 GOTO ExpFlirteeFlirts#1.24
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,3)~ + @16 GOTO ExpFlirteeFlirts#1.25
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(2)
         AreaCheck("AR5003")
         AreaCheck("AR5501")
       RandomNum(4,1)~ + @17 GOTO ExpFlirteeFlirts#1.26
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(2)
         AreaCheck("AR5003")
         AreaCheck("AR5501")
       RandomNum(4,2)~ + @17 GOTO ExpFlirteeFlirts#1.27
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(2)
         AreaCheck("AR5003")
         AreaCheck("AR5501")
       RandomNum(4,3)~ + @17 GOTO ExpFlirteeFlirts#1.28
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(2)
         AreaCheck("AR5003")
         AreaCheck("AR5501")
       RandomNum(4,4)~ + @17 GOTO ExpFlirteeFlirts#1.29
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       AreaCheck("AR6400")
       RandomNum(4,1)~ + @17 GOTO ExpFlirteeFlirts#1.30
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       AreaCheck("AR6400")
       RandomNum(4,2)~ + @17 GOTO ExpFlirteeFlirts#1.31
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       AreaCheck("AR6400")
       RandomNum(4,3)~ + @17 GOTO ExpFlirteeFlirts#1.32
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       AreaCheck("AR6400")
       RandomNum(4,4)~ + @17 GOTO ExpFlirteeFlirts#1.33
    + ~RandomNum(4,1)~ + @18 GOTO ExpFlirteeFlirts#1.34
    + ~RandomNum(4,2)~ + @18 GOTO ExpFlirteeFlirts#1.35
    + ~RandomNum(4,3)~ + @18 GOTO ExpFlirteeFlirts#1.36
    + ~RandomNum(4,4)~ + @18 GOTO ExpFlirteeFlirts#1.37
    + ~Global("G#TF.SleptWithTyris","GLOBAL",0)~ + @19 DO ~SetGlobal("G#TF.SleptWithTyris","GLOBAL",2)~ GOTO ExpFlirteeFlirts#1.38
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       RandomNum(3,1)~ + @20 GOTO ExpFlirteeFlirts#1.39
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       RandomNum(3,2)~ + @20 GOTO ExpFlirteeFlirts#1.40
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       RandomNum(3,3)~ + @20 GOTO ExpFlirteeFlirts#1.41
    ++ @21 EXIT
  END

  IF ~~  BEGIN ExpFlirteeFlirts#1.2 //From ExpFlirteeFlirts#1.1.1
    SAY @22
    IF ~~ EXIT
  END

  IF ~~  BEGIN ExpFlirteeFlirts#1.3 //From ExpFlirteeFlirts#1.1.2
    SAY @23
    IF ~~ EXIT
  END
  
  IF ~~  BEGIN ExpFlirteeFlirts#1.4 //From ExpFlirteeFlirts#1.1.3
    SAY @24
    = @25
    IF ~~ EXIT
  END

  IF ~~  BEGIN ExpFlirteeFlirts#1.5 //From ExpFlirteeFlirts#1.1.4
    SAY @26
    = @27
    = @28
    IF ~~ EXIT
  END

  IF ~~  BEGIN ExpFlirteeFlirts#1.6 //From ExpFlirteeFlirts#1.1.5
    SAY @29
    = @30
    IF ~~ EXIT
  END

  IF ~~  BEGIN ExpFlirteeFlirts#1.7 //From ExpFlirteeFlirts#1.1.6
    SAY @31
    = @32
    IF ~~ EXIT
  END

  IF ~~  BEGIN ExpFlirteeFlirts#1.8 //From ExpFlirteeFlirts#1.1.7
    SAY @33
    = @34
    IF ~~ EXIT
  END

  IF ~~  BEGIN ExpFlirteeFlirts#1.9 //From ExpFlirteeFlirts#1.1.8
    SAY @35
    = @36
    = @37
    = @38
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.10 //From ExpFlirteeFlirts#1.1.9
    SAY @39
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.11 //From ExpFlirteeFlirts#1.1.10
    SAY @40
    = @41
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.12 //From ExpFlirteeFlirts#1.1.11
    SAY @42
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.13 //From ExpFlirteeFlirts#1.1.12
    SAY @43
    = @44
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.14 //From ExpFlirteeFlirts#1.1.13
    SAY @45
    = @46
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.15 //From ExpFlirteeFlirts#1.1.14
    SAY @47
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.16 //From ExpFlirteeFlirts#1.1.15
    SAY @48
    = @49
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.17 //From ExpFlirteeFlirts#1.1.16
    SAY @50
    = @51
    = @52
    = @53
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.18 //From ExpFlirteeFlirts#1.1.17
    SAY @54
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.19 //From ExpFlirteeFlirts#1.1.18
    SAY @55
    = @56
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.20 //From ExpFlirteeFlirts#1.1.19
    SAY @57
    = @58
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.21 //From ExpFlirteeFlirts#1.1.20
    SAY @59
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.22 //From ExpFlirteeFlirts#1.1.21
    SAY @60
    = @61
    = @62
    = @63
    = @64
    = @65
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.23 //From ExpFlirteeFlirts#1.1.22
    SAY @66
    = @67
    = @68
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.24 //From ExpFlirteeFlirts#1.1.23
    SAY @69
    = @70
    = @71
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.25 //From ExpFlirteeFlirts#1.1.24
    SAY @72
    = @73
    = @74
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.26 //From ExpFlirteeFlirts#1.1.25
    SAY @75
    = @76
    IF ~~ DO ~RestParty()~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.27 //From ExpFlirteeFlirts#1.1.26
    SAY @77
    = @78
    = @79
    = @80
    = @81
    = @82
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.28 //From ExpFlirteeFlirts#1.1.27
    SAY @83
    = @84
    = @85
    = @86
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.29 //From ExpFlirteeFlirts#1.1.28
    SAY @87
    = @88
    = @89
    = @90
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.30 //From ExpFlirteeFlirts#1.1.29
    SAY @91
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.31 //From ExpFlirteeFlirts#1.1.30
    SAY @92
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.32 //From ExpFlirteeFlirts#1.1.31
    SAY @93
    = @94
    = @95
    = @96
    = @97
    = @98
    = @99
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.33 //From ExpFlirteeFlirts#1.1.32
    SAY @100
    = @101
    = @102
    = @103
    = @104
    = @105
    = @106
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.34 //From ExpFlirteeFlirts#1.1.33
    SAY @107
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.35 //From ExpFlirteeFlirts#1.1.34
    SAY @108
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN ExpFlirteeFlirts#1.36 //From ExpFlirteeFlirts#1.1.35
    SAY @109
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN ExpFlirteeFlirts#1.37 //From ExpFlirteeFlirts#1.1.36
    SAY @110
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.38 //From ExpFlirteeFlirts#1.1.37
    SAY @111
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.39 //From ExpFlirteeFlirts#1.1.38
    SAY @112
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.40 //From ExpFlirteeFlirts#1.1.39
    SAY @113
    IF ~~ EXIT
  END

  IF ~~ BEGIN ExpFlirteeFlirts#1.41//From ExpFlirteeFlirts#1.1.40
    SAY @114
    IF ~~ EXIT
  END
  
  // Not a good time to flirt...

  IF ~IsGabber(Player1)
      CombatCounter(0)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      GlobalGT("G#TF.ExpLovetalk","LOCALS",0)
      OR(2)
        Global("G#TF.ExpLovetalk","LOCALS",5)
        Global("G#TF.ExpLovetalk","LOCALS",9)
      !AreaCheck("AR6200")~ BEGIN NoExpFlirteeFlirts#1.1
    SAY @115 
    IF ~~ EXIT
  END

  // Not a good place to flirt...

  IF ~IsGabber(Player1)
      CombatCounter(0)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      GlobalGT("G#TF.ExpLovetalk","LOCALS",0)
      AreaCheck("AR6200")~ BEGIN NoExpFlirteeFlirts#2.1
    SAY @116 
    IF ~~ EXIT
  END

END
