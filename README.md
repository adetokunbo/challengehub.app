# ChallengeHub public website

## Currently deployed URL

[https://challengehub.app/](https://challengehub.app/)

## Local setup

Install the requirements:

- [Jekyll](http://jekyllrb.com/)
- [Bundler](http://bundler.io/)
- [rbEnv](https://github.com/rbenv/rbenv)

Clone the repository:

~~~bash
$ git clone https://github.com/alecrem/challenge-hub-website.git
$ cd challenge-hub-website
~~~

Ensure your using the configured version of ruby:

~~~bash
$ # make sure you follow the rbenv installation instructions
$ rbenv install 2.6.3  # check Gemfile to confirm this version
~~~

Install dependencies:

~~~bash
$ bundle install
~~~

Build and locally serve ([http://127.0.0.1:4000/](http://127.0.0.1:4000/)) the site and listen for changes, except for changes to `_config.yml`:

~~~bash
$ bundle exec jekyll serve
~~~

Enable pushing to heroku:
~~~bash
$ heroku git:remote -a challengehub-app-web # tell heroku where to push

# once only, on initializing the app
$ heroku buildpacks:add heroku/ruby
$ heroku buildpacks:add https://github.com/heroku/heroku-buildpack-static
~~~


## Hydra (information from the original repository below)

Marketing site template for Jekyll. Browse through a [live demo](https://proud-alligator.cloudvent.net/).
Increase the web presence of your brand with this configurable theme.

Hydra was made by [CloudCannon](http://cloudcannon.com/), the Cloud CMS for Jekyll.

Find more templates, themes and step-by-step Jekyll tutorials at [CloudCannon Academy](https://learn.cloudcannon.com/).

### Features

* Contact form
* Pre-built pages
* Pre-styled components
* Blog with pagination
* Post category pages
* Disqus comments for posts
* Staff and author system
* Configurable footer
* Optimised for editing in [CloudCannon](http://cloudcannon.com/)
* RSS/Atom feed
* SEO tags
* Google Analytics

### Setup

1. Add your site and author details in `_config.yml`.
2. Add your Google Analytics and Disqus keys to `_config.yml`.
3. Get a workflow going to see your site's output (with [CloudCannon](https://app.cloudcannon.com/) or Jekyll locally).

### Develop

Hydra was built with [Jekyll](http://jekyllrb.com/) version 3.3.1, but should support newer versions as well.

Install the dependencies with [Bundler](http://bundler.io/):

~~~bash
$ bundle install
~~~

Run `jekyll` commands through Bundler to ensure you're using the right versions:

~~~bash
$ bundle exec jekyll serve
~~~

### Editing

Hydra is already optimised for adding, updating and removing pages, staff, advice, company details and footer elements in CloudCannon.

#### Posts

* Add, update or remove a post in the *Posts* collection.
* The **Staff Author** field links to members in the **Staff** collection.
* Documentation pages are organised in the navigation by category, with URLs based on the path inside the `_docs` folder.
* Change the defaults when new posts are created in `_posts/_defaults.md`.

#### Contact Form

* Preconfigured to work with CloudCannon, but easily changed to another provider (e.g. [FormSpree](https://formspree.io/)).
* Sends email to the address listed in company details.

#### Staff

* Reused around the site to save multiple editing locations.
* Add `excluded_in_search: true` to any documentation page's front matter to exclude that page in the search results.

#### Navigation

* Exposed as a data file to give clients better access.
* Set in the *Data* / *Navigation* section.

#### Footer

* Exposed as a data file to give clients better access.
* Set in the *Data* / *Footer* section.
