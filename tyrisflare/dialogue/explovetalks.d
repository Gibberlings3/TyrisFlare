// ExpLovetalk 2 - "It felt like we'd settled down"

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",2)~ BEGIN ExpLovetalk#2.1
    SAY @0
    ++ @1 GOTO ExpLovetalk#2.2
    ++ @2 GOTO ExpLovetalk#2.3
    ++ @3 GOTO ExpLovetalk#2.4
    ++ @4 GOTO ExpLovetalk#2.5
  END

  IF ~~ BEGIN ExpLovetalk#2.2 //From ExpLovetalk#2.1.1
    SAY @5
    IF ~~ GOTO ExpLovetalk#2.6
  END

  IF ~~ BEGIN ExpLovetalk#2.3 //From ExpLovetalk#2.1.2
    SAY @6
    IF ~~ GOTO ExpLovetalk#2.6
  END

  IF ~~ BEGIN ExpLovetalk#2.4 //From ExpLovetalk#2.1.3
    SAY @7
    IF ~~ GOTO ExpLovetalk#2.6
  END

  IF ~~ BEGIN ExpLovetalk#2.5 //From ExpLovetalk#2.1.4
    SAY @8
    IF ~~ GOTO ExpLovetalk#2.6
  END

  IF ~~ BEGIN ExpLovetalk#2.6 //From ExpLovetalk#2.2.1, ExpLovetalk#2.2.2, ExpLovetalk#2.2.3, ExpLovetalk#2.2.4
    SAY @9
    = @10
    ++ @11 GOTO ExpLovetalk#2.7
    ++ @12 GOTO ExpLovetalk#2.8
    ++ @13 GOTO ExpLovetalk#2.9
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @14 GOTO ExpLovetalk#2.10
    + ~!Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @14 GOTO ExpLovetalk#2.11
  END

  IF ~~ BEGIN ExpLovetalk#2.7 //From ExpLovetalk#2.6.1
    SAY @15
    = @16
    IF ~~ DO ~IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#2.8 //From ExpLovetalk#2.6.2
    SAY @17
    COPY_TRANS BG#TRS25 ExpLovetalk#2.7
  END

  IF ~~ BEGIN ExpLovetalk#2.9 //From ExpLovetalk#2.6.3, ExpLovetalk#2.7.1, ExpLovetalk#2.8.1, ExpLovetalk#2.10.1, ExpLovetalk#2.11.1
    SAY @18
    IF ~~ DO ~IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#2.10 //From ExpLovetalk#2.6.4
    SAY @19
    IF ~~ GOTO ExpLovetalk#2.12
  END

  IF ~~ BEGIN ExpLovetalk#2.11 //From ExpLovetalk#2.6.5
    SAY @20
    = @21
    IF ~~ GOTO ExpLovetalk#2.12
  END

  IF ~~ BEGIN ExpLovetalk#2.12 //From ExpLovetalk#2.10.1, ExpLovetalk#2.11.1
    SAY @22
    COPY_TRANS BG#TRS25 ExpLovetalk#2.9
  END

END

// ExpLovetalk 4 - ~I can't believe what that monster said...~

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",4)~ BEGIN ExpLovetalk#4.1
    SAY @23
    ++ @24 GOTO ExpLovetalk#4.2
    ++ @25 GOTO ExpLovetalk#4.3
    ++ @26 GOTO ExpLovetalk#4.4
    ++ @27 GOTO ExpLovetalk#4.5
  END

  IF ~~ BEGIN ExpLovetalk#4.2 //From ExpLovetalk#4.1.1
    SAY @28
    IF ~~ GOTO ExpLovetalk#4.6
  END
  
  IF ~~ BEGIN ExpLovetalk#4.3 //From ExpLovetalk#4.1.2
    SAY @29
    IF ~~ GOTO ExpLovetalk#4.6
  END

  IF ~~ BEGIN ExpLovetalk#4.4 //From ExpLovetalk#4.1.3
    SAY @30
    COPY_TRANS BG#TRS25 ExpLovetalk#4.6
  END

  IF ~~ BEGIN ExpLovetalk#4.5 //From ExpLovetalk#4.1.4
    SAY @31
    IF ~~ GOTO ExpLovetalk#4.6
  END

  IF ~~ BEGIN ExpLovetalk#4.6 //From ExpLovetalk#4.2.1, ExpLovetalk#4.3.1
    SAY @32
    = @33
    ++ @34 GOTO ExpLovetalk#4.7
    ++ @35 GOTO ExpLovetalk#4.8
    ++ @36 GOTO ExpLovetalk#4.9
  END

  IF ~~ BEGIN ExpLovetalk#4.7 //From ExpLovetalk#4.6.1
    SAY @37
    IF ~~ GOTO ExpLovetalk#4.10
  END

  IF ~~ BEGIN ExpLovetalk#4.8 //From ExpLovetalk#4.6.2
    SAY @38
    IF ~~ GOTO ExpLovetalk#4.10
  END

  IF ~~ BEGIN ExpLovetalk#4.9 //From ExpLovetalk#4.6.3
    SAY @39
    = @40
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#4.10 //From ExpLovetalk#4.7.1, ExpLovetalk#4.8.1
    SAY @41
    COPY_TRANS BG#TRS25 ExpLovetalk#4.9
  END

