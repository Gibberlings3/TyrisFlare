// Bodhi's offer

I_C_T BODHI 6 GI#TF.BodhiOffer
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @0
END

// Siding with Bodhi

I_C_T BODHI 18 GI#TF.SidingWithBodhi
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @1
END

// Bodhi's tasks

I_C_T BODHI 45 GI#TF.BodhiTask
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @2
END

// Delcia

INTERJECT DELCIA 2 GI#TF.Delcia
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @3
  == DELCIA @4
END DELCIA 41

// Disappointed by Firkraag

INTERJECT FIRKRA02 5 GI#TF.Firkraag
  == G#TYRISJ IF ~InParty("G#Tyris") !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @5
  == FIRKRA02 @6
  = @7
END FIRKRA02 7

// Rescuing Garren's child

I_C_T GARREN 35 GI#TF.GarrensChild
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @8
END

// Taunting Irenicus in Hell

I_C_T HELLJON 7 GI#TF.TauntJonInHell
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @9 
END

I_C_T HELLJON 8 GI#TF.TauntJonInHell
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @9 
END

I_C_T HELLJON 9 GI#TF.TauntJonInHell
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @9 
END

I_C_T HELLJON 10 GI#TF.TauntJonInHell
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @9 
END

// <CHARNAME> is trying to abandon Imoen

INTERJECT IMOEN2 22 GI#TF.CantLeaveImoen
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @10
END IMOEN2 23

// Hearing about the Bridge killings

I_C_T INSPECT 13 GI#TF.BridgeKillings
== G#TYRISJ IF ~InParty("G#Tyris")
                !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @11
END

// Trying to hire a prostitute

ADD_STATE_TRIGGER MADAM 12
  ~!Global("G#TF.TyrisRomanceActive","GLOBAL",1)
   !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~

APPEND MADAM

  IF WEIGHT #-1 ~InPartySlot(LastTalkedToBy,0)
      GlobalGT("G#TF.TyrisRomanceActive","GLOBAL",0)
      GlobalLT("G#TF.TyrisRomanceActive","GLOBAL",3)~ BEGIN HiringAProstitute#1.1
    SAY @12
    IF ~InParty("G#Tyris")
        !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ EXTERN G#TYRISJ HiringAProstitute#1.2
    IF ~OR(2)
          !InParty("G#Tyris")
          StateCheck("G#Tyris",CD_STATE_NOTVALID)~ GOTO 7
  END

END

APPEND G#TYRISJ

  IF ~~ BEGIN HiringAProstitute#1.2 //From HiringAProstitute#1.1.1
    SAY @13
    IF ~~ DO ~SetGlobal("MadamUpset","GLOBAL",1)~ EXTERN MADAM 17
  END

END

// Lavok

INTERJECT LAVOK 38 GI#TF.Lavok
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @14
  == LAVOK @15
  == G#TYRISJ @16
  == LAVOK @17
COPY_TRANS LAVOK 39

INTERJECT LAVOK 49 GI#TF.Lavok
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @14
  == LAVOK @15
  == G#TYRISJ @16
  == LAVOK @18
COPY_TRANS LAVOK 50

// Mae'var's quest to kill Embarl

I_C_T MAEVAR 31 GI#TF.KillingEmbarl
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @19
END

// Mage who offers to transport the Knights of Solamnia home

I_C_T MGKHOL01 0 GI#TF.KnightsReturnHome
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @20
  == MGKHOL01 @21
  == G#TYRISJ @22
  == MGKHOL01 @23
  = @24
  = @25
  == G#TYRISJ @26
  == MGKHOL01 @27
  = @28
  == G#TYRISJ IF ~!Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ THEN @29
  == G#TYRISJ IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ THEN @30
  == MGKHOL01 @31
END

// Encountering the Knights of Solamnia

I_C_T OBSSOL01 5 GI#TF.KnightsOfSolamnia
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @32
  == OBSSOL01 @33
  == G#TYRISJ @34
END

// After killing Lonk

INTERJECT PLAYER1 15 GI#TF.AfterKillingLonk
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @35
COPY_TRANS IMOEN2J 8

// Head spins after Irenicus' spell

INTERJECT PLAYER1 3 GI#TF.HeadSpins //HeadSpins#1.1
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @36
  DO ~SetGlobal("SelfTalk","GLOBAL",2)~
END
  ++ @37 EXTERN G#TYRISJ HeadSpins#1.2
  ++ @38 EXTERN G#TYRISJ HeadSpins#1.2
  ++ @39 EXTERN G#TYRISJ HeadSpins#1.3

