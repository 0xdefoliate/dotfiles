# dotfiles

This is my **opinionated** personal configuration files, primarily for `zsh`, `vim`, but others as well.

Feel free to use as you wish, but remember that I *might* not accept PRs with changes you prefer which at the same time,  
I don't like -- Why? Because these are my **personal** dotfiles, and thus it's my rules.

I have only tested it on macOS, but the config files probably work on any UNIX-like system with `zsh`, etc.

**NOTE:** The `zsh` configuration only applies to, well, `zsh`. Hence, the configuration won't make any difference at all  
if you use `bash`. If you wonder why I don't use `bash`, then it's because it is straight-up rubbish in comparison to `zsh`.

## Installation

### Prerequisites

Before installing, you need:
* a UNIX-like system (e.g. macOS, Linux, etc)
* `git` installed
* `zsh` installed

### Instructions

You can install the configurations and apply them by performing the following steps.

```bash
# clone into your preferred directory which you don't care about being cluttered
$ git clone https://github.com/0xdefoliate/dotfiles
...
# start installation (i.e. overwriting your existing configuration)
$ cd dotfiles && ./install
...
# don't forget to source your ~/.zshrc again for changes to take effect in your current shell session.
$ . ~/.zshrc
```