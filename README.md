# Installation

Clone this repo into `.emacs.d` (you'll need to move your existing `.emacs.d` folder somewhere):

    git clone git@github.com:brian-dawn/mit-scheme-emacs.git ~/.emacs.d

Install mit-scheme:

    brew install mit-scheme

Install cask:

    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

From run:

    cd ~/.emacs.d/
    cask install

That's it!

# Parinfer

This setup uses parinfer to infer where closing parenthesis should go.

More info: https://shaunlebron.github.io/parinfer/

# Useful key combos

* C is your control key, C-k means control+k.
* M is your alt/option key. M-k means alt/option+k.
* `C-c p f` means C+c [release] p f

## General

Stop the current command

    C-g

## Navigating files

Open a file:

    C-x C-f

Change the working directory:

    M-x cd

Find a file (recursively) in a git repo:

    C-c p f

## Random stuff
Enable rainbow parenthesis:

    M-x rainbow-delimiters-mode

Start a REPL:

    M-x run-geiser

Send buffer to REPL:

    C-c C-k

If you want VIM style editing:

    M-x evil-mode

# Notes

This setup assumes you are editing `.scm` files.
