#NFL draft data cleaning
library(tidyverse)
library(readxl)

draft = read_excel('1993-2022draftStats.xlsx', col_names = TRUE)
draft

#Cleaning of data
#-Fixing NA values
colnames(draft)
which(is.na(draft$Draft))#none
which(is.na(draft$Rnd))#none
which(is.na(draft$Pick))#none
which(is.na(draft$Tm))#none
which(is.na(draft$Player))#none
which(is.na(draft$Pos))#none
which(is.na(draft$Age))#not as important so we can leave as NA
draft %>%
  filter(is.na(draft$Age))

which(is.na(draft$To))#not as important so we can leave as NA
draft %>%
  filter(is.na(draft$To))

which(is.na(draft$AP1))#none
which(is.na(draft$PB))#none
which(is.na(draft$St))#none
which(is.na(draft$wAV))#important need to change
draft %>%
  filter(is.na(draft$wAV))
#After looking at the data it seems like a majority of the reason wAV is NA is
#because the player did not play any games or they got cut etc. So I am going
#to set every NA value to 0
draft$wAV[is.na(draft$wAV)] = 0
which(is.na(draft$wAV))#data is fixed to none

which(is.na(draft$DrAV))#important need to change
draft %>%
  filter(is.na(draft$DrAV))
#After looking at the data it seems that like a majority of the reason DrAV is NA
#is because the player did not play any games or they got cut or they were traded
#before playing for the drafted team. So I am going to change all values to 0
draft$DrAV[is.na(draft$DrAV)] = 0
which(is.na(draft$DrAV))#data is fixed to none

which(is.na(draft$G))#needs change
draft %>%
  filter(is.na(draft$G))
#A majority of the people that have NA for games never played in any, so I
#am changing all NA's to 0
draft$G[is.na(draft$G)] = 0
which(is.na(draft$G))#data is fixed to none

which(is.na(draft$Cmp))#same thing as above
draft$Cmp[is.na(draft$Cmp)] = 0
which(is.na(draft$Cmp))

which(is.na(draft$PassAtt))#same thing as above
draft$PassAtt[is.na(draft$PassAtt)] = 0
which(is.na(draft$PassAtt))

which(is.na(draft$PassYds))#same thing as above
draft$PassYds[is.na(draft$PassYds)] = 0
which(is.na(draft$PassYds))

which(is.na(draft$PassTD))#same thing as above
draft$PassTD[is.na(draft$PassTD)] = 0
which(is.na(draft$PassTD))

which(is.na(draft$`Int(O)`))#same thing as above
draft$`Int(O)`[is.na(draft$`Int(O)`)] = 0
which(is.na(draft$`Int(O)`))

which(is.na(draft$RushAtt))#same thing as above
draft$RushAtt[is.na(draft$RushAtt)] = 0
which(is.na(draft$RushAtt))

which(is.na(draft$RushYds))#same thing as above
draft$RushYds[is.na(draft$RushYds)] = 0
which(is.na(draft$RushYds))

which(is.na(draft$RushTD))#same thing as above
draft$RushTD[is.na(draft$RushTD)] = 0
which(is.na(draft$RushTD))

which(is.na(draft$Rec))#same thing as above
draft$Rec[is.na(draft$Rec)] = 0
which(is.na(draft$Rec))

which(is.na(draft$RecYds))#same thing as above
draft$RecYds[is.na(draft$RecYds)] = 0
which(is.na(draft$RecYds))

which(is.na(draft$RecTD))#same thing as above
draft$RecTD[is.na(draft$RecTD)] = 0
which(is.na(draft$RecTD))

which(is.na(draft$Solo))#same thing as above
draft$Solo[is.na(draft$Solo)] = 0
which(is.na(draft$Solo))

which(is.na(draft$`Int(D)`))#same thing as above
draft$`Int(D)`[is.na(draft$`Int(D)`)] = 0
which(is.na(draft$`Int(D)`))

which(is.na(draft$Sk))#same thing as above
draft$Sk[is.na(draft$Sk)] = 0
which(is.na(draft$Sk))

which(is.na(draft$`College/Univ`))#can't just fix these with a number because
#everyone has a unique college. So I will look at each player and see if there is 
#a reason they don't have a college
draft$Player[c(3051, 3145, 3149, 3170, 3229, 3231, 3249, 3261, 3516, 3555, 4259, 4818, 6046, 6843, 7097, 7296)]
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

draft %>%
  filter(draft$wAV < 0)

#Now working on solving questions for the project. Most of the background work
#will be done in here and then the clean presentable code will be added to the
#RMD

#Question: How valuable is each pick in the NFL draft?
draftPick = draft %>%
  filter(Draft < 2011)

ggplot(draftPick, aes(Pick, wAV)) +
  geom_point()
reg = lm(draft$wAV~draft$Pick)
jtools :: summ(reg)
anova(reg)


#Which teams have had the most successful draft picks?
teamDraftSuccess = draft %>%
  group_by(Tm) %>%
  summarise(averagewAV = mean(wAV))

#Certain Franchises have changed over the years so I have those changes listed
#below and now I have to change everyone of these to be set to their prior team
#PHO == ARI
#SDG == LAC
#STL == LAR == RAM
#OAK == RAI == LVR
this = draft %>%
  mutate(Fran = Tm)

this = this %>%
  mutate(Fran = replace(Fran, Fran == "PHO", "ARI")) %>%
  mutate(Fran = replace(Fran, Fran == "SDG", "LAC")) %>%
  mutate(Fran = replace(Fran, Fran == "STL", "LAR")) %>%
  mutate(Fran = replace(Fran, Fran == "RAM", "LAR")) %>%
  mutate(Fran = replace(Fran, Fran == "OAK", "LVR")) %>%
  mutate(Fran = replace(Fran, Fran == "RAI", "LVR"))

this %>%
  filter(Fran == "PHO")