END

// ExpLovetalk 6 - "What do you want?"

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",6)~ BEGIN ExpLovetalk#6.1
    SAY @42
    = @43
    = @44
    ++ @45 GOTO ExpLovetalk#6.2
    ++ @46 GOTO ExpLovetalk#6.3
    ++ @47 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",1)~ GOTO ExpLovetalk#6.4
    ++ @48 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",1)~ GOTO ExpLovetalk#6.5
    ++ @49 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",1)~ GOTO ExpLovetalk#6.6
  END

  IF ~~ BEGIN ExpLovetalk#6.2 //From ExpLovetalk#6.1.1
    SAY @50
    ++ @51 GOTO ExpLovetalk#6.7
    ++ @52 GOTO ExpLovetalk#6.3
    ++ @53 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",1)~ GOTO ExpLovetalk#6.4
    ++ @54 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",1)~ GOTO ExpLovetalk#6.5
    ++ @55 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",1)~ GOTO ExpLovetalk#6.6
  END

  IF ~~ BEGIN ExpLovetalk#6.3 //From ExpLovetalk#6.1.2, ExpLovetalk#6.2.2, ExpLovetalk#6.7.1
    SAY @56
    = @57
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#6.4 //From ExpLovetalk#6.1.3, ExpLovetalk#6.2.3, ExpLovetalk#6.7.2
    SAY @58
    = @59
    COPY_TRANS BG#TRS25 ExpLovetalk#6.3
  END

  IF ~~ BEGIN ExpLovetalk#6.5 //From ExpLovetalk#6.1.4, ExpLovetalk#6.2.4, ExpLovetalk#6.7.3
    SAY @60
    = @61
    COPY_TRANS BG#TRS25 ExpLovetalk#6.3
  END

  IF ~~ BEGIN ExpLovetalk#6.6 //From ExpLovetalk#6.1.5, ExpLovetalk#6.2.5, ExpLovetalk#6.7.4
    SAY @62
    = @63
    COPY_TRANS BG#TRS25 ExpLovetalk#6.3
  END

  IF ~~ BEGIN ExpLovetalk#6.7 //From ExpLovetalk#6.2.1, ExpLovetalk#6.2.6
    SAY @64
    = @65
    ++ @66 GOTO ExpLovetalk#6.3
    ++ @47 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",1)~ GOTO ExpLovetalk#6.4
    ++ @48 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",1)~ GOTO ExpLovetalk#6.5
    ++ @67 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",1)~ GOTO ExpLovetalk#6.6
    ++ @68 GOTO ExpLovetalk#6.8
  END

  IF ~~ BEGIN ExpLovetalk#6.8 //From ExpLovetalk#6.7.5
    SAY @69
    = @70
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      RestParty()
    ~ EXIT
  END

END

