# Project Title
Ruby On Rails API for iTina Project 4

## Project description
iTina is a quick itinerary planner that works with people with limited time and specific budgets; providing suggestions for places of interest and things to do

### Setup
The backend is setup with Ruby On Rails.

After cloning this repo, do peform the following

* run this line in Terminal to install Gemfile packages:

```
bundle install
```

* initialize DB connection - type the following in Terminal
```
rails db:create
```
and
```
rails db:migrate
```
* test that setup by running this line in Terminal:

```
rails s
```

Open up a new browser window and go to **localhost:<u>3001</u>**.  
If a welcome screen renders, then this installation is successful  
and coding can begin; basic POST and GET by POSTMAN should work

###Deployment to Heroku
1) Front-End framework was compiled into a "Build Folder" by running the following at the Terminal (in Front-End folder):
```
yarn build
```
2) Copy this generated Folder into the "Public" folder of the Rails project
3) Whilst in Back-End folder, run the following at the Terminal to deploy to Herolu:
```
heroku create
```
this will initialize Heroku to create a unique app name.
4) To run the seeder file, run the following at the Back-End folder in the Terminal:
```
heroku run rails db:create
```
```
heroku run rails db:migrate
```
```
heroku run rails db:seed
```
5)Proceed to "git add", "git commit", followed by "git push heroku master" where changes are made

###Note:
An error was encountered with Heroku buildpacks during deployment. TO rectify this, the following was done:
1) At Back-End folder in Terminal, run:
```
heroku buildpacks clear
```
followed by
```
heroku buildpacks
```

## Contributors

This project team comprises of the following persons

* **Charles Chia**
* **Rachel Lee**
* **Xavier Bulmer Witterbrown**
* **Sam Tan**
