#Adding a title variable
full$Title = gsub('(.*, )|(\\..*)', '', full$Name)

table(full$Sex, full$Title)

rare_title = c('Dona', 'Lady', 'the Countess','Capt', 'Col', 'Don',
                'Dr', 'Major', 'Rev', 'Sir', 'Jonkheer')

full$Title[full$Title == 'Mlle'] = 'Miss'
full$Title[full$Title == 'Ms'] = 'Miss'
full$Title[full$Title == 'Mme'] = 'Mrs'
full$Title[full$Title %in% rare_title] = 'Rare Title'
