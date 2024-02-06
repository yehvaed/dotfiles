return {
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        -- @terraform #devops
        "terraform",

        -- @lua #dev
        "lua",

        -- @bash #dev
        "bash"
      },
      auto_install = true,
    })
  end,
}
