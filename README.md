# neoVim LUA config for Windows 10

Migrating to LUA in progress.

## How to install LUA on Windows 10

If you want to work with LUA on Windows, it's pretty confusing. 
It doesn't have to be! Just install everything you need with [WinLua](http://winlua.net/).

## ToDo

- [x] Add more information on the README file
- [ ] Move installation instructions pages to wiki pages
- [ ] Add Linters & Autocompletion
- [ ] Snippets integration
- [ ] Fix sessions loading/saving

## Mappings

You can find all mappings in the [mapping file](mappings.md). Each mappings has a different
file for it. You can find them in their respective plugins (there's a link to them in the
mapping file too).

## Alacritty config

If you want to try those configs with `alacritty`, follow intrusctions below.

First, create a folder in `~/AppData/Roaming/`, call it `alacritty` then create an
`alacritty.yml` file. Access the [alacritty file](/alacritty/alacritty.yml), copy the content
of the file and then add it to your own.

Besides, I'm using a nerd font (to use glyphs in certain plugins) called `Hack Nerd Font`.
You can use it or use a different one. Here's a [direct link to it](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip).
