// Lovetalk 2 - "What made you become an adventurer?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",2)
      !Global("G#TF.ReplayLastLovetalk","LOCALS",1)~ BEGIN Lovetalk#2.1
    SAY @0 
    ++ @1 GOTO Lovetalk#2.2
    ++ @2 GOTO Lovetalk#2.3
    ++ @3 GOTO Lovetalk#2.4
    ++ @4 GOTO Lovetalk#2.5
  END

  IF ~~ BEGIN Lovetalk#2.2 //From Lovetalk#2.1.1
    SAY @5
    ++ @6 GOTO Lovetalk#2.6
    ++ @7 GOTO Lovetalk#2.7
    ++ @8 GOTO Lovetalk#2.8
  END

  IF ~~ BEGIN Lovetalk#2.3 //From Lovetalk#2.1.2
    SAY @9
    COPY_TRANS BG#TYRIS Lovetalk#2.2
  END

  IF ~~ BEGIN Lovetalk#2.4 //From Lovetalk#2.1.3
    SAY @10
    = @11
    COPY_TRANS BG#TYRIS Lovetalk#2.2
  END

  IF ~~ BEGIN Lovetalk#2.5 //From Lovetalk#2.1.4
    SAY @12
    IF ~~ DO ~
      SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",1)
      IncrementGlobal("G#TF.Lovetalk","LOCALS",-1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",900)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#2.6 //From Lovetalk#2.2.1
    SAY @13
    IF ~~ GOTO Lovetalk#2.9
  END

  IF ~~ BEGIN Lovetalk#2.7 //From Lovetalk#2.2.2
    SAY @14
    IF ~~ GOTO Lovetalk#2.9
  END

  IF ~~ BEGIN Lovetalk#2.8 //From Lovetalk#2.2.3
    SAY @15
    IF ~~ GOTO Lovetalk#2.9
  END

  IF ~~ BEGIN Lovetalk#2.9 //From Lovetalk#2.6.1, Lovetalk#2.7.1, Lovetalk#2.8.1
    SAY @16
    = @17
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

END

// Replay Lovetalk 2

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",2)
      Global("G#TF.ReplayLastLovetalk","LOCALS",1)~ BEGIN ReplayLovetalk#2.1
    SAY @18 
    ++ @19 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO ReplayLovetalk#2.2
    ++ @20 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO ReplayLovetalk#2.3
    ++ @21 GOTO ReplayLovetalk#2.4
  END

  IF ~~ BEGIN ReplayLovetalk#2.2 //From ReplayLovetalk#2.1.1
    SAY @22
    COPY_TRANS BG#TYRIS Lovetalk#2.1
  END

  IF ~~ BEGIN ReplayLovetalk#2.3 //From ReplayLovetalk#2.1.2
    SAY @23
    COPY_TRANS BG#TYRIS Lovetalk#2.1
  END

  IF ~~ BEGIN ReplayLovetalk#2.4 //From ReplayLovetalk#2.1.3
    SAY @24
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",-1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",900)
    ~ EXIT
  END

END

// Lovetalk 4 - "Did you get revenge on Sarevok?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",4)~ BEGIN Lovetalk#4.1
    SAY @25 
    = @26
    ++ @27 GOTO Lovetalk#4.2
    ++ @28 GOTO Lovetalk#4.3
    ++ @29 GOTO Lovetalk#4.4
    ++ @30 GOTO Lovetalk#4.5
  END

  IF ~~ BEGIN Lovetalk#4.2 //From Lovetalk#4.1.1
    SAY @31
    ++ @32 GOTO Lovetalk#4.6
    ++ @33 GOTO Lovetalk#4.6
    ++ @34 GOTO Lovetalk#4.5
  END

  IF ~~ BEGIN Lovetalk#4.3 //From Lovetalk#4.1.2
    SAY @35
    = @36
    = @37
    COPY_TRANS BG#TYRIS Lovetalk#4.2
  END

  IF ~~ BEGIN Lovetalk#4.4 //From Lovetalk#4.1.3
    SAY @38
    = @39
    COPY_TRANS BG#TYRIS Lovetalk#4.2
  END

  IF ~~ BEGIN Lovetalk#4.5 //From Lovetalk#4.1.4, Lovetalk#4.2.3
    SAY @40
    = @41
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#4.6 //From Lovetalk#4.2.1, Lovetalk#4.2.2
    SAY @42
    = @43
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1)
    ~ EXIT
  END

END

