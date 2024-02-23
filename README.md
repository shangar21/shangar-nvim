# Shangar Nvim

To install simply run:

```bash
git clone git@github.com:shangar21/shangar-nvim.git ~/.config/shangar-nvim
echo "alias svim='NVIM_APPNAME=shangar-nvim nvim'" >> $HOME/.zshrc
```

Will create an aliased version of nvim, called `svim`

To add lsp servers run:

```
:LspInstall clangd
:LspInstall <lsp server name>
```
See exhaustive list of available ones [here](https://github.com/williamboman/mason-lspconfig.nvim)

For latexification shortcuts, you need to install AngouriMathCLI, use this [here](https://github.com/asc-community/AngouriMathCLI)
