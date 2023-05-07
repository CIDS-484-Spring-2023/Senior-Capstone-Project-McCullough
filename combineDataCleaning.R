#College Player Analysis
library(tidyverse)
library(readxl)
library(dplyr)

draft = read_excel('1993-2022draftStats.xlsx', col_names = TRUE)
draft

draft$wAV[is.na(draft$wAV)] = 0
draft$DrAV[is.na(draft$DrAV)] = 0
draft$G[is.na(draft$G)] = 0
draft$Cmp[is.na(draft$Cmp)] = 0
draft$PassAtt[is.na(draft$PassAtt)] = 0
draft$PassYds[is.na(draft$PassYds)] = 0
draft$PassTD[is.na(draft$PassTD)] = 0
draft$`Int(O)`[is.na(draft$`Int(O)`)] = 0
draft$RushAtt[is.na(draft$RushAtt)] = 0
draft$RushYds[is.na(draft$RushYds)] = 0
draft$RushTD[is.na(draft$RushTD)] = 0
draft$Rec[is.na(draft$Rec)] = 0
draft$RecYds[is.na(draft$RecYds)] = 0
draft$RecTD[is.na(draft$RecTD)] = 0
draft$Solo[is.na(draft$Solo)] = 0
draft$`Int(D)`[is.na(draft$`Int(D)`)] = 0
draft$Sk[is.na(draft$Sk)] = 0
draft$`College/Univ`[3051] = "Bethel (TN)"
draft$`College/Univ`[3145] = "Lousiana-Lafayette"
draft$`College/Univ`[3149] = "Regina"
draft$`College/Univ`[3170] = "Lousiana-Lafayette"
draft$`College/Univ`[3229] = "California Polytechnic State"
draft$`College/Univ`[3231] = "Missouri Western State"
draft$`College/Univ`[3249] = "Georgia State"
draft$`College/Univ`[3261] = "Alabama-Birmingham"
draft$`College/Univ`[3516] = "Colorado State-Pueblo"
draft$`College/Univ`[3555] = "Northeastern State"
draft$`College/Univ`[4259] = "No college"
draft$`College/Univ`[4818] = "No college"
draft$`College/Univ`[6046] = "Eastern Michigan"
draft$`College/Univ`[6843] = "Trinity International"
draft$`College/Univ`[7097] = "Trinity International"
draft$`College/Univ`[7296] = "Clark Atlanta"

combine = read_excel('1993-2022combineData.xlsx', col_names = TRUE)
combine

colnames(combine)[1] <- "Draft"
colnames(combine)[2] <- "Player"
colnames(combine)[4] <- "Pos"
combine = combine %>%
  drop_na(Player)
combine

combinePast = combine %>%
  filter(Draft < 2023) 

combinePresent = combine %>%
  filter(Draft > 2022)

combinePast = combinePast[,-3]
combinePast = combinePast[,-3]

draftCombine = merge(x = draft, y = combinePast, by = c("Player", "Draft"), all.x = TRUE)
draftCombine = as_tibble(draftCombine)

collegeQB = read_excel('1990-2022collegeProductionQB.xlsx', col_names = TRUE)
collegeQB
collegeQB = collegeQB[,-1]
collegeQB = collegeQB[,-1]
collegeQB = collegeQB[,-1]

draftCombineQB = draftCombine %>%
  filter(Pos == "QB") %>%
  filter(Draft < 2011)

