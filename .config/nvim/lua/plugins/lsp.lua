vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', '<leader>p', vim.lsp.buf.format)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)
  end,
})

return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').rust_analyzer.setup({
        settings = {
          ['rust-analyzer'] = {
            cargo = { targetDir = true },
            imports = {
              granularity = { group = 'module' },
              prefix = 'crate',
            },
          }
        }
      })
    end,
  },
  {
    "j-hui/fidget.nvim",
    opts = {},
  },
}
