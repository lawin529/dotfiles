require('base')
require('plugins')

require('orgmode').setup_ts_grammar()

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highliting = {'org'},
  },
  ensure_installed = {'org'},
}

require('orgmode').setup({
  org_agenda_files = '~/school/org/*',
  org_default_notes_file = '~/school/org/refile.org',
})
