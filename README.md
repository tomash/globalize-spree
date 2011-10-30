# GlobalizeSpree

Localizing model data in Spree using Globalize3.

[![Build Status](https://secure.travis-ci.org/tomash/globalize_spree.png)](http://travis-ci.org/tomash/globalize_spree)



## Installation


Add to Gemfile:

    gem "globalize_spree", :git => 'git://github.com/tomash/globalize-spree.git'

Also, to be super-sure (I've ran into some trouble before that, needs investigation) add

    gem "i18n"
    gem "globalize3"

to your application Gemfile as well.

Now run the rake task to copy migrations and run them:
    rake globalize_spree:install
    rake db:migrate


## Usage

Works OOTB.

Currently globalizes: Product (name, description), Taxon (name).

### Basic usage (vanilla Globalize way)

Basically works like Globalize, so
   
    # set the locale or do not to leave default one
    I18n.locale = :en
    # and you are ready to go
    Product.last.name # <= get name for this product for :en locale
    Product.last.name = "something" # <= set name for this product for :en locale

### Easy Globalize Accessors

For easy editing of translated stuff for predefined locales, it uses code from easy-globalize2-accessors. Inside self.activate of your lib/spree_site.rb put

    Product.class_eval do
      globalize_accessors :pl, :en, :de
    end

And spree-globalize will replace Product form's "name" field with, respectively, "name_pl", "name_en" and "name_de" fields ("description" following same pattern) in admin panel. Try it!


## ToDo

More models.


## Contributing

Feel free to use Github issues and/or contact me via Github PM. Pull requests are welcome, provided they include some explanation (and relevant open issue maybe?).


## Usual blabber

Copyright (c) 2010 Tomasz "Tomash" Stachewicz, released under the New BSD License
