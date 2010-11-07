GlobalizeSpree
==============

Localizing model data in Spree using Globalize3.


Installation
============

Add to Gemfile:

    gem "globalize_spree", :git => 'https://tomash@github.com/tomash/globalize-spree.git'

Also, to be super-sure (I've ran into some trouble before that, needs investigation) add

    gem "i18n"
    gem "globalize3"

to your application Gemfile as well.

Now run the rake task to copy migrations:
    rake globalize_spree:install


Usage
=====

Works OOTB.

ToDo
====

Lots of stuff, starting from easy-globalize2-accessors functionality for easy customization and automagic extension (via hooks) of spree admin forms (add 'name_en', 'name_de' fields in place of 'name' etc.).

Feel free to open GitHub issue for discussing new features. Pull requests are welcome!



Copyright (c) 2010 Tomasz "Tomash" Stachewicz, released under the New BSD License