APPEND_EARLY G#TYRISJ

  IF ~~ BEGIN HeadSpins#1.2 //From HeadSpins#1.1.1, HeadSpins#1.1.2
    SAY @40
    IF ~~ EXIT
  END

  IF ~~ BEGIN HeadSpins#1.3 //From HeadSpins#1.1.3
    SAY @41
    IF ~~ EXIT
  END

END

// First slayer change

INTERJECT PLAYER1 5 GI#TF.FirstSlayerChange
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @42
  = @43
EXIT

// Second slayer change

INTERJECT PLAYER1 7 GI#TF.SecondSlayerChange1 //SecondSlayerChange#1.1
  == G#TYRISJ IF ~OR(2)
                    Global("G#TF.TyrisRomanceActive","GLOBAL",1)
                    Global("G#TF.TyrisRomanceActive","GLOBAL",2)
                  InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @36
  DO ~SetGlobal("G#TF.EndangerLovedOne","GLOBAL",1)~
END
  ++ @44 EXTERN G#TYRISJ SecondSlayerChange#1.2
  ++ @45 EXTERN G#TYRISJ SecondSlayerChange#1.2
  ++ @46 EXTERN G#TYRISJ SecondSlayerChange#1.2

INTERJECT PLAYER1 10 GI#TF.SecondSlayerChange2 //SecondSlayerChange#2.1
  == G#TYRISJ IF ~Global("G#TF.EndangerLovedOne","GLOBAL",1)
                  InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @47
END
  ++ @48 EXTERN G#TYRISJ SecondSlayerChange#2.2
  ++ @49 EXTERN G#TYRISJ SecondSlayerChange#2.2
  ++ @50 EXTERN G#TYRISJ SecondSlayerChange#2.2

APPEND G#TYRISJ

  IF ~~ THEN BEGIN SecondSlayerChange#1.2 //From SecondSlayerChange#1.1.1, SecondSlayerChange#1.1.2, SecondSlayerChange#1.1.3
    SAY @51
    IF ~~ DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
  END

  IF ~~ THEN BEGIN SecondSlayerChange#2.2 //From SecondSlayerChange#2.1.1, SecondSlayerChange#2.1.2, SecondSlayerChange#2.1.3
    SAY @52
    IF ~~ EXIT
  END

END

// Irenicus dies at the Tree of Life

EXTEND_BOTTOM PLAYER1 16 //IrenicusDiesAtTree#1.1
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)~
    DO ~
      SetGlobal("IrenicusBeat","AR2806",2)
      SetGlobal("HadPeopleBeforeHell","LOCALS",1)
    ~ EXTERN G#TYRISJ IrenicusDiesAtTree#1.2
END

APPEND G#TYRISJ

  IF ~~ BEGIN IrenicusDiesAtTree#1.2 //From IrenicusDiesAtTree#1.1.1
    SAY @53
    IF ~~ EXTERN PLAYER1 17
  END

END

// Arriving in Hell

I_C_T PLAYER1 25 GI#TF.ArriveInHell
  == G#TYRISJ IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @54 
END

// Tree of Life

INTERJECT PLAYER1 33 GI#TF.TreeOfLife //TreeOfLife#1.1
  == PLAYER1 IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ THEN @55
END
  ++ @56 EXTERN G#TYRISJ TreeOfLife#1.2
  ++ @57 EXTERN G#TYRISJ TreeOfLife#1.3
  ++ @58 EXTERN G#TYRISJ TreeOfLife#1.4

APPEND G#TYRISJ

  IF ~~ BEGIN TreeOfLife#1.2 //From TreeOfLife#1.1.1
    SAY @59
    COPY_TRANS PLAYER1 33
  END

  IF ~~ BEGIN TreeOfLife#1.3 //From TreeOfLife#1.1.2
    SAY @60
    COPY_TRANS PLAYER1 33
  END

  IF ~~ BEGIN TreeOfLife#1.4 //From TreeOfLife#1.1.3
    SAY @61
    COPY_TRANS PLAYER1 33
  END

END

EXTEND_TOP PLAYER1 33 #1 //TreeOfLife#2.1
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP ANOMENJ 299 #1 //TreeOfLife#2.2
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP AERIEJ 185 #1 //TreeOfLife#2.3
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP VICONIJ 177 #1 //TreeOfLife#2.4
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP JAHEIRAJ 519 #1 //TreeOfLife#2.5
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP CERNDJ 136 #1 //TreeOfLife#2.6
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP NALIAJ 315 #1 //TreeOfLife#2.7
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP KORGANJ 187 #1 //TreeOfLife#2.8
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP KELDORJ 248 #1 //TreeOfLife#2.9
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP HAERDAJ 149 #1 //TreeOfLife#2.10
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP EDWINJ 160 #1 //TreeOfLife#2.11
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP JANJ 181 #1 //TreeOfLife#2.12
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP MAZZYJ 199 #1 //TreeOfLife#2.13
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP VALYGARJ 106 #1 //TreeOfLife#2.14
  IF ~InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP MINSCJ 209 #1 //TreeOfLife#2.15
  IF ~ InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

