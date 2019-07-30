# Kaggle-Titanic

## Pupose 
The purpose of this repo is to use Kaggle's guided tutorial to explore the Titanic data set and to teach myself machine learning techniques.

I'll use the data to analyse what sorts of people were likely to survive. In particular, applying the tools of machine learning to predict which passengers survived the tragedy amd seeing how influential each factor is. Hop-efully with the help of the tutorial and maybe a little googling I'll learn skill usable in future data science projects.

---

## Process
### 1 Loading and exploring the data
[script here](scripts/1_LoadingAndExploring.R)

The first step in creating the ML model was to load in and familiarise myself with the data. According the the Kaggle competition the varuiables and their meaning are as foillows:

|Variable Name | Description|
|---|---|
|Survived | Survived (1) or died (0)|
|Pclass | Passenger’s class|
|Name | Passenger’s name|
|Sex | Passenger’s sex|
|Age | Passenger’s age|
|SibSp | Number of siblings/spouses aboard|
|Parch | Number of parents/children aboard|
|Ticket | Ticket number|
|Fare | Fare|
|Cabin | Cabin|
|Embarked | Port of embarkation|

The `name` variable may need some work as it's not especially helpful as is, it also includes title and surname which are very informative peices of information to have. A important thing to note is that the `pclass` variable is the class of the ticket the user had (being first, second or third) this will function as a rough approximation for socio-economic class.

### 2 Feature Engineering
[script here](scripts/2_FeatureEngineering.R)

The next step in the tutorial is "Featuring engineering", being totally new to machine learning I googled what this is and according to wikipedia it is defined as:
> Feature engineering is the process of using domain knowledge of the data to create features that make machine learning algorithms work. Feature engineering is fundamental to the application of machine learning, and is both difficult and expensive.

Clearly feature engineeringa as a skill is something that comes with experience. Given this is my first outing with machine learning I'll simply follow the Kaggle tutorial to the letter and save the experimentation for the next outing. 

The first step is to create a `title` variable using regex to strip the unneeded characters and add it back to the data frame. Comparing the values we get against sex in a table we see a lot of single or low occurence titles. Given this we readjust the feature to lump these rarer titles to a uniform definition. Atr the same time we can also combine titles that are effectively the same, such as `Mlle` which is an abbreviation for Mademoiselle, equivalent to the english `Miss`, etc.

---

## Results
### What I found out
*to be added*

### Skills I learned
*to be added*
