# record-key.nvim

> _record-key.nvim_ is plugin to display pressed key in neovim.

![](https://img.spacevim.org/record-key.png)

<!-- vim-markdown-toc GFM -->

* [Install](#install)
* [Usage](#usage)
* [Feedback](#feedback)

<!-- vim-markdown-toc -->

## Install

Use your preferred Neovim plugin manager to install record-key.nvim.

with [nvim-plug](https://github.com/wsdjeg/nvim-plug)

```lua
require('plug').add({
  {
    'wsdjeg/record-key.nvim',
    cmds = { 'RecordKeyToggle' },
    config_before = function()
      vim.keymap.set('n', '<leader>rk', '<cmd>RecordKeyToggle<cr>', { silent = true })
    end,
  },
})
```

Then use `:PlugInstall record-key.nvim` to install this plugin.

## Usage

- `:RecordKeyToggle`: toggle record-key

## Feedback

If you encounter any bugs or have suggestions, please file an issue in the [issue tracker](https://github.com/wsdjeg/record-key.nvim/issues)

