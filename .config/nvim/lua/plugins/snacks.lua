vim.api.nvim_create_user_command('Gitbrowse', function(opts)
  require('snacks').gitbrowse({
    line_start = opts.line1,
    line_end = opts.line2,
  })
end, {
  range = true,
})

return {
  {
    "folke/snacks.nvim",
    opts = {},
  },
}