// ExpLovetalk 8 - ~So much blood...~

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",8)~ BEGIN ExpLovetalk#8.1
    SAY @71
    = @72
    ++ @73 GOTO ExpLovetalk#8.2
    ++ @74 GOTO ExpLovetalk#8.3
    + ~!Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @75 GOTO ExpLovetalk#8.4
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @75 GOTO ExpLovetalk#8.5
    ++ @76 GOTO ExpLovetalk#8.6
  END

  IF ~~ BEGIN ExpLovetalk#8.2 //From ExpLovetalk#8.1.1
    SAY @77
    ++ @78 GOTO ExpLovetalk#8.3
    ++ @79 GOTO ExpLovetalk#8.6
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @80 GOTO ExpLovetalk#8.7
    ++ @81 GOTO ExpLovetalk#8.8
  END

  IF ~~ BEGIN ExpLovetalk#8.3 //From ExpLovetalk#8.1.2, ExpLovetalk#8.2.1
    SAY @82
    ++ @83 GOTO ExpLovetalk#8.9
    + ~!Global("G#TF.DestinyMortal","GLOBAL",1)
       !Global("G#TF.DestinyAscendGood","GLOBAL",1)
       !Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @84 GOTO ExpLovetalk#8.10
    + ~Global("G#TF.DestinyMortal","GLOBAL",1)~ + @84 GOTO ExpLovetalk#8.11
    + ~Global("G#TF.DestinyAscendGood","GLOBAL",1)~ + @84 GOTO ExpLovetalk#8.12
    + ~Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @84 GOTO ExpLovetalk#8.13
    + ~!Global("G#TF.DestinyMortal","GLOBAL",1)
       !Global("G#TF.DestinyAscendGood","GLOBAL",1)
       !Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @85 GOTO ExpLovetalk#8.14
    + ~OR(2)
         Global("G#TF.DestinyMortal","GLOBAL",1)
         Global("G#TF.DestinyAscendGood","GLOBAL",1)~ + @85 GOTO ExpLovetalk#8.15
    + ~Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @85 GOTO ExpLovetalk#8.16
  END

  IF ~~ BEGIN ExpLovetalk#8.4 //From ExpLovetalk#8.1.3
    SAY @86
    = @87
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#8.5 //From ExpLovetalk#8.1.4
    SAY @88
    COPY_TRANS BG#TRS25 ExpLovetalk#8.4
  END

  IF ~~ BEGIN ExpLovetalk#8.6 //From ExpLovetalk#8.1.5, ExpLovetalk#8.2.2
    SAY @89
    COPY_TRANS BG#TRS25 ExpLovetalk#8.3
  END

  IF ~~ BEGIN ExpLovetalk#8.7 //From ExpLovetalk#8.2.3
    SAY @90
    = @91
    COPY_TRANS BG#TRS25 ExpLovetalk#8.8
  END

  IF ~~ BEGIN ExpLovetalk#8.8 //From ExpLovetalk#8.2.4
    SAY @92
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#8.9 //From ExpLovetalk#8.3.1
    SAY @93
    + ~!Global("G#TF.DestinyMortal","GLOBAL",1)
       !Global("G#TF.DestinyAscendGood","GLOBAL",1)
       !Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @94 GOTO ExpLovetalk#8.10
    + ~Global("G#TF.DestinyMortal","GLOBAL",1)~ + @94 GOTO ExpLovetalk#8.11
    + ~Global("G#TF.DestinyAscendGood","GLOBAL",1)~ + @94 GOTO ExpLovetalk#8.12
    + ~Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @94 GOTO ExpLovetalk#8.13
    + ~!Global("G#TF.DestinyMortal","GLOBAL",1)
       !Global("G#TF.DestinyAscendGood","GLOBAL",1)
       !Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @85 GOTO ExpLovetalk#8.14
    + ~OR(2)
         Global("G#TF.DestinyMortal","GLOBAL",1)
         Global("G#TF.DestinyAscendGood","GLOBAL",1)~ + @85 GOTO ExpLovetalk#8.15
    + ~Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ + @85 GOTO ExpLovetalk#8.16
  END

  IF ~~ BEGIN ExpLovetalk#8.10 //From ExpLovetalk#8.3.2, ExpLovetalk#8.9.1
    SAY @95
    ++ @96 GOTO ExpLovetalk#8.22
    ++ @97 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",1)~ GOTO ExpLovetalk#8.23
    ++ @98 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",1)~ GOTO ExpLovetalk#8.24
    ++ @99 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",1)~ GOTO ExpLovetalk#8.25
  END

  IF ~~ BEGIN ExpLovetalk#8.11 //From ExpLovetalk#8.3.3, ExpLovetalk#8.9.2
    SAY @100
    ++ @101 GOTO ExpLovetalk#8.17
    ++ @102 GOTO ExpLovetalk#8.18
    ++ @103 GOTO ExpLovetalk#8.19
  END

  IF ~~ BEGIN ExpLovetalk#8.12 //From ExpLovetalk#8.3.4, ExpLovetalk#8.9.3
    SAY @104
    ++ @105 GOTO ExpLovetalk#8.17
    ++ @102 GOTO ExpLovetalk#8.18
    ++ @103 GOTO ExpLovetalk#8.19
  END

  IF ~~ BEGIN ExpLovetalk#8.13 //From ExpLovetalk#8.3.5, ExpLovetalk#8.9.4
    SAY @106
    IF ~~ GOTO ExpLovetalk#8.20
  END

  IF ~~ BEGIN ExpLovetalk#8.14 //From ExpLovetalk#8.3.6, ExpLovetalk#8.9.5
    SAY @107
    COPY_TRANS BG#TRS25 ExpLovetalk#8.10
  END

  IF ~~ BEGIN ExpLovetalk#8.15 //From ExpLovetalk#8.3.7, ExpLovetalk#8.9.6
    SAY @108
    COPY_TRANS BG#TRS25 ExpLovetalk#8.8
  END

  IF ~~ BEGIN ExpLovetalk#8.16 //From ExpLovetalk#8.3.8, ExpLovetalk#8.9.7
    SAY @109
    IF ~~ GOTO ExpLovetalk#8.21
  END

  IF ~~ BEGIN ExpLovetalk#8.17 //From ExpLovetalk#8.11.1, ExpLovetalk#8.12.1
    SAY @110
    IF ~~ GOTO ExpLovetalk#8.20
  END

  IF ~~ BEGIN ExpLovetalk#8.18 //From ExpLovetalk#8.11.2, ExpLovetalk#8.12.2
    SAY @111
    IF ~~ GOTO ExpLovetalk#8.21
  END

  IF ~~ BEGIN ExpLovetalk#8.19 //From ExpLovetalk#8.11.3, ExpLovetalk#8.12.3
    SAY @112
    IF ~~ GOTO ExpLovetalk#8.20
  END

  IF ~~ BEGIN ExpLovetalk#8.20 //From ExpLovetalk#8.13.1, ExpLovetalk#8.17.1, ExpLovetalk#8.19.1, ExpLovetalk#8.25.1
    SAY @113
    IF ~~ DO ~
      SetGlobal("G#TF.WantedToBeAlone","LOCALS",1)
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#8.21 //From ExpLovetalk#8.16.1, ExpLovetalk#8.18.1, ExpLovetalk#8.22.1, ExpLovetalk#8.23.1, ExpLovetalk#8.24.1
    SAY @114
    COPY_TRANS BG#TRS25 ExpLovetalk#8.8
  END

  IF ~~ BEGIN ExpLovetalk#8.22 //From ExpLovetalk#8.10.1
    SAY @115
    IF ~~ GOTO ExpLovetalk#8.21
  END

  IF ~~ BEGIN ExpLovetalk#8.23 //From ExpLovetalk#8.10.2
    SAY @58
    IF ~~ GOTO ExpLovetalk#8.21
  END

  IF ~~ BEGIN ExpLovetalk#8.24 //From ExpLovetalk#8.10.3
    SAY @60
    IF ~~ GOTO ExpLovetalk#8.21
  END

  IF ~~ BEGIN ExpLovetalk#8.25 //From ExpLovetalk#8.10.4
    SAY @62
    IF ~~ GOTO ExpLovetalk#8.20
  END

