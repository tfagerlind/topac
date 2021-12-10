# Topac

This project is an attempt to codify my own common configurations of
my Linux based work stations. Since it is very much influenced of my
own personal preferences I doubt that it would benefit of being shared
among developers, but who knows?

Topac stands for Top As Code, where Top is a
generalization of Desktop and Laptop.

## Prerequisites

Prerequisites for running configurations:

* Python 3
* Ansible

Prerequisites for running tests

* Make
* Docker

## How to run all tests

    make tests

## How to run

Warning! Running this command will change the state of your
computer!!! If you don't want the very same configuration as me then
it is not for you. This command will identify your home directory and
configure its Emacs and Git configuration.

First create an inventory named `inventory.yml` using the file
`inventory.yml.templ` as template. Then run

    make run

## Todo

Add support for YAML in Emacs configuration.
