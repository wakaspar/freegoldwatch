# FREEGOLDWATCH
This application functions as a new website for my local print shop / pinball arcade, FreeGoldWatch, located in the heart of the Haight-Ashbury neighborhood of San Francisco, California.  The site features a new public-facing homepage with a submittable print form and a series of admininstration dashboards for better managing the day-to-day operations of the shop.  

The admin portion of the site features a Print Order Dashboard, which tracks orders as they make their way through the established workflow of the shop.  It also features a Pinball Dashboard that allows for the addition or removal of pinball machines from the manifest at the shop by talking to the PinballMap.com API up in Portland, Oregon. 

(Shout-out to Scott: https://pinballmap.com/api/v1/docs)


## Installation
This is a standard Rails v.5.0 stack, so you can boot accordingly.

Nothing crazy, just make sure you have all your depenedencies in order.

```
$ bundle install
```
```
$ cd FreeGoldWatch
```
```
$ rails s
```

Open your browser to localhost:3000

## Usage

#### Sample Admin Login:

email
```
will@fgw.com
```
pw
```
fgwfgw
```

## Tech Used

* [RubyOnRails](https://github.com/rails/rails) - My framework
* [Bundler](https://github.com/bundler/bundler) - Dependency management
* [Devise](https://github.com/plataformatec/devise) - Handles authentication

- Materialize - CSS framework
- FA Icons - cool icons
- Devise - auth


## Entity Relationship Diagrams

## Wireframes

## User Stories

User stories can be found in my planning GoogleDoc, [here](https://docs.google.com/document/d/1lbzvIm8x1vbpjOFJxT-MkkNsgewM2VLCCdJUuPousj0/edit?usp=sharing)

## Future TODOs

- CarrierWave implementation
- Show timestamps for different stages of print orders
- Mailers for print orders
- Event planning dashboard

- omg so much more...


## Current Delpoyment

On Heroku:

http://freegoldwatch.herokapp.com


## Credits

- My friends/classmates/teachers/roommmates/dog
- Shout-out to Michelle and Nathan for teaching us all the things!
- Extra shout out to Michelle for helping me debug stuff (particularly the PinDash)
- Chris Prochnow and his amazing Heroku skillz
- Logan Medina for being willing to go down crazy rabbit holes with me
- The rest of the good folks of PodTown.


## License
It's always MIT, right?  We'll just say it's MIT
