local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = { '', '' },
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    sort_by = "tabs",
    --numbers = "numbers",
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = true
  },
  highlights = {
    separator = {
    },
    separator_selected = {
      --  fg = '#6c71c4',
    },
    background = {
      -- fg = '#657b83',
      fg = '#6c71c4',
      --bg = '#2D2B55'
    },
    buffer_selected = {
      -- fg = '#fdf6e3',
      bold = true,
      italic = false
    },
    fill = {
    }
  },
})


vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