EXTEND_TOP IMOEN2J 38 #1 //TreeOfLife#2.16
  IF ~ InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TreeOfLife#2.17
END

APPEND PLAYER1

  IF ~~ BEGIN TreeOfLife#2.17 //From TreeOfLife#2.1.1, TreeOfLife#2.2.1, TreeOfLife#2.3.1, TreeOfLife#2.4.1, TreeOfLife#2.5.1, TreeOfLife#2.6.1, TreeOfLife#2.7.1, TreeOfLife#2.8.1, TreeOfLife#2.9.1, TreeOfLife#2.10.1, TreeOfLife#2.11.1, TreeOfLife#2.12.1, TreeOfLife#2.13.1, TreeOfLife#2.14.1, TreeOfLife#2.15.1, TreeOfLife#2.16.1
    SAY @62
    ++ @63 EXTERN G#TYRISJ TreeOfLife#2.18
  END

END

APPEND G#TYRISJ

  IF ~~ BEGIN TreeOfLife#2.18 //From TreeOfLife#2.2.1
     SAY @64
     = @65
     = @66
     = @67
     IF ~~ EXTERN PLAYER1 53
  END

END

// Ribald says he knows how to get the Knights of Solamnia back home

I_C_T RIBALD 29 GI#TF.RibaldKnowsMage
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @68
END

// Salvanas

CHAIN IF ~!InPartySlot(LastTalkedToBy,0)
          Name("G#Tyris",LastTalkedToBy)
          !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN SALVANAS TyrisSalvanas#1.1
  @69
  == G#TYRISJ @70
  = @71
EXIT

// Trademeet Gypsy

EXTEND_BOTTOM TRGYP02 2 //TrademeetGypsy#1.1
  IF ~!InPartySlot(LastTalkedToBy,0)
      Name("G#Tyris",LastTalkedToBy)~ EXTERN TRGYP02 TrademeetGypsy#1.2
END

CHAIN TRGYP02 TrademeetGypsy#1.2 //From TrademeetGypsy#1.1.1
  @72
  == G#TYRISJ @73
  EXIT

// Handing over the Dragon Eggs to the Demon

ADD_TRANS_TRIGGER UDDEMON 7
  ~!IsValidForPartyDialogue("G#Tyris")~ // The only time I will ever use this trigger!
DO 0 1 2 3 4 5 6 7 8

EXTEND_TOP UDDEMON 7 //GivingDemonTheEggs#1.1
  + ~IsValidForPartyDialogue("G#Tyris")
     Dead("Phaere")
     PartyHasItem("MISC9t") // Dragon Eggs
     Alignment(Player1,MASK_EVIL)~ + #55905 EXTERN G#TYRISJ GivingDemonTheEggs#1.2
END

APPEND_EARLY G#TYRISJ

  IF ~~ BEGIN GivingDemonTheEggs#1.2 //From GivingDemonTheEggs#1.1.1
    SAY @74
    IF ~True()~                             DO ~LeaveParty() Enemy()~ EXTERN UDDEMON 22
    IF ~IsValidForPartyDialogue("Minsc")~   DO ~LeaveParty() Enemy()~ EXTERN MINSCJ 170
    IF ~IsValidForPartyDialogue("Jaheira")~ DO ~LeaveParty() Enemy()~ EXTERN JAHEIRAJ 470
    IF ~IsValidForPartyDialogue("Anomen")
        Alignment("Anomen",LAWFUL_GOOD)~    DO ~LeaveParty() Enemy()~ EXTERN ANOMENJ 271
    IF ~IsValidForPartyDialogue("Mazzy")~   DO ~LeaveParty() Enemy()~ EXTERN MAZZYJ 175
    IF ~IsValidForPartyDialogue("Valygar")~ DO ~LeaveParty() Enemy()~ EXTERN VALYGARJ 85
    IF ~IsValidForPartyDialogue("Keldorn")~ DO ~LeaveParty() Enemy()~ EXTERN KELDORJ 201
    IF ~IsValidForPartyDialogue("Aerie")~   DO ~LeaveParty() Enemy()~ EXTERN AERIEJ 149
    IF ~IsValidForPartyDialogue("Cernd")~   DO ~LeaveParty() Enemy()~ EXTERN CERNDJ 112
    IF ~IsValidForPartyDialogue("Nalia")~   DO ~LeaveParty() Enemy()~ EXTERN NALIAJ 280
  END

