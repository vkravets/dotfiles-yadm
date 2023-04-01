return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite"
  },
  {
    "gbprod/cutlass.nvim",
    event = "BufEnter",
    config = function()
      require("cutlass").setup({
        override_del = false  
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end
  }
}
