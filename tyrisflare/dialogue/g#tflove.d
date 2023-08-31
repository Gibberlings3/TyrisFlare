INTERJECT HGWRA01 18 GI#TF.MasterWraith
  == HGWRA01 IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)
                 InParty("G#Tyris")
                 !StateCheck("G#Tyris",CD_STATE_NOTVALID)~ THEN @0
  DO ~SetGlobal("G#TF.LovedOne","GLOBAL",1)~
  == G#TRS25J @1
END HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("G#TF.LovedOne","GLOBAL",1)~
    DO ~
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("G#TFCUTL")
    ~ EXIT
END

BEGIN G#TFLOVE

  CHAIN IF ~NumTimesTalkedTo(0)~ THEN G#TFLOVE TyrisTarik#1.1
    @2
    == G#TRS25J @3
    == G#TFLOVE @4
    == G#TRS25J @5
    == G#TFLOVE @6
    == G#TRS25J @7
    == G#TFLOVE @8
    == G#TRS25J @9
  END
    ++ @10 EXTERN HGWRA01 25
    ++ @11 EXTERN HGWRA01 25
    ++ @12 EXTERN HGWRA01 25
    + ~CheckStatGT(Player1,16,WIS)~ + @13 EXTERN HGWRA01 25
