![logo](/screenshots/logo.png)
<div align="center">
  <a href="https://github.com/abyo/nvim-windows/blob/main/LICENSE"><img src="https://img.shields.io/github/license/abyo/nvim-windows" alt="GitHub License"></a>
  <a href="https://github.com/abyo/nvim-windows"><img src="https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github" alt="Open Source? Yes!"></a>
  <a href="http://makeapullrequest.com"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square" alt="PRs Welcome"></a>
  <a href="https://github.com/neovim/neovim/wiki/Installing-Neovim"><img src="https://img.shields.io/badge/Neovim-0.5-green" alt="Neovim 0.5"></a>
  <p></p>
	<a href="https://github.com/abyo/nvim-windows/#features">✨ Features</a>
  <span> | </span>
	<a href="https://github.com/abyo/nvim-windows/wiki/Windows-Installation">📦 Installation</a>
  <span> | </span>
	<a href="https://github.com/abyo/nvim-windows/wiki/">📚 Wiki</a>
  <p></p>
</div>

![Merged Screenshot](/screenshots/readme_screen.jpg)

You can find more screenshots in the [screenshot folder](/screenshots/screens.md).

---

# Table of Contents <!-- omit in toc -->

- [Introduction](#introduction)
  - [Features](#features)
  - [Keymaps](#keymaps)
  - [Terminal](#terminal)
- [Installation & prerequisites](#installation--prerequisites)
- [ToDos](#todos)
  - [Generic](#generic)
  - [Lua](#lua)
  - [Javascript](#javascript)

## Introduction

This config provides configuration files that take advantage of tree-sitter and language server protocol. I know that it's difficult to configure neoVim when you are just starting to use it, how time consuming it's to customize it to your needs and that's why my config exists.

**My goals for this project are:**

- Help the transition from VSCode into vim/neoVim
- Give neoVim an initial configuration to start working in a stable and efficient development environment without spending a lot of time configuring everything
- Make this config multi-platform compatible (espacially for windows users)
- Make every language compatible with neoVim ([see installation](#installation--prerequisites))

If you want specific informations about the config, keep reading.

### Features

- Package management system in LUA (Packer)
- Written in LUA and works with future nVim versions
- Great support for version control
- Clean look to the editor w/ multiple themes
- Code completion (compe)
- Multiple language support
- Native language support (lsp)
- Faster navigation with telescope, hlslens and numb
- Better syntax highlighting with treesitter
- Terminal integration

### Keymaps

Keymaps can be found [on the wiki](https://github.com/abyo/nvim-windows/wiki/Keymaps).

### Terminal

I'm using [Alacritty as a terminal, config can be found on the wiki aswell](https://github.com/abyo/nvim-windows/wiki/Alacritty).

## Installation & prerequisites

Until I make a script to install the config, here's a link to the wiki for each platform.

| Platform | Supported | Link |
|:--------:|:---------:|------|
|  Windows |     ✅    | [Link](https://github.com/abyo/nvim-windows/wiki/Windows-Installation) |
|   macOs  |     ❌    | Link |
|   Linux  |     ❌    | Link |

The config might work on other distro but I didn't test yet.

## ToDos

If you want any features added to the config, [make an issue](https://github.com/abyo/nvim-windows/issues).

### Generic

- [ ] Add wiki pages (how to add keymaps, plugins and snippets)
  - [x] Installation (Windows)
  - [x] Keymaps
  - [x] ToDos
  - [ ] Snippets
- [x] Add new screenshots for README
- [ ] Add more colorschemes
- [ ] Add an installation script
- [ ] Add an installation page for mac and linux
- [ ] Add a language support table
- [ ] Add whichkey plugin
- [ ] Move single setup lines to a plugin.lua file
- [ ] Add keymaps to autocomplete for better navigation

### Lua

- [ ] Debugging
- [ ] Some snippets
- [ ] Linting

### Javascript

- [ ] Debugging
- [ ] Some snippets
- [ ] Linting