END

// Killing Solaufein

I_C_T UDPHAE01 88 GI#TF.KillingSolaufein
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @75
END

// Sex with Phaere

EXTEND_TOP UDPHAE01 106
  + ~OR(2)
       Global("G#TF.TyrisRomanceActive","GLOBAL",1)
       Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + @76 GOTO 110
END

APPEND_EARLY G#TYRISJ

  IF WEIGHT #-1 ~Global("G#TF.SexWithPhaereTalk","LOCALS",1)
                 Global("PhaereInnuendo","GLOBAL",2)
                 Global("G#TF.TyrisRomanceActive","GLOBAL",1)~ BEGIN SleptWithPhaere#1.1
    SAY @77
    + ~ReputationGT(Player1,12)~ + @78 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#1.2
    + ~ReputationLT(Player1,13)~ + @78 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#1.3
    ++ @79 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#1.4
    ++ @80 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#1.5
    ++ @81 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#1.6
  END

  IF ~~ BEGIN SleptWithPhaere#1.2 //From SleptWithPhaere#1.1.1
    SAY @82
    IF ~~ EXIT
  END

  IF ~~ BEGIN SleptWithPhaere#1.3 //From SleptWithPhaere#1.1.2
    SAY @83
    = @84
    IF ~~ EXIT
  END

  IF ~~ BEGIN SleptWithPhaere#1.4 //From SleptWithPhaere#1.1.3
    SAY @85
    = @86
    IF ~~ EXIT
  END

  IF ~~ BEGIN SleptWithPhaere#1.5 //From SleptWithPhaere#1.1.4
    SAY @87
    IF ~~ EXIT
  END

  IF ~~ BEGIN SleptWithPhaere#1.6 //From SleptWithPhaere#1.1.5
    SAY @88
    IF ~~ EXIT
  END

  IF WEIGHT #-1 ~Global("G#TF.SexWithPhaereTalk","LOCALS",1)
                 Global("PhaereInnuendo","GLOBAL",2)
                 Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN SleptWithPhaere#2.1
    SAY @89
    + ~ReputationGT(Player1,12)~ + @78 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#2.2
    + ~ReputationLT(Player1,13)~ + @78 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#2.3
    ++ @79 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#2.4
    ++ @80 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#2.5
    ++ @81 DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ GOTO SleptWithPhaere#2.6
  END

  IF ~~ BEGIN SleptWithPhaere#2.2 //From SleptWithPhaere#2.2.1
    SAY @90
    = @91
    IF ~~ EXIT
  END

  IF ~~ BEGIN SleptWithPhaere#2.3 //From SleptWithPhaere#2.2.2
    SAY @92
    = @93
    IF ~~ DO ~SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ BEGIN SleptWithPhaere#2.4 //From SleptWithPhaere#2.2.3
    SAY @94
    = @95
    COPY_TRANS G#TYRISJ SleptWithPhaere#2.3
  END

  IF ~~ BEGIN SleptWithPhaere#2.5 //From SleptWithPhaere#2.2.4
    SAY @96
    COPY_TRANS G#TYRISJ SleptWithPhaere#2.2
  END

  IF ~~ BEGIN SleptWithPhaere#2.6 //From SleptWithPhaere#2.2.5
    SAY @97
    = @98
    IF ~~ DO ~SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)~ EXIT
  END

  IF WEIGHT #-1 ~Global("G#TF.SexWithPhaereTalk","LOCALS",1)
                 Global("PhaereInnuendo","GLOBAL",3)
                 Global("G#TF.TyrisRomanceActive","GLOBAL",1)~ BEGIN DidntSleepWithPhaere#1.1
    SAY @99
    IF ~~ DO ~SetGlobal("G#TF.SexWithPhaereTalk","LOCALS",2)~ EXIT
  END

  IF WEIGHT #-1 ~Global("G#TF.SexWithPhaereTalk","LOCALS",1)
                 Global("PhaereInnuendo","GLOBAL",3)
                 Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ BEGIN DidntSleepWithPhaere#2.1
    SAY @100
    = @101
    COPY_TRANS G#TYRISJ DidntSleepWithPhaere#1.1
  END

END

// Meeting Adalon, the Silver Dragon

INTERJECT UDSILVER 0 GI#TF.MeetingAdalon
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @102
  == UDSILVER @103
END UDSILVER 9

// Killings in the Umar Hills

I_C_T UHMAY01 18 GI#TF.UmarHillsKillings
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @104
END

// Yoshimo's treachery

I_C_T YOSHJ 113 GI#TF.YoshimoTreachery
  == G#TYRISJ IF ~InParty("G#Tyris")
                  !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @105
END
