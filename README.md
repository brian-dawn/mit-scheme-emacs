# Installation

Install mit-scheme:

    brew install mit-scheme

Install cask:

    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

From this directory run:

    cask install

That's it!

# Parinfer

This setup uses parinfer to infer where closing parenthesis should go.

More info: https://shaunlebron.github.io/parinfer/

# Useful key combos

## Navigating files

Find a file (recursive):

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
