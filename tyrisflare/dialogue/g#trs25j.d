BEGIN G#TRS25J

  // Draconis death comment
  
  IF ~Global("G#TF.TyrisDraconisComment","GLOBAL",1)
      AreaCheck("AR6000")~ BEGIN DraconisDeathComment#1.1
    SAY @0
    = @1
    = @2
    IF ~~ DO ~SetGlobal("G#TF.TyrisDraconisComment","GLOBAL",2)~ EXIT
  END

  IF ~Global("G#TF.TyrisDraconisComment","GLOBAL",1)
      !AreaCheck("AR6000")~ BEGIN DraconisDeathComment#2.1
    SAY @3
    COPY_TRANS G#TRS25J DraconisDeathComment#1.1
  END

  // Asking the big favour
  
  IF ~Global("G#TF.AskingTheBigFavour","GLOBAL",1)~ BEGIN AskingTheBigFavour#1
    SAY @4
    = @5
    = @6
    ++ @7 GOTO AskingTheBigFavour#2
    ++ @8 GOTO AskingTheBigFavour#3
    ++ @9 GOTO AskingTheBigFavour#4
  END

  IF ~~ BEGIN AskingTheBigFavour#2 //From AskingTheBigFavour#1.1
    SAY @10
    = @11
    ++ @12 GOTO AskingTheBigFavour#5
    ++ @13 DO ~SetGlobal("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ GOTO AskingTheBigFavour#6
    ++ @14 GOTO AskingTheBigFavour#7
  END

  IF ~~ BEGIN AskingTheBigFavour#3 //From AskingTheBigFavour#1.2
    SAY @15
    = @16
    COPY_TRANS G#TRS25J AskingTheBigFavour#2
  END

  IF ~~ BEGIN AskingTheBigFavour#4 //From AskingTheBigFavour#1.3
    SAY @17
    COPY_TRANS G#TRS25J AskingTheBigFavour#3
  END
  
  IF ~~ BEGIN AskingTheBigFavour#5 //From AskingTheBigFavour#2.1
    SAY @18
    ++ @19 DO ~SetGlobal("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ GOTO AskingTheBigFavour#6
    ++ @20 GOTO AskingTheBigFavour#7
  END
  
  IF ~~ BEGIN AskingTheBigFavour#6 //From AskingTheBigFavour#2.2, AskingTheBigFavour#5.1, AskingTheBigFavour#7.1
    SAY @21
    = @22
    IF ~~ DO ~SetGlobal("G#TF.AskingTheBigFavour","GLOBAL",2)~ EXIT
  END

  IF ~~ BEGIN AskingTheBigFavour#7 //From AskingTheBigFavour#2.3, AskingTheBigFavour#5.2
    SAY @23
    ++ @24 DO ~SetGlobal("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ GOTO AskingTheBigFavour#6
    ++ @25 GOTO AskingTheBigFavour#8
  END
  
  IF ~~ BEGIN AskingTheBigFavour#8 //From AskingTheBigFavour#6.2
    SAY @26
    IF ~GlobalLT("PPEvilChoices","GLOBAL",3)~ GOTO AskingTheBigFavour#9
    IF ~GlobalGT("PPEvilChoices","GLOBAL",2)
        GlobalLT("PPEvilChoices","GLOBAL",5)~ GOTO AskingTheBigFavour#10
    IF ~GlobalGT("PPEvilChoices","GLOBAL",4)~ GOTO AskingTheBigFavour#11
  END

  IF ~~ BEGIN AskingTheBigFavour#9 //From AskingTheBigFavour#8.1
    SAY @27
    COPY_TRANS G#TRS25J AskingTheBigFavour#6
  END
  
  IF ~~ BEGIN AskingTheBigFavour#10 //From AskingTheBigFavour#8.2
    SAY @28
    COPY_TRANS G#TRS25J AskingTheBigFavour#6
  END

  IF ~~ BEGIN AskingTheBigFavour#11 //From AskingTheBigFavour#8.3
    SAY @29
    = @30
    IF ~~ DO ~
      LeaveParty()
      EscapeAreaObject("ITPPLANE")
    ~ EXIT
  END
