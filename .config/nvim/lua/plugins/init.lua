return {
  -- color theme
  {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').load()
    end,
  },

  -- file explorer
  {
    'stevearc/oil.nvim',
    lazy = false,
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', opts = {} },
    },
    opts = {},
    keys = {
      { '-', '<cmd>Oil<cr>' },
    }
  },

  -- autocomplete
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = '1.*',
    opts = {
      keymap = { preset = 'enter' },
      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
      },
      signature = { enabled = true }
    },
  },

  -- diagnostics
  {
    "folke/trouble.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
    keys = {
      { '<leader>d', '<cmd>Trouble diagnostics toggle<cr>' },
      { '<leader>D', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>' },
    },
  },
  {
    'rachartier/tiny-inline-diagnostic.nvim',
    config = function()
        require('tiny-inline-diagnostic').setup()
        vim.diagnostic.config({ virtual_text = false })
    end,
  },

  -- git
  {
    'lewis6991/gitsigns.nvim',
    opts = {},
  },
}
