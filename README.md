# record-key.nvim

> _record-key.nvim_ is plugin to display pressed key in neovim.

![](https://img.spacevim.org/record-key.png)

<!-- vim-markdown-toc GFM -->

* [Installation](#installation)
* [Setup](#setup)
* [Usage](#usage)
* [Debug](#debug)
* [Feedback](#feedback)

<!-- vim-markdown-toc -->

## Installation

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

## Setup

```lua
require('record-key').setup({
    timeout = 3000,
    max_count = 5,
})
```

## Usage

- `:RecordKeyToggle`: toggle record-key

## Debug

Debug record-key.nvim with logger.nvim:

```lua
require('plug').add({
    {
        'wsdjeg/record-key.nvim',
        cmds = { 'RecordKeyToggle' },
        config_before = function()
            vim.keymap.set('n', '<leader>rk', '<cmd>RecordKeyToggle<cr>', { silent = true })
        end,
        depends = {
            {
                'wsdjeg/logger.nvim',
            },
        },
    },
})
```

## Feedback

If you encounter any bugs or have suggestions, please file an issue in the [issue tracker](https://github.com/wsdjeg/record-key.nvim/issues)

