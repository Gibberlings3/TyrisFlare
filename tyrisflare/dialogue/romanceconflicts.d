// Aerie Lovetalk 18 - "I don't know if I can face this wretched existence on the ground..."

INTERJECT BAERIE 201 GI#TF.TyrisInAerieLT18 //ConflictInAerieLovetalk#18.1
  == BG#TYRIS IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",1)
                  InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @0 
  == BAERIE @1
  == BG#TYRIS @2
  == BAERIE @3
COPY_TRANS BAERIE 428

// Aerie Lovetalk 26 - "I just feel like collapsing here and dying..."

INTERJECT BAERIE 233 GI#TF.TyrisInAerieLT26 //ConflictInAerieLovetalk#26.1
  == BG#TYRIS IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",1)
                  InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @4 
  == BAERIE @5
  == BG#TYRIS @6
  == BAERIE @7
  == BG#TYRIS @8
END
  ++ @9 EXTERN BG#TYRIS ConflictInAerieLovetalk#26.2
  ++ @10 EXTERN BG#TYRIS ConflictInAerieLovetalk#26.3
  ++ @11 EXTERN BAERIE 440
  ++ @12 EXTERN BAERIE 436

APPEND_EARLY BG#TYRIS

  IF ~~ BEGIN ConflictInAerieLovetalk#26.2 //From ConflictInAerieLovetalk#26.2.1
    SAY @13
    IF ~~ DO ~SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)~ EXTERN BAERIE 434
  END

  IF ~~ BEGIN ConflictInAerieLovetalk#26.3 //From ConflictInAerieLovetalk#26.2.2
    SAY @14
    COPY_TRANS BG#TYRIS ConflictInAerieLovetalk#26.2
  END

END

// Jaheira Lovetalk 22 - "I worry sometimes..."

INTERJECT BJAHEIR 188 GI#TF.TyrisInJaheiraLT22 //ConflictInJaheiraLovetalk#22.1
  == BG#TYRIS IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",1)
                  InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @15 
  = @16
  == BJAHEIR @17
END BJAHEIR 189

// Tyris Lovetalk 12 - "What was Candlekeep like?"

INTERJECT BG#TYRIS Lovetalk#12.1 GI#TF.ViconiaInTyrisLT12 //ConflictInTyrisLovetalk#12.1
  == BVICONI IF ~Global("ViconiaRomanceActive","GLOBAL",1)
                 InParty("Viconia")
                 !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @18
  == BG#TYRIS @19 
END BG#TYRIS ConflictInTyrisLovetalk#12.3

INTERJECT BG#TYRIS Lovetalk#12.1 GI#TF.JaheiraInTyrisLT12 //ConflictInTyrisLovetalk#12.2
  == BJAHEIR IF ~Global("JaheiraRomanceActive","GLOBAL",1)
                 InParty("Jaheira")
                 !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @20
  == BG#TYRIS @21 
END BG#TYRIS ConflictInTyrisLovetalk#12.3

APPEND_EARLY BG#TYRIS

  IF ~~ BEGIN ConflictInTyrisLovetalk#12.3 //From ConflictInTyrisLovetalk#12.1, ConflictInTyrisLovetalk#12.2
    SAY @22
    ++ @23 GOTO Lovetalk#12.2
    ++ @24 GOTO Lovetalk#12.3
    ++ @25 GOTO Lovetalk#12.4
    ++ @26 GOTO Lovetalk#12.5
  END

END

// Tyris Lovetalk 20 - "I feel guilty about my companions..."

INTERJECT BG#TYRIS Lovetalk#20.1 GI#TF.AerieInTyrisLT20 //ConflictInTyrisLovetalk#20.1
  == BAERIE IF ~Global("AerieRomanceActive","GLOBAL",1)
                InParty("Aerie")
                !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @27
  == BG#TYRIS @28 
  == BAERIE @29
  == BG#TYRIS @30
END BG#TYRIS ConflictInTyrisLovetalk#20.3

INTERJECT BG#TYRIS Lovetalk#20.1 GI#TF.ViconiaInTyrisLT20 //ConflictInTyrisLovetalk#20.2
  == BVICONI IF ~Global("ViconiaRomanceActive","GLOBAL",1)
                 InParty("Viconia")
                 !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @31
  == BG#TYRIS @32 
  = @33
END BG#TYRIS ConflictInTyrisLovetalk#20.3

APPEND_EARLY BG#TYRIS

  IF ~~ BEGIN ConflictInTyrisLovetalk#20.3 //From ConflictInTyrisLovetalk#20.1, ConflictInTyrisLovetalk#20.2
    SAY @34
    ++ @35 GOTO Lovetalk#20.2
    ++ @36 GOTO Lovetalk#20.3
    ++ @37 GOTO Lovetalk#20.4
    ++ @38 GOTO Lovetalk#20.5
  END

END

// Tyris Lovetalk 34 - "Aches and pains"

