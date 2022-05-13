require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'molokai',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  tabline = {
    lualine_a = {'tabs'},
    lualine_b = {'windows'},
    lualine_z = {'buffers'}
  },
}
