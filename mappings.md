<!--
 _   .-')      ('-.      _ (`-.    _ (`-.              .-') _              .-')    
( '.( OO )_   ( OO ).-. ( (OO  )  ( (OO  )            ( OO ) )            ( OO ).  
 ,--.   ,--.) / . --. /_.`     \ _.`     \ ,-.-') ,--./ ,--,'  ,----.    (_)---\_) 
 |   `.'   |  | \-.  \(__...--''(__...--'' |  |OO)|   \ |  |\ '  .-./-') /    _ |  
 |         |.-'-'  |  ||  /  | | |  /  | | |  |  \|    \|  | )|  |_( O- )\  :` `.  
 |  |'.'|  | \| |_.'  ||  |_.' | |  |_.' | |  |(_/|  .     |/ |  | .--, \ '..`''.) 
 |  |   |  |  |  .-.  ||  .___.' |  .___.',|  |_.'|  |\    | (|  | '. (_/.-._)   \ 
 |  |   |  |  |  | |  ||  |      |  |    (_|  |   |  | \   |  |  '--'  | \       / 
 `--'   `--'  `--' `--'`--'      `--'      `--'   `--'  `--'   `------'   `-----'  
-->

# Mappings

My mappings are separated into `remaps.lua` files, they can be found into different
plugins folder. If you're looking for `telescope` mappings or the `default` ones,
you don't have to go and look for them, just use the table of content below then
access the title that fits your needs.

Besides, if you're looking for the file instead, same thing, look for the right
plugin title then click on **Access File**. Quick note but every mapping come
with an explanation in their respective file.

Also, here's the format for the mapping table below. **Keys are case sensitive.**

|  Mode  | Mapping |       Description       |
|:------:|:-------:|:-----------------------:|
| Normal |   C-s   | This is just an example |

A quick reminder:

- `C` is `CTRL`
- `S` is `SHIFT`
- `M` is `ALT`
- `Leader` is the space bar

**The leader key can be changed in the [settings.lua](/lua/lt/defaults/settings.lua) file
which can be found in the default folder.**

---

- [Default](#default-back-to-top)
- [Kommentary](#kommentary-back-to-top)
- [Git](#git-back-to-top)
- [Dashboard](#dashboard-back-to-top)
- [Undotree](#undotree-back-to-top)
- [Indent Guides](#indent-guides-back-to-top)
- [Fzf](#fzf-back-to-top)
- [FileTree](#filetree-back-to-top)
- [Terminal](#terminal-back-to-top)

---

## Default ([back to top](#mappings))

[Access file](/lua/lt/defaults/remaps.lua)

|      Mode     |        Mapping       |                   Description                  |
|:-------------:|:--------------------:|:----------------------------------------------:|
|     Normal    |     Leader-Enter     |            Reload current lua file²            |
| Normal/Insert |          C-s         |               Saving current file              |
|     Normal    |          C-q         |         Saving and leaving current file        |
|     Normal    |       C-h/j/k/l      | Moving between windows (left/bottom/top/right) |
|     Normal    | C-Up/Down/Right/Left |    Resizing windows (top/bottom/right/left)    |
|     Normal    |       tab/s-tab      |             Moving between buffers             |
|    Terminal   |       Leader-jj      |              Escape terminal mode              |
|     Visual    |          C-c         |                      Copy                      |
| Normal/Insert |          C-v         |                      Paste                     |
|     Visual    |          J/K         |          Move a selected line up/down          |
|     Visual    |       tab/s-tab      |                    Indenting                   |
|     Normal    |       Leader-db      |      Close all buffers except current one      |
|     Normal    |          C-w         |              Close current buffer              |
|     Visual    |           d          |          Delete a line in visual mode          |
|     Insert    |       jk/kj/jj       |           Fast escape in insert mode           |

²: Probably needs the plenary plugin to work

## Kommentary ([back to top](#mappings))

[Access file](/lua/lt/kommentary/remaps.lua)

```bash
use 'b3nj5m1n/kommentary'
```

|  Mode  |  Mapping |        Description       |
|:------:|:--------:|:------------------------:|
| Normal | Leader-c |   Comment current line   |
| Visual | Leader-c | Comment visual selection |

## Git ([back to top](#mappings))

[Access file](/lua/lt/git/remaps.lua)

```bash
use 'tpope/vim-rhubarb'
use 'tpope/vim-fugitive'
use 'junegunn/gv.vim'
use 'lewis6991/gitsigns.nvim' 
```

|  Mode  |   Mapping  | Description |
|:------:|:----------:|:-----------:|
| Normal |  Leader-gs | ~Git Status |
| Normal |  Leader-ga |  Git add .  |
| Normal |  Leader-gl |   Git log   |
| Normal |  Leader-gc |  Git commit |
| Normal | Leader-gph |   Git push  |
| Normal | Leader-gpl |   Git pull  |

## Dashboard ([back to top](#mappings))

[Access file](/lua/lt/dashboard/remaps.lua)

```bash
use 'glepnir/dashboard-nvim'
```

|  Mode  |  Mapping  |  Description |
|:------:|:---------:|:------------:|
| Normal | Leader-ss | Save Session |
| Normal | Leader-sl | Load Session |

## Undotree ([back to top](#mappings))

[Access file](/lua/lt/undotree/remaps.lua)

```bash
use 'mbbill/undotree'
```

|  Mode  |   Mapping  |  Description  |
|:------:|:----------:|:-------------:|
| Normal | Leader-uts | Show Undotree |
| Normal | Leader-uth | Hide Undotree |


## Indent Guides ([back to top](#mappings))

[Access file](/lua/lt/indent-guides/remaps.lua)

```bash
use 'glepnir/indent-guides.nvim'
```

|  Mode  |  Mapping  |      Description      |
|:------:|:---------:|:---------------------:|
| Normal | Leader-it |  Toggle Indent Guides |
| Normal | Leader-ie |  Enable Indent Guides |
| Normal | Leader-id | Disable Indent Guides |


## Fzf ([back to top](#mappings))

[Access file](/lua/lt/fzf/remaps.lua)

```bash
use 'junegunn/fzf'
use 'junegunn/fzf.vim' 
```

You also need fzf and ripgrep on your PC. On Windows,
you can use [scoop](https://scoop.sh/)

```bash
scoop install ripgrep fzf
```

|  Mode  |  Mapping  |             Description             |
|:------:|:---------:|:-----------------------------------:|
| Normal | Leader-gf |        Search into git files        |
| Normal |  Leader-p |       Search a file in project      |
| Normal | Leader-bu |     Switch onto specific buffer     |
| Normal |  Leader-f | Search for specific line in project |
| Normal |    C-f    |   Search for specific line in file  |

## FileTree ([back to top](#mappings))

[Access file](/lua/lt/filetree/remaps.lua)

```bash
use 'kyazdani42/nvim-tree.lua'
```

|  Mode  | Mapping |   Description    |
|:------:|:-------:|:----------------:|
| Normal |   C-b   |  Show file Tree  |


## Terminal ([back to top](#mappings))

[Access file](/lua/lt/terminal/remaps.lua)

|   Mode   |  Mapping |      Description     |
|:--------:|:--------:|:--------------------:|
|  Normal  | Leader-t | Toggle/hide terminal |
| Terminal | Leader-t | Toggle/hide terminal |
