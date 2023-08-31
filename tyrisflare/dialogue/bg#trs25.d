BEGIN BG#TRS25

  // Aerie Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Aerie",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpAerieBanters","GLOBAL",0)~ THEN BAERIE25 AerieBanter#1
    @0
    DO ~SetGlobal("G#TF.ExpAerieBanters","GLOBAL",1)~
    == BG#TRS25 @1 
    == BAERIE25 @2
    == BG#TRS25 @3
    == BAERIE25 @4
    == BG#TRS25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ @5
    == BG#TRS25 IF ~!Global("AerieRomanceActive","GLOBAL",2)~ @6
    == BAERIE25 @7
  EXIT

  // Anomen Banters
  
  CHAIN IF ~InParty("Anomen")
            See("Anomen")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Anomen",CD_STATE_NOTVALID)
            CombatCounter(0)
            !Alignment("Anomen",MASK_GOOD)
            Global("G#TF.ExpAnomenBanters","GLOBAL",0)~ THEN BG#TRS25 AnomenBanter#1
    @8 
    DO ~SetGlobal("G#TF.ExpAnomenBanters","GLOBAL",1)~
    == BANOME25 @9
    == BG#TRS25 @10
    == BANOME25 @11
    == BG#TRS25 @12
    == BANOME25 @13
    == BG#TRS25 @14
  EXIT

  // Cernd Banters
  
  CHAIN IF ~InParty("Cernd")
            See("Cernd")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Cernd",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpCerndBanters","GLOBAL",0)~ THEN BG#TRS25 CerndBanter#1
    @15 
    DO ~SetGlobal("G#TF.ExpCerndBanters","GLOBAL",1)~
    == BCERND25 @16
    == BG#TRS25 IF ~!Alignment(Player1,NEUTRAL)~ THEN @17
    == BG#TRS25 IF ~Alignment(Player1,NEUTRAL)~ THEN @18
    == BCERND25 @19
    == BG#TRS25 @20
    == BCERND25 @21
    == BG#TRS25 @22
  EXIT

  // Edwin Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Edwin",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpEdwinBanters","GLOBAL",0)~ THEN BEDWIN25 EdwinBanter#1
    @23
    DO ~SetGlobal("G#TF.ExpEdwinBanters","GLOBAL",1)~
    == BG#TRS25 @24 
    == BEDWIN25 @25
    == BG#TRS25 @26
  EXIT

  // Haer'Dalis Banters

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("HaerDalis",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpHaerDalisBanters","GLOBAL",0)~ THEN BHAERD25 HaerDalisBanter#1
    @27
    DO ~SetGlobal("G#TF.ExpHaerDalisBanters","GLOBAL",1)~
    == BG#TRS25 @28 
    == BHAERD25 @29
    == BG#TRS25 @30
    == BHAERD25 @31
    = @32
    == BG#TRS25 @33
    == BHAERD25 @34
    == BG#TRS25 @35
  EXIT

  // Imoen Banters

  CHAIN IF ~InParty("Imoen2")
            See("Imoen2")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Imoen2",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpImoenBanters","GLOBAL",0)~ THEN BG#TRS25 ImoenBanter#1
    @36 
    DO ~SetGlobal("G#TF.ExpImoenBanters","GLOBAL",1)~
    == BIMOEN25 @37
    == BG#TRS25 @38
    == BIMOEN25 @39
    == BG#TRS25 @40
    == BIMOEN25 @41
    == BG#TRS25 @42
    == BIMOEN25 IF ~!Global("G#TF.ImoenAbilities","GLOBAL",1)~ THEN @43
    == BIMOEN25 IF ~Global("G#TF.ImoenAbilities","GLOBAL",1)~ THEN @44
    == BG#TRS25 @45
    == BIMOEN25 @46
    == BG#TRS25 @47
  EXIT

  // Jaheira Banters

  CHAIN IF ~InParty("Jaheira")
            See("Jaheira")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Jaheira",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpJaheiraBanters","GLOBAL",0)~ THEN BG#TRS25 JaheiraBanter#1
    @48 
    DO ~SetGlobal("G#TF.ExpJaheiraBanters","GLOBAL",1)~
    == BJAHEI25 @49
    == BG#TRS25 @50
    == BJAHEI25 @51
    == BG#TRS25 @52
    == BJAHEI25 @53
    == BG#TRS25 @54
    BRANCH ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN
      == BJAHEI25 @55
      == BG#TRS25 @56
    END
    BRANCH ~!Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN
      == BJAHEI25 @57
      == BG#TRS25 @58
    END
    == BG#TRS25 @59
  EXIT

  // Jan Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Jan",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpJanBanters","GLOBAL",0)~ THEN BJAN25 JanBanter#1
    @60
    DO ~SetGlobal("G#TF.ExpJanBanters","GLOBAL",1)~
    == BG#TRS25 @61 
    == BJAN25 @62
    == BG#TRS25 @63
    == BJAN25 @64
    == BG#TRS25 @65
    == BJAN25 @66
    == BG#TRS25 @67
    == BJAN25 @68
    = @69
    = @70
    == BG#TRS25 @71
    == BJAN25 @72
    == BG#TRS25 @73
    == BJAN25 @74
    == BG#TRS25 @75
    == BJAN25 @76
    == BG#TRS25 @77
  EXIT

  // Keldorn Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Keldorn",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpKeldornBanters","GLOBAL",0)~ THEN BKELDO25 KeldornBanter#1
    @78
    DO ~SetGlobal("G#TF.ExpKeldornBanters","GLOBAL",1)~
    == BG#TRS25 @79 
    == BKELDO25 @80
    == BG#TRS25 @81
    == BKELDO25 @82
    == BG#TRS25 @83
    == BKELDO25 @84
    == BG#TRS25 @85
  EXIT

  // Korgan Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Korgan",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.TyrisRomanceActive","GLOBAL",2)
            Global("G#TF.ExpKorganBanters","GLOBAL",0)~ THEN BKORGA25 KorganBanter#1
    @86
    DO ~SetGlobal("G#TF.ExpKorganBanters","GLOBAL",1)~
    == BG#TRS25 @87 
    == BKORGA25 @88
    == BG#TRS25 @89
    == BKORGA25 @90
    == BG#TRS25 @91
  EXIT

  // Mazzy Banters
  
  CHAIN IF ~InParty("Mazzy")
            See("Mazzy")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Mazzy",CD_STATE_NOTVALID)
            CombatCounter(0)
            AreaType(DUNGEON)
            Global("G#TF.ExpMazzyBanters","GLOBAL",0)~ THEN BG#TRS25 MazzyBanter#1
    @92 
    DO ~SetGlobal("G#TF.ExpMazzyBanters","GLOBAL",1)~
    == BMAZZY25 @93
    == BG#TRS25 @94
    == BMAZZY25 @95
  EXIT

  // Minsc Banters

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Minsc",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.TyrisRomanceActive","GLOBAL",2)
            Global("G#TF.ExpMinscBanters","GLOBAL",0)~ THEN BMINSC25 MinscBanter#1
    @96
    DO ~SetGlobal("G#TF.ExpMinscBanters","GLOBAL",1)~
    == BG#TRS25 @97 
    == BMINSC25 @98
    == BG#TRS25 @99
    BRANCH ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN
      == BMINSC25 @100
      == BG#TRS25 @101
    END
    BRANCH ~!Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN
      == BMINSC25 @102
      == BG#TRS25 @103
    END
  EXIT

  // Nalia Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Nalia",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpNaliaBanters","GLOBAL",0)~ THEN BNALIA25 NaliaBanter#1
    @104
    DO ~SetGlobal("G#TF.ExpNaliaBanters","GLOBAL",1)~
    == BG#TRS25 @105 
    == BNALIA25 @106
    == BG#TRS25 @107
    == BNALIA25 @108
    == BG#TRS25 @109
    == BNALIA25 @110
    == BG#TRS25 @111
  EXIT

  // Sarevok Banters

  CHAIN IF ~InParty("Sarevok")
            See("Sarevok")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Sarevok",CD_STATE_NOTVALID)
            CombatCounter(0)
            Alignment("Sarevok",MASK_EVIL)
            Global("G#TF.ExpSarevokBanters","GLOBAL",0)~ THEN BG#TRS25 SarevokBanter#1
    @112 
    DO ~SetGlobal("G#TF.ExpSarevokBanters","GLOBAL",1)~
    == BSAREV25 @113
    == BG#TRS25 @114
    == BSAREV25 @115
    == BG#TRS25 @116
    == BSAREV25 @117
    == BG#TRS25 IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ THEN @118
    == BG#TRS25 IF ~!Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ THEN @119
    == BSAREV25 @120
  EXIT

  // Valygar Banters
  
  CHAIN IF ~InParty("Valygar")
            See("Valygar")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Valygar",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ExpValygarBanters","GLOBAL",0)~ THEN BG#TRS25 ValygarBanter#1
    @121 
    DO ~SetGlobal("G#TF.ExpValygarBanters","GLOBAL",1)~
    == BVALYG25 @122
    == BG#TRS25 @123
    == BVALYG25 @124
    == BG#TRS25 @125
    == BVALYG25 @126
    == BG#TRS25 @127
    == BVALYG25 @128
    == BG#TRS25 @129
  EXIT

  // Viconia Banters
  
  CHAIN IF ~InParty("Viconia")
            See("Viconia")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Viconia",CD_STATE_NOTVALID)
            CombatCounter(0)
            !Global("G#TF.TyrisRomanceActive","GLOBAL",2) //Oh you sneaky multi-romancers...
            Global("ViconiaRomanceActive","GLOBAL",2)
            Global("G#TF.ExpViconiaBanters","GLOBAL",0)~ THEN BG#TRS25 ViconiaBanter#1
    @130 
    DO ~SetGlobal("G#TF.ExpViconiaBanters","GLOBAL",1)~
    == BVICON25 @131
    == BG#TRS25 IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",3)~ THEN @132
    == BG#TRS25 IF ~!Global("G#TF.TyrisRomanceActive","GLOBAL",3)~ THEN @133
    == BVICON25 @134
    == BG#TRS25 @135
  EXIT
