-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    default_component_configs = {
      indent = {
        indent_size = 5,
        padding = 0, -- extra padding on left hand side
        -- indent guides
        with_markers = true,
      },
      file_size = {
        enabled = false,
        width = 12, -- width of the column
        required_width = 64, -- min width of window required to show this column
      },
      type = {
        enabled = false,
        width = 10, -- width of the column
        required_width = 122, -- min width of window required to show this column
      },
      last_modified = {
        enabled = false,
        width = 20, -- width of the column
        required_width = 88, -- min width of window required to show this column
      },
      created = {
        enabled = false,
        width = 20, -- width of the column
        required_width = 110, -- min width of window required to show this column
      },
      symlink_target = {
        enabled = false,
      },
    },
  },
}
