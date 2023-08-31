BEGIN G#TYRIS

  IF ~!Global("G#TF.HasBeenSpokenTo","GLOBAL",1)~ BEGIN JoiningDialogue#1.1
    SAY @0 
    ++ @1 DO ~SetGlobal("G#TF.YourIntroFirst","LOCALS",1)~ GOTO JoiningDialogue#1.2
    + ~NumInPartyGT(1)~ + @2 DO ~SetGlobal("G#TF.HerIntroFirst","LOCALS",1)~ GOTO JoiningDialogue#1.3
    ++ @3 GOTO JoiningDialogue#1.4
    ++ @4 DO ~SetGlobal("G#TF.DontKnowDeathAdder","LOCALS",1)~ GOTO JoiningDialogue#1.5
  END
  
  IF ~~ BEGIN JoiningDialogue#1.2 //From JoiningDialogue#1.1.1
    SAY @5
    ++ @6 GOTO JoiningDialogue#1.5
    ++ @7 GOTO JoiningDialogue#1.5
    ++ @8 GOTO JoiningDialogue#1.7
    ++ @4 DO ~SetGlobal("G#TF.DontKnowDeathAdder","LOCALS",1)~ GOTO JoiningDialogue#1.5
  END

  IF ~~ BEGIN JoiningDialogue#1.3 //From JoiningDialogue#1.1.2
    SAY @9
    COPY_TRANS G#TYRIS JoiningDialogue#1.2
  END

  IF ~~ BEGIN JoiningDialogue#1.4 //From JoiningDialogue#1.1.3
    SAY @10
    COPY_TRANS G#TYRIS JoiningDialogue#1.2
  END

  IF ~~ BEGIN JoiningDialogue#1.5 //From JoiningDialogue#1.1.4, JoiningDialogue#1.2.1, JoiningDialogue#1.2.2, JoiningDialogue#1.2.4
    SAY @11
    IF ~~ GOTO JoiningDialogue#1.8
    IF ~Global("G#TF.YourIntroFirst","LOCALS",1)~ GOTO JoiningDialogue#1.9
    IF ~Global("G#TF.HerIntroFirst","LOCALS",1)~ GOTO JoiningDialogue#1.10
  END
  
  IF ~~ BEGIN JoiningDialogue#1.7 //From JoiningDialogue#1.2.3
    SAY @12
    IF ~~ DO ~
      Enemy()
      ChangeAIScript("ATTACKPC",OVERRIDE)~ EXIT
  END
  
  IF ~~ BEGIN JoiningDialogue#1.8 //From JoiningDialogue#1.5.1
    SAY @13 
    ++ @14 GOTO JoiningDialogue#1.11
    ++ @15 GOTO JoiningDialogue#1.12
    ++ @16 GOTO JoiningDialogue#1.12
  END

  IF ~~ BEGIN JoiningDialogue#1.9 //From JoiningDialogue#1.5.2
    SAY @17 
    IF ~~ GOTO JoiningDialogue#1.13
  END

  IF ~~ BEGIN JoiningDialogue#1.10 //From JoiningDialogue#1.5.3
    SAY @18 
    COPY_TRANS G#TYRIS JoiningDialogue#1.8
  END
  
  IF ~~ BEGIN JoiningDialogue#1.11 //From JoiningDialogue#1.8.1
    SAY @19
    IF ~~ GOTO JoiningDialogue#1.13
  END

  IF ~~ BEGIN JoiningDialogue#1.12 //From JoiningDialogue#1.8.2, JoiningDialogue#1.8.3
    SAY @20
    IF ~~ GOTO JoiningDialogue#1.13
  END

  IF ~~ BEGIN JoiningDialogue#1.13 //From JoiningDialogue#1.9.1, JoiningDialogue#1.11.1, JoiningDialogue#1.12.1
    SAY @21
    + ~!Global("G#TF.DontKnowDeathAdder","LOCALS",1)~ + @22 GOTO JoiningDialogue#1.14
    + ~Global("G#TF.DontKnowDeathAdder","LOCALS",1)~ + @23 GOTO JoiningDialogue#1.14
    ++ @24 GOTO JoiningDialogue#1.15
    ++ @25 GOTO JoiningDialogue#1.16
    ++ @26 GOTO JoiningDialogue#1.17
  END

  IF ~~ BEGIN JoiningDialogue#1.14 //From JoiningDialogue#1.13.1, JoiningDialogue#1.13.2
    SAY @27
    ++ @24 GOTO JoiningDialogue#1.15
    ++ @25 GOTO JoiningDialogue#1.16
    ++ @26 GOTO JoiningDialogue#1.17
  END

  IF ~~ BEGIN JoiningDialogue#1.15 //From JoiningDialogue#1.13.3, JoiningDialogue#1.14.1
    SAY @28
    IF ~~ GOTO JoiningDialogue#1.18
  END

  IF ~~ BEGIN JoiningDialogue#1.16 //From JoiningDialogue#1.13.4, JoiningDialogue#1.14.2
    SAY @29
    IF ~~ GOTO JoiningDialogue#1.18
  END

  IF ~~ BEGIN JoiningDialogue#1.17 //From JoiningDialogue#1.13.5, JoiningDialogue#1.14.3
    SAY @30
    = @31
    COPY_TRANS G#TYRIS JoiningDialogue#1.18
  END

  IF ~~ BEGIN JoiningDialogue#1.18 //From JoiningDialogue#1.15.1, JoiningDialogue#1.16.1
    SAY @32
    ++ @33 GOTO JoiningDialogue#1.19
    ++ @34 GOTO JoiningDialogue#1.19
    + ~CheckStatGT(Player1,15,INT)~ + @35 GOTO JoiningDialogue#1.20
    ++ @36 GOTO JoiningDialogue#1.21
  END
  
  IF ~~ BEGIN JoiningDialogue#1.19 //From JoiningDialogue#1.18.1, JoiningDialogue#1.18.2
    SAY @37
    IF ~~ GOTO JoiningDialogue#1.22
  END
  
  IF ~~ BEGIN JoiningDialogue#1.20 //From JoiningDialogue#1.18.3
    SAY @38
    IF ~~ GOTO JoiningDialogue#1.22
  END

  IF ~~ BEGIN JoiningDialogue#1.21 //From JoiningDialogue#1.18.4
    SAY @39
    IF ~~ GOTO JoiningDialogue#1.22
  END
  
  IF ~~ BEGIN JoiningDialogue#1.22 //From JoiningDialogue#1.19.1, JoiningDialogue#1.20.1, JoiningDialogue#1.21.1
    SAY @40 
    = @41 
    = @42 
    ++ @43 GOTO JoiningDialogue#1.23
    ++ @44 GOTO JoiningDialogue#1.24
    ++ @45 GOTO JoiningDialogue#1.25
  END
  
  IF ~~ BEGIN JoiningDialogue#1.23 //From JoiningDialogue#1.22.1
    SAY @46
    IF ~~ GOTO JoiningDialogue#1.26
  END
  
  IF ~~ BEGIN JoiningDialogue#1.24 //From JoiningDialogue#1.22.2
    SAY @47
    IF ~~ GOTO JoiningDialogue#1.26
  END

  IF ~~ BEGIN JoiningDialogue#1.25 //From JoiningDialogue#1.22.3
    SAY @48
    IF ~~ GOTO JoiningDialogue#1.26
  END
  
  IF ~~ BEGIN JoiningDialogue#1.26 //From JoiningDialogue#1.23.1, JoiningDialogue#1.24.1, JoiningDialogue#1.25.1
    SAY @49
    = @50
    = @51
    ++ @52 GOTO JoiningDialogue#1.27
    ++ @53 GOTO JoiningDialogue#1.27
    ++ @54 GOTO JoiningDialogue#1.28
    ++ @55 GOTO JoiningDialogue#1.29
  END
  
  IF ~~ BEGIN JoiningDialogue#1.27 //From JoiningDialogue#1.26.1, JoiningDialogue#1.26.2, JoiningDialogue#2.1.2
    SAY @56
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN JoiningDialogue#1.28 //From JoiningDialogue#1.26.3
    SAY @57
    IF ~~ GOTO JoiningDialogue#1.30
  END
  
  IF ~~ BEGIN JoiningDialogue#1.29 //From JoiningDialogue#1.26.4
    SAY @58
    IF ~~ GOTO JoiningDialogue#1.30
  END

  IF ~~ BEGIN JoiningDialogue#1.30 //From JoiningDialogue#1.28.1, JoiningDialogue#1.29.1
    SAY @59
    IF ~~ DO ~EscapeAreaMove("AR1105",1063,262,4)~ EXIT
  END
  
  IF ~Global("G#TF.HasBeenSpokenTo","GLOBAL",1)~ BEGIN JoiningDialogue#2.1
    SAY @60 
    ++ @61 GOTO JoiningDialogue#2.2
    ++ @62 GOTO JoiningDialogue#1.27
    ++ @63 GOTO JoiningDialogue#2.3
    ++ @64 GOTO JoiningDialogue#2.3
  END
  
  IF ~~ BEGIN JoiningDialogue#2.2 //From JoiningDialogue#2.1.1
    SAY @65
    COPY_TRANS G#TYRIS JoiningDialogue#1.27
  END
  
  IF ~~ BEGIN JoiningDialogue#2.3 //From JoiningDialogue#2.1.3, JoiningDialogue#2.1.4
    SAY @66
    IF ~~ EXIT
  END
