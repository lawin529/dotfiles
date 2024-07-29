require('base')
require('plugins')

require('orgmode').setup_ts_grammar()

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highliting = { 'org' },
  },
  ensure_installed = { 'org' },
}

require('orgmode').setup({
  org_agenda_files = '~/school/org/*',
  org_default_notes_file = '~/school/org/refile.org',
  org_deadline_warning_days = 31,
  org_hide_leading_stars = true,
  org_todo_keywords = { 'TODO', 'QUIZ', 'EXAM', '|', 'DONE', 'WRITTEN' },
  org_todo_keyword_faces = {
    TODO = ':foreground lightred',
    QUIZ = ':foreground blue :weight bold :underline on',
    EXAM = ':foreground darkred :weight bold :underline on',
    DONE = ':foreground green',
    WRITTEN = ':foreground green',
  },
  org_agenda_start_on_weekday = false,
  org_agenda_start_day = "-2d",
  org_agenda_skip_scheduled_if_done = true,
  org_agenda_skip_deadline_if_done = true,
  org_indent_mode = noindent
})
