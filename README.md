# README

* Ruby version 2.5.3

* Since I am applying for a backend developer position, I decided to use a Rails app. 

* Git Repository: https://github.com/nachoespino53/rps

# Process

* This is the process of how I want to fo about building this app

* Sudo Code:
    1. Setup Rails app with the following gems
        - rspec-rails (This gem is used for testing)
        - rest-client (This is the gem I will use to call the api)
        - Had to change a couple of the gems around to make it work correctly, since sqlite3 has a new version out
        - Migrate the database even though I would not be using it

    2. Create Model and Controllers
        - I don't think a model is necessary here, as I am not storing or retriving items from a database
        - I will create a controller and two private methods

    3. Setup Routes
        - Routes for the landing page
        - Routes for processing information, and then returning results

    4. Create Tests with rspec
        - I was having some problems, so instead of TDD, I went to BDD. Did not get to writing tests, but wanted to.

    5. Setup Views
        - Two views, one is the landing page, the second is the page with the results, almost identical
        - The second landing page is displaying errors if any arise


# Installation
    * git clone
    * Bundle Install
    * Rails s
    * localhost:3000
    * Play!