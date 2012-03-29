# Cloud Passage module for Puppet

## Description
Provides installation and setup of Cloud Passage

## Requirements
This module requires a Puppet master of 2.6 or better.
By default data comes from extlookup which was likely to
support more users.

## Usage

### setup
You'll need to plug in your values in cphalo/manifests/data.pp
The module will plug those values in as needed

### include cphalo
installs and starts cphalod

### apt
You may need to modify to use *your* apt update process
I didn't add one because it's likely to cause more problems
than it solves.
