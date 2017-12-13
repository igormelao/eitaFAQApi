# [EitaFAQApi]
![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![docker](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
[ ![Codeship Status for igormelao/eitaFAQApi](https://app.codeship.com/projects/3fbe7810-c1d4-0135-e729-265f517797e2/status?branch=master)](https://app.codeship.com/projects/260434)

<div>
  <h4>A simple API for demonstrate a creation of an API in Ruby on Rails</h4>
</div>

# Basic Overview

<p>This API was created for demonstrate my knowledge about creation of API in Ruby on Rails. It was a part of a challenge of a company that I will not  mention the name of company here to because they ask me to do this. I was a pleasure to make this project and I haved funny time to study and development this project</p>

<p> You can see the documentation of all services that was provide throught the Eita FAQ API in Swagger <a href="https://swaggerhub.com/apis/igormelao/EitaFAQAPi/1.0.0">here</a></p>

Enjoy it!


# Require
```
  * Rails 5.0.1 API
  * Ruby 2.2.3
  * Docker
  * Docker Compose
  * Postgres
  * Devise
  * FFaker
  * FactoryBot
  * Rspec
  * Shoulda-matchers
  * Spring-commands-rspec
  * rails-controller-testing
  * Rack-cors
  * Rack-attack
  * Simple_token_authentication
```


# Getting Started

### 1. Do a fork at original repository
```
  git@github.com:igormelao/eitaFAQApi.git
```

### 2. Clone your fork at a local repository

### 3. Build you project with docker-compose
```
   $ docker-compose build      
```

### 4. Start docker-compose
```
   $ docker-compose up
```

### 4. Run all migrations
```
   $ docker-compose run --rm website rails db:create db:migrate      
```

### 5. How to execute other commands
```
$ docker-compose run --rm website commandName
```

### 6. Install new gems
```
Always when you install a new gem execute step 3
```

### 7. Start APP
```
$ docker-compose up
```

### 8. Test App
```
$ docker-compose run --rm website rails rspec
```

## How to contribute to the project

### 1. Add the remote repository source at your local repositoy
```
$ git remote add upstream git@github.com:igormelao/eitaFAQApi.git
```

### 2. Sync your repository with the original repository
```
$ git fetch upstream
```

### 3. Update your local repository
```
$ git checkout master
$ git merge upstream/master
```

### 4. Work on it and send your changes
```
$ git push origin master
```

### 5. Do a pull request at your fork on GitHub


<h1>\\_o_// HAO! Live long and prosper!</h1>
