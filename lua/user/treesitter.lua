local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"c", "cpp", "python", "go", "rust", "markdown", "javascript", "typescript", "bash", "make"},
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },

  rainbow = {
    enable = true,
    -- disable = {"jsx", "cpp"} list of language to disable the plugin for
    extended_mode = true,
    max_file_lines = nil,
    colors = {
      "#68a0b0",
      "#94gead",
      "#c7aa6d"
    },
    -- termcolors = {}
  }
}
