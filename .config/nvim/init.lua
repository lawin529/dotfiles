require('base')
require('plugins')

vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-c>', '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })

vim.opt.background = "dark"
vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
vim.cmd("highlight Normal guibg=black ctermbg=black")

require('nvim-treesitter.configs').setup ({
  ensure_installed = 'all' ,
  ignore_install = { 'org' },
})

require('orgmode').setup({
  org_agenda_files = '/home/w/school/org/*',
  org_default_notes_file = '~/school/org/refile.org',
  org_deadline_warning_days = 31,
  org_hide_leading_stars = true,
  org_todo_keywords = { 'TODO', 'QUIZ', 'EXAM', '|', 'DONE' },
  org_todo_keyword_faces = {
    DONE = ':foreground blue :weight bold',
    EXAM = ':background #FFFFFF :slant italic :underline on',
    TODO = ':background #000000 :foreground red', -- overrides builtin color for `TODO` keyword
  },
  org_agenda_start_on_weekday = false,
  org_agenda_start_day = "+0d",
  org_agenda_skip_scheduled_if_done = true,
  org_agenda_skip_deadline_if_done = true,
  org_agenda_span = 'month',
})

