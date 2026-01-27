return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      -- Optional: Configure the preview window to also appear on the left
      view_options = {
        show_hidden = true,
      },
      float = {
        preview_split = "left",
      },
    })
  end,
  keys = {
    {
      "<leader>e",
      function()
        -- Custom logic to open Oil in a vertical split on the left
        --vim.cmd("topleft vsplit")
        --vim.cmd("vertical resize 35")
        require("oil").open()
      end,
      --desc = "Open Oil in left sidebar",
      desc = "Open Oil",
    },
  },
  lazy = false
}

