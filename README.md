# recfiles.nvim

A simple Neovim plugin for GNU Recfiles syntax highlighting.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "nikschaefer/recfiles.nvim",
  ft = "recfiles", -- Load only for recfiles
}
```

### Using [mini.deps](https://github.com/echasnovski/mini.deps)

```lua
MiniDeps.add({
  source = "nikschaefer/recfiles.nvim",
})
```

## Usage

The plugin automatically:
1. Detects `.rec` and `.recfile` files
2. Applies syntax highlighting

No configuration needed!

## License

MIT