END

// ExpLovetalk 10 - "My love, before we get going..."

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",10)~ BEGIN ExpLovetalk#10.1
    SAY @116
    = @117
    IF ~!Global("G#TF.WantedToBeAlone","LOCALS",1)~ GOTO ExpLovetalk#10.2
    IF ~Global("G#TF.WantedToBeAlone","LOCALS",1)~ GOTO ExpLovetalk#10.3
  END

  IF ~~ BEGIN ExpLovetalk#10.2 //From ExpLovetalk#10.1.1
    SAY @118
    = @119
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#10.3 //From ExpLovetalk#10.1.2
    SAY @120
    = @121
    = @122
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

END

// ExpLovetalk 12 - "Just feel the air..."

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",12)~ BEGIN ExpLovetalk#12.1
    SAY @123
    ++ @124 GOTO ExpLovetalk#12.2
    ++ @125 GOTO ExpLovetalk#12.3
    ++ @126 GOTO ExpLovetalk#12.4
    ++ @127 GOTO ExpLovetalk#12.5
    ++ @128 GOTO ExpLovetalk#12.6
  END

  IF ~~ BEGIN ExpLovetalk#12.2 //From ExpLovetalk#12.1.1
    SAY @129
    IF ~~ GOTO ExpLovetalk#12.7
  END

  IF ~~ BEGIN ExpLovetalk#12.3 //From ExpLovetalk#12.1.2
    SAY @130
    IF ~~ GOTO ExpLovetalk#12.7
  END

  IF ~~ BEGIN ExpLovetalk#12.4 //From ExpLovetalk#12.1.3
    SAY @131
    = @132
    IF ~~ GOTO ExpLovetalk#12.7
  END

  IF ~~ BEGIN ExpLovetalk#12.5 //From ExpLovetalk#12.1.4
    SAY @133
    IF ~~ GOTO ExpLovetalk#12.7
  END

  IF ~~ BEGIN ExpLovetalk#12.6 //From ExpLovetalk#12.1.5
    SAY @134
    IF ~~ GOTO ExpLovetalk#12.7
  END

  IF ~~ BEGIN ExpLovetalk#12.7 //From ExpLovetalk#12.2.1, ExpLovetalk#12.3.1, ExpLovetalk#12.4.1, ExpLovetalk#12.5.1, ExpLovetalk#12.6.1
    SAY @135
    ++ @136 GOTO ExpLovetalk#12.8
    ++ @137 GOTO ExpLovetalk#12.9
    + ~OR(2)
          HasItemEquiped("G#TFARMR","G#Tyris")
          HasItemEquiped("G#TFAMR2","G#Tyris")~ + @138 GOTO ExpLovetalk#12.10
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @139 GOTO ExpLovetalk#12.11
    + ~!Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @139 GOTO ExpLovetalk#12.12
    ++ @140 GOTO ExpLovetalk#12.13
  END

  IF ~~ BEGIN ExpLovetalk#12.8 //From ExpLovetalk#12.7.1
    SAY @141
    ++ @142 GOTO ExpLovetalk#12.9
    + ~OR(2)
          HasItemEquiped("G#TFARMR","G#Tyris")
          HasItemEquiped("G#TFAMR2","G#Tyris")~ + @143 GOTO ExpLovetalk#12.10
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @144 GOTO ExpLovetalk#12.18
    + ~!Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @144 GOTO ExpLovetalk#12.19
    ++ @145 GOTO ExpLovetalk#12.13
    END

  IF ~~ BEGIN ExpLovetalk#12.9 //From ExpLovetalk#12.7.2, ExpLovetalk#12.8.1
    SAY @146
    = @147
    ++ @148 GOTO ExpLovetalk#12.15
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @149 GOTO ExpLovetalk#12.16
    + ~!Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @149 GOTO ExpLovetalk#12.17
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @150 GOTO ExpLovetalk#12.18
    + ~!Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @150 GOTO ExpLovetalk#12.19
    ++ @151 GOTO ExpLovetalk#12.20
  END

  IF ~~ BEGIN ExpLovetalk#12.10 //From ExpLovetalk#12.7.3, ExpLovetalk#12.8.2
    SAY @152
    = @153
    = @154
    COPY_TRANS BG#TRS25 ExpLovetalk#12.9
  END

  IF ~~ BEGIN ExpLovetalk#12.11 //From ExpLovetalk#12.7.4
    SAY @155
    IF ~~ GOTO ExpLovetalk#12.14
  END

  IF ~~ BEGIN ExpLovetalk#12.12 //From ExpLovetalk#12.7.5
    SAY @156
    IF ~~ DO ~SetGlobal("G#TF.SleptWithTyris","GLOBAL",2)~ GOTO ExpLovetalk#12.14
  END

  IF ~~ BEGIN ExpLovetalk#12.13 //From ExpLovetalk#12.7.6, ExpLovetalk#12.8.5
    SAY @157
    = @158
    COPY_TRANS BG#TRS25 ExpLovetalk#12.14
  END

  IF ~~ BEGIN ExpLovetalk#12.14 //From ExpLovetalk#12.11.1, ExpLovetalk#12.12.1
    SAY @159
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#12.15 //From ExpLovetalk#12.9.1
    SAY @160
    COPY_TRANS BG#TRS25 ExpLovetalk#12.14
  END

  IF ~~ BEGIN ExpLovetalk#12.16 //From ExpLovetalk#12.9.2
    SAY @161
    = @162
    COPY_TRANS BG#TRS25 ExpLovetalk#12.14
  END

  IF ~~ BEGIN ExpLovetalk#12.17 //From ExpLovetalk#12.9.3
    SAY @163
    = @164
    = @165
    = @166
    COPY_TRANS BG#TRS25 ExpLovetalk#12.14
  END

  IF ~~ BEGIN ExpLovetalk#12.18 //From ExpLovetalk#12.8.3, ExpLovetalk#12.9.4
    SAY @167
    COPY_TRANS BG#TRS25 ExpLovetalk#12.14
  END

  IF ~~ BEGIN ExpLovetalk#12.19 //From ExpLovetalk#12.8.4, ExpLovetalk#12.9.5
    SAY @168
    COPY_TRANS BG#TRS25 ExpLovetalk#12.17
  END

  IF ~~ BEGIN ExpLovetalk#12.20 //From ExpLovetalk#12.9.6
    SAY @169
    COPY_TRANS BG#TRS25 ExpLovetalk#12.14
  END