draftCombineQB$`Height (in)`[1] = 75.1
draftCombineQB$`Weight (lbs)`[1] = 217
draftCombineQB$`40 Yard`[1] = 5.13
draftCombineQB$`Vert Leap (in)`[1] = 26
draftCombineQB$Shuttle[1] = 4.16
draftCombineQB$`Height (in)`[9] = 76
draftCombineQB$`Weight (lbs)`[9] = 229
draftCombineQB$`40 Yard`[9] = 4.85
draftCombineQB$`Vert Leap (in)`[9] = 27.5
draftCombineQB$`Broad Jump (in)`[9] = 109
draftCombineQB$Shuttle[9] = 4.33
draftCombineQB$`3Cone`[9] = 7.28
draftCombineQB$`Height (in)`[11] = 73.6
draftCombineQB$`Weight (lbs)`[11] = 218
draftCombineQB$`Height (in)`[12] = 72.33
draftCombineQB$`Weight (lbs)`[12] = 210
draftCombineQB$`Hand Size (in)`[12] = 9.5
draftCombineQB$`Arm Length (in)`[12] = 30.5
draftCombineQB$`Height (in)`[21] = 75
draftCombineQB$`Weight (lbs)`[21] = 214
draftCombineQB$`Height (in)`[25] = 73
draftCombineQB$`Weight (lbs)`[25] = 203
draftCombineQB$`Hand Size (in)`[25] = 10.375
draftCombineQB$`Arm Length (in)`[25] = 31.625
draftCombineQB$`40 Yard`[25] = 4.87
draftCombineQB$`Vert Leap (in)`[25] = 31
draftCombineQB$`Broad Jump (in)`[25] = 105
draftCombineQB$Shuttle[25] = 4.26
draftCombineQB$`3Cone`[25] = 7.31
draftCombineQB$`Height (in)`[30] = 76
draftCombineQB$`Weight (lbs)`[30] = 225
draftCombineQB$`Height (in)`[40] = 76.2
draftCombineQB$`Weight (lbs)`[40] = 226
draftCombineQB$`Height (in)`[46] = 74.2
draftCombineQB$`Weight (lbs)`[46] = 237
draftCombineQB$`Height (in)`[47] = 77
draftCombineQB$`Weight (lbs)`[47] = 220
draftCombineQB$`Height (in)`[66] = 76
draftCombineQB$`Weight (lbs)`[66] = 230
draftCombineQB$`Height (in)`[72] = 78
draftCombineQB$`Weight (lbs)`[72] = 240
draftCombineQB$`Height (in)`[91] = 72.6
draftCombineQB$`Weight (lbs)`[91] = 206
draftCombineQB$`Height (in)`[99] = 75.3
draftCombineQB$`Weight (lbs)`[99] = 207
draftCombineQB$`40 Yard`[99] = 4.68
draftCombineQB$`Vert Leap (in)`[99] = 32.5
draftCombineQB$`Broad Jump (in)`[99] = 120
draftCombineQB$Shuttle[99] = 4.31
draftCombineQB$`3Cone`[99] = 7.1
draftCombineQB$`Height (in)`[123] = 76.5
draftCombineQB$`Weight (lbs)`[123] = 208
draftCombineQB$`40 Yard`[123] = 4.7
draftCombineQB$`Hand Size (in)`[123] = 9.75
draftCombineQB$`Arm Length (in)`[123] = 31.5
draftCombineQB$`Height (in)`[141] = 76.3
draftCombineQB$`Weight (lbs)`[141] = 222
draftCombineQB$`40 Yard`[141] = 4.88
draftCombineQB$`Vert Leap (in)`[141] = 34
draftCombineQB$`Broad Jump (in)`[141] = 115
draftCombineQB$Shuttle[141] = 4.06
draftCombineQB$`3Cone`[141] = 7.2
draftCombineQB$`Height (in)`[145] = 73.5
draftCombineQB$`Weight (lbs)`[145] = 228
draftCombineQB$`40 Yard`[145] = 4.79
draftCombineQB$`Hand Size (in)`[145] = 8.75
draftCombineQB$`Arm Length (in)`[145] = 31.125
draftCombineQB$`Height (in)`[182] = 74.5
draftCombineQB$`Weight (lbs)`[182] = 241
draftCombineQB$`Height (in)`[184] = 75
draftCombineQB$`Weight (lbs)`[184] = 218
draftCombineQB$`Height (in)`[186] = 72.13
draftCombineQB$`Weight (lbs)`[186] = 208
draftCombineQB$`Hand Size (in)`[186] = 9.25
draftCombineQB$`Arm Length (in)`[186] = 30.5
draftCombineQB$`40 Yard`[186] = 4.61
draftCombineQB$`Vert Leap (in)`[186] = 31
draftCombineQB$Shuttle[186] = 4.09
draftCombineQB$`3Cone`[186] = 7.03
draftCombineQB$Wonderlic[186] = 35
draftCombineQB$`Height (in)`[190] = 73.6
draftCombineQB$`Weight (lbs)`[190] = 224
draftCombineQB$`Hand Size (in)`[190] = 10.5
draftCombineQB$`Arm Length (in)`[190] = 32.25
draftCombineQB$`Height (in)`[209] = 72
draftCombineQB$`Weight (lbs)`[209] = 225
draftCombineQB$`40 Yard`[209] = 4.72
draftCombineQB$`Vert Leap (in)`[209] = 36.5
draftCombineQB$Shuttle[209] = 4.23
draftCombineQB$`3Cone`[209] = 6.93

