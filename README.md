# MealOrganizer

Scripts for help to organise the weekly meals automatically

## Requirements

### Ruby

Any version compatible with rails > 6.0

### Rails > 6.0

    $ gem install rails -v 6.0.2.1

### bundler 

    $ gem install bundler --no-ri --no-rdoc

## Installation

1. Clone repository
2. Install depenpencies with bundler
  
    $ bundler
3. Execute migrations
  
    $ rake migrate

## Usage

To generate the week meals execute command:

    $ rake next
