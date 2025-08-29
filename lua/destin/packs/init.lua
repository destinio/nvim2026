vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = 'master' },
  { src = "https://github.com/rafamadriz/friendly-snippets" },
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range('1.6') },
  { src = "https://github.com/nvim-mini/mini.pick" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/windwp/nvim-autopairs" },
  { src = "https://github.com/catppuccin/nvim" },
  { src = "https://github.com/datsfilipe/vesper.nvim" }
})

require('destin.packs.treesitter')
require('destin.packs.theme')
require('destin.packs.lsp')
require('destin.packs.mini')
require('destin.packs.cmp')
require('destin.packs.files')
require('destin.packs.random')
