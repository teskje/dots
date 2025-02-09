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
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', opts = {} },
    },
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', '<cmd>Oil<cr>')
    end,
  },

  -- autocomplete
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    opts = {
      sources = {
        -- disable cmdline completion
        cmdline = {},
      },
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
    config = function()
      require('trouble').setup()
      vim.keymap.set('n', '<leader>d', '<cmd>Trouble diagnostics toggle<cr>')
      vim.keymap.set('n', '<leader>D', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>')
    end,
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