END

// ExpLovetalk 14 - "Do you ever think about the day we first met?"

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",14)~ BEGIN ExpLovetalk#14.1
    SAY @170
    ++ @171 GOTO ExpLovetalk#14.2
    ++ @172 GOTO ExpLovetalk#14.3
    ++ @173 GOTO ExpLovetalk#14.4
    ++ @174 GOTO ExpLovetalk#14.5
    ++ @175 GOTO ExpLovetalk#14.6
  END

  IF ~~ BEGIN ExpLovetalk#14.2 //From ExpLovetalk#14.1.1
    SAY @176
    = @177
    COPY_TRANS BG#TRS25 ExpLovetalk#14.4
  END

  IF ~~ BEGIN ExpLovetalk#14.3 //From ExpLovetalk#14.1.2
    SAY @178
    COPY_TRANS BG#TRS25 ExpLovetalk#14.2
  END

  IF ~~ BEGIN ExpLovetalk#14.4 //From ExpLovetalk#14.1.3
    SAY @179
    ++ @180 GOTO ExpLovetalk#14.7
    ++ @181 GOTO ExpLovetalk#14.8
    ++ @182 GOTO ExpLovetalk#14.9
    ++ @183 GOTO ExpLovetalk#14.10
    ++ @184 GOTO ExpLovetalk#14.11
  END

  IF ~~ BEGIN ExpLovetalk#14.5 //From ExpLovetalk#14.1.4
    SAY @185
    = @186
    COPY_TRANS BG#TRS25 ExpLovetalk#14.4
  END

  IF ~~ BEGIN ExpLovetalk#14.6 //From ExpLovetalk#14.1.5
    SAY @187
    COPY_TRANS BG#TRS25 ExpLovetalk#14.2
  END

  IF ~~ BEGIN ExpLovetalk#14.7 //From ExpLovetalk#14.4.1
    SAY @188
    = @189
    ++ @190 GOTO ExpLovetalk#14.8
    ++ @191 GOTO ExpLovetalk#14.8
    ++ @192 GOTO ExpLovetalk#14.10
    ++ @193 GOTO ExpLovetalk#14.14
  END

  IF ~~ BEGIN ExpLovetalk#14.8 //From ExpLovetalk#14.4.2, ExpLovetalk#14.7.1, ExpLovetalk#14.7.2
    SAY @194
    = @195
    COPY_TRANS BG#TRS25 ExpLovetalk#14.12
  END

  IF ~~ BEGIN ExpLovetalk#14.9 //From ExpLovetalk#14.4.3
    SAY @196
    = @197
    COPY_TRANS BG#TRS25 ExpLovetalk#14.12
  END

  IF ~~ BEGIN ExpLovetalk#14.10 //From ExpLovetalk#14.4.4, ExpLovetalk#14.7.3
    SAY @198
    ++ @199 GOTO ExpLovetalk#14.12
    ++ @200 GOTO ExpLovetalk#14.13
  END

  IF ~~ BEGIN ExpLovetalk#14.11 //From ExpLovetalk#14.4.5
    SAY @201
    COPY_TRANS BG#TRS25 ExpLovetalk#14.12
  END

  IF ~~ BEGIN ExpLovetalk#14.12 //From ExpLovetalk#14.10.1
    SAY @202
    IF ~~ DO ~IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#14.13 //From ExpLovetalk#14.10.2
    SAY @203
    = @204
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#14.14 //From ExpLovetalk#14.7.4
    SAY @205
    = @206
    COPY_TRANS BG#TRS25 ExpLovetalk#14.12
  END

