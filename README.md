# Topac

This project is an attempt to codify my own common configurations of
my Linux based work stations. Since it is very much influenced of my
own personal preferences I doubt that it would benefit of being shared
among developers, but who knows?

Topac stands for Top As Code, where Top is a
generalization of Desktop and Laptop.

Topac includes installation and configuration of

* I3
* Vim
* Git
* ARandR

## Prerequisites

Prerequisites for running configurations:

* Python 3
* Ansible

Prerequisites for running tests

* Make
* Docker

## How to run all tests

    make test

## How to run

Warning! Running this command will change the state of your
computer!!! If you don't want the very same configuration as me then
it is not for you. This command will identify your home directory and
configure its Emacs and Git configuration.

First ensure that the configuration satisfies your needs. If you are not me
you most certainly want to change the name and email address in `inventory.yml`,
for example. Then run

    make run
