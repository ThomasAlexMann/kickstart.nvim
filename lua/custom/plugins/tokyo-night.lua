return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    require('tokyonight').setup {
      style = 'night',
      styles = {
        functions = {},
      },
      on_highlights = function(hl)
        hl.DiffChange = {
          bg = '#283457',
        }
        hl.DiffText = {
          bg = '#09091d',
        }
      end,
    }
    vim.cmd.colorscheme 'tokyonight-moon'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