END

// ExpLovetalk 16 - "This is it, isn't it?"

APPEND_EARLY BG#TRS25

  IF ~Global("G#TF.ExpLovetalk","LOCALS",16)~ BEGIN ExpLovetalk#16.1
    SAY @207
    IF ~!Global("G#TF.DestinyMortal","GLOBAL",1)
        !Global("G#TF.DestinyAscendGood","GLOBAL",1)
        !Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ GOTO ExpLovetalk#16.2
    IF ~Global("G#TF.DestinyMortal","GLOBAL",1)~ GOTO ExpLovetalk#16.3
    IF ~Global("G#TF.DestinyAscendGood","GLOBAL",1)~ GOTO ExpLovetalk#16.4
    IF ~Global("G#TF.DestinyAscendEvil","GLOBAL",1)~ GOTO ExpLovetalk#16.5
  END

  IF ~~ BEGIN ExpLovetalk#16.2 //From ExpLovetalk#16.1.1
    SAY @208
    ++ @209 GOTO ExpLovetalk#16.6
    ++ @210 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",2)~ GOTO ExpLovetalk#16.7
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @211 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.8
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @211 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.9
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @212 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.10
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @212 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.11
  END

  IF ~~ BEGIN ExpLovetalk#16.3 //From ExpLovetalk#16.1.2
    SAY @213
    ++ @214 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",2)~ GOTO ExpLovetalk#16.7
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @215 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.8
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @215 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.9
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @216 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.10
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @216 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.11
    ++ @217 GOTO ExpLovetalk#16.6
  END

  IF ~~ BEGIN ExpLovetalk#16.4 //From ExpLovetalk#16.1.3
    SAY @218
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @219 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.8
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @219 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.9
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @220 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.10
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @220 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.11
    ++ @221 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",2)~ GOTO ExpLovetalk#16.7
    ++ @217 GOTO ExpLovetalk#16.6
  END

  IF ~~ BEGIN ExpLovetalk#16.5 //From ExpLovetalk#16.1.4
    SAY @222
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @223 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.10
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @223 DO ~SetGlobal("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.11
    + ~GlobalLT("PPEvilChoices","GLOBAL",4)~ + @224 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.8
    + ~GlobalGT("PPEvilChoices","GLOBAL",3)~ + @224 DO ~SetGlobal("G#TF.DestinyAscendGood","GLOBAL",2)~ GOTO ExpLovetalk#16.9
    ++ @221 DO ~SetGlobal("G#TF.DestinyMortal","GLOBAL",2)~ GOTO ExpLovetalk#16.7
    ++ @217 GOTO ExpLovetalk#16.6
  END

  IF ~~ BEGIN ExpLovetalk#16.6 //From ExpLovetalk#16.2.1, ExpLovetalk#16.3.6, ExpLovetalk#16.4.6, ExpLovetalk#16.5.6
    SAY @225
    IF ~~ GOTO ExpLovetalk#16.12
  END

  IF ~~ BEGIN ExpLovetalk#16.7 //From ExpLovetalk#16.2.2, ExpLovetalk#16.3.1, ExpLovetalk#16.4.5, ExpLovetalk#16.5.5
    SAY @226
    = @227
    = @228
    = @229
    IF ~~ GOTO ExpLovetalk#16.13
  END

  IF ~~ BEGIN ExpLovetalk#16.8 //From ExpLovetalk#16.2.3, ExpLovetalk#16.3.2, ExpLovetalk#16.4.1, ExpLovetalk#16.5.3
    SAY @230
    = @231
    IF ~~ GOTO ExpLovetalk#16.12
  END

  IF ~~ BEGIN ExpLovetalk#16.9 //From ExpLovetalk#16.2.4, ExpLovetalk#16.3.3, ExpLovetalk#16.4.2, ExpLovetalk#16.5.4
    SAY @232
    = @233
    IF ~~ GOTO ExpLovetalk#16.12
  END

  IF ~~ BEGIN ExpLovetalk#16.10 //From ExpLovetalk#16.2.5, ExpLovetalk#16.3.4, ExpLovetalk#16.4.3, ExpLovetalk#16.5.1
    SAY @234
    COPY_TRANS BG#TRS25 ExpLovetalk#16.9
  END

  IF ~~ BEGIN ExpLovetalk#16.11 //From ExpLovetalk#16.2.6, ExpLovetalk#16.3.5, ExpLovetalk#16.4.4, ExpLovetalk#16.5.2
    SAY @235
    COPY_TRANS BG#TRS25 ExpLovetalk#16.9
  END

  IF ~~ BEGIN ExpLovetalk#16.12 //From ExpLovetalk#16.8.1, ExpLovetalk#16.9.1
    SAY @236
    = @237
    IF ~~ GOTO ExpLovetalk#16.13
  END

  IF ~~ BEGIN ExpLovetalk#16.13 //From ExpLovetalk#16.7.1, ExpLovetalk#16.12.1
    SAY @238
    = @239
    ++ @240 DO ~SetGlobal("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ GOTO ExpLovetalk#16.14
    ++ @241 GOTO ExpLovetalk#16.15
  END

  IF ~~ BEGIN ExpLovetalk#16.14 //From ExpLovetalk#16.13.1
    SAY @242
    IF ~~ GOTO ExpLovetalk#16.17
  END

  IF ~~ BEGIN ExpLovetalk#16.15 //From ExpLovetalk#16.13.2
    SAY @243
    ++ @244 DO ~SetGlobal("G#TF.PromisesToSendTyrisHome","GLOBAL",1)~ GOTO ExpLovetalk#16.14
    ++ @245 GOTO ExpLovetalk#16.16
  END

  IF ~~ BEGIN ExpLovetalk#16.16 //From ExpLovetalk#16.15.1
    SAY @246
    IF ~~ GOTO ExpLovetalk#16.17
  END

  IF ~~ BEGIN ExpLovetalk#16.17 //From ExpLovetalk#16.14.1, ExpLovetalk#16.16.1
    SAY @247
    = @248
    = @249
    IF ~!Global("G#TF.DestinyMortal","GLOBAL",2)
        !Global("G#TF.DestinyAscendGood","GLOBAL",2)
        !Global("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.18
    IF ~Global("G#TF.DestinyMortal","GLOBAL",2)~ GOTO ExpLovetalk#16.19
    IF ~OR(2)
          Global("G#TF.DestinyAscendGood","GLOBAL",2)
          Global("G#TF.DestinyAscendEvil","GLOBAL",2)~ GOTO ExpLovetalk#16.20
  END
  
  IF ~~ BEGIN ExpLovetalk#16.18 //From GOTO ExpLovetalk#16.17.1
    SAY @250
    IF ~~ GOTO ExpLovetalk#16.20
  END

  IF ~~ BEGIN ExpLovetalk#16.19 //From GOTO ExpLovetalk#16.17.2
    SAY @251
    IF ~~ GOTO ExpLovetalk#16.20
  END

  IF ~~ BEGIN ExpLovetalk#16.20 //From GOTO ExpLovetalk#16.17.3, ExpLovetalk#16.18.1, ExpLovetalk#16.19.1
    SAY @252
    ++ @253 GOTO ExpLovetalk#16.21
    + ~Global("G#TF.DestinyMortal","GLOBAL",2)~ + @254 DO ~SetGlobal("G#TF.DiscussBabyLater","GLOBAL",1)~ GOTO ExpLovetalk#16.22
    + ~Global("G#TF.DestinyMortal","GLOBAL",2)~ + @255 DO ~SetGlobal("G#TF.Pregnancy","GLOBAL",1)~ GOTO ExpLovetalk#16.23
    + ~!Global("G#TF.DestinyMortal","GLOBAL",2)~ + @256 DO ~SetGlobal("G#TF.Pregnancy","GLOBAL",1)~ GOTO ExpLovetalk#16.24
    ++ @257 GOTO ExpLovetalk#16.25
  END
  
  IF ~~ BEGIN ExpLovetalk#16.21 //From ExpLovetalk#16.20.1
    SAY @258
    ++ @259 GOTO ExpLovetalk#16.26
    + ~Global("G#TF.DestinyMortal","GLOBAL",2)~ + @254 DO ~SetGlobal("G#TF.DiscussBabyLater","GLOBAL",1)~ GOTO ExpLovetalk#16.22
    + ~Global("G#TF.DestinyMortal","GLOBAL",2)~ + @255 DO ~SetGlobal("G#TF.Pregnancy","GLOBAL",1)~ GOTO ExpLovetalk#16.23
    + ~!Global("G#TF.DestinyMortal","GLOBAL",2)~ + @256 DO ~SetGlobal("G#TF.Pregnancy","GLOBAL",1)~ GOTO ExpLovetalk#16.24
    ++ @257 GOTO ExpLovetalk#16.25
  END

  IF ~~ BEGIN ExpLovetalk#16.22 //From ExpLovetalk#16.20.2, ExpLovetalk#16.21.2, ExpLovetalk#16.26.1
    SAY @260
    IF ~~ DO ~IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#16.23 //From ExpLovetalk#16.20.3, ExpLovetalk#16.21.3, ExpLovetalk#16.26.2
    SAY @261
    IF ~~ DO ~
      IncrementGlobal("G#TF.ExpLovetalk","LOCALS",1)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN ExpLovetalk#16.24 //From ExpLovetalk#16.20.4, ExpLovetalk#16.21.4, ExpLovetalk#16.26.3
    SAY @262
    COPY_TRANS BG#TRS25 ExpLovetalk#16.23
  END

  IF ~~ BEGIN ExpLovetalk#16.25 //From ExpLovetalk#16.20.5, ExpLovetalk#16.21.5, ExpLovetalk#16.26.4
    SAY @263
    COPY_TRANS BG#TRS25 ExpLovetalk#16.22
  END

  IF ~~ BEGIN ExpLovetalk#16.26 //From ExpLovetalk#16.21.1
    SAY @264
    + ~Global("G#TF.DestinyMortal","GLOBAL",2)~ + @254 DO ~SetGlobal("G#TF.DiscussBabyLater","GLOBAL",1)~ GOTO ExpLovetalk#16.22
    + ~Global("G#TF.DestinyMortal","GLOBAL",2)~ + @255 DO ~SetGlobal("G#TF.Pregnancy","GLOBAL",1)~ GOTO ExpLovetalk#16.23
    + ~!Global("G#TF.DestinyMortal","GLOBAL",2)~ + @256 DO ~SetGlobal("G#TF.Pregnancy","GLOBAL",1)~ GOTO ExpLovetalk#16.24
    ++ @257 GOTO ExpLovetalk#16.25
  END

END
