# NDTO: Indie Tournament Organizer

By Jeremy Abernathy

Capstone Project for WDI-13, Atlanta

![img placeholder](./readme_images/pr_cmas_event_crop1.png "Christmas tournament group photo")

###### Above: Annual Christmas draft tournament with Peoples Republic MTG, the inspiration for my project.

## Deployed app & slide deck

Here is the live deployed app, [NDTO on Heroku](https://capstone-jeremy-dev.herokuapp.com/).

And here's the [Google Slides](https://docs.google.com/presentation/d/1_6Lrrtot4tVg8ld-HGBOodjlRWtMiiVuiIUn8fwpi1M/edit?usp=sharing) presentation that I gave on the final day of class.

Link to [grading rubric](https://git.generalassemb.ly/dphurley/wdi-curriculum/tree/master/projects/unit_04).

## Market analysis

Some examples of similar apps already out there:

* [MtG Arena](https://mtgarena.appspot.com/) (Web)  
* [Swiss System](https://play.google.com/store/apps/details?id=de.hintzeit.swiss&hl=en) (Android, native)  
* [Challonge](http://challonge.com/) (Web) 

## Project owner & community stakeholders

* Doug Stine of **Peoples Republic MTG** (private Facebook group with over 300 members)
* Daniel Stabler of [Mana Burn Atlanta](http://www.manaburnatlanta.com/)

## User stories

Link to my planning on [Trello here](https://trello.com/b/hOKelZ9t/planning-capstone-indie-to).  

## ERDs / data models

![data diagram](./readme_images/erd_tues_draft3.png "data diagram")

###### Above: I created custom keys to track scores for Player_A separately from Player_B.

My MVP will require 5 data models: Users, Tournaments, Players, Rounds, and Games (join table).

## External API

![api example](./readme_images/api-example-crop2.png "api example")

###### Above: I wrote a Ruby script to fetch images for a whole 15-card booster pack, including one Rare card shown right.

I was able to implement this fantastic API, [Magic: The Gathering Developers](https://magicthegathering.io/), but only on the back-end with Ruby. I had difficulties porting the same logic to React (with models and components labeled Booster Pack). 

But I will definitely have external APIs implemented in the next version, possibly shifting the focus toward real-world sports such as March Madness. Other APIs considered: [Challonge API](http://api.challonge.com/v1), [Abios gaming](https://docs.abiosgaming.com/reference). 

## Wireframes

![sketch](./readme_images/wireframes_draft1.png "sketch")

###### Above: Early sketches. I will revise these going forward. :-)

Some inspiration for a React Native version, very popular among my target audience:

* [Multi Life Counter](https://play.google.com/store/apps/details?id=com.povazhnyy.lifepoisoncounter&hl=en) (Android, native)

Thanks for grading!

-JA 