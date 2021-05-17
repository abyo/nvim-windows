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

**The leader key can be changed in the [plugin.lua](/lua/lt/plugins.lua) file.**

## Default [1000]

|      Mode     |        Mapping       |                   Description                  |
|:-------------:|:--------------------:|:----------------------------------------------:|
|     Normal    |     Leader-Enter     |            Reload current lua file*            |
| Normal/Insert |          C-s         |               Saving current file              |
|     Normal    |          C-q         |         Saving and leaving current file        |
|     Normal    |       C-h/j/k/l      | Moving between windows (left/bottom/top/right) |
|     Normal    | C-Up/Down/Right/Left |    Resizing windows (top/bottom/right/left)    |
|    Terminal   |       Leader-jj      |              Escape terminal mode              |
|     Visual    |          C-c         |                      Copy                      |
| Normal/Insert |          C-v         |                      Paste                     |
|     Visual    |          J/K         |          Move a selected line up/down          |
|     Normal    |       Leader-db      |      Close all buffers except current one      |

* Probably needs the plenary plugin to work
