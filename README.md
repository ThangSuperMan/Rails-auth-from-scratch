# Auth from scratch with Ruby on Rails

- Throughout this small project. I will learn more about how to implement jwt for Rails projects

## Table of Contents

- [Features](#features)
- [Commands](#commands)

## Features

- **Sqlite database**: database structure
- **Bcrypt**: hash password
- **Tailwindcss**: CSS library
- **Coverband**: report Rails app (it will help us to find out dead code) [Coverband](https://github.com/danmayer/coverband)
- **Rubocop**: Check code convention, syntax, rules, ...(just like prettier or eslint) [Rubocop](https://github.com/rubocop/rubocop)

## Commands

- Running locally (run this one when you would like to have tailwindcss style apply in realtime):

```bash
./bin/dev
```

- Install gems from Gemfile

```bash
bundle
```

- Interact with database using sqlite3 cli

```bash
sqlite3 db/development.sqlite3
```

- Interact with your rails App console (you can check the enviroment variable, ...)

```bash
bundle exec rails c
```

- Rubycop check with specific file or folder

```bash
rubocop app/controllers/tests_controller.rb
```
