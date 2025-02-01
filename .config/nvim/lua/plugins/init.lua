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
      { 'echasnovski/mini.icons', opts = {} },
    },
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', '<cmd>Oil<cr>')
    end,
  },

  -- finder
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
      require('fzf-lua').setup()
      vim.keymap.set('n', '<leader>f', '<cmd>FzfLua files<cr>')
      vim.keymap.set('n', '<leader>b', '<cmd>FzfLua buffers<cr>')
      vim.keymap.set('n', '<leader>g', '<cmd>FzfLua live_grep_glob<cr>')
      vim.keymap.set('n', '<leader>d', '<cmd>FzfLua diagnostics_document<cr>')
      vim.keymap.set('n', '<leader>D', '<cmd>FzfLua diagnostics_workspace<cr>')
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
}
