vim.api.nvim_create_user_command('Gitbrowse', function(opts)
  require('snacks').gitbrowse({
    line_start = opts.line1,
    line_end = opts.line2,
  })
end, {
  range = true,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "OilActionsPost",
  callback = function(event)
      if event.data.actions.type == "move" then
          Snacks.rename.on_rename_file(event.data.actions.src_url, event.data.actions.dest_url)
      end
  end,
})

return {
  {
    "folke/snacks.nvim",
    lazy = false,
    opts = {
      gitbrowse = {},
      indent = {
        indent = {
          only_scope = true,
        },
      },
      input = {},
      notifier = {},
      picker = {},
      scroll = {},
      words = {},
    },
    keys = {
      { '<leader>f', function() Snacks.picker.files() end },
      { '<leader>b', function() Snacks.picker.buffers() end },
      { '<leader>g', function() Snacks.picker.grep() end },
      { '<leader>n', function() Snacks.picker.notifications() end },
      { '<leader>:', function() Snacks.picker.command_history() end },
      { 'gd', function() Snacks.picker.lsp_definitions() end },
      { 'gr', function() Snacks.picker.lsp_references() end },
      { 'gi', function() Snacks.picker.lsp_implementations() end },
      { 'gy', function() Snacks.picker.lsp_type_definitions() end },
      { "<leader>s", function() Snacks.picker.lsp_symbols() end },
      { "<leader>S", function() Snacks.picker.lsp_workspace_symbols() end },
    },
  },
}
