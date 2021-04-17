# Environment nVim for Windows 10

If you don't have Neovim/vim-plug installed, [read this article](https://dev.to/ritikadas/using-neovim-as-an-effortless-way-to-edit-code-installation-and-setup-guide-for-windows-10-5dhc).

Basically, get Neovim on their website, extract here anywhere on your PC then put it inside your `path`. To get `vim-plug` on Windows, type this in a powershell:

```bash
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)
```

After this, all you have to do is installed the dependencies. Just install node and the tools that go with it (at the end of the installation). This should give you python and some windows building tools. Before typing all the commands we need, [install scoop](https://scoop.sh/) aswell since we are going to need `fzf` and `ripgrep` aswell.

## Dependencies

Let's start by adding neovim support to python/node, type those commands.

```bash
npm i -g neovim
pip install pynvim
```

Then check with `:checkhealth`.

### Vim-plug

Plugins are already added inside the `plugins.vim` file, all you have to do is install it with the command above then type `:PlugInstall`.

### Fzf and ripgrep

To activate fuzzy search, we need fzf and ripgrep, that's why we have scoop.

```bash
scoop install fzf ripgrep
```

And that's pretty much it. Read `commands.txt` to know more about commands (wip, might fill it whenever I'm fully done with the config).

## LUA support (optionnal)

If you want to work with LUA, my config works too, you just need luarocks and lua for it to work. On windows, installing luarocks is pretty confusing. To make it easier, install both of them with [WinLua](http://winlua.net/).