// Lovetalk 6 - "Do you still want to hear about my parents?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",6)
      !Global("G#TF.ReplayLastLovetalk","LOCALS",1)~ BEGIN Lovetalk#6.1
    SAY @44 
    ++ @45 GOTO Lovetalk#6.2
    ++ @46 GOTO Lovetalk#6.3
    ++ @47 GOTO Lovetalk#6.4
    ++ @48 GOTO Lovetalk#6.5
  END

  IF ~~ BEGIN Lovetalk#6.2 //From Lovetalk#6.1.1, Lovetalk#6.3.1, ReplayLovetalk#6.1.1
    SAY @49
    = @50
    = @51
    = @52
    ++ @53 GOTO Lovetalk#6.6
    ++ @54 GOTO Lovetalk#6.7
    ++ @55 GOTO Lovetalk#6.8
  END

  IF ~~ BEGIN Lovetalk#6.3 //From Lovetalk#6.1.2, ReplayLovetalk#6.1.2
    SAY @56
    IF ~~ GOTO Lovetalk#6.2
  END

  IF ~~ BEGIN Lovetalk#6.4 //From Lovetalk#6.1.3
    SAY @57
    IF ~~ DO ~
      SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",1)
      IncrementGlobal("G#TF.Lovetalk","LOCALS",-1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#6.5 //From Lovetalk#6.1.4, ReplayLovetalk#6.1.5
    SAY @58
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      RestParty()
    ~ EXIT
  END
  
  IF ~~ BEGIN Lovetalk#6.6 //From Lovetalk#6.2.1
    SAY @59
    IF ~~ GOTO Lovetalk#6.9
  END

  IF ~~ BEGIN Lovetalk#6.7 //From Lovetalk#6.2.2
    SAY @60
    IF ~~ GOTO Lovetalk#6.9
  END
  
  IF ~~ BEGIN Lovetalk#6.8 //From Lovetalk#6.2.3
    SAY @61
    = @62
    IF ~~ GOTO Lovetalk#6.9
  END
  
  IF ~~ BEGIN Lovetalk#6.9 //From Lovetalk#6.6.1, Lovetalk#6.7.1, Lovetalk#6.8.1
    SAY @63
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
      RestParty()
    ~ EXIT
  END
  
END

// Replay Lovetalk 6

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",6)
      Global("G#TF.ReplayLastLovetalk","LOCALS",1)~ BEGIN ReplayLovetalk#6.1
    SAY @64 
    ++ @45 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO Lovetalk#6.2
    ++ @65 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO Lovetalk#6.3
    ++ @66 GOTO ReplayLovetalk#6.2
    ++ @48 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO Lovetalk#6.5
  END
  
  IF ~~ BEGIN ReplayLovetalk#6.2 //From ReplayLovetalk#6.1.3
    SAY @67
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",-1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1)
      RestParty()
    ~ EXIT
  END

END

// Lovetalk 8 - "A page fell out of your diary..."

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",8)~ BEGIN Lovetalk#8.1
    SAY @68
    ++ @69 GOTO Lovetalk#8.2
    ++ @70 GOTO Lovetalk#8.3
    ++ @71 GOTO Lovetalk#8.4
    ++ @72 GOTO Lovetalk#8.5
  END

  IF ~~ BEGIN Lovetalk#8.2 //From Lovetalk#8.1.1
    SAY @73
    IF ~~ GOTO Lovetalk#8.6
  END

  IF ~~ BEGIN Lovetalk#8.3 //From Lovetalk#8.1.2
    SAY @74
    IF ~~ GOTO Lovetalk#8.6
  END

  IF ~~ BEGIN Lovetalk#8.4 //From Lovetalk#8.1.3
    SAY @75
    IF ~~ GOTO Lovetalk#8.6
  END

  IF ~~ BEGIN Lovetalk#8.5 //From Lovetalk#8.1.4
    SAY @76
    = @77
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#8.6 //From Lovetalk#8.2.1, Lovetalk#8.3.1, Lovetalk#8.4.1
    SAY @78
    ++ @79 GOTO Lovetalk#8.7
    ++ @80 GOTO Lovetalk#8.8
    ++ @81 GOTO Lovetalk#8.9
  END

  IF ~~ BEGIN Lovetalk#8.7 //From Lovetalk#8.6.1
    SAY @82
    = @83
    ++ @84 GOTO Lovetalk#8.10
    ++ @85 GOTO Lovetalk#8.11
    ++ @86 GOTO Lovetalk#8.12
  END

  IF ~~ BEGIN Lovetalk#8.8 //From Lovetalk#8.6.2
    SAY @87
    ++ @88 GOTO Lovetalk#8.10
    ++ @89 GOTO Lovetalk#8.11
    ++ @90 GOTO Lovetalk#8.12
  END
  
  IF ~~ BEGIN Lovetalk#8.9 //From Lovetalk#8.6.3
    SAY @91
    = @92
    COPY_TRANS BG#TYRIS Lovetalk#8.7
  END

  IF ~~ BEGIN Lovetalk#8.10 //From Lovetalk#8.7.1, Lovetalk#8.8.1
    SAY @93
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END
  
  IF ~~ BEGIN Lovetalk#8.11 //From Lovetalk#8.7.2, Lovetalk#8.8.2
    SAY @94
    = @95
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#8.12 //From Lovetalk#8.7.3, Lovetalk#8.8.3
    SAY @96
    = @97
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      LeaveParty()
      EscapeArea()
    ~ EXIT
  END

END

// Lovetalk 10 - "Who was Bhaal?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",10)
      !Global("G#TF.ReplayLastLovetalk","LOCALS",1)~ BEGIN Lovetalk#10.1
    SAY @98 
    = @99
    ++ @100 GOTO Lovetalk#10.2
    ++ @101 GOTO Lovetalk#10.2
    ++ @102 GOTO Lovetalk#10.3
    ++ @103 GOTO Lovetalk#10.4
  END

  IF ~~ BEGIN Lovetalk#10.2 //From Lovetalk#10.1.1, Lovetalk#10.1.2, ReplayLovetalk#10.1.1, ReplayLovetalk#10.1.2
    SAY @104
    ++ @105 GOTO Lovetalk#10.5
    ++ @106 GOTO Lovetalk#10.6
    ++ @107 GOTO Lovetalk#10.7
  END

  IF ~~ BEGIN Lovetalk#10.3 //From Lovetalk#10.1.3
    SAY @108
    IF ~~ DO ~
      SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",1)
      IncrementGlobal("G#TF.Lovetalk","LOCALS",-1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",900)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#10.4 //From Lovetalk#10.1.4, ReplayLovetalk#10.1.4
    SAY @109
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END
  
  IF ~~ BEGIN Lovetalk#10.5 //From Lovetalk#10.2.1
    SAY @110
    ++ @106 GOTO Lovetalk#10.6
    ++ @107 GOTO Lovetalk#10.7
  END
  
  IF ~~ BEGIN Lovetalk#10.6 //From Lovetalk#10.2.2, Lovetalk#10.5.1
    SAY @111
    IF ~~ GOTO Lovetalk#10.8
  END

  IF ~~ BEGIN Lovetalk#10.7 //From Lovetalk#10.2.3, Lovetalk#10.5.2
    SAY @112
    IF ~~ GOTO Lovetalk#10.8
  END

  IF ~~ BEGIN Lovetalk#10.8 //From Lovetalk#10.6.1, Lovetalk#10.7.1
    SAY @113
    ++ @114 GOTO Lovetalk#10.9
    ++ @115 GOTO Lovetalk#10.10
    ++ @116 GOTO Lovetalk#10.11
  END
  
  IF ~~ BEGIN Lovetalk#10.9 //From Lovetalk#10.8.1
    SAY @117
    = @118
    IF ~~ GOTO Lovetalk#10.12
  END

  IF ~~ BEGIN Lovetalk#10.10 //From Lovetalk#10.8.2
    SAY @119
    = @120
    IF ~~ GOTO Lovetalk#10.12
  END
  
  IF ~~ BEGIN Lovetalk#10.11 //From Lovetalk#10.8.3
    SAY @121
    IF ~~ GOTO Lovetalk#10.12
  END

  IF ~~ BEGIN Lovetalk#10.12 //From Lovetalk#10.9.1, Lovetalk#10.10.1, Lovetalk#10.11.1
    SAY @122
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

END

// Replay Lovetalk 10

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",10)
      Global("G#TF.ReplayLastLovetalk","LOCALS",1)~ BEGIN ReplayLovetalk#10.1
    SAY @123 
    ++ @100 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO Lovetalk#10.2
    ++ @124 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO Lovetalk#10.2
    ++ @125 GOTO ReplayLovetalk#10.2
    ++ @126 DO ~SetGlobal("G#TF.ReplayLastLovetalk","LOCALS",0)~ GOTO Lovetalk#10.4
  END

  IF ~~ BEGIN ReplayLovetalk#10.2 //From ReplayLovetalk#10.1.3
    SAY @127
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",-1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",900)
    ~ EXIT
  END

END

// Lovetalk 12 - "What was Candlekeep like?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",12)~ BEGIN Lovetalk#12.1
    SAY @128 
    ++ @129 GOTO Lovetalk#12.2
    ++ @130 GOTO Lovetalk#12.3
    ++ @131 GOTO Lovetalk#12.4
    ++ @132 GOTO Lovetalk#12.5
  END
  
  IF ~~ BEGIN Lovetalk#12.2 //From Lovetalk#12.1.1
    SAY @133
    ++ @134 GOTO Lovetalk#12.7
    ++ @135 GOTO Lovetalk#12.8
    ++ @136 GOTO Lovetalk#12.9
  END

  IF ~~ BEGIN Lovetalk#12.3 //From Lovetalk#12.1.2
    SAY @137
    = @138
    COPY_TRANS BG#TYRIS Lovetalk#12.2
  END

  IF ~~ BEGIN Lovetalk#12.4 //From Lovetalk#12.1.3
    SAY @139
    = @140
    COPY_TRANS BG#TYRIS Lovetalk#12.2
  END

  IF ~~ BEGIN Lovetalk#12.5 //From Lovetalk#12.1.4
    SAY @141
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#12.6 //From Lovetalk#12.6.1, Lovetalk#12.7.1
    SAY @142
    ++ @143 GOTO Lovetalk#12.2
    ++ @144 GOTO Lovetalk#12.3
    ++ @145 GOTO Lovetalk#12.4
    ++ @146 GOTO Lovetalk#12.5
  END

  IF ~~ BEGIN Lovetalk#12.7 //From Lovetalk#12.2.1
    SAY @147
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#12.8 //From Lovetalk#12.2.2
    SAY @148
    COPY_TRANS BG#TYRIS Lovetalk#12.7
  END

  IF ~~ BEGIN Lovetalk#12.9 //From Lovetalk#12.2.3
    SAY @149
    COPY_TRANS BG#TYRIS Lovetalk#12.7
  END

END

// Lovetalk 14 - "Aren't you curious about my warpaint?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",14)~ BEGIN Lovetalk#14.1
    SAY @150 
    ++ @151 GOTO Lovetalk#14.2
    ++ @152 GOTO Lovetalk#14.3
    ++ @153 GOTO Lovetalk#14.4
    ++ @154 GOTO Lovetalk#14.5
  END

  IF ~~ BEGIN Lovetalk#14.2 //From Lovetalk#14.1.1, Lovetalk#14.5.1
    SAY @155
    IF ~~ GOTO Lovetalk#14.6
  END

  IF ~~ BEGIN Lovetalk#14.3 //From Lovetalk#14.1.2, Lovetalk#14.5.2
    SAY @156
    IF ~~ GOTO Lovetalk#14.6
  END

  IF ~~ BEGIN Lovetalk#14.4 //From Lovetalk#14.1.3, Lovetalk#14.5.3
    SAY @157
    IF ~~ GOTO Lovetalk#14.6
  END

  IF ~~ BEGIN Lovetalk#14.5 //From Lovetalk#14.1.4
    SAY @158
    ++ @159 GOTO Lovetalk#14.2
    ++ @160 GOTO Lovetalk#14.3
    ++ @161 GOTO Lovetalk#14.4
    ++ @162 GOTO Lovetalk#14.10
  END

  IF ~~ BEGIN Lovetalk#14.6 //From Lovetalk#14.2.1, Lovetalk#14.2.2, Lovetalk#14.2.3
    SAY @163
    = @164
    ++ @165 GOTO Lovetalk#14.7
    ++ @166 GOTO Lovetalk#14.8
    ++ @167 GOTO Lovetalk#14.9
  END
  
  IF ~~ BEGIN Lovetalk#14.7 //From Lovetalk#14.6.1
    SAY @168
    = @169
    COPY_TRANS BG#TYRIS Lovetalk#14.8
  END

  IF ~~ BEGIN Lovetalk#14.8 //From Lovetalk#14.6.2
    SAY @170
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END
  
  IF ~~ BEGIN Lovetalk#14.9 //From Lovetalk#14.6.3
    SAY @171
    COPY_TRANS BG#TYRIS Lovetalk#14.8
  END
  
  IF ~~ BEGIN Lovetalk#14.10 //From Lovetalk#14.5.4
    SAY @172
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

END

// Lovetalk 16 - "Have you heard of the Golden Axe?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",16)~ BEGIN Lovetalk#16.1
    SAY @173 
    ++ @174 GOTO Lovetalk#16.2
    ++ @175 GOTO Lovetalk#16.3
    ++ @176 GOTO Lovetalk#16.4
    ++ @177 GOTO Lovetalk#16.5
  END

  IF ~~ BEGIN Lovetalk#16.2 //From Lovetalk#16.1.1
    SAY @178
    IF ~~ GOTO Lovetalk#16.6
  END

  IF ~~ BEGIN Lovetalk#16.3 //From Lovetalk#16.1.2
    SAY @179
    IF ~~ GOTO Lovetalk#16.6
  END

  IF ~~ BEGIN Lovetalk#16.4 //From Lovetalk#16.1.3
    SAY @180
    IF ~~ GOTO Lovetalk#16.6
  END

  IF ~~ BEGIN Lovetalk#16.5 //From Lovetalk#16.1.4
    SAY @181
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#16.6 //From Lovetalk#16.2.1, Lovetalk#16.3.1, Lovetalk#16.4.1
    SAY @182
    = @183
    ++ @184 GOTO Lovetalk#16.7
    ++ @185 GOTO Lovetalk#16.8
    ++ @186 GOTO Lovetalk#16.9
    ++ @187 GOTO Lovetalk#16.10
  END
  
  IF ~~ BEGIN Lovetalk#16.7 //From Lovetalk#16.6.1
    SAY @188
    = @189
    IF ~~ GOTO Lovetalk#16.11
  END
  
  IF ~~ BEGIN Lovetalk#16.8 //From Lovetalk#16.6.2
    SAY @190
    IF ~~ GOTO Lovetalk#16.11
  END
  
  IF ~~ BEGIN Lovetalk#16.9 //From Lovetalk#16.6.3
    SAY @191
    = @189
    IF ~~ GOTO Lovetalk#16.11
  END

  IF ~~ BEGIN Lovetalk#16.10 //From Lovetalk#16.6.4
    SAY @192
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#16.11 //From Lovetalk#16.7.1, Lovetalk#16.8.1, Lovetalk#16.9.1
    SAY @193
    = @194
    COPY_TRANS BG#TYRIS Lovetalk#16.10
  END

END

// Lovetalk 18 - "Why don't you talk about your old companions?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",18)~ BEGIN Lovetalk#18.1
    SAY @195 
    = @196
    = @197
    ++ @198 GOTO Lovetalk#18.2
    ++ @199 GOTO Lovetalk#18.3
    ++ @200 GOTO Lovetalk#18.4
    ++ @201 GOTO Lovetalk#18.5
  END

  IF ~~ BEGIN Lovetalk#18.2 //From Lovetalk#18.1.1
    SAY @202
    ++ @199 GOTO Lovetalk#18.3
    ++ @200 GOTO Lovetalk#18.4
    ++ @203 GOTO Lovetalk#18.5
  END

  IF ~~ BEGIN Lovetalk#18.3 //From Lovetalk#18.1.2, Lovetalk#18.2.1
    SAY @204
    = @205
    COPY_TRANS BG#TYRIS Lovetalk#18.4
  END

  IF ~~ BEGIN Lovetalk#18.4 //From Lovetalk#18.1.3, Lovetalk#18.2.2
    SAY @206
    ++ @207 GOTO Lovetalk#18.6
    ++ @208 GOTO Lovetalk#18.6
    ++ @209 GOTO Lovetalk#18.7
  END

  IF ~~ BEGIN Lovetalk#18.5 //From Lovetalk#18.1.4, Lovetalk#18.2.3
    SAY @210
    IF ~~ THEN GOTO Lovetalk#18.12
  END
  
  IF ~~ BEGIN Lovetalk#18.6 //From Lovetalk#18.4.1, Lovetalk#18.4.2
    SAY @211
    = @212
    = @213
    = @214
    = @215
    = @216
    ++ @217 GOTO Lovetalk#18.8
    ++ @218 GOTO Lovetalk#18.9
    ++ @219 GOTO Lovetalk#18.10
    ++ @220 GOTO Lovetalk#18.7
  END
  
  IF ~~ BEGIN Lovetalk#18.7 //From Lovetalk#18.4.3, Lovetalk#18.6.4
    SAY @221
    IF ~~ GOTO Lovetalk#18.12
  END

  IF ~~ BEGIN Lovetalk#18.8 //From Lovetalk#18.6.1
    SAY @222
    IF ~~ GOTO Lovetalk#18.11
  END

  IF ~~ BEGIN Lovetalk#18.9 //From Lovetalk#18.6.2
    SAY @223
    = @224
    COPY_TRANS BG#TYRIS Lovetalk#18.11
  END

  IF ~~ BEGIN Lovetalk#18.10 //From Lovetalk#18.6.3
    SAY @225
    IF ~~ GOTO Lovetalk#18.11
  END

  IF ~~ BEGIN Lovetalk#18.11 //From Lovetalk#18.8.1, Lovetalk#18.10.1
    SAY @226
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#18.12 //From Lovetalk#18.5.1, Lovetalk#18.7.1
    SAY @227
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      RestParty()
    ~ EXIT
  END

END

// Lovetalk 20 - "I feel guilty about my companions..."

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",20)~ BEGIN Lovetalk#20.1
    SAY @228 
    ++ @229 GOTO Lovetalk#20.2
    ++ @230 GOTO Lovetalk#20.3
    ++ @231 GOTO Lovetalk#20.4
    ++ @232 GOTO Lovetalk#20.5
  END

  IF ~~ BEGIN Lovetalk#20.2 //From Lovetalk#20.1.1
    SAY @233
    = @234
    IF ~~ GOTO Lovetalk#20.6
  END

  IF ~~ BEGIN Lovetalk#20.3 //From Lovetalk#20.1.2
    SAY @235
    IF ~~ GOTO Lovetalk#20.6
  END

  IF ~~ BEGIN Lovetalk#20.4 //From Lovetalk#20.1.3
    SAY @236
    IF ~~ GOTO Lovetalk#20.6
  END

  IF ~~ BEGIN Lovetalk#20.5 //From Lovetalk#20.1.4
    SAY @237
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#20.6 //From Lovetalk#20.2.1, Lovetalk#20.3.1, Lovetalk#20.4.1
    SAY @238
    = @239
    ++ @53 GOTO Lovetalk#20.7
    ++ @240 GOTO Lovetalk#20.8
    ++ @241 GOTO Lovetalk#20.9
    ++ @242 GOTO Lovetalk#20.10
  END

  IF ~~ BEGIN Lovetalk#20.7 //From Lovetalk#20.6.1
    SAY @243
    IF ~~ GOTO Lovetalk#20.11
  END

  IF ~~ BEGIN Lovetalk#20.8 //From Lovetalk#20.6.2
    SAY @244
    IF ~~ GOTO Lovetalk#20.11
  END

  IF ~~ BEGIN Lovetalk#20.9 //From Lovetalk#20.6.3
    SAY @245
    IF ~~ GOTO Lovetalk#20.11
  END

  IF ~~ BEGIN Lovetalk#20.10 //From Lovetalk#20.6.4
    SAY @246
    = @247
    COPY_TRANS BG#TYRIS Lovetalk#20.5
  END

  IF ~~ BEGIN Lovetalk#20.11 //From Lovetalk#20.7.1, Lovetalk#20.8.1, Lovetalk#20.9.1
    SAY @248
    = @249
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

END

// Lovetalk 22 - "I'm not used to walking everywhere..."

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",22)~ BEGIN Lovetalk#22.1
    SAY @250 
    ++ @251 GOTO Lovetalk#22.2
    ++ @252 GOTO Lovetalk#22.3
    ++ @253 GOTO Lovetalk#22.4
    ++ @254 GOTO Lovetalk#22.5
  END

  IF ~~ BEGIN Lovetalk#22.2 //From Lovetalk#22.1.1
    SAY @255
    ++ @256 GOTO Lovetalk#22.6
    ++ @257 GOTO Lovetalk#22.7
    ++ @258 GOTO Lovetalk#22.8
  END

  IF ~~ BEGIN Lovetalk#22.3 //From Lovetalk#22.1.2
    SAY @259
    = @260
    COPY_TRANS BG#TYRIS Lovetalk#22.2
  END

  IF ~~ BEGIN Lovetalk#22.4 //From Lovetalk#22.1.3
    SAY @261
    = @262
    COPY_TRANS BG#TYRIS Lovetalk#22.2
  END

  IF ~~ BEGIN Lovetalk#22.5 //From Lovetalk#22.1.4
    SAY @263
    COPY_TRANS BG#TYRIS Lovetalk#22.2
  END

  IF ~~ BEGIN Lovetalk#22.6 //From Lovetalk#22.2.1
    SAY @264
    = @265
    IF ~~ GOTO Lovetalk#22.9
  END

  IF ~~ BEGIN Lovetalk#22.7 //From Lovetalk#22.2.2
    SAY @266
    IF ~~ GOTO Lovetalk#22.9
  END

  IF ~~ BEGIN Lovetalk#22.8 //From Lovetalk#22.2.3
    SAY @267
    IF ~~ GOTO Lovetalk#22.9
  END

  IF ~~ BEGIN Lovetalk#22.9 //From Lovetalk#22.6.1, Lovetalk#22.7.1, Lovetalk#22.8.1
    SAY @268
    ++ @269 GOTO Lovetalk#22.10
    ++ @270 GOTO Lovetalk#22.11
    ++ @271 GOTO Lovetalk#22.12
  END

  IF ~~ BEGIN Lovetalk#22.10 //From Lovetalk#22.9.1
    SAY @272
    IF ~~ GOTO Lovetalk#22.13
  END

  IF ~~ BEGIN Lovetalk#22.11 //From Lovetalk#22.9.2
    SAY @273
    IF ~~ GOTO Lovetalk#22.13
  END

  IF ~~ BEGIN Lovetalk#22.12 //From Lovetalk#22.9.3
    SAY @274
    IF ~~ GOTO Lovetalk#22.13
  END

  IF ~~ BEGIN Lovetalk#22.13 //From Lovetalk#22.10.1, Lovetalk#22.11.1, Lovetalk#22.12.1
    SAY @275
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

END

// Lovetalk 24 - @276

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",24)~ BEGIN Lovetalk#24.1
    SAY @276 
    ++ @277 GOTO Lovetalk#24.2
    ++ @278 GOTO Lovetalk#24.3
    ++ @279 GOTO Lovetalk#24.4
    ++ @280 GOTO Lovetalk#24.5
  END

  IF ~~ BEGIN Lovetalk#24.2 //From Lovetalk#24.1.1
    SAY @281
    IF ~~ GOTO Lovetalk#24.6
  END

  IF ~~ BEGIN Lovetalk#24.3 //From Lovetalk#24.1.2
    SAY @282
    IF ~~ GOTO Lovetalk#24.6
  END

  IF ~~ BEGIN Lovetalk#24.4 //From Lovetalk#24.1.3
    SAY @283
    IF ~~ GOTO Lovetalk#24.6
  END

  IF ~~ BEGIN Lovetalk#24.5 //From Lovetalk#24.1.4
    SAY @284
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#24.6 //From Lovetalk#24.2.1, Lovetalk#24.3.1, Lovetalk#24.4.1
    SAY @285
    = @286
    = @287
    = @288
    ++ @289 GOTO Lovetalk#24.7
    ++ @290 GOTO Lovetalk#24.8
    ++ @291 GOTO Lovetalk#24.9
  END
  
  IF ~~ BEGIN Lovetalk#24.7 //From Lovetalk#24.6.1
    SAY @292
    IF ~~ GOTO Lovetalk#24.10
  END

  IF ~~ BEGIN Lovetalk#24.8 //From Lovetalk#24.6.2
    SAY @293
    IF ~~ GOTO Lovetalk#24.10
  END

  IF ~~ BEGIN Lovetalk#24.9 //From Lovetalk#24.6.3
    SAY @294
    = @295
    IF ~~ GOTO Lovetalk#24.10
  END

  IF ~~ BEGIN Lovetalk#24.10 //From Lovetalk#24.7.1, Lovetalk#24.8.1, Lovetalk#24.9.1
    SAY @296
    COPY_TRANS BG#TYRIS Lovetalk#24.5
  END

END

// Lovetalk 26 - "How do you want to die?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",26)~ BEGIN Lovetalk#26.1
    SAY @297 
    = @298
    ++ @299 GOTO Lovetalk#26.2
    ++ @300 GOTO Lovetalk#26.3
    ++ @301 GOTO Lovetalk#26.4
    ++ @302 GOTO Lovetalk#26.5
  END
  
  IF ~~ BEGIN Lovetalk#26.2 //From Lovetalk#26.1.1
    SAY @303
    ++ @304 GOTO Lovetalk#26.6
    ++ @305 GOTO Lovetalk#26.7
    ++ @306 GOTO Lovetalk#26.5
  END

  IF ~~ BEGIN Lovetalk#26.3 //From Lovetalk#26.1.2
    SAY @307
    IF ~~ GOTO Lovetalk#26.8
  END

  IF ~~ BEGIN Lovetalk#26.4 //From Lovetalk#26.1.3
    SAY @308
    ++ @309 GOTO Lovetalk#26.9
    ++ @310 GOTO Lovetalk#26.10
    ++ @306 GOTO Lovetalk#26.5
  END

  IF ~~ BEGIN Lovetalk#26.5 //From Lovetalk#26.1.4, Lovetalk#26.2.3, Lovetalk#26.4.3
    SAY @311
    IF ~~ GOTO Lovetalk#26.8
  END

  IF ~~ BEGIN Lovetalk#26.6 //From Lovetalk#26.2.1
    SAY @312
    IF ~~ GOTO Lovetalk#26.8
  END

  IF ~~ BEGIN Lovetalk#26.7 //From Lovetalk#26.2.2
    SAY @313
    IF ~~ GOTO Lovetalk#26.8
  END

  IF ~~ BEGIN Lovetalk#26.8 //From Lovetalk#26.3.1, Lovetalk#26.5.1, Lovetalk#26.6.1, Lovetalk#26.7.1, Lovetalk#26.9.1, Lovetalk#26.10.1
    SAY @314
    = @315
    = @316
    = @317
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#26.9 //From Lovetalk#26.4.1
    SAY @318
    IF ~~ GOTO Lovetalk#26.8
  END

  IF ~~ BEGIN Lovetalk#26.10 //From Lovetalk#26.4.2
    SAY @319
    IF ~~ GOTO Lovetalk#26.8
  END

END

// Lovetalk 28 - "Sorry for the teary-eyed nonsense"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",28)~ BEGIN Lovetalk#28.1
    SAY @320 
    = @321
    ++ @322 GOTO Lovetalk#28.2
    ++ @323 GOTO Lovetalk#28.3
    ++ @324 GOTO Lovetalk#28.4
    ++ @325 GOTO Lovetalk#28.5
  END

  IF ~~ BEGIN Lovetalk#28.2 //From Lovetalk#28.1.1
    SAY @326
    IF ~~ GOTO Lovetalk#28.6
  END

  IF ~~ BEGIN Lovetalk#28.3 //From Lovetalk#28.1.2
    SAY @327
    IF ~~ GOTO Lovetalk#28.6
  END

  IF ~~ BEGIN Lovetalk#28.4 //From Lovetalk#28.1.3
    SAY @328
    = @329
    = @330
    = @331
    COPY_TRANS BG#TYRIS Lovetalk#28.6
  END

  IF ~~ BEGIN Lovetalk#28.5 //From Lovetalk#28.1.4
    SAY @332
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#28.6 //From Lovetalk#28.2.1, Lovetalk#28.3.1
    SAY @333
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

END

// Lovetalk 30 - "Do you think I should cut my hair?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",30)~ BEGIN Lovetalk#30.1
    SAY @334 
    ++ @335 GOTO Lovetalk#30.2
    ++ @336 GOTO Lovetalk#30.3
    ++ @337 GOTO Lovetalk#30.4
  END

  IF ~~ BEGIN Lovetalk#30.2 //From Lovetalk#30.1.1
    SAY @338
    IF ~~ GOTO Lovetalk#30.5
  END

  IF ~~ BEGIN Lovetalk#30.3 //From Lovetalk#30.1.2
    SAY @339
    IF ~~ GOTO Lovetalk#30.5
  END

  IF ~~ BEGIN Lovetalk#30.4 //From Lovetalk#30.1.3
    SAY @340
    = @341
    COPY_TRANS BG#TYRIS Lovetalk#30.9
  END

  IF ~~ BEGIN Lovetalk#30.5 //From Lovetalk#30.2.1, Lovetalk#30.3.1
    SAY @342
    ++ @343 GOTO Lovetalk#30.6
    ++ @344 GOTO Lovetalk#30.7
    ++ @345 GOTO Lovetalk#30.8
    ++ @346 GOTO Lovetalk#30.9
  END

  IF ~~ BEGIN Lovetalk#30.6 //From Lovetalk#30.5.1
    SAY @347
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#30.7 //From Lovetalk#30.5.2
    SAY @348
    ++ @349 GOTO Lovetalk#30.10
    ++ @350 GOTO Lovetalk#30.11
    ++ @351 GOTO Lovetalk#30.12
  END

  IF ~~ BEGIN Lovetalk#30.8 //From Lovetalk#30.5.3
    SAY @352
    COPY_TRANS BG#TYRIS Lovetalk#30.7
  END

  IF ~~ BEGIN Lovetalk#30.9 //From Lovetalk#30.5.4
    SAY @353
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#30.10 //FRom Lovetalk#30.7.1
    SAY @354
    IF ~~ GOTO Lovetalk#30.13
  END

  IF ~~ BEGIN Lovetalk#30.11 //FRom Lovetalk#30.7.2
    SAY @355
    IF ~~ GOTO Lovetalk#30.13
  END

  IF ~~ BEGIN Lovetalk#30.12 //FRom Lovetalk#30.7.3
    SAY @356
    IF ~~ GOTO Lovetalk#30.13
  END

  IF ~~ BEGIN Lovetalk#30.13 //From Lovetalk#30.10.1, Lovetalk#30.11.1, Lovetalk#30.12.1
    SAY @357
    COPY_TRANS BG#TYRIS Lovetalk#30.6
  END

END

// Lovetalk 32 - "How do you cure the hiccups?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",32)~ BEGIN Lovetalk#32.1
    SAY @358 
    ++ @359 GOTO Lovetalk#32.2
    ++ @360 GOTO Lovetalk#32.3
    ++ @361 GOTO Lovetalk#32.4
  END

  IF ~~ BEGIN Lovetalk#32.2 //From Lovetalk#32.1.1
    SAY @362
    IF ~~ GOTO Lovetalk#32.5
  END

  IF ~~ BEGIN Lovetalk#32.3 //From Lovetalk#32.1.2
    SAY @363
    IF ~~ GOTO Lovetalk#32.5
  END

  IF ~~ BEGIN Lovetalk#32.4 //From Lovetalk#32.1.3
    SAY @364
    = @365
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#32.5 //From Lovetalk#32.2.1, Lovetalk#32.2.2
    SAY @365
    = @366
    = @367
    ++ @368 GOTO Lovetalk#32.6
    ++ @369 GOTO Lovetalk#32.7
    ++ @370 GOTO Lovetalk#32.8
    ++ @371 GOTO Lovetalk#32.9
  END
  
  IF ~~ BEGIN Lovetalk#32.6 //From Lovetalk#32.5.1, Lovetalk#32.8.2
    SAY @372
    = @373
    = @374
    = @375
    = @376
    = @377
    IF ~~ GOTO Lovetalk#32.10
  END
  
  IF ~~ BEGIN Lovetalk#32.7 //From Lovetalk#32.5.2, Lovetalk#32.8.3
    SAY @378
    = @379
    = @380
    = @381
    IF ~~ GOTO Lovetalk#32.10
  END

  IF ~~ BEGIN Lovetalk#32.8 //From Lovetalk#32.5.3
    SAY @382
    ++ @383 GOTO Lovetalk#32.11
    ++ @384 GOTO Lovetalk#32.6
    ++ @385 GOTO Lovetalk#32.7
    ++ @386 GOTO Lovetalk#32.9
  END

  IF ~~ BEGIN Lovetalk#32.9 //From Lovetalk#32.5.4, Lovetalk#32.8.4
    SAY @387
    = @365
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#32.10 //From Lovetalk#32.6.1, Lovetalk#32.7.1, Lovetalk#32.11.1
    SAY @388
    = @365
    = @358
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#32.11 //From Lovetalk#32.8.1
    SAY @390
    = @391
    = @392
    = @393
    IF ~~ GOTO Lovetalk#32.10
  END

END

// Lovetalk 34 - "Aches and pains"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",34)~ BEGIN Lovetalk#34.1
    SAY @394 
    ++ @395 GOTO Lovetalk#34.2
    ++ @396 GOTO Lovetalk#34.3
    ++ @397 GOTO Lovetalk#34.4
    ++ @398 GOTO Lovetalk#34.5
  END

  IF ~~ BEGIN Lovetalk#34.2 //From Lovetalk#34.1.1
    SAY @399
    ++ @396 GOTO Lovetalk#34.3
    ++ @400 GOTO Lovetalk#34.4
    ++ @401 GOTO Lovetalk#34.6
  END

  IF ~~ BEGIN Lovetalk#34.3 //From Lovetalk#34.1.2, Lovetalk#34.2.1
    SAY @402
    IF ~~ GOTO Lovetalk#34.7
  END

  IF ~~ BEGIN Lovetalk#34.4 //From Lovetalk#34.1.3, Lovetalk#34.2.2
    SAY @403
    = @404
    ++ @405 GOTO Lovetalk#34.7
    ++ @406  GOTO Lovetalk#34.6
    ++ @407 GOTO Lovetalk#34.5
  END

  IF ~~ BEGIN Lovetalk#34.5 //From Lovetalk#34.1.4, Lovetalk#34.4.3
    SAY @408
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#34.6 //From Lovetalk#34.2.3, Lovetalk#34.4.2
    SAY @409
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#34.7 //From Lovetalk#34.3.1, Lovetalk#34.4.1
    SAY @410
    = @411
    = @412
    ++ @413 GOTO Lovetalk#34.8
    ++ @414 GOTO Lovetalk#34.9
    ++ @415 GOTO Lovetalk#34.10
  END

  IF ~~ BEGIN Lovetalk#34.8 //From Lovetalk#34.8.1
    SAY @416
    = @417
    IF ~~ GOTO Lovetalk#34.11
  END

  IF ~~ BEGIN Lovetalk#34.9 //From Lovetalk#34.8.2
    SAY @418
    = @419
    IF ~~ GOTO Lovetalk#34.11
  END

  IF ~~ BEGIN Lovetalk#34.10 //From Lovetalk#34.8.3
    SAY @420
    = @421
    COPY_TRANS BG#TYRIS Lovetalk#34.11
  END

  IF ~~ BEGIN Lovetalk#34.11 //From Lovetalk#34.8.1, Lovetalk#34.9.1
    SAY @422
    ++ @423 GOTO Lovetalk#34.12
    ++ @424 GOTO Lovetalk#34.13
    ++ @425 GOTO Lovetalk#34.14
  END

  IF ~~ BEGIN Lovetalk#34.12 //From Lovetalk#34.11.1
    SAY @426
    = @427
    = @428
    COPY_TRANS BG#TYRIS Lovetalk#34.6
  END

  IF ~~ BEGIN Lovetalk#34.13 //From Lovetalk#34.11.2
    SAY @429
    = @430
    = @431
    COPY_TRANS BG#TYRIS Lovetalk#34.6
  END

  IF ~~ BEGIN Lovetalk#34.14 //From Lovetalk#34.11.3
    SAY @432
    = @433
    COPY_TRANS BG#TYRIS Lovetalk#34.6
  END

END

// Lovetalk 36 - "Parlour tricks"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",36)~ BEGIN Lovetalk#36.1
    SAY @434 
    = @435
    = @436
    + ~OR(2)
         TimeOfDay(DUSK)
         TimeOfDay(NIGHT)~ + @437 GOTO Lovetalk#36.2
    + ~!TimeOfDay(DUSK)
       !TimeOfDay(NIGHT)~ + @437 GOTO Lovetalk#36.3
    + ~OR(2)
         TimeOfDay(DUSK)
         TimeOfDay(NIGHT)~ + @438 GOTO Lovetalk#36.4
    + ~!TimeOfDay(DUSK)
       !TimeOfDay(NIGHT)~ + @438 GOTO Lovetalk#36.5
    + ~OR(2)
         TimeOfDay(DUSK)
         TimeOfDay(NIGHT)~ + @439 GOTO Lovetalk#36.6
    + ~!TimeOfDay(DUSK)
       !TimeOfDay(NIGHT)~ + @439 GOTO Lovetalk#36.7
    ++ @440 GOTO Lovetalk#36.8
  END

  IF ~~ BEGIN Lovetalk#36.2 //From Lovetalk#36.1.1
    SAY @441
    IF ~~ GOTO Lovetalk#36.9
  END

  IF ~~ BEGIN Lovetalk#36.3 //From Lovetalk#36.1.2
    SAY @442
    IF ~~ GOTO Lovetalk#36.9
  END

  IF ~~ BEGIN Lovetalk#36.4 //From Lovetalk#36.1.3
    SAY @443
    IF ~~ GOTO Lovetalk#36.9
  END

  IF ~~ BEGIN Lovetalk#36.5 //From Lovetalk#36.1.4
    SAY @444
    IF ~~ GOTO Lovetalk#36.9
  END

  IF ~~ BEGIN Lovetalk#36.6 //From Lovetalk#36.1.5
    SAY @445
    IF ~~ GOTO Lovetalk#36.9
  END

  IF ~~ BEGIN Lovetalk#36.7 //From Lovetalk#36.1.6
    SAY @446
    IF ~~ GOTO Lovetalk#36.9
  END

  IF ~~ BEGIN Lovetalk#36.8 //From Lovetalk#36.1.7
    SAY @447
    COPY_TRANS BG#TYRIS Lovetalk#36.9
  END

  IF ~~ BEGIN Lovetalk#36.9 //From Lovetalk#36.2.1, Lovetalk#36.3.1, Lovetalk#36.4.1, Lovetalk#36.5.1, Lovetalk#36.6.1, Lovetalk#36.7.1
    SAY @448
    = @449
    ++ @450 GOTO Lovetalk#36.10
    ++ @451 GOTO Lovetalk#36.11
    ++ @452 GOTO Lovetalk#36.12
    ++ @453 GOTO Lovetalk#36.13
  END

  IF ~~ BEGIN Lovetalk#36.10 //From Lovetalk#36.9.1
    SAY @454
    = @455
    COPY_TRANS BG#TYRIS Lovetalk#36.11
  END

  IF ~~ BEGIN Lovetalk#36.11 //From Lovetalk#36.9.2
    SAY @456
    = @457
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#36.12 //From Lovetalk#36.9.3
    SAY @458
    = @459
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#36.13 //From Lovetalk#36.9.4
    SAY @460
    = @461
    = @462
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      LeaveParty()
      EscapeArea()
    ~ EXIT
  END

END

// Lovetalk 38 - "A bit of fun..."

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",38)~ BEGIN Lovetalk#38.1
    SAY @463 
    ++ @464 GOTO Lovetalk#38.2
    ++ @465 GOTO Lovetalk#38.3
    ++ @466 GOTO Lovetalk#38.4
    ++ @467 GOTO Lovetalk#38.5
  END

  IF ~~ BEGIN Lovetalk#38.2 //From Lovetalk#38.1.1
    SAY @468
    = @469
    ++ @470 GOTO Lovetalk#38.6
    ++ @471 GOTO Lovetalk#38.7
    ++ @472 GOTO Lovetalk#38.8
    ++ @473 GOTO Lovetalk#38.4
    ++ @474 GOTO Lovetalk#38.9
  END

  IF ~~ BEGIN Lovetalk#38.3 //From Lovetalk#38.1.2
    SAY @475
    COPY_TRANS BG#TYRIS Lovetalk#38.2
  END

  IF ~~ BEGIN Lovetalk#38.4 //From Lovetalk#38.1.3, Lovetalk#38.2.4
    SAY @476
    COPY_TRANS BG#TYRIS Lovetalk#38.7
  END

  IF ~~ BEGIN Lovetalk#38.5 //From Lovetalk#38.1.4
    SAY @477
    = @478
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      LeaveParty()
      EscapeArea()
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#38.6 //From Lovetalk#38.2.1
    SAY @479
    ++ @480 GOTO Lovetalk#38.10
    ++ @481 GOTO Lovetalk#38.11
    ++ @471 GOTO Lovetalk#38.7
    ++ @482 GOTO Lovetalk#38.8
  END

  IF ~~ BEGIN Lovetalk#38.7 //From Lovetalk#38.2.2, Lovetalk#38.6.3
    SAY @483
    = @484
    = @485
    ++ @486 GOTO Lovetalk#38.17
    ++ @487 GOTO Lovetalk#38.18
    ++ @481 GOTO Lovetalk#38.11
    ++ @488 GOTO Lovetalk#38.9
  END

  IF ~~ BEGIN Lovetalk#38.8 //From Lovetalk#38.2.3, Lovetalk#38.6.4
    SAY @489
    COPY_TRANS BG#TYRIS Lovetalk#38.7
  END

  IF ~~ BEGIN Lovetalk#38.9 //From Lovetalk#38.2.5, Lovetalk#38.7.4
    SAY @490
    ++ @491 GOTO Lovetalk#38.15
    ++ @492 GOTO Lovetalk#38.11
    ++ @493 GOTO Lovetalk#38.16
  END

  IF ~~ BEGIN Lovetalk#38.10 //From Lovetalk#38.6.1
    SAY @494
    IF ~~ DO ~
      SetGlobal("G#TF.SleptWithTyris","GLOBAL",1)
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#38.11 //From Lovetalk#38.6.2, Lovetalk#38.7.2, Lovetalk#38.9.3
    SAY @495
    ++ @496 GOTO Lovetalk#38.12
    ++ @497 GOTO Lovetalk#38.13
    ++ @498 GOTO Lovetalk#38.14
  END

  IF ~~ BEGIN Lovetalk#38.12 //From Lovetalk#38.11.1
    SAY @499
    COPY_TRANS BG#TYRIS Lovetalk#38.10
  END

  IF ~~ BEGIN Lovetalk#38.13 //From Lovetalk#38.11.2
    SAY @500
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#38.14 //From Lovetalk#38.11.3
    SAY @501
    COPY_TRANS BG#TYRIS Lovetalk#38.10
  END

  IF ~~ BEGIN Lovetalk#38.15 //From Lovetalk#38.9.1
    SAY @502
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      RestParty()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#38.16 //From Lovetalk#38.9.2
    SAY @503
    COPY_TRANS BG#TYRIS Lovetalk#38.5
  END

  IF ~~ BEGIN Lovetalk#38.17 //From Lovetalk#38.7.1
    SAY @504
    COPY_TRANS BG#TYRIS Lovetalk#38.10
  END

  IF ~~ BEGIN Lovetalk#38.18 //From Lovetalk#38.7.2
    SAY @505
    COPY_TRANS BG#TYRIS Lovetalk#38.10
  END

END

// Lovetalk 40 - "Mmmm... morning"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",40)~ BEGIN Lovetalk#40.1
    SAY @506 
    IF ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ GOTO Lovetalk#40.2
    IF ~Global("G#TF.SleptWithTyris","GLOBAL",0)~ GOTO Lovetalk#40.3
  END

  IF ~~ BEGIN Lovetalk#40.2 //From Lovetalk#40.1.1
    SAY @507
    ++ @508 DO ~SetGlobal("G#TF.NoPillowTalk","LOCALS",1)~ GOTO Lovetalk#40.4
    ++ @509 GOTO Lovetalk#40.5
    ++ @510 GOTO Lovetalk#40.6
    ++ @511 GOTO Lovetalk#40.7
  END

  IF ~~ BEGIN Lovetalk#40.3 //From Lovetalk#40.1.2
    SAY @512
    ++ @513 DO ~SetGlobal("G#TF.NoPillowTalk","LOCALS",1)~ GOTO Lovetalk#40.8
    ++ @509 GOTO Lovetalk#40.9
    ++ @510 GOTO Lovetalk#40.10
    ++ @511 GOTO Lovetalk#40.7
  END

  IF ~~ BEGIN Lovetalk#40.4 //From Lovetalk#40.2.1
    SAY @514
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#40.5 //From Lovetalk#40.2.2
    SAY @515
    ++ @516 GOTO Lovetalk#40.11
    ++ @517 DO ~SetGlobal("G#TF.PlayerSaysILoveYou","LOCALS",1)~ GOTO Lovetalk#40.12
    ++ @518 GOTO Lovetalk#40.11
  END

  IF ~~ BEGIN Lovetalk#40.6 //From Lovetalk#40.2.3
    SAY @519
    COPY_TRANS BG#TYRIS Lovetalk#40.5
  END

  IF ~~ BEGIN Lovetalk#40.7 //From Lovetalk#40.2.4, Lovetalk#40.3.4
    SAY @520
    = @521
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      LeaveParty()
      EscapeArea()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#40.8 //From Lovetalk#40.3.1, Lovetalk#40.9.3
    SAY @522
    COPY_TRANS BG#TYRIS Lovetalk#40.4
  END

  IF ~~ BEGIN Lovetalk#40.9 //From Lovetalk#40.3.2
    SAY @523
    ++ @524 GOTO Lovetalk#40.13
    ++ @517 DO ~SetGlobal("G#TF.PlayerSaysILoveYou","LOCALS",1)~ GOTO Lovetalk#40.12
    ++ @525 GOTO Lovetalk#40.8
  END

  IF ~~ BEGIN Lovetalk#40.10 //From Lovetalk#40.3.3
    SAY @526
    ++ @516 GOTO Lovetalk#40.14
    ++ @517 DO ~SetGlobal("G#TF.PlayerSaysILoveYou","LOCALS",1)~ GOTO Lovetalk#40.12
    ++ @518 GOTO Lovetalk#40.14
  END

  IF ~~ BEGIN Lovetalk#40.11 //From Lovetalk#40.5.1, Lovetalk#40.5.3
    SAY @527
    = @528
    COPY_TRANS BG#TYRIS Lovetalk#40.4
  END

  IF ~~ BEGIN Lovetalk#40.12 //From Lovetalk#40.5.2, Lovetalk#40.9.2, Lovetalk#40.10.2
    SAY @529
    = @530
    COPY_TRANS BG#TYRIS Lovetalk#40.11
  END

  IF ~~ BEGIN Lovetalk#40.13 //From Lovetalk#40.9.1
    SAY @531
    COPY_TRANS BG#TYRIS Lovetalk#40.10
  END

  IF ~~ BEGIN Lovetalk#40.14 //From Lovetalk#40.10.1, Lovetalk#40.10.3
    SAY @532
    COPY_TRANS BG#TYRIS Lovetalk#40.11
  END

END

// Lovetalk 42 - "I lied..."

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",42)~ BEGIN Lovetalk#42.1
    SAY @533 
    ++ @69 GOTO Lovetalk#42.2
    + ~!Global("G#TF.NoPillowTalk","LOCALS",1)~ + @534 GOTO Lovetalk#42.3
    + ~Global("G#TF.PlayerSaysILoveYou","LOCALS",1)~ + @535 GOTO Lovetalk#42.4
    ++ @536 GOTO Lovetalk#42.5
    ++ @537 GOTO Lovetalk#42.6
  END

  IF ~~ BEGIN Lovetalk#42.2 //From Lovetalk#42.1.1, Lovetalk#42.5.1, Lovetalk#42.6.1
    SAY @538
    IF ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ GOTO Lovetalk#42.7
    IF ~Global("G#TF.SleptWithTyris","GLOBAL",0)~ GOTO Lovetalk#42.8
  END

  IF ~~ BEGIN Lovetalk#42.3 //From Lovetalk#42.1.2, Lovetalk#42.6.2
    SAY @539
    IF ~Global("G#TF.PlayerSaysILoveYou","LOCALS",1)~ GOTO Lovetalk#42.9
    IF ~Global("G#TF.PlayerSaysILoveYou","LOCALS",0)~ GOTO Lovetalk#42.10
  END

  IF ~~ BEGIN Lovetalk#42.4 //From Lovetalk#42.1.3, Lovetalk#42.6.3
    SAY @540
    = @541
    COPY_TRANS BG#TYRIS Lovetalk#42.3
  END

  IF ~~ BEGIN Lovetalk#42.5 //From Lovetalk#42.1.4, Lovetalk#42.6.4
    SAY @542
    IF ~~ GOTO Lovetalk#42.2
  END

  IF ~~ BEGIN Lovetalk#42.6 //From Lovetalk#42.1.5
    SAY @543
    ++ @69 GOTO Lovetalk#42.2
    + ~!Global("G#TF.NoPillowTalk","LOCALS",1)~ + @534 GOTO Lovetalk#42.3
    + ~Global("G#TF.PlayerSaysILoveYou","LOCALS",1)~ + @535 GOTO Lovetalk#42.4
    ++ @536 GOTO Lovetalk#42.5
  END

  IF ~~ BEGIN Lovetalk#42.7 //From Lovetalk#42.2.1
    SAY @544
    COPY_TRANS BG#TYRIS Lovetalk#42.3
  END

  IF ~~ BEGIN Lovetalk#42.8 //From Lovetalk#42.2.1
    SAY @545
    COPY_TRANS BG#TYRIS Lovetalk#42.3
  END

  IF ~~ BEGIN Lovetalk#42.9 //From Lovetalk#42.3.1
    SAY @546
    ++ @547 GOTO Lovetalk#42.11
    ++ @548 GOTO Lovetalk#42.11
    ++ @549 GOTO Lovetalk#42.12
    ++ @550 GOTO Lovetalk#42.13
  END

  IF ~~ BEGIN Lovetalk#42.10 //From Lovetalk#42.3.2
    SAY @551
    = @552
    ++ @553 GOTO Lovetalk#42.14
    ++ @554 GOTO Lovetalk#42.14
    ++ @555 GOTO Lovetalk#42.15
    ++ @556 GOTO Lovetalk#42.16
  END

  IF ~~ BEGIN Lovetalk#42.11 //From Lovetalk#42.9.1, Lovetalk#42.9.2
    SAY @557
    = @558
    = @559
    IF ~~ DO ~
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",2)
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#42.12 //From Lovetalk#42.9.3
    SAY @560
    = @561
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END
  
  IF ~~ BEGIN Lovetalk#42.13 //From Lovetalk#42.9.4
    SAY @562
    = @563
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
      LeaveParty()
      EscapeArea()
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#42.14 //From Lovetalk#42.10.1, Lovetalk#42.10.2
    SAY @564
    COPY_TRANS BG#TYRIS Lovetalk#42.11
  END
  
  IF ~~ BEGIN Lovetalk#42.15 //From Lovetalk#42.10.3
    SAY @565
    = @566
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",3)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#42.16 //From Lovetalk#42.10.4
    SAY @567
    COPY_TRANS BG#TYRIS Lovetalk#42.13
  END

END

// Lovetalk 44 - "Have you ever died?"

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",44)~ BEGIN Lovetalk#44.1
    SAY @568 
    ++ @569 GOTO Lovetalk#44.2
    ++ @570 GOTO Lovetalk#44.3
    ++ @571 GOTO Lovetalk#44.4
    ++ @572 GOTO Lovetalk#44.5
  END
  
  IF ~~ BEGIN Lovetalk#44.2 //From Lovetalk#44.1.1, Lovetalk#44.3.1, Lovetalk#44.4.1, Lovetalk#44.5.1
    SAY @573
    = @574
    ++ @575 GOTO Lovetalk#44.6
    ++ @576 GOTO Lovetalk#44.7
    + ~Global("G#TF.SleptWithTyris","GLOBAL",1)~ + @577 GOTO Lovetalk#44.8
    ++ @578 GOTO Lovetalk#44.9
  END
  
  IF ~~ BEGIN Lovetalk#44.3 //From Lovetalk#44.1.2
    SAY @579
    IF ~~ GOTO Lovetalk#44.2
  END
  
  IF ~~ BEGIN Lovetalk#44.4 //From Lovetalk#44.1.3
    SAY @580
    IF ~~ GOTO Lovetalk#44.2
  END

  IF ~~ BEGIN Lovetalk#44.5 //From Lovetalk#44.1.4
    SAY @581
    IF ~~ GOTO Lovetalk#44.2
  END
  
  IF ~~ BEGIN Lovetalk#44.6 //From Lovetalk#44.2.1
    SAY @582
    = @583
    COPY_TRANS BG#TYRIS Lovetalk#44.7
  END
  
  IF ~~ BEGIN Lovetalk#44.7 //From Lovetalk#44.2.2
    SAY @584
    ++ @585 GOTO Lovetalk#44.10
    ++ @586 GOTO Lovetalk#44.10
    ++ @587 GOTO Lovetalk#44.11
    ++ @588 GOTO Lovetalk#44.12
  END

  IF ~~ BEGIN Lovetalk#44.8 //From Lovetalk#44.2.3
    SAY @589
    = @590
    COPY_TRANS BG#TYRIS Lovetalk#44.7
  END
  
  IF ~~ BEGIN Lovetalk#44.9 //From Lovetalk#44.2.4
    SAY @591
    = @592
    COPY_TRANS BG#TYRIS Lovetalk#44.7
  END
  
  IF ~~ BEGIN Lovetalk#44.10 //From Lovetalk#44.7.1, Lovetalk#44.7.2
    SAY @593
    = @594
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#44.11 //From Lovetalk#44.7.3
    SAY @595
    COPY_TRANS BG#TYRIS Lovetalk#44.10
  END
  
  IF ~~ BEGIN Lovetalk#44.12 //From Lovetalk#44.7.4
    SAY @596
    COPY_TRANS BG#TYRIS Lovetalk#44.10
  END

END

// Lovetalk 46 - "There's something I want you to have..."

APPEND_EARLY BG#TYRIS

  IF ~Global("G#TF.Lovetalk","LOCALS",46)~ BEGIN Lovetalk#46.1
    SAY @597 
    = @598
    ++ @599 DO ~GiveItemCreate("G#TFLOCK",Player1,1,1,0)~ GOTO Lovetalk#46.2
    ++ @600 DO ~GiveItemCreate("G#TFLOCK",Player1,1,1,0)~ GOTO Lovetalk#46.3
    ++ @601 DO ~GiveItemCreate("G#TFLOCK",Player1,1,1,0)~ GOTO Lovetalk#46.4
    ++ @602 GOTO Lovetalk#46.5
  END
  
  IF ~~ BEGIN Lovetalk#46.2 //From Lovetalk#46.1.1, Lovetalk#46.5.1
    SAY @603
    ++ @604 GOTO Lovetalk#46.6
    ++ @605 GOTO Lovetalk#46.7
    ++ @606 GOTO Lovetalk#46.7
    ++ @607 GOTO Lovetalk#46.8
  END
  
  IF ~~ BEGIN Lovetalk#46.3 //From Lovetalk#46.1.2, Lovetalk#46.5.2
    SAY @608
    COPY_TRANS BG#TYRIS Lovetalk#46.2
  END
  
  IF ~~ BEGIN Lovetalk#46.4 //From Lovetalk#46.1.3, Lovetalk#46.5.3
    SAY @609
    COPY_TRANS BG#TYRIS Lovetalk#46.2
  END

  IF ~~ BEGIN Lovetalk#46.5 //From Lovetalk#46.1.4
    SAY @610
    ++ @611 DO ~GiveItemCreate("G#TFLOCK",Player1,1,1,0)~ GOTO Lovetalk#46.2
    ++ @612 DO ~GiveItemCreate("G#TFLOCK",Player1,1,1,0)~ GOTO Lovetalk#46.3
    ++ @613 DO ~GiveItemCreate("G#TFLOCK",Player1,1,1,0)~ GOTO Lovetalk#46.4
  END

  IF ~~ BEGIN Lovetalk#46.6 //From Lovetalk#46.2.1
    SAY @614
    IF ~~ GOTO Lovetalk#46.7
  END

  IF ~~ BEGIN Lovetalk#46.7 //From Lovetalk#46.2.2, Lovetalk#46.2.3, Lovetalk#46.6.1, Lovetalk#46.8.1
    SAY @615
    = @616
    = @617
    ++ @618 GOTO Lovetalk#46.9
    ++ @619 GOTO Lovetalk#46.9
    ++ @620 GOTO Lovetalk#46.10
  END
  
  IF ~~ BEGIN Lovetalk#46.8 //From Lovetalk#46.2.4
    SAY @621
    IF ~~ GOTO Lovetalk#46.7
  END
  
  IF ~~ BEGIN Lovetalk#46.9 //From Lovetalk#46.7.1, Lovetalk#46.7.2
    SAY @622
    = @623
    = @624
    IF ~~ DO ~
      IncrementGlobal("G#TF.Lovetalk","LOCALS",1)
      RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",1800)
    ~ EXIT
  END

  IF ~~ BEGIN Lovetalk#46.10 //From Lovetalk#46.7.3
    SAY @625
    COPY_TRANS BG#TYRIS Lovetalk#46.9
  END
  
END
