# record-key.nvim

> _record-key.nvim_ is plugin to display pressed key in neovim.

[![Run Tests](https://github.com/wsdjeg/record-key.nvim/actions/workflows/test.yml/badge.svg)](https://github.com/wsdjeg/record-key.nvim/actions/workflows/test.yml)
[![GitHub License](https://img.shields.io/github/license/wsdjeg/record-key.nvim)](LICENSE)
[![GitHub Issues or Pull Requests](https://img.shields.io/github/issues/wsdjeg/record-key.nvim)](https://github.com/wsdjeg/record-key.nvim/issues)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/wsdjeg/record-key.nvim)](https://github.com/wsdjeg/record-key.nvim/commits/master/)
[![GitHub Release](https://img.shields.io/github/v/release/wsdjeg/record-key.nvim)](https://github.com/wsdjeg/record-key.nvim/releases)
[![luarocks](https://img.shields.io/luarocks/v/wsdjeg/record-key.nvim)](https://luarocks.org/modules/wsdjeg/record-key.nvim)

https://github.com/user-attachments/assets/40bd3805-c4f1-4ba5-a028-983a01a072b7

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
    winhighlight = 'NormalFloat:Normal,FloatBorder:WinSeparator',
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

