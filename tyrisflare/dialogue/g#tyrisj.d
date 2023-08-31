BEGIN G#TYRISJ

  // Core of the Planar Sphere

  IF ~Global("G#TF.PlanarSphereCore","AR0413",1)
      AreaCheck("AR0413")~ BEGIN PlanarSphereCore#1
    SAY @0
    = @1
    + ~!Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + @2 DO ~SetGlobal("G#TF.PlanarSphereCore","AR0413",2)~ GOTO PlanarSphereCore#2
    + ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + @2 DO ~SetGlobal("G#TF.PlanarSphereCore","AR0413",2)~ GOTO PlanarSphereCore#3
    + ~!Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + @3 DO ~SetGlobal("G#TF.PlanarSphereCore","AR0413",2)~ GOTO PlanarSphereCore#4
    + ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + @3 DO ~SetGlobal("G#TF.PlanarSphereCore","AR0413",2)~ GOTO PlanarSphereCore#5
    ++ @4 DO ~SetGlobal("G#TF.PlanarSphereCore","AR0413",2)~ GOTO PlanarSphereCore#6
  END
  
  IF ~~ BEGIN PlanarSphereCore#2 //From PlanarSphereCore#1.1
    SAY @5
    = @6
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN PlanarSphereCore#3 //From PlanarSphereCore#1.2
    SAY @7
    = @8
    IF ~~ EXIT
  END

  IF ~~ BEGIN PlanarSphereCore#4 //From PlanarSphereCore#1.3
    SAY @9
    COPY_TRANS G#TYRISJ PlanarSphereCore#2
  END
  
  IF ~~ BEGIN PlanarSphereCore#5 //From PlanarSphereCore#1.4
    SAY @10
    = @11
    COPY_TRANS G#TYRISJ PlanarSphereCore#3
  END
  
  IF ~~ BEGIN PlanarSphereCore#6 //From PlanarSphereCore#1.5
    SAY @12
    IF ~!Global("G#TF.TyrisRomanceActive","GLOBAL",1)
        !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ GOTO PlanarSphereCore#7
    IF ~OR(2)
          Global("G#TF.TyrisRomanceActive","GLOBAL",1)
          Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ GOTO PlanarSphereCore#8
  END

  IF ~~ BEGIN PlanarSphereCore#7 //From PlanarSphereCore#6.1
    SAY @13
    IF ~~ EXIT
  END
  
  IF ~~ BEGIN PlanarSphereCore#8 //From PlanarSphereCore#6.2
    SAY @14
    IF ~~ DO ~SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)~ EXIT
  END
  
// Cromwell offering to upgrade her armour

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("G#TFARMR")
      InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      !Global("G#TF.CromSeenArmour","GLOBAL",1)~ DO ~SetGlobal("G#TF.CromSeenArmour","GLOBAL",1)~ EXTERN WSMITH01 UpgradeArmour#1.1
  IF ~PartyHasItem("G#TFARMR")
      InParty("G#Tyris")
      !StateCheck("G#Tyris",CD_STATE_NOTVALID)
      Global("G#TF.CromSeenArmour","GLOBAL",1)~ EXTERN WSMITH01 UpgradeArmour#2.1
END

CHAIN WSMITH01 UpgradeArmour#1.1
  @15
  == G#TYRISJ @16
  == WSMITH01 @17
  = @18
  = @19
  == G#TYRISJ @20
  == WSMITH01 @21
END
  ++ @22 EXTERN WSMITH01 UpgradeArmour#1.2
  ++ @23 EXTERN WSMITH01 UpgradeArmour#1.3

APPEND WSMITH01

  IF ~~ BEGIN UpgradeArmour#1.2 //From UpgradeArmour#1.1.1, UpgradeArmour#2.1.1
    SAY @24
    + ~PartyGoldGT(4999)~ + @25  DO ~SetGlobal("G#TF.UpgradeArmour","GLOBAL",1)
                                                     SetGlobal("ForgeStuff","GLOBAL",1)
                                                     TakePartyGold(5000)
                                                     DestroyGold(5000)~GOTO 56
    ++ @23 EXTERN WSMITH01 UpgradeArmour#1.3
  END

  IF ~~ BEGIN UpgradeArmour#1.3 //From UpgradeArmour#1.1.2, UpgradeArmour#1.2, UpgradeArmour#2.1.2
    SAY @26
    COPY_TRANS WSMITH01 13
  END

END

CHAIN WSMITH01 UpgradeArmour#2.1
  @27
  == G#TYRISJ @28
  == WSMITH01 @29
END
  ++ @22 EXTERN WSMITH01 UpgradeArmour#1.2
  ++ @23 EXTERN WSMITH01 UpgradeArmour#1.3
