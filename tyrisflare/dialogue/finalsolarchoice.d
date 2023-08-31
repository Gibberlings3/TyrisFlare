// Should you ascend or not?

I_C_T3 FINSOL01 27 GI#TF.FinalSolarChoice //FinalSolarChoice#1.1
  == G#TRS25J IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                  !Global("G#TF.TyrisRomanceActive","GLOBAL",2)
                  Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ THEN @0
  == G#TRS25J IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                  !Global("G#TF.TyrisRomanceActive","GLOBAL",2)
                  !Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ THEN @1
END

EXTEND_TOP FINSOL01 27 #1 //FinalSolarChoice#2.1
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP VALYG25J 2 #1 //FinalSolarChoice#2.2
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP ANOME25J 10 #1 //FinalSolarChoice#2.3
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP VICON25J 7 #1 //FinalSolarChoice#2.4
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP AERIE25J 8 #1 //FinalSolarChoice#2.5
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP JAHEI25J 8 #1 //FinalSolarChoice#2.6
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP IMOEN25J 16 #1 //FinalSolarChoice#2.7
  IF ~ InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP SAREV25J 2 3 #1 //FinalSolarChoice#2.8
  IF ~ InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP MINSC25J 1 #1 //FinalSolarChoice#2.9
  IF ~ InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP NALIA25J 2 #1 //FinalSolarChoice#2.10
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP HAERD25J 2 #1 //FinalSolarChoice#2.11
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP JAN25J 11 #1 //FinalSolarChoice#2.12
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP CERND25J 1 #1 //FinalSolarChoice#2.13
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP MAZZY25J 1 #1 //FinalSolarChoice#2.14
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP EDWIN25J 0 #1 //FinalSolarChoice#2.15
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP KORGA25J 3 #1 //FinalSolarChoice#2.16
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

EXTEND_TOP KELDO25J 1 #1 //FinalSolarChoice#2.17
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN G#TRS25J FinalSolarChoice#2.18
END

APPEND_EARLY G#TRS25J

  IF ~~ BEGIN FinalSolarChoice#2.18 //From FinalSolarChoice#2.1.1, FinalSolarChoice#2.2.1, FinalSolarChoice#2.3.1, FinalSolarChoice#2.4.1, FinalSolarChoice#2.5.1, FinalSolarChoice#2.6.1, FinalSolarChoice#2.7.1, FinalSolarChoice#2.8.1, FinalSolarChoice#2.9.1, FinalSolarChoice#2.10.1, FinalSolarChoice#2.11.1, FinalSolarChoice#2.12.1, FinalSolarChoice#2.13.1, FinalSolarChoice#2.14.1, FinalSolarChoice#2.15.1, FinalSolarChoice#2.16.1, FinalSolarChoice#2.17.1
    SAY @2
    IF ~Global("G#TF.DiscussBabyLater","GLOBAL",1)~ GOTO FinalSolarChoice#2.19
    IF ~Global("G#TF.Pregnancy","GLOBAL",1)~ GOTO FinalSolarChoice#2.20
    IF ~!Global("G#TF.DiscussBabyLater","GLOBAL",1)
        !Global("G#TF.Pregnancy","GLOBAL",1)
        Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ GOTO FinalSolarChoice#2.21
    IF ~!Global("G#TF.DiscussBabyLater","GLOBAL",1)
        !Global("G#TF.Pregnancy","GLOBAL",1)
        !Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ GOTO FinalSolarChoice#2.22
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.19 //From FinalSolarChoice#2.18.1
    SAY @3
    IF ~~ GOTO FinalSolarChoice#2.23
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.20 //From FinalSolarChoice#2.18.2
    SAY @4
    + ~Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ + @5 GOTO FinalSolarChoice#2.24
    + ~!Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ + @5 GOTO FinalSolarChoice#2.25
    + ~Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ + @6 GOTO FinalSolarChoice#2.26
    + ~!Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ + @6 GOTO FinalSolarChoice#2.27
    + ~Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ + @7 GOTO FinalSolarChoice#2.28
    + ~!Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ + @7 GOTO FinalSolarChoice#2.29
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.21 //From FinalSolarChoice#2.18.3
    SAY @8
    IF ~~ GOTO FinalSolarChoice#2.23
  END

  IF ~~ BEGIN FinalSolarChoice#2.22 //From FinalSolarChoice#2.18.4
    SAY @9
    IF ~~ GOTO FinalSolarChoice#2.23
  END

  IF ~~ BEGIN FinalSolarChoice#2.23 //From FinalSolarChoice#2.19.1, FinalSolarChoice#2.21.1, FinalSolarChoice#2.22.1, FinalSolarChoice#2.24.1, FinalSolarChoice#2.25.1, FinalSolarChoice#2.26.1, FinalSolarChoice#2.27.1, FinalSolarChoice#2.28.1, FinalSolarChoice#2.29.1
    SAY @10
    IF ~~ EXTERN FINSOL01 28
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.24 //From FinalSolarChoice#2.20.1
    SAY @11
    IF ~~ GOTO FinalSolarChoice#2.23
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.25 //From FinalSolarChoice#2.20.2
    SAY @12
    IF ~~ GOTO FinalSolarChoice#2.23
  END

  IF ~~ BEGIN FinalSolarChoice#2.26 //From FinalSolarChoice#2.20.3
    SAY @13
    IF ~~ GOTO FinalSolarChoice#2.23
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.27 //From FinalSolarChoice#2.20.4
    SAY @14
    IF ~~ GOTO FinalSolarChoice#2.23
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.28 //From FinalSolarChoice#2.20.5
    SAY @15
    IF ~~ GOTO FinalSolarChoice#2.23
  END
  
  IF ~~ BEGIN FinalSolarChoice#2.29 //From FinalSolarChoice#2.20.6
    SAY @16
    IF ~~ GOTO FinalSolarChoice#2.23
  END

