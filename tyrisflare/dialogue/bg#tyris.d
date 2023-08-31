BEGIN BG#TYRIS

  // Aerie Banters

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Aerie",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.AerieBanters","GLOBAL",0)~ THEN BAERIE AerieBanter#1
    @0
    DO ~SetGlobal("G#TF.AerieBanters","GLOBAL",1)~
    == BG#TYRIS @1 
    == BAERIE @2
    == BG#TYRIS @3
    == BAERIE @4
    == BG#TYRIS @5
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Aerie",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.AerieBanters","GLOBAL",1)~ THEN BAERIE AerieBanter#2
    @6
    DO ~SetGlobal("G#TF.AerieBanters","GLOBAL",2)~
    == BG#TYRIS @7 
    == BAERIE @8
    == BG#TYRIS @9
    = @10
    == BAERIE @11
    == BG#TYRIS @12
  EXIT

  // Anomen Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Anomen",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.AnomenBanters","GLOBAL",0)~ THEN BANOMEN AnomenBanter#1
    @13
    DO ~SetGlobal("G#TF.AnomenBanters","GLOBAL",1)~
    == BG#TYRIS @14 
    == BANOMEN @15
    == BG#TYRIS @16
    = @17
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Anomen",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            !Global("AnomenRomanceActive","GLOBAL",2)
            Global("G#TF.AnomenBanters","GLOBAL",1)~ THEN BANOMEN AnomenBanter#2
    @18
    DO ~SetGlobal("G#TF.AnomenBanters","GLOBAL",2)~
    == BG#TYRIS @19 
    == BANOMEN @20
    == BG#TYRIS @21
  EXIT

  // Cernd Banters
  
  CHAIN IF ~InParty("Cernd")
            See("Cernd")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Cernd",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.CerndBanters","GLOBAL",0)~ THEN BG#TYRIS CerndBanter#1
    @22 
    DO ~SetGlobal("G#TF.CerndBanters","GLOBAL",1)~
    == BCERND @23
    == BG#TYRIS @24
    == BCERND @25
    == BG#TYRIS @26
    == BCERND @27
    == BG#TYRIS @28
    == BCERND @29
    == BG#TYRIS @30
  EXIT
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Cernd",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.CerndBanters","GLOBAL",1)~ THEN BCERND CerndBanter#2
    @31
    DO ~SetGlobal("G#TF.CerndBanters","GLOBAL",2)~
    == BG#TYRIS @32 
    == BCERND @33
    == BG#TYRIS @34
    == BCERND @35
    == BG#TYRIS @36
    == BCERND @37
    = @38
    == BG#TYRIS @39
  EXIT

  // Edwin Banters
  
  CHAIN IF ~InParty("Edwin")
            See("Edwin")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Edwin",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.EdwinBanters","GLOBAL",0)~ THEN BG#TYRIS EdwinBanter#1
    @40 
    DO ~SetGlobal("G#TF.EdwinBanters","GLOBAL",1)~
    == BEDWIN @41
    == BG#TYRIS @42
    == BEDWIN @43
    == BG#TYRIS @44
    == BEDWIN @45
    == BG#TYRIS @46
    = @47
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Edwin",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.EdwinBanters","GLOBAL",1)~ THEN BEDWIN EdwinBanter#2
    @48
    DO ~SetGlobal("G#TF.EdwinBanters","GLOBAL",2)~
    == BG#TYRIS @49 
    == BEDWIN @50
    == BG#TYRIS @51
    = @52
    == BEDWIN @53
    == BG#TYRIS @54
    == BEDWIN @55
  EXIT

  // Haer'Dalis Banters

  CHAIN IF ~InParty("HaerDalis")
            See("HaerDalis")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("HaerDalis",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.HaerDalisBanters","GLOBAL",0)~ THEN BG#TYRIS HaerDalisBanter#1
    @56 
    DO ~SetGlobal("G#TF.HaerDalisBanters","GLOBAL",1)~
    == BHAERDA @57
    == BG#TYRIS @58
    == BHAERDA @59
    == BG#TYRIS @60
    == BHAERDA @61
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("HaerDalis",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.HaerDalisBanters","GLOBAL",1)~ THEN BHAERDA HaerDalisBanter#2
    @62
    DO ~SetGlobal("G#TF.HaerDalisBanters","GLOBAL",2)~
    == BG#TYRIS @63 
    == BHAERDA @64
    == BG#TYRIS @65
    == BHAERDA @66
    == BG#TYRIS @67
    == BHAERDA @68
  EXIT

  // Imoen Banters

  CHAIN IF ~InParty("Imoen2")
            See("Imoen2")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Imoen2",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ImoenBanters","GLOBAL",0)~ THEN BG#TYRIS ImoenBanter#1
    @69 
    DO ~SetGlobal("G#TF.ImoenBanters","GLOBAL",1)~
    == BIMOEN2 @70
    == BG#TYRIS @71
    == BIMOEN2 @72
    = @73
    == BG#TYRIS @74
    == BIMOEN2 @75
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Imoen2",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ImoenBanters","GLOBAL",1)~ THEN BIMOEN2 ImoenBanter#2
    @76
    DO ~SetGlobal("G#TF.ImoenBanters","GLOBAL",2)~
    == BG#TYRIS @77 
    == BIMOEN2 @78
    == BG#TYRIS @79
    == BIMOEN2 @80
    == BG#TYRIS @81
    == BIMOEN2 @82
    == BG#TYRIS @83
    = @84
    == BIMOEN2 @85
    == BG#TYRIS @86
    == BIMOEN2 @87
    == BG#TYRIS @88
    == BIMOEN2 @89
    = @90
  EXIT

  // Jaheira Banters

  CHAIN IF ~InParty("Jaheira")
            See("Jaheira")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Jaheira",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.JaheiraBanters","GLOBAL",0)~ THEN BG#TYRIS JaheiraBanter#1
    @91 
    DO ~SetGlobal("G#TF.JaheiraBanters","GLOBAL",1)~
    == BJAHEIR @92
    == BG#TYRIS @93
    == BJAHEIR @94
    = @95
    = @96
    == BG#TYRIS @97
  EXIT

  CHAIN IF ~InParty("Jaheira")
            See("Jaheira")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Jaheira",CD_STATE_NOTVALID)
            CombatCounter(0)
            AreaType(FOREST)
            Global("G#TF.JaheiraBanters","GLOBAL",1)~ THEN BG#TYRIS JaheiraBanter#2
    @98 
    DO ~SetGlobal("G#TF.JaheiraBanters","GLOBAL",2)~
    == BJAHEIR @99
    == BG#TYRIS @100
    == BJAHEIR @101
    == BG#TYRIS @102
    == BJAHEIR @103
  EXIT

  // Jan Banters
  
  CHAIN IF ~InParty("Jan")
            See("Jan")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Jan",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.JanBanters","GLOBAL",0)~ THEN BG#TYRIS JanBanter#1
    @104 
    DO ~SetGlobal("G#TF.JanBanters","GLOBAL",1)~
    == BJAN @105
    == BG#TYRIS @106
    == BJAN @107
    == BG#TYRIS @108
    == BJAN @109
    == BG#TYRIS @110
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Jan",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.JanBanters","GLOBAL",1)~ THEN BJAN JanBanter#2
    @111
    DO ~SetGlobal("G#TF.JanBanters","GLOBAL",2)~
    == BG#TYRIS @112 
    == BJAN @113
    == BG#TYRIS @114
    == BJAN @115
    == BG#TYRIS @116
  EXIT

  // Keldorn Banters
  
  CHAIN IF ~InParty("Keldorn")
            See("Keldorn")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Keldorn",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.KeldornBanters","GLOBAL",0)~ THEN BG#TYRIS KeldornBanter#1
    @117 
    DO ~SetGlobal("G#TF.KeldornBanters","GLOBAL",1)~
    == BKELDOR @118
    == BG#TYRIS @119
    == BKELDOR @120
    == BG#TYRIS @121
    == BKELDOR @122
    == BG#TYRIS @123
    == BKELDOR @124
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Keldorn",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.KeldornBanters","GLOBAL",1)~ THEN BKELDOR KeldornBanter#2
    @125
    DO ~SetGlobal("G#TF.KeldornBanters","GLOBAL",2)~
    == BG#TYRIS @126 
    = @127
    == BKELDOR @128
    == BG#TYRIS @129
    == BKELDOR @130
    == BG#TYRIS @131
  EXIT

  // Korgan Banters

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Korgan",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            OR(2)
              HasItemEquiped("G#TFARMR","G#Tyris")
              HasItemEquiped("G#TFAMR2","G#Tyris")
            Global("G#TF.KorganBanters","GLOBAL",0)~ THEN BKORGAN KorganBanter#1
    @132
    DO ~SetGlobal("G#TF.KorganBanters","GLOBAL",1)~
    == BG#TYRIS @133 
    == BKORGAN @134
    == BG#TYRIS @135
    == BKORGAN @136
    == BG#TYRIS @137
  EXIT

  CHAIN IF ~InParty("Korgan")
            See("Korgan")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Korgan",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.KorganBanters","GLOBAL",1)~ THEN BG#TYRIS KorganBanter#2
    @138 
    DO ~SetGlobal("G#TF.KorganBanters","GLOBAL",2)~
    == BKORGAN @139
    == BG#TYRIS @140
    == BKORGAN @141
    == BG#TYRIS @142
    == BKORGAN @143
  EXIT

  // Mazzy Banters
  
  CHAIN IF ~InParty("Mazzy")
            See("Mazzy")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Mazzy",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.MazzyBanters","GLOBAL",0)~ THEN BG#TYRIS MazzyBanter#1
    @144 
    DO ~SetGlobal("G#TF.MazzyBanters","GLOBAL",1)~
    == BMAZZY @145
    == BG#TYRIS @146
    == BMAZZY @147
    == BG#TYRIS @148
    == BMAZZY @149
    == BG#TYRIS @150
  EXIT
  
  CHAIN IF ~InParty("Mazzy")
            See("Mazzy")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Mazzy",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.MazzyBanters","GLOBAL",1)~ THEN BG#TYRIS MazzyBanter#2
    @151 
    DO ~SetGlobal("G#TF.MazzyBanters","GLOBAL",2)~
    == BMAZZY @152
    == BG#TYRIS @153
  EXIT

  // Minsc Banters

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Minsc",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.MinscBanters","GLOBAL",0)~ THEN BMINSC MinscBanter#1
    @154
    DO ~SetGlobal("G#TF.MinscBanters","GLOBAL",1)~
    == BG#TYRIS @155 
    == BMINSC @156
    == BG#TYRIS @157
    == BMINSC @158
    == BG#TYRIS @159
    == BMINSC @160
    == BG#TYRIS @161
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Minsc",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            OR(2)
              HasItemEquiped("G#TFARMR","G#Tyris")
              HasItemEquiped("G#TFAMR2","G#Tyris")
            Global("G#TF.MinscBanters","GLOBAL",1)~ THEN BMINSC MinscBanter#2
    @162
    DO ~SetGlobal("G#TF.MinscBanters","GLOBAL",2)~
    == BG#TYRIS @163 
    == BMINSC @164
    == BG#TYRIS @165
    == BMINSC @166
    == BG#TYRIS @167
  EXIT

  // Nalia Banters

  CHAIN IF ~InParty("Nalia")
            See("Nalia")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Nalia",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.NaliaBanters","GLOBAL",0)~ THEN BG#TYRIS NaliaBanter#1
    @168 
    DO ~SetGlobal("G#TF.NaliaBanters","GLOBAL",1)~
    == BNALIA @169
    == BG#TYRIS @170
    == BNALIA @171
    == BG#TYRIS @172
    == BNALIA @173
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Nalia",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.NaliaBanters","GLOBAL",1)~ THEN BNALIA NaliaBanter#2
    @174
    DO ~SetGlobal("G#TF.NaliaBanters","GLOBAL",2)~
    == BG#TYRIS @175 
    == BNALIA @176
    == BG#TYRIS @177
    = @178
    == BNALIA @179
    == BG#TYRIS @180
    = @181
    == BNALIA @182
    == BG#TYRIS @183
    == BNALIA @184
    == BG#TYRIS @185
    == BNALIA @186
  EXIT

  // Valygar Banters

  CHAIN IF ~InParty("Valygar")
            See("Valygar")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Valygar",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ValygarBanters","GLOBAL",0)~ THEN BG#TYRIS ValygarBanter#1
    @187 
    DO ~SetGlobal("G#TF.ValygarBanters","GLOBAL",1)~
    == BVALYGA @188
    == BG#TYRIS @189
    == BVALYGA @190
    == BG#TYRIS @191
    = @192
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Valygar",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ValygarBanters","GLOBAL",1)~ THEN BVALYGA ValygarBanter#2
    @193
    DO ~SetGlobal("G#TF.ValygarBanters","GLOBAL",2)~
    == BG#TYRIS @194 
    = @195
    == BVALYGA @196
    == BG#TYRIS @197
    == BVALYGA @198
  EXIT

  // Viconia Banters
  
  CHAIN IF ~InParty("Viconia")
            See("Viconia")
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            !StateCheck("Viconia",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ViconiaBanters","GLOBAL",0)~ THEN BG#TYRIS ViconiaBanter#1
    @199 
    DO ~SetGlobal("G#TF.ViconiaBanters","GLOBAL",1)~
    == BVICONI @200
    == BG#TYRIS @201
    == BVICONI @202
    == BG#TYRIS @203
    == BVICONI @204
  EXIT

  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Viconia",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.ViconiaBanters","GLOBAL",1)~ THEN BVICONI ViconiaBanter#2
    @205
    DO ~SetGlobal("G#TF.ViconiaBanters","GLOBAL",2)~
    == BG#TYRIS @206 
    == BVICONI @207
    == BG#TYRIS @208
    == BVICONI @209
    = @210
    == BG#TYRIS @211
    = @212
    == BVICONI @213
  EXIT

  // Yoshimo Banters
  
  CHAIN IF ~InParty("G#Tyris")
            See("G#Tyris")
            !StateCheck("Yoshimo",CD_STATE_NOTVALID)
            !StateCheck("G#Tyris",CD_STATE_NOTVALID)
            CombatCounter(0)
            Global("G#TF.YoshimoBanters","GLOBAL",0)~ THEN BYOSHIM YoshimoBanter#1
    @214
    DO ~SetGlobal("G#TF.YoshimoBanters","GLOBAL",1)~
    == BG#TYRIS @215 
    == BYOSHIM @216
    == BG#TYRIS @217
  EXIT

  CHAIN IF ~InParty("Yoshimo")
         See("Yoshimo")
         !StateCheck("G#Tyris",CD_STATE_NOTVALID)
         !StateCheck("Yoshimo",CD_STATE_NOTVALID)
         CombatCounter(0)
         Global("G#TF.YoshimoBanters","GLOBAL",1)~ THEN BG#TYRIS YoshimoBanter#2
    @218 
    DO ~SetGlobal("G#TF.YoshimoBanters","GLOBAL",2)~
    == BYOSHIM @219
    == BG#TYRIS @220
    == BYOSHIM @221
  EXIT
