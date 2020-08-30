# Validation module

## Description

Custom module `Validation` (written in Ruby without Rails) which:

1. Contains the class method `validate`. This method takes as parameters the name of the attribute being checked, as well as the type of validation and, if necessary, additional parameters.
Possible types of validations:
    - `presence` - requires the attribute value to be non-nil and not an empty string.
Usage example: `validate :name, presence: true`
    - `format` (with a separate parameter specifying a regular expression for the format). Requires an attribute value to match a specified regular expression.
Example: `validate :number, format: /A-Z{0,3}/`
    - `type` (the third parameter is the attribute class). Requires the attribute value to match the specified class.
Example: `validate :owner, type: User`

2. Contains an instance method `validate!`, which runs all the checks (validations) specified in the class via the class method `validate`.
In case of a validation error, it throws an exception with a message about which validation failed.

3. Contains an instance method `valid?` which returns `true` if all validation checks are successful and `false` if there are validation errors.

This `Validation` module is connected to `ValidationTest` and demonstrates it usage.

## Features

* Ruby executable script
* All required gems installed with `Bundler`
* Code style is provided via [RuboCop](https://github.com/rubocop-hq/rubocop)

## Requirements

* System: Linux, Mac
* Git
* Ruby version manager (`rbenv` or `RVM`)
* Ruby 2.6.2
* `Bundler`
* Gems installed via Bundler Gemfile

## Installation

### Download code from repository

Clone with SSH:

```bash
$ git clone git@github.com:alex-petr/validation_module.git
```

Or clone with HTTPS:

```bash
$ git clone https://github.com/alex-petr/validation_module.git
```

### rbenv (for macOS)

```bash
$ cd validation_module/ && brew install rbenv
```

### Ruby

```bash
$ rbenv install 2.6.2
```

### Install `Bundler` and all required gems

```bash
$ gem install bundler && bundle
```

## Tests

No automated test suite based on testing frameworks like `RSpec`, `minitest` or `test-unit` is available.
Instead of this `ValidationTest` class contains custom testing code for `Validation` module.

## Usage

```bash
$ bin/validation
```
