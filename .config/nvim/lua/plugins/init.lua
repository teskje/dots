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

  -- finder
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('fzf-lua').setup()
      vim.keymap.set('n', '<leader>f', '<cmd>FzfLua files<cr>')
      vim.keymap.set('n', '<leader>b', '<cmd>FzfLua buffers<cr>')
      vim.keymap.set('n', '<leader>g', '<cmd>FzfLua live_grep_glob<cr>')
      vim.keymap.set('n', '<leader>a', '<cmd>FzfLua lsp_code_actions<cr>')
      vim.keymap.set('n', 'gr', '<cmd>FzfLua lsp_references<cr>')
      vim.keymap.set('n', 'gi', '<cmd>FzfLua lsp_implementations<cr>')
      vim.keymap.set('n', 'gy', '<cmd>FzfLua lsp_typedefs<cr>')
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