draftCombineQB$`40 Yard` = as.double(draftCombineQB$`40 Yard`)

draftCombineQB$Player <- toupper(draftCombineQB$Player)
collegeQB$Player <- toupper(collegeQB$Player)

bigChartQB = merge(x = draftCombineQB, y = collegeQB, by = c("Player"), all.x = TRUE)
bigChartQB = as_tibble(bigChartQB)

bigChartQB$Player[is.na(bigChartQB$Conf)]


bigChartQB$Conf[6] = "ACC"
bigChartQB$CollegeG[6] = 9
bigChartQB$CollegeCmp[6] = 80
bigChartQB$CollegeAtt[6] = 155
bigChartQB$CollegePct[6] = 51.6
bigChartQB$CollegeYds[6] = 1017
bigChartQB$`CollegeY/A`[6] = 6.6
bigChartQB$`CollegeAY/A`[6] = 7.8
bigChartQB$CollegeTD[6] = 12
bigChartQB$CollegeInt[6] = 1
bigChartQB$CollegeRate[6] = 131
bigChartQB$CollegeRAtt[6] = 48
bigChartQB$CollegeRYds[6] = 180
bigChartQB$CollegeRAvg[6] = 3.8
bigChartQB$CollegeRTD[6] = 0
bigChartQB$Conf[24] = "A10"
bigChartQB$CollegePct[24] = 62
bigChartQB$CollegeYds[24] = 2764
bigChartQB$CollegeTD[24] = 25
bigChartQB$CollegeRYds[24] = 710
bigChartQB$CollegeRTD[24] = 8
bigChartQB$Conf[95] = "FCS"
bigChartQB$CollegeG[95] = 15
bigChartQB$CollegeCmp[95] = 200
bigChartQB$CollegeAtt[95] = 332
bigChartQB$CollegePct[95] = 60.2
bigChartQB$CollegeYds[95] = 2937
bigChartQB$CollegeTD[95] = 25
bigChartQB$CollegeRTD[95] = 5
bigChartQB$Conf[120] = "FCS"
bigChartQB$Conf[175] = "Big Ten"
bigChartQB$CollegeG[175] = 8
bigChartQB$CollegeCmp[175] = 131
bigChartQB$CollegeAtt[175] = 217
bigChartQB$CollegePct[175] = 60.4
bigChartQB$CollegeYds[175] = 1852
bigChartQB$`CollegeY/A`[175] = 8.5
bigChartQB$`CollegeAY/A`[175] = 9.2
bigChartQB$CollegeTD[175] = 16
bigChartQB$CollegeInt[175] = 4
bigChartQB$CollegeRate[175] = 152.7
bigChartQB$CollegeRAtt[175] = 27
bigChartQB$CollegeRYds[175] = 30
bigChartQB$CollegeRAvg[175] = 1.1
bigChartQB$CollegeRTD[175] = 2
bigChartQB$Conf[169] = "FCS"
bigChartQB$CollegeCmp[169] = 185
bigChartQB$CollegeAtt[169] = 304
bigChartQB$CollegePct[169] = 60.9
bigChartQB$CollegeYds[169] = 2960
bigChartQB$CollegeTD[169] = 33
bigChartQB$Conf[194] = "FCS"
bigChartQB$Conf[204] = "FCS"
bigChartQB$CollegeG[204] = 14
bigChartQB$CollegeCmp[204] = 212
bigChartQB$CollegeAtt[204] = 349
bigChartQB$CollegePct[204] = 60.7
bigChartQB$CollegeYds[204] = 2959
bigChartQB$CollegeTD[204] = 20
bigChartQB$CollegeInt[204] = 13
bigChartQB$CollegeRAtt[204] = 77
bigChartQB$CollegeRYds[204] = 232
bigChartQB$CollegeRAvg[204] = 3
bigChartQB$CollegeRTD[204] = 5
bigChartQB$Conf[208] = "FCS"
bigChartQB$CollegeCmp[208] = 255
bigChartQB$CollegeAtt[208] = 406
bigChartQB$CollegeG[208] = 16
bigChartQB$CollegeYds[208] = 3836
bigChartQB$CollegeTD[208] = 32
bigChartQB$Conf[209] = "FCS"
bigChartQB$Conf[228] = "FCS"
bigChartQB$Conf[232] = "FCS"
bigChartQB$Conf[239] = "SEC"
bigChartQB$Conf[250] = "FCS"
bigChartQB$CollegeG[250] = 11
bigChartQB$CollegeCmp[250] = 331
bigChartQB$CollegeAtt[250] = 521
bigChartQB$CollegeYds[250] = 4263
bigChartQB$CollegeTD[250] = 23
bigChartQB$CollegeInt[250] = 5
bigChartQB$CollegeRAtt[250] = 64
bigChartQB$CollegeRYds[250] = 22
bigChartQB$CollegeRTD[250] = 4
bigChartQB$Conf[269] = "FCS"
bigChartQB$CollegeG[269] = 11
bigChartQB$CollegeCmp[269] = 284
bigChartQB$CollegeAtt[269] = 441
bigChartQB$CollegePct[269] = 64.4
bigChartQB$CollegeYds[269] = 3713
bigChartQB$CollegeTD[269] = 26
bigChartQB$CollegeInt[269] = 10
bigChartQB$CollegeRate[269] = 150.05
bigChartQB$CollegeRAtt[269] = 86
bigChartQB$CollegeRYds[269] = 346
bigChartQB$CollegeRTD[269] = 5
bigChartQB$Conf[272] = "FCS"
bigChartQB$Conf[274] = "FCS"
bigChartQB$CollegeCmp[274] = 167
bigChartQB$CollegeAtt[274] = 293
bigChartQB$CollegeYds[274] = 2209
bigChartQB$CollegeTD[274] = 16
bigChartQB$CollegeInt[274] = 10
bigChartQB$Conf[288] = "FCS"
bigChartQB$CollegeCmp[288] = 206
bigChartQB$CollegeAtt[288] = 301
bigChartQB$CollegePct[288] = 68.4
bigChartQB$CollegeYds[288] = 2988
bigChartQB$CollegeTD[288] = 43
bigChartQB$CollegeInt[288] = 1
bigChartQB$CollegeRate[288] = 198.3
bigChartQB$CollegeRAtt[288] = 101
bigChartQB$CollegeRYds[288] = 726
bigChartQB$CollegeRAvg[288] = 10.1
bigChartQB$CollegeRTD[288] = 2
bigChartQB$Conf[291] = "FCS"
bigChartQB$CollegeYds[291] = 5097
bigChartQB$CollegeTD[291] = 48
bigChartQB$CollegeInt[291] = 15
bigChartQB$Conf[299] = "FCS"
bigChartQB$Conf[324] = "Pac-10"
bigChartQB$CollegeG[324] = 12
bigChartQB$CollegeCmp[324] = 105
bigChartQB$CollegeAtt[324] = 171
bigChartQB$CollegePct[324] = 61.4
bigChartQB$CollegeYds[324] = 1231
bigChartQB$`CollegeY/A`[324] = 7.2
bigChartQB$`CollegeAY/A`[324] = 7.7
bigChartQB$CollegeTD[324] = 11
bigChartQB$CollegeInt[324] = 3
bigChartQB$CollegeRate[324] = 139.6
bigChartQB$CollegeRAtt[324] = 42
bigChartQB$CollegeRYds[324] = -28
bigChartQB$CollegeRAvg[324] = -.7
bigChartQB$CollegeRTD[324] = 0
bigChartQB$Conf[337] = "Pac-10"
bigChartQB$CollegeG[337] = 9
bigChartQB$CollegeCmp[337] = 10
bigChartQB$CollegeAtt[337] = 14
bigChartQB$CollegePct[337] = 71.4
bigChartQB$CollegeYds[337] = 97
bigChartQB$`CollegeY/A`[337] = 5.8
bigChartQB$`CollegeAY/A`[337] = 3.7
bigChartQB$CollegeTD[337] = 0
bigChartQB$CollegeInt[337] = 1
bigChartQB$CollegeRate[337] = 115.3
bigChartQB$CollegeRAtt[337] = 6
bigChartQB$CollegeRYds[337] = 11
bigChartQB$CollegeRAvg[337] = 11
bigChartQB$CollegeRTD[337] = 0
bigChartQB$Conf[357] = "FCS"
bigChartQB$Conf[358] = "FCS"
bigChartQB$Conf[381] = "FCS"
bigChartQB$CollegeCmp[381] = 248
bigChartQB$CollegeAtt[381] = 407
bigChartQB$CollegePct[381] = 60
bigChartQB$CollegeYds[381] = 3757
bigChartQB$Conf[391] = "Pac-10"
bigChartQB$CollegeG[391] = 8
bigChartQB$CollegeCmp[391] = 86
bigChartQB$CollegeAtt[391] = 167
bigChartQB$CollegePct[391] = 51.5
bigChartQB$CollegeYds[391] = 1479
bigChartQB$`CollegeY/A`[391] = 8.9
bigChartQB$`CollegeAY/A`[391] = 9.3
bigChartQB$CollegeTD[391] = 13
bigChartQB$CollegeInt[391] = 4
bigChartQB$CollegeRate[391] = 146.8
bigChartQB$CollegeRAtt[391] = 59
bigChartQB$CollegeRYds[391] = 174
bigChartQB$CollegeRAvg[391] = 2.9
bigChartQB$CollegeRTD[391] = 1
bigChartQB$Conf[406] = "Ind"
bigChartQB$CollegeG[406] = 11
bigChartQB$CollegeCmp[406] = 55
bigChartQB$CollegeAtt[406] = 87
bigChartQB$CollegePct[406] = 63.2
bigChartQB$CollegeYds[406] = 954
bigChartQB$`CollegeY/A`[406] = 7.9
bigChartQB$`CollegeAY/A`[406] = 7.2
bigChartQB$CollegeTD[406] = 5
bigChartQB$CollegeInt[406] = 0
bigChartQB$CollegeRate[406] = 174.3
bigChartQB$CollegeRAtt[406] = 99
bigChartQB$CollegeRYds[406] = 534
bigChartQB$CollegeRAvg[406] = 5.4
bigChartQB$CollegeRTD[406] = 4
bigChartQB$Conf[410] = "FCS"
bigChartQB$CollegeG[410] = 10
bigChartQB$CollegeYds[410] = 1986
bigChartQB$CollegeTD[410] = 13
bigChartQB$CollegeInt[410] = 6
bigChartQB$CollegeRYds[410] = 448
bigChartQB$CollegeRTD[410] = 5
bigChartQB$Conf[422] = "FCS"
bigChartQB$CollegeG[422] = 12
bigChartQB$CollegeCmp[422] = 112
bigChartQB$CollegeAtt[422] = 211
bigChartQB$CollegePct[422] = 53.1
bigChartQB$CollegeYds[422] = 1610
bigChartQB$CollegeTD[422] = 13
bigChartQB$CollegeInt[422] = 5
bigChartQB$CollegeRAtt[422] = 132
bigChartQB$CollegeRYds[422] = 367
bigChartQB$CollegeRAvg[422] = 2.8
bigChartQB$CollegeRTD[422] = 11
bigChartQB$Conf[430] = "Sun Belt"
bigChartQB$CollegeCmp[430] = 161
bigChartQB$CollegeAtt[430] = 322
bigChartQB$CollegePct[430] = 50
bigChartQB$CollegeYds[430] = 1646
bigChartQB$CollegeTD[430] = 14
bigChartQB$CollegeInt[430] = 13
bigChartQB$CollegeRAtt[430] = 94
bigChartQB$CollegeRYds[430] = -49
bigChartQB$CollegeRAvg[430] = -.5
bigChartQB$CollegeRTD[430] = 3
bigChartQB$Conf[440] = "FCS"
bigChartQB$CollegeG[440] = 11
bigChartQB$CollegeCmp[440] = 356
bigChartQB$CollegeAtt[440] = 612
bigChartQB$CollegePct[440] = 58.2
bigChartQB$CollegeYds[440] = 5377
bigChartQB$CollegeTD[440] = 47
bigChartQB$CollegeRate[440] = 102.5
bigChartQB$CollegeRAtt[440] = 128
bigChartQB$CollegeRYds[440] = 904
bigChartQB$Conf[448] = "FCS"
bigChartQB$CollegeCmp[448] = 181
bigChartQB$CollegeAtt[448] = 296
bigChartQB$CollegePct[448] = 61.1
bigChartQB$CollegeYds[448] = 2655
bigChartQB$CollegeTD[448] = 25
bigChartQB$`CollegeY/A`[448] = 9
bigChartQB$CollegeInt[448] = 5
bigChartQB$CollegeRAtt[448] = 95
bigChartQB$CollegeRYds[448] = 271
bigChartQB$CollegeRAvg[448] = 2.9
bigChartQB$CollegeRTD[448] = 3
bigChartQB$Conf[470] = "FCS"
bigChartQB$Conf[482] = "Sun Belt"
bigChartQB$CollegeCmp[482] = 217
bigChartQB$CollegeAtt[482] = 339
bigChartQB$CollegeYds[482] = 3296
bigChartQB$CollegeTD[482] = 29
bigChartQB$CollegeInt[482] = 11
bigChartQB$CollegeRAtt[482] = 113
bigChartQB$CollegeRYds[482] = 656
bigChartQB$CollegeRAvg[482] = 5.8
bigChartQB$CollegeRTD[482] = 4
bigChartQB$Conf[487] = "FCS"

