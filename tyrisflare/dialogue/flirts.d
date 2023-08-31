// Flirter flirts

APPEND_EARLY G#TYRISJ

  // Early Romance

  IF ~Global("G#TF.TyrisFlirtNow","LOCALS",1)
      Global("G#TF.TyrisRomanceActive","GLOBAL",1)~ BEGIN FlirterFlirts#1.1
    SAY @0 
    IF ~~ GOTO FlirterFlirts#1.2
    IF ~RandomNum(5,1)~ GOTO FlirterFlirts#1.3
    IF ~RandomNum(5,2)~ GOTO FlirterFlirts#1.4
    IF ~RandomNum(5,3)
        OR(2)
          HasItemEquiped("G#TFARMR","G#Tyris")
          HasItemEquiped("G#TFAMR2","G#Tyris")~ GOTO FlirterFlirts#1.5
    IF ~RandomNum(5,4)
        AreaType(CITY)~ GOTO FlirterFlirts#1.6
    IF ~RandomNum(5,5)
        AreaType(FOREST)~ GOTO FlirterFlirts#1.7
    IF ~HPLT(Player1,10)~ GOTO FlirterFlirts#1.8
  END

  IF ~~ BEGIN FlirterFlirts#1.2 //From FlirterFlirts#1.1.1
    SAY @1
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisFlirtNow","LOCALS",0)
      RealSetGlobalTimer("G#TF.TyrisFlirt","LOCALS",900)
    ~ EXIT
  END

  IF ~~ BEGIN FlirterFlirts#1.3 //From FlirterFlirts#1.1.2
    SAY @2
    COPY_TRANS G#TYRISJ FlirterFlirts#1.2
  END
  
  IF ~~ BEGIN FlirterFlirts#1.4 //From FlirterFlirts#1.1.3
    SAY @3
    COPY_TRANS G#TYRISJ FlirterFlirts#1.2
  END
  
  IF ~~ BEGIN FlirterFlirts#1.5 //From FlirterFlirts#1.1.4
    SAY @4
    = @5
    = @6
    COPY_TRANS G#TYRISJ FlirterFlirts#1.2
  END
  
  IF ~~ BEGIN FlirterFlirts#1.6 //From FlirterFlirts#1.1.5
    SAY @7
    COPY_TRANS G#TYRISJ FlirterFlirts#1.2
  END
  
  IF ~~ BEGIN FlirterFlirts#1.7 //From FlirterFlirts#1.1.6
    SAY @8
    COPY_TRANS G#TYRISJ FlirterFlirts#1.2
  END
  
  IF ~~ BEGIN FlirterFlirts#1.8 //From FlirterFlirts#1.1.7
    SAY @9
    COPY_TRANS G#TYRISJ FlirterFlirts#1.2
  END
  
  // Serious Romance

  IF ~Global("G#TF.TyrisFlirtNow","LOCALS",1)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN FlirterFlirts#2.1
    SAY @10 
    IF ~~ GOTO FlirterFlirts#2.2
    IF ~RandomNum(5,1)~ GOTO FlirterFlirts#2.3
    IF ~RandomNum(5,2)~ GOTO FlirterFlirts#2.4
    IF ~RandomNum(5,3)
        OR(2)
          HasItemEquiped("G#TFARMR","G#Tyris")
          HasItemEquiped("G#TFAMR2","G#Tyris")~ GOTO FlirterFlirts#2.5
    IF ~RandomNum(5,4)
        AreaType(CITY)~ GOTO FlirterFlirts#2.6
    IF ~RandomNum(5,5)
        AreaType(FOREST)~ GOTO FlirterFlirts#2.7
    IF ~HPLT(Player1,10)~ GOTO FlirterFlirts#2.8
  END
  
  IF ~~ BEGIN FlirterFlirts#2.2 //From FlirterFlirts#2.1.1
    SAY @11
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisFlirtNow","LOCALS",0)
      RealSetGlobalTimer("G#TF.TyrisFlirt","LOCALS",900)
    ~ EXIT
  END

  IF ~~ BEGIN FlirterFlirts#2.3 //From FlirterFlirts#2.1.2
    SAY @12
    COPY_TRANS G#TYRISJ FlirterFlirts#2.2
  END
  
  IF ~~ BEGIN FlirterFlirts#2.4 //From FlirterFlirts#2.1.3
    SAY @13
    COPY_TRANS G#TYRISJ FlirterFlirts#2.2
  END

  IF ~~ BEGIN FlirterFlirts#2.5 //From FlirterFlirts#2.1.4
    SAY @4
    = @5
    = @14
    COPY_TRANS G#TYRISJ FlirterFlirts#2.2
  END

  IF ~~ BEGIN FlirterFlirts#2.6 //From FlirterFlirts#2.1.5
    SAY @15
    COPY_TRANS G#TYRISJ FlirterFlirts#2.2
  END

  IF ~~ BEGIN FlirterFlirts#2.7 //From FlirterFlirts#2.1.6
    SAY @16
    COPY_TRANS G#TYRISJ FlirterFlirts#2.2
  END

  IF ~~ BEGIN FlirterFlirts#2.8 //From FlirterFlirts#2.1.7
    SAY @17
    COPY_TRANS G#TYRISJ FlirterFlirts#1.2
  END

