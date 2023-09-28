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

## Manual steps to configure Kinesis Advantage Keyboard with Swedish characters

This configurations are suitable for the use of the Kinesis Advantage Keyboard
together with I3.

### Reset previous configurations

This step is just to avoid surprises. If you have important configurations that
might go away with this action then you need to take other measures.

`Progrm + Shift + F10`

### Turning off the key click feature

The key click feature is just annoying.

`Progrm + star *`

### Switch place between Windows key and delete key

When in Non-Windows mode, then the Windows key is only reached by toggling the
keypad key. It is good to place the delete key somewhere so that it can be
remapped later on, if desired.

1. `Progrm + Shift + F12`
1. `Delete`
1. `Keypad`
1. `ScrollLock`
1. `Keypad`
1. `Keypad`
1. `ScrollLock`
1. `Keypad`
1. `Delete`
1. `Progrm + Shift + F12`
