#Adding a title variable
full$Title = gsub('(.*, )|(\\..*)', '', full$Name)

table(full$Sex, full$Title)

rare_title = c('Dona', 'Lady', 'the Countess','Capt', 'Col', 'Don',
                'Dr', 'Major', 'Rev', 'Sir', 'Jonkheer')

full$Title[full$Title == 'Mlle'] = 'Miss'
full$Title[full$Title == 'Ms'] = 'Miss'
full$Title[full$Title == 'Mme'] = 'Mrs'
full$Title[full$Title %in% rare_title] = 'Rare Title'

full$Fsize = full$SibSp + full$Parch + 1
full$Surname <- sapply(full$Name, function(x) strsplit(x, split = '[,.]')[[1]][1])
full$Family = paste(full$Surname, full$Fsize, sep='_')

ggplot(full[1:891,], aes(x = Fsize, fill = factor(Survived))) +
    geom_bar(stat='count', position='dodge') +
    scale_x_continuous(breaks=c(1:11)) +
    scale_fill_discrete(labels=c('No','Yes')) +
    labs(x = 'Family Size', y='Persons', fill="Survived") +
    theme_bw()

full$FsizeD[full$Fsize == 1] = 'singleton'
full$FsizeD[full$Fsize < 5 & full$Fsize > 1] = 'small'
full$FsizeD[full$Fsize > 4] = 'large'

ggplot(full[1:891,], aes(x = FsizeD, fill = factor(Survived))) +
    geom_bar(stat='count', position='dodge') +
    scale_fill_discrete(labels=c('No','Yes')) +
    labs(x = 'Family Size', y='Persons', fill="Survived") +
    theme_bw()
