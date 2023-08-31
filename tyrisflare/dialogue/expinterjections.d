// Confronting Abazigal

INTERJECT ABAZIGAL 1 GI#TF.Abazigal
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @0
END ABAZIGAL 2                 

// Mayor of Amkethran

I_C_T AMMAYOR 5 GI#TF.AsanaFather
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @1
END

// The Return of Saemon Havarian

I_C_T AMSAEMON 12 GI#TF.ReturnOfSaemon
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @2
  == AMSAEMON @3
END

// Aerie's baby

I_C_T BAERIE25 159 GI#TF.AerieBaby
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @4
END

// Captured monk in Abazigal's Enclave

I_C_T BAZMONK 11 GI#TF.CapturedMonk
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @5
END

// Watcher's Keep: Keeper of the Key

INTERJECT FSSPIR2 1 GI#TF.WKKeeperoftheKey1
  == G#TYRISJ IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @6
END FSSPIR2 2

INTERJECT FSSPIR2 1 GI#TF.WKKeeperoftheKey1
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @6
END FSSPIR2 2

INTERJECT FSSPIR2 5 GI#TF.WKKeeperoftheKey2
  == G#TYRISJ IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @7
  DO ~TriggerActivation("Tran3024",TRUE)
      TriggerActivation("Tran3025",TRUE)
      TriggerActivation("Tran3026",TRUE)
      TriggerActivation("IT3024",FALSE)
      TriggerActivation("IT3025",FALSE)
      TriggerActivation("IT3026",FALSE)~ 
EXIT

INTERJECT FSSPIR2 5 GI#TF.WKKeeperoftheKey2
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @7
  DO ~TriggerActivation("Tran3024",TRUE)
      TriggerActivation("Tran3025",TRUE)
      TriggerActivation("Tran3026",TRUE)
      TriggerActivation("IT3024",FALSE)
      TriggerActivation("IT3025",FALSE)
      TriggerActivation("IT3026",FALSE)~ 
EXIT  

// Watcher's Keep: The Truth about Odren

INTERJECT GORAPP1 10 GI#TF.WKOdrenTruth
  == G#TYRISJ IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @8
END GORAPP1 11

INTERJECT GORAPP1 10 GI#TF.WKOdrenTruth
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @8
END GORAPP1 11

// Watcher's Keep: Demogorgan

INTERJECT GORDEMO 1 GI#TF.WKDemogorgan
  == G#TYRISJ IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @9
END GORDEMO 2

INTERJECT GORDEMO 1 GI#TF.WKDemogorgan
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @9
END GORDEMO 2

// Nyalee

I_C_T HGNYA01 6 GI#TF.Nyalee
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @10
END

// Sarevok's resurrection

INTERJECT SAREV25A 41 GI#TF.SarevokResurrection
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)
                 OR(2)
                   !InParty("Imoen2")
                   !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ THEN @11
END SAREV25A 42

// Melissan in Saradush

I_C_T SARMEL01 45 GI#TF.SaradushMelissan
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @12
END

// Woodcutter outside Sendai's Enclave

I_C_T SENGUA01 12 GI#TF.SendaiWoodcutter
  == G#TRS25J IF ~InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @13
END

// Volo's book

EXTEND_BOTTOM SARVOLO 9 #1 //VoloBook#1
  + ~InParty("G#Tyris")
     Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + @14 EXTERN SARVOLO VoloBook#2
  + ~InParty("G#Tyris")
     !Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + @14 EXTERN SARVOLO VoloBook#3
END

CHAIN SARVOLO VoloBook#2 //From VoloBook#1.1
  @15
  == G#TRS25J IF ~!StateCheck("G#Tyris",CD_STATE_NOTVALID)~ @16
END SARVOLO 9

CHAIN SARVOLO VoloBook#3 //From VoloBook#1.2
  @17
  == G#TRS25J IF ~!StateCheck("G#Tyris",CD_STATE_NOTVALID)~ @18
END SARVOLO 9