INTERJECT BG#TYRIS Lovetalk#34.1 GI#TF.AerieInTyrisLT34 //ConflictInTyrisLovetalk#34.1
  == BAERIE IF ~Global("AerieRomanceActive","GLOBAL",1)
                InParty("Aerie")
                !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @39
  == BG#TYRIS @40 
  == BAERIE @41
  == BG#TYRIS @42
  END
    ++ @43 EXTERN BAERIE ConflictInTyrisLovetalk#34.3
    ++ @44 EXTERN BG#TYRIS ConflictInTyrisLovetalk#34.4
    ++ @45 EXTERN BG#TYRIS ConflictInTyrisLovetalk#34.5

INTERJECT BG#TYRIS Lovetalk#34.1 GI#TF.JaheiraInTyrisLT34 //ConflictInTyrisLovetalk#34.2
  == BJAHEIR IF ~Global("JaheiraRomanceActive","GLOBAL",1)
                InParty("Jaheira")
                !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @46
  == BG#TYRIS @47 
  == BJAHEIR @48
  END
    ++ @49 EXTERN BJAHEIR ConflictInTyrisLovetalk#34.6
    ++ @50 EXTERN BG#TYRIS ConflictInTyrisLovetalk#34.4
    ++ @45 EXTERN BG#TYRIS ConflictInTyrisLovetalk#34.7

CHAIN BAERIE ConflictInTyrisLovetalk#34.3 //From ConflictInTyrisLovetalk#34.1.1
  @51
    DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
  == BG#TYRIS @52
  END
    ++ @53 EXTERN BG#TYRIS Lovetalk#34.2
    ++ @54 EXTERN BG#TYRIS Lovetalk#34.3
    ++ @55 EXTERN BG#TYRIS Lovetalk#34.4
  
APPEND_EARLY BG#TYRIS

  IF ~~ BEGIN ConflictInTyrisLovetalk#34.4 //From ConflictInTyrisLovetalk#34.1.2, ConflictInTyrisLovetalk#34.2.2
    SAY @56
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      RestParty()
    ~ EXIT
  END

END

CHAIN BG#TYRIS ConflictInTyrisLovetalk#34.5 //From ConflictInTyrisLovetalk#34.1.3
  @57
  == BAERIE @57
END BG#TYRIS ConflictInTyrisLovetalk#34.8

CHAIN BJAHEIR ConflictInTyrisLovetalk#34.6 //From ConflictInTyrisLovetalk#34.2.2
  @58
    DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
  == BG#TYRIS @52
END
  ++ @53 EXTERN BG#TYRIS Lovetalk#34.2
  ++ @54 EXTERN BG#TYRIS Lovetalk#34.3
  ++ @59 EXTERN BG#TYRIS Lovetalk#34.4

CHAIN BG#TYRIS ConflictInTyrisLovetalk#34.7 //From ConflictInTyrisLovetalk#34.2.3
  @57
  == BJAHEIR @57
END BG#TYRIS ConflictInTyrisLovetalk#34.8

APPEND_EARLY BG#TYRIS

  IF ~~ BEGIN ConflictInTyrisLovetalk#34.8 //From ConflictInTyrisLovetalk#34.5.1, ConflictInTyrisLovetalk#34.7.1
    SAY @60
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
      RestParty()
    ~ EXIT
  END

END

// Viconia Lovetalk 16 - "I may have been exceedingly harsh in my treatment of you once again..."

INTERJECT BVICONI 62 GI#TF.TyrisInViconiaLT16 //ConflictInViconiaLovetalk#16.1
  == BG#TYRIS IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",1)
                  InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @61 
  == BVICONI @62
  == BG#TYRIS @63
  == BVICONI @64
  == BG#TYRIS @65
  == BVICONI @66
  = @67
COPY_TRANS BVICONI 556

// Viconia Lovetalk 28 - "Please disregard the things I said to you earlier..."

INTERJECT BVICONI 93 GI#TF.TyrisInViconiaLT28 //ConflictInViconiaLovetalk#28.1
  == BG#TYRIS IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",1)
                  InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @68 
  == BVICONI @69
  == BG#TYRIS @70
END
  ++ @71 EXTERN BG#TYRIS ConflictInViconiaLovetalk#28.2
  ++ @72 EXTERN BG#TYRIS ConflictInViconiaLovetalk#28.3
  ++ @73 EXTERN BVICONI ConflictInViconiaLovetalk#28.4

APPEND_EARLY BG#TYRIS

  IF ~~ BEGIN ConflictInViconiaLovetalk#28.2 //From ConflictInViconiaLovetalk#28.1.1
    SAY @74
    IF ~~ DO ~SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)~ EXTERN BVICONI ConflictInViconiaLovetalk#28.5
   END

  IF ~~ BEGIN ConflictInViconiaLovetalk#28.3 //From ConflictInViconiaLovetalk#28.1.2
    SAY @75
    IF ~~ EXTERN BVICONI ConflictInViconiaLovetalk#28.5
  END

END

APPEND_EARLY BVICONI

  IF ~~ BEGIN ConflictInViconiaLovetalk#28.4 //From ConflictInViconiaLovetalk#28.1.3
    SAY @76
    IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ BEGIN ConflictInViconiaLovetalk#28.5 //From ConflictInViconiaLovetalk#28.2.1, ConflictInViconiaLovetalk#28.3.1
    SAY @77
    ++ @78 EXTERN BVICONI 256
    ++ @79 EXTERN BVICONI 257
  END

END
