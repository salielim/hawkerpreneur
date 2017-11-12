# Hawkerpreneur App
 
Community Posts (/microposts)

* Create posts about favourite hawker personalities, stalls, dishes and more.
* Upload pictures of food, new menu items, hawker chefs and more
* Tag the hawker centre
 
Hawker Centres (/hawkers)

* View hawker centres location in the map
* Click on pin on the map to be directed to posts tagged with the hawker centre’s name
* Similarly, click on the hawker centre’s name to be directed to related posts
 
Community Members (/users)

* Network and meet other Hawkerpreneurs and hawker enthusiasts
* View posts of each member
 
Info & News (/info)

* One-stop info for Hawkerpreneurs
 
## APIs Used
* Facebook API for authentication
* Filestack API for image upload
* Data.gov.sg API for list of government hawker centres
* GoogleMaps API for location of hawker centres
 
## Deployed on Cloud
* Implemented Secure Sockets Layer (SSL)
* Deployed with Heroku
* Images uploaded to Filestack internally managed Amazon S3 bucket
 
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