END

// Romantic consequences of ascension

EXTEND_TOP FINSOL01 29 30 31 #1 //FinalSolarConsequences#1.1
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      OR(2)
        Global("G#TF.DestinyAscendGood","LOCALS",2)
        Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.4
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      Global("G#TF.DestinyMortal","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.5
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.DestinyMortal","LOCALS",2)
      !Global("G#TF.DestinyAscendGood","LOCALS",2)
      !Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.6
END

EXTEND_TOP IMOEN25J 18 #1 //FinalSolarConsequences#1.2
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      OR(2)
        Global("G#TF.DestinyAscendGood","LOCALS",2)
        Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.4
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      Global("G#TF.DestinyMortal","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.5
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.DestinyMortal","LOCALS",2)
      !Global("G#TF.DestinyAscendGood","LOCALS",2)
      !Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.6
END

EXTEND_TOP SAREV25J 4 6 #1 //FinalSolarConsequences#1.3
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      OR(2)
        Global("G#TF.DestinyAscendGood","LOCALS",2)
        Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.4
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      Global("G#TF.DestinyMortal","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.5
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.DestinyMortal","LOCALS",2)
      !Global("G#TF.DestinyAscendGood","LOCALS",2)
      !Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#1.6
END

APPEND_EARLY G#TRS25J
  
  IF ~~ BEGIN FinalSolarConsequences#1.4 //From FinalSolarConsequences#1.1.1, FinalSolarConsequences#1.2.1, FinalSolarConsequences#1.3.1
    SAY @17
    IF ~Global("G#TF.Pregnancy","GLOBAL",1)~ GOTO FinalSolarConsequences#1.7
    IF ~!Global("G#TF.Pregnancy","GLOBAL",1)~ GOTO FinalSolarConsequences#1.8
  END

  IF ~~ BEGIN FinalSolarConsequences#1.5 //From FinalSolarConsequences#1.1.2, FinalSolarConsequences#1.2.2, FinalSolarConsequences#1.3.2
    SAY @18
    COPY_TRANS G#TRS25J FinalSolarConsequences#1.4
  END

  IF ~~ BEGIN FinalSolarConsequences#1.6 //From FinalSolarConsequences#1.1.3, FinalSolarConsequences#1.2.3, FinalSolarConsequences#1.3.3
    SAY @19
    COPY_TRANS G#TRS25J FinalSolarConsequences#1.4
  END

  IF ~~ BEGIN FinalSolarConsequences#1.7 //From FinalSolarConsequences#1.4.1
    SAY @20
    IF ~~ GOTO FinalSolarConsequences#1.9
  END

  IF ~~ BEGIN FinalSolarConsequences#1.8 //From FinalSolarConsequences#1.4.2
    SAY @21
    IF ~~ GOTO FinalSolarConsequences#1.9
  END
  
  IF ~~ BEGIN FinalSolarConsequences#1.9 //From FinalSolarConsequences#1.7.1, FinalSolarConsequences#1.8.1
    SAY @22
    ++ @23 GOTO FinalSolarConsequences#1.10
    ++ @24 GOTO FinalSolarConsequences#1.11
    ++ @25 GOTO FinalSolarConsequences#1.12
    + ~Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)
       Global("G#TF.Pregnancy","GLOBAL",1)~ + @26 DO ~SetGlobal("G#TF.MemoryWipe","GLOBAL",1)~ GOTO FinalSolarConsequences#1.13
    + ~Global("G#TF.PromisesToSendTyrisHome","GLOBAL",1)
       !Global("G#TF.Pregnancy","GLOBAL",1)~ + @26 DO ~SetGlobal("G#TF.MemoryWipe","GLOBAL",1)~ GOTO FinalSolarConsequences#1.14
 END

  IF ~~ BEGIN FinalSolarConsequences#1.10 //From FinalSolarConsequences#1.9.1
    SAY @27
    IF ~~ EXTERN FINSOL01 33
  END
  
  IF ~~ BEGIN FinalSolarConsequences#1.11 //From FinalSolarConsequences#1.9.2
    SAY @28
    COPY_TRANS G#TRS25J FinalSolarConsequences#1.10
  END
  
  IF ~~ BEGIN FinalSolarConsequences#1.12 //From FinalSolarConsequences#1.9.3
    SAY @29
    COPY_TRANS G#TRS25J FinalSolarConsequences#1.10
  END

  IF ~~ BEGIN FinalSolarConsequences#1.13 //From FinalSolarConsequences#1.9.4
    SAY @30
    COPY_TRANS G#TRS25J FinalSolarConsequences#1.10
  END

  IF ~~ BEGIN FinalSolarConsequences#1.14 //From FinalSolarConsequences#1.9.5
    SAY @31
    COPY_TRANS G#TRS25J FinalSolarConsequences#1.10
  END

END

// Romantic consequences of remaining mortal

EXTEND_TOP FINSOL01 32 #1 //FinalSolarConsequences#2.1
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      OR(2)
        Global("G#TF.DestinyAscendGood","LOCALS",2)
        Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.4
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      Global("G#TF.DestinyMortal","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.5
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.DestinyMortal","LOCALS",2)
      !Global("G#TF.DestinyAscendGood","LOCALS",2)
      !Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.6
END

EXTEND_TOP IMOEN25J 20 #1 //FinalSolarConsequences#2.2
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      OR(2)
        Global("G#TF.DestinyAscendGood","LOCALS",2)
        Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.4
  IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      Global("G#TF.DestinyMortal","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.5
  IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.DestinyMortal","LOCALS",2)
      !Global("G#TF.DestinyAscendGood","LOCALS",2)
      !Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.6
END

EXTEND_TOP SAREV25J 5 7 #1 //FinalSolarConsequences#2.3
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      OR(2)
        Global("G#TF.DestinyAscendGood","LOCALS",2)
        Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.4
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      Global("G#TF.DestinyMortal","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.5
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
	  Global("G#TF.TyrisRomanceActive","GLOBAL",2)
      !Global("G#TF.DestinyMortal","LOCALS",2)
      !Global("G#TF.DestinyAscendGood","LOCALS",2)
      !Global("G#TF.DestinyAscendEvil","LOCALS",2)~ EXTERN G#TRS25J FinalSolarConsequences#2.6
END

APPEND_EARLY G#TRS25J
  
  IF ~~ BEGIN FinalSolarConsequences#2.4 //From FinalSolarConsequences#2.1.1, FinalSolarConsequences#2.2.1, FinalSolarConsequences#2.3.1
    SAY @32
    IF ~Global("G#TF.Pregnancy","GLOBAL",1)~ GOTO FinalSolarConsequences#2.7
    IF ~!Global("G#TF.Pregnancy","GLOBAL",1)~ GOTO FinalSolarConsequences#2.8
  END

  IF ~~ BEGIN FinalSolarConsequences#2.5 //From FinalSolarConsequences#2.1.2, FinalSolarConsequences#2.2.2, FinalSolarConsequences#2.3.2
    SAY @33
    COPY_TRANS G#TRS25J FinalSolarConsequences#2.4
  END
  
  IF ~~ BEGIN FinalSolarConsequences#2.6 //From FinalSolarConsequences#2.1.3, FinalSolarConsequences#2.2.3, FinalSolarConsequences#2.3.3
    SAY @34
    COPY_TRANS G#TRS25J FinalSolarConsequences#2.4
  END
  
  IF ~~ BEGIN FinalSolarConsequences#2.7 //From FinalSolarConsequences#2.4.1
    SAY @35
    IF ~~ EXTERN FINSOL01 33
  END

  IF ~~ BEGIN FinalSolarConsequences#2.8 //From FinalSolarConsequences#2.4.2
    SAY @36
    COPY_TRANS G#TRS25J FinalSolarConsequences#2.7
  END
  
END
