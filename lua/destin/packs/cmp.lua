require('blink.cmp').setup({
  fuzzy = { implementation = 'lua' },
  keymap = {
    ['<C-i>'] = { 'show_documentation' },
    ['<C-l>'] = { 'snippet_forward' },
    ['<C-h>'] = { 'snippet_backward' }
  },
  completion = {
    menu = {
      draw = {
        columns = {
          { "label", "label_description", gap = 4 },
          { "kind", gap = 1, "source_name" },
        }
      }
    }
  }
})