bigChartQB = bigChartQB %>%
  mutate(Conf = replace(Conf, Conf == "Big 8", "Big 12"))

bigChartQB = bigChartQB %>%
  mutate(level = replace(Conf, Conf == "Ind", "Group")) %>%
  mutate(level = replace(level, Conf == "CUSA", "Group")) %>%
  mutate(level = replace(level, Conf == "MAC", "Group")) %>%
  mutate(level = replace(level, Conf == "MWC", "Group")) %>%
  mutate(level = replace(level, Conf == "SWC", "Group")) %>%
  mutate(level = replace(level, Conf == "FCS", "FCS")) %>%
  mutate(level = replace(level, Conf == "WAC", "FCS")) %>%
  mutate(level = replace(level, Conf == "Big West", "FCS")) %>%
  mutate(level = replace(level, Conf == "A10", "FCS")) %>%
  mutate(level = replace(level, Conf == "Sun Belt", "Group")) %>%
  mutate(level = replace(level, `College/Univ` == "Notre Dame", "Power")) %>%
  mutate(level = replace(level, Conf == "Big 12", "Power")) %>%
  mutate(level = replace(level, Conf == "Big Ten", "Power")) %>%
  mutate(level = replace(level, Conf == "SEC", "Power")) %>%
  mutate(level = replace(level, Conf == "ACC", "Power")) %>%
  mutate(level = replace(level, Conf == "Pac-10", "Power")) %>%
  mutate(level = replace(level, Conf == "Big East", "Power"))


bigChartQB %>%
  pivot_wider()


















