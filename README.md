Vitrage Demo
============

This is Ruby on Rails application made for trying
[Vitrage](https://github.com/dymio/vitrage) — web-page content management system
for Rails, based on separated content pieces.

Project works at [vitrage-demo.codenohito.ru](http://vitrage-demo.codenohito.ru/)


Getting Started
---------------

Make sure you have Ruby version installed, specified in the `.ruby-version`
file in the root directory of the application.

If you use [RVM](https://rvm.io/) add a '.ruby-gemset'
[file](https://rvm.io/workflow/projects#project-file-ruby-version)
to the root directory of the application.

You will need [ImageMagick](https://www.imagemagick.org/) installed.

The application uses PostgreSQL. Versions 8.2 and up are supported.
Create database and config file `config/database.yml` for connection.
File example:

    development:
      adapter: postgresql
      database: database_name
      pool: 5

There is `config/database_example.yml` file for full example.

When done, run:

    $ bin/bundle install --without production
    $ bin/rake db:create db:migrate

Install demo data using command: `bin/rake db:seed` if you need.

Application ready for start. You can launch webserver with
command `bin/rails server` and see home page
at [localhost:3000](http://localhost:3000/) url.