END

// Flirtee flirts

APPEND_EARLY G#TYRISJ

  // Early Romance

  IF ~IsGabber(Player1)
      CombatCounter(0)
      Global("G#TF.TyrisRomanceActive","GLOBAL",1)
      GlobalGT("G#TF.Lovetalk","LOCALS",10)
      !Global("G#TF.Lovetalk","LOCALS",41)
      !AreaCheck("AR2100")
      !AreaCheck("AR2101")
      !AreaCheck("AR2102")
      !AreaCheck("AR2200")
      !AreaCheck("AR2201")
      !AreaCheck("AR2202")
      !AreaCheck("AR2203")
      !AreaCheck("AR2204")
      !AreaCheck("AR2205")
      !AreaCheck("AR2206")
      !AreaCheck("AR2207")
      !AreaCheck("AR2208")
      !AreaCheck("AR2209")
      !AreaCheck("AR2210")
      !AreaCheck("AR2400")
      !AreaCheck("AR2401")
      !AreaCheck("AR2402")~ BEGIN FlirteeFlirts#1.1
    SAY @18 
    + ~RandomNum(4,1)~ + @19 GOTO FlirteeFlirts#1.2
    + ~RandomNum(4,2)~ + @19 GOTO FlirteeFlirts#1.3
    + ~RandomNum(4,3)~ + @19 GOTO FlirteeFlirts#1.4
    + ~RandomNum(4,4)~ + @19 GOTO FlirteeFlirts#1.5
    + ~RandomNum(4,1)~ + @20 GOTO FlirteeFlirts#1.6
    + ~RandomNum(4,2)~ + @20 GOTO FlirteeFlirts#1.7
    + ~RandomNum(4,3)~ + @20 GOTO FlirteeFlirts#1.8
    + ~RandomNum(4,4)~ + @20 GOTO FlirteeFlirts#1.9
    + ~RandomNum(4,1)~ + @21 GOTO FlirteeFlirts#1.10
    + ~RandomNum(4,2)~ + @21 GOTO FlirteeFlirts#1.11
    + ~RandomNum(4,3)~ + @21 GOTO FlirteeFlirts#1.12
    + ~RandomNum(4,4)~ + @21 GOTO FlirteeFlirts#1.13
    + ~RandomNum(4,1)~ + @22 GOTO FlirteeFlirts#1.14
    + ~RandomNum(4,2)~ + @22 GOTO FlirteeFlirts#1.15
    + ~RandomNum(4,3)~ + @22 GOTO FlirteeFlirts#1.16
    + ~RandomNum(4,4)~ + @22 GOTO FlirteeFlirts#1.17
    + ~RandomNum(4,1)~ + @23 GOTO FlirteeFlirts#1.18
    + ~RandomNum(4,2)~ + @23 GOTO FlirteeFlirts#1.19
    + ~RandomNum(4,3)~ + @23 GOTO FlirteeFlirts#1.20
    + ~RandomNum(4,4)~ + @23 GOTO FlirteeFlirts#1.21
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",0)~ + @24 DO ~SetGlobal("G#TF.TickleFlirt","LOCALS",1)~ GOTO FlirteeFlirts#1.22
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,1)~ + @24 GOTO FlirteeFlirts#1.23
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,2)~ + @24 GOTO FlirteeFlirts#1.24
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,3)~ + @24 GOTO FlirteeFlirts#1.25
    + ~RandomNum(4,1)~ + @25 GOTO FlirteeFlirts#1.26
    + ~RandomNum(4,2)~ + @25 GOTO FlirteeFlirts#1.27
    + ~RandomNum(4,3)~ + @25 GOTO FlirteeFlirts#1.28
    + ~RandomNum(4,4)~ + @25 GOTO FlirteeFlirts#1.29
    ++ @26 GOTO FlirteeFlirts#1.30
    ++ @27 EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.2 //From FlirteeFlirts#1.1.1
    SAY @28
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.3 //From FlirteeFlirts#1.1.2
    SAY @29
    = @30
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.4 //From FlirteeFlirts#1.1.3
    SAY @31
    = @32
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.5 //From FlirteeFlirts#1.1.4
    SAY @33
    = @34
    = @35
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.6 //From FlirteeFlirts#1.1.5
    SAY @36
    = @37
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.7 //From FlirteeFlirts#1.1.6
    SAY @38
    = @39
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.8 //From FlirteeFlirts#1.1.7
    SAY @40
    = @41
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.9 //From FlirteeFlirts#1.1.8
    SAY @42
    = @43
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.10 //From FlirteeFlirts#1.1.9
    SAY @44
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.11 //From FlirteeFlirts#1.1.10
    SAY @45
    = @46
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.12 //From FlirteeFlirts#1.1.11
    SAY @47
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.13 //From FlirteeFlirts#1.1.12
    SAY @48
    = @49
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.14 //From FlirteeFlirts#1.1.13
    SAY @50
    = @51
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.15 //From FlirteeFlirts#1.1.14
    SAY @52
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.16 //From FlirteeFlirts#1.1.15
    SAY @53
    = @54
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.17 //From FlirteeFlirts#1.1.16
    SAY @55
    = @56
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.18 //From FlirteeFlirts#1.1.17
    SAY @57
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.19 //From FlirteeFlirts#1.1.18
    SAY @58
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.20 //From FlirteeFlirts#1.1.19
    SAY @59
    = @60
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.21 //From FlirteeFlirts#1.1.20
    SAY @61
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.22 //From FlirteeFlirts#1.1.21
    SAY @62
    = @63
    = @64
    = @65
    = @66
    = @67
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.23 //From FlirteeFlirts#1.1.22
    SAY @68
    = @69
    = @70
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.24 //From FlirteeFlirts#1.1.23
    SAY @71  
    = @72
    = @73
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.25 //From FlirteeFlirts#1.1.24
    SAY @74
    = @75
    = @76
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.26 //From FlirteeFlirts#1.1.25
    SAY @77
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.27 //From FlirteeFlirts#1.1.26
    SAY @78
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.28 //From FlirteeFlirts#1.1.27
    SAY @79
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.29 //From FlirteeFlirts#1.1.28
    SAY @80
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#1.30 //From FlirteeFlirts#1.1.29
    SAY @81
    IF ~~ DO ~SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)~ EXIT
  END

  // Serious Romance

  IF ~IsGabber(Player1)
      CombatCounter(0)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !AreaCheck("AR2100")
      !AreaCheck("AR2101")
      !AreaCheck("AR2102")
      !AreaCheck("AR2200")
      !AreaCheck("AR2201")
      !AreaCheck("AR2202")
      !AreaCheck("AR2203")
      !AreaCheck("AR2204")
      !AreaCheck("AR2205")
      !AreaCheck("AR2206")
      !AreaCheck("AR2207")
      !AreaCheck("AR2208")
      !AreaCheck("AR2209")
      !AreaCheck("AR2210")
      !AreaCheck("AR2400")
      !AreaCheck("AR2401")
      !AreaCheck("AR2402")~ BEGIN FlirteeFlirts#2.1
    SAY @82 
    + ~RandomNum(4,1)~ + @19 GOTO FlirteeFlirts#2.2
    + ~RandomNum(4,2)~ + @19 GOTO FlirteeFlirts#2.3
    + ~RandomNum(4,3)~ + @19 GOTO FlirteeFlirts#2.4
    + ~RandomNum(4,4)~ + @19 GOTO FlirteeFlirts#2.5
    + ~RandomNum(4,1)~ + @20 GOTO FlirteeFlirts#2.6
    + ~RandomNum(4,2)~ + @20 GOTO FlirteeFlirts#2.7
    + ~RandomNum(4,3)~ + @20 GOTO FlirteeFlirts#2.8
    + ~RandomNum(4,4)~ + @20 GOTO FlirteeFlirts#2.9
    + ~Global("G#TF.HairFlirtReflection","LOCALS",0)~ + @21 DO ~SetGlobal("G#TF.HairFlirtReflection","LOCALS",1)~ GOTO FlirteeFlirts#2.10
    + ~Global("G#TF.HairFlirtReflection","LOCALS",1)
       RandomNum(3,1)~ + @21 GOTO FlirteeFlirts#2.11
    + ~Global("G#TF.HairFlirtReflection","LOCALS",1)
       RandomNum(3,2)~ + @21 GOTO FlirteeFlirts#2.12
    + ~Global("G#TF.HairFlirtReflection","LOCALS",1)
       RandomNum(3,3)~ + @21 GOTO FlirteeFlirts#2.13
    + ~RandomNum(4,1)~ + @22 GOTO FlirteeFlirts#2.14
    + ~RandomNum(4,2)~ + @22 GOTO FlirteeFlirts#2.15
    + ~RandomNum(4,3)~ + @22 GOTO FlirteeFlirts#2.16
    + ~RandomNum(4,4)~ + @22 GOTO FlirteeFlirts#2.17
    + ~RandomNum(4,1)~ + @23 GOTO FlirteeFlirts#2.18
    + ~RandomNum(4,2)~ + @23 GOTO FlirteeFlirts#2.19
    + ~RandomNum(4,3)~ + @23 GOTO FlirteeFlirts#2.20
    + ~RandomNum(4,4)~ + @23 GOTO FlirteeFlirts#2.21
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",0)~ + @24 DO ~SetGlobal("G#TF.TickleFlirt","LOCALS",1)~ GOTO FlirteeFlirts#2.22
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,1)~ + @24 GOTO FlirteeFlirts#2.23
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,2)~ + @24 GOTO FlirteeFlirts#2.24
    + ~OR(2)
         HasItemEquiped("G#TFARMR","G#Tyris")
         HasItemEquiped("G#TFAMR2","G#Tyris")
       Global("G#TF.TickleFlirt","LOCALS",1)
       RandomNum(3,3)~ + @24 GOTO FlirteeFlirts#2.25
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(10)
         AreaCheck("AR0704")
         AreaCheck("AR0709")
         AreaCheck("AR0406")
         AreaCheck("AR0513")
         AreaCheck("AR0509")
         AreaCheck("AR0021")
         AreaCheck("AR0313")
         AreaCheck("AR1105")
         AreaCheck("AR2010")
         AreaCheck("AR1602")
       RandomNum(4,1)~ + @83 GOTO FlirteeFlirts#2.26
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(10)
         AreaCheck("AR0704")
         AreaCheck("AR0709")
         AreaCheck("AR0406")
         AreaCheck("AR0513")
         AreaCheck("AR0509")
         AreaCheck("AR0021")
         AreaCheck("AR0313")
         AreaCheck("AR1105")
         AreaCheck("AR2010")
         AreaCheck("AR1602")
       RandomNum(4,2)~ + @83 GOTO FlirteeFlirts#2.27
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(10)
         AreaCheck("AR0704")
         AreaCheck("AR0709")
         AreaCheck("AR0406")
         AreaCheck("AR0513")
         AreaCheck("AR0509")
         AreaCheck("AR0021")
         AreaCheck("AR0313")
         AreaCheck("AR1105")
         AreaCheck("AR2010")
         AreaCheck("AR1602")
       RandomNum(4,3)~ + @83 GOTO FlirteeFlirts#2.28
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(10)
         AreaCheck("AR0704")
         AreaCheck("AR0709")
         AreaCheck("AR0406")
         AreaCheck("AR0513")
         AreaCheck("AR0509")
         AreaCheck("AR0021")
         AreaCheck("AR0313")
         AreaCheck("AR1105")
         AreaCheck("AR2010")
         AreaCheck("AR1602")
       RandomNum(4,4)~ + @83 GOTO FlirteeFlirts#2.29
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(3)
         AreaCheck("AR1100")
         AreaCheck("AR1200")
         AreaCheck("AR1700")
       RandomNum(4,1)~ + @83 GOTO FlirteeFlirts#2.30
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(3)
         AreaCheck("AR1100")
         AreaCheck("AR1200")
         AreaCheck("AR1700")
       RandomNum(4,2)~ + @83 GOTO FlirteeFlirts#2.31
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(3)
         AreaCheck("AR1100")
         AreaCheck("AR1200")
         AreaCheck("AR1700")
       RandomNum(4,3)~ + @83 GOTO FlirteeFlirts#2.32
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       OR(3)
         AreaCheck("AR1100")
         AreaCheck("AR1200")
         AreaCheck("AR1700")
       RandomNum(4,4)~ + @83 GOTO FlirteeFlirts#2.33
    + ~RandomNum(4,1)~ + @84 GOTO FlirteeFlirts#2.34
    + ~RandomNum(4,2)~ + @84 GOTO FlirteeFlirts#2.35
    + ~RandomNum(4,3)~ + @84 GOTO FlirteeFlirts#2.36
    + ~RandomNum(4,4)~ + @84 GOTO FlirteeFlirts#2.37
    + ~Global("G#TF.SleptWithTyris","GLOBAL",0)~ + @85 DO ~SetGlobal("G#TF.SleptWithTyris","GLOBAL",2)~ GOTO FlirteeFlirts#2.38
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       RandomNum(3,1)~ + @86 GOTO FlirteeFlirts#2.39
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       RandomNum(3,2)~ + @86 GOTO FlirteeFlirts#2.40
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)
       RandomNum(3,3)~ + @86 GOTO FlirteeFlirts#2.41
    ++ @27 EXIT
  END

  IF ~~  BEGIN FlirteeFlirts#2.2 //From FlirteeFlirts#2.1.1
    SAY @28
    IF ~~ EXIT
  END

  IF ~~  BEGIN FlirteeFlirts#2.3 //From FlirteeFlirts#2.1.2
    SAY @87
    IF ~~ EXIT
  END
  
  IF ~~  BEGIN FlirteeFlirts#2.4 //From FlirteeFlirts#2.1.3
    SAY @31
    = @88
    IF ~~ EXIT
  END

  IF ~~  BEGIN FlirteeFlirts#2.5 //From FlirteeFlirts#2.1.4
    SAY @33
    = @34
    = @35
    IF ~~ EXIT
  END

  IF ~~  BEGIN FlirteeFlirts#2.6 //From FlirteeFlirts#2.1.5
    SAY @36
    = @89
    IF ~~ EXIT
  END

  IF ~~  BEGIN FlirteeFlirts#2.7 //From FlirteeFlirts#2.1.6
    SAY @38
    = @39
    IF ~~ EXIT
  END

  IF ~~  BEGIN FlirteeFlirts#2.8 //From FlirteeFlirts#2.1.7
    SAY @40
    = @90
    IF ~~ EXIT
  END

  IF ~~  BEGIN FlirteeFlirts#2.9 //From FlirteeFlirts#2.1.8
    SAY @91
    = @92
    = @93
    = @94
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.10 //From FlirteeFlirts#2.1.9
    SAY @95
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.11 //From FlirteeFlirts#2.1.10
    SAY @96
    = @97
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.12 //From FlirteeFlirts#2.1.11
    SAY @98
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.13 //From FlirteeFlirts#2.1.12
    SAY @48
    = @49
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.14 //From FlirteeFlirts#2.1.13
    SAY @50
    = @99
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.15 //From FlirteeFlirts#2.1.14
    SAY @52
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.16 //From FlirteeFlirts#2.1.15
    SAY @100
    = @101
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.17 //From FlirteeFlirts#2.1.16
    SAY @102
    = @103
    = @104
    = @105
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.18 //From FlirteeFlirts#2.1.17
    SAY @106
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.19 //From FlirteeFlirts#2.1.18
    SAY @107
    = @108
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.20 //From FlirteeFlirts#2.1.19
    SAY @59
    = @109
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.21 //From FlirteeFlirts#2.1.20
    SAY @61
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.22 //From FlirteeFlirts#2.1.21
    SAY @62
    = @63
    = @64
    = @65
    = @66
    = @67
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.23 //From FlirteeFlirts#2.1.22
    SAY @68
    = @110
    = @70
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.24 //From FlirteeFlirts#2.1.23
    SAY @71
    = @111
    = @112
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.25 //From FlirteeFlirts#2.1.24
    SAY @113
    = @114
    = @115
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.26 //From FlirteeFlirts#2.1.25
    SAY @116
    = @117
    IF ~~ DO ~RestParty()~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.27 //From FlirteeFlirts#2.1.26
    SAY @118
    = @119
    = @120
    = @121
    = @122
    = @123
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.28 //From FlirteeFlirts#2.1.27
    SAY @124
    = @125
    = @126
    = @127
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.29 //From FlirteeFlirts#2.1.28
    SAY @128
    = @129
    = @130
    = @131
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.30 //From FlirteeFlirts#2.1.29
    SAY @132
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.31 //From FlirteeFlirts#2.1.30
    SAY @133
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.32 //From FlirteeFlirts#2.1.31
    SAY @134
    = @135
    = @136
    = @137
    = @138
    = @139
    = @140
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.33 //From FlirteeFlirts#2.1.32
    SAY @141
    = @142
    = @143
    = @144
    = @145
    = @146
    = @147
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.34 //From FlirteeFlirts#2.1.33
    SAY @148
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.35 //From FlirteeFlirts#2.1.34
    SAY @149
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN FlirteeFlirts#2.36 //From FlirteeFlirts#2.1.35
    SAY @150
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN FlirteeFlirts#2.37 //From FlirteeFlirts#2.1.36
    SAY @151
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.38 //From FlirteeFlirts#2.1.37
    SAY @152
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.39 //From FlirteeFlirts#2.1.38
    SAY @153
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.40 //From FlirteeFlirts#2.1.39
    SAY @154
    IF ~~ EXIT
  END

  IF ~~ BEGIN FlirteeFlirts#2.41//From FlirteeFlirts#2.1.40
    SAY @155
    IF ~~ EXIT
  END
  
  // Not a good time to flirt...

  IF ~IsGabber(Player1)
      CombatCounter(0)
      Global("G#TF.TyrisRomanceActive","GLOBAL",1)
      GlobalGT("G#TF.Lovetalk","LOCALS",10)
      Global("G#TF.Lovetalk","LOCALS",41)
      !AreaCheck("AR2100")
      !AreaCheck("AR2101")
      !AreaCheck("AR2102")
      !AreaCheck("AR2200")
      !AreaCheck("AR2201")
      !AreaCheck("AR2202")
      !AreaCheck("AR2203")
      !AreaCheck("AR2204")
      !AreaCheck("AR2205")
      !AreaCheck("AR2206")
      !AreaCheck("AR2207")
      !AreaCheck("AR2208")
      !AreaCheck("AR2209")
      !AreaCheck("AR2210")
      !AreaCheck("AR2400")
      !AreaCheck("AR2401")
      !AreaCheck("AR2402")~ BEGIN NoFlirteeFlirts#1.1
    SAY @156 
    IF ~~ EXIT
  END

  // Not a good place to flirt...

  IF ~IsGabber(Player1)
      CombatCounter(0)
      OR(2)
        Global("G#TF.TyrisRomanceActive","GLOBAL",1)
        Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      GlobalGT("G#TF.Lovetalk","LOCALS",10)
      OR(17)
        AreaCheck("AR2100")
        AreaCheck("AR2101")
        AreaCheck("AR2102")
        AreaCheck("AR2200")
        AreaCheck("AR2201")
        AreaCheck("AR2202")
        AreaCheck("AR2203")
        AreaCheck("AR2204")
        AreaCheck("AR2205")
        AreaCheck("AR2206")
        AreaCheck("AR2207")
        AreaCheck("AR2208")
        AreaCheck("AR2209")
        AreaCheck("AR2210")
        AreaCheck("AR2400")
        AreaCheck("AR2401")
        AreaCheck("AR2402")~ BEGIN NoFlirteeFlirts#2.1
    SAY @157 
    IF ~~ EXIT
  END

END
