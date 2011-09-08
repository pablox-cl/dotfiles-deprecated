# PaBLoX Dotfiles #

Just a place to keep my dotfiles synced.

## Files included ##

* bashrc
* bash aliases
* inputrc
* gitignore
* rvmrc
* screenrc
* ackrc
* hgrc
* conkyrc

## Completion scripts ##

* git
* rake
* projects (see below)

## Install ##

There are two ways to install the dotfiles (though they are basically the same
thing). The install script renames your original files adding an `.old` suffix
(`.bashrc -> .bashrc.old`) before copying the new shiny ones (`~/.dotfiles/bashrc -> ~/.bashrc`).
I made that decision because [Homesick](https://github.com/technicalpickles/homesick)
just try to replace if the files has the same name (AFAIK it doesn't make a backup) and
because I rather work with files that don't start with a dot (quite
ironic isn't it?).

### Clone the repo ###

Clone the dotfiles
    git clone git://github.com/PaBLoX-CL/dotfiles.git

Move the dotfiles to an appropriate place
    mv dotfiles/home/.dotfiles ~

Run the install script
    ~/.dotfiles/install.sh

### Through homesick ###

Install homesick
    gem install homesick

Clone the castle (which is nothing more than a lot of dotfiles)
    homesick clone PaBLoX-CL/dotfiles

Symlink it to your home directory
    homesick symlink PaBLoX-CL/dotfiles

Run the install script
    ~/.dotfiles/install.sh

## Project completion ##

I normally keep my projects under a specific dir (`~/code`). Thanks
to [Ryan Bates Dotfiles](https://github.com/ryanb/dotfiles) it's
possible to auto-complete your projects writing `c <Tab><Tab>`. If
you use another directory (I guess you are) just change the `PROJECT_DIR`
variable on `bashrc.d/000-env.sh`.

The shortcut (`c` by default; which is actually a function) is defined
in two places, on the `bashrc.d/aliases/000-main.sh` and
`bashrc.d/completions/000-completions.sh`.

## Conky Notes ##

Conky works like voodoo so IMHO is really hard to share a "beautiful"
conky setup. I'm going to add conkyrcs that I found they work at least
to a tolerable level so it's up to you made it work right. Most times
you need to install some font or some other program that conky uses.

For the same reason I'm **not** installing any conkyrc with the install
script.

## Issues? ##

If you have any problem, think that something can work better or want to
give some feedback, please don't hesitate in contacting me through my
e-mail pablo (at) glatelier (dot) org, via github message or filing an
issue in the github tracker.

## Copyright ##

Copyright (c) 2011 Pablo Olmos de Aguilera Corradini. See LICENSE for
details.
