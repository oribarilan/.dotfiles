return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      default_keymaps = false, -- Disable default keymaps to define custom ones
      window = {
        mappings = {
          ["l"] = "open", -- Maps 'l' to open/expanding directories
          ["h"] = "close_node", -- Maps 'h' to close/collapsing directories
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      },
    })
  end,
}
