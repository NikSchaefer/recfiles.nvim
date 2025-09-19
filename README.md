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

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "nikschaefer/recfiles.nvim",
  ft = "recfiles",
}
```

## Usage

The plugin automatically:
1. Detects `.rec` and `.recfile` files
2. Applies syntax highlighting

No configuration needed!

## Example

```rec
# Book collection
%rec: Book
%mandatory: Title Author

Title: The Pragmatic Programmer
Author: Dave Thomas
Author: Andy Hunt
Notes: Excellent book about software development \
with many practical tips.
Description: From journeyman to master
+ This book provides practical advice
+ for writing better code.
```

## License

MIT