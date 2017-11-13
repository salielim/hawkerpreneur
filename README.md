# Hawkerpreneur App
Problem Statement: The hawker culture in Singapore is one that is unique to our culture, but yet is slowly dying out unfortunately. The reasons for not taking up the hawker mantle are aplenty.

Objective: You are a startup interested to not only sustain the hawker culture but to raise the profile of hawkers, using technology to create new values to budding hawkers and make "hawker-ing" cool again.

## Stack
* Backend: Ruby on Rails
* Frontend: jQuery, HTML, SCSS
* Database: PostgreSQL

## Database Models
![Hawkerpreneur DB](https://i.imgur.com/zbaxFT8.png)
[View database diagram](https://repository.genmymodel.com/salielim/hawkerpreneur)
 
## APIs Used
* Facebook API for authentication
* Filestack API for image upload
* Data.gov.sg API for list of government hawker centres
* GoogleMaps API for location of hawker centres
 
## Deployed on Cloud
* Implemented Secure Sockets Layer (SSL)
* Deployed with Heroku
* Images uploaded to Filestack internally managed Amazon S3 bucket

## Routes
Community Posts (/microposts)

* Protected - only viewable if user is logged in
* Create posts about favourite hawker personalities, stalls, dishes and more.
* Upload pictures of food, new menu items, hawker chefs and more
* Tag the hawker centre
 
Community Members (/users)

* Protected - only viewable if user is logged in
* Network and meet other Hawkerpreneurs and hawker enthusiasts
* View posts of each member
 
Hawker Centres (/hawkers)

* View hawker centres location in the map
* Click on pin on the map to be directed to posts tagged with the hawker centre’s name
* Similarly, click on the hawker centre’s name to be directed to related posts

Info & News (/info)

* One-stop info for Hawkerpreneurs
 
## Getting started
 
**Note: Facebook API Key is needed for social authentication. This is provided in the deployed app but not in production.**
 
To get started with the app, clone the repo and then install the needed gems:
 
```
$ bundle install --without production
```
 
Next, migrate the database:
 
```
$ rails db:migrate
```
 
Run the app in a local server:
 
```
$ rails server
```