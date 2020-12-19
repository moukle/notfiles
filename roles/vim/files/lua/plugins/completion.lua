require 'util'

-- Use <Tab> and <S-Tab> to navigate through popup menu
inoremap('<C-j>', [[pumvisible() ? "<C-n>" : "<C-j>"]], {expr = true})
inoremap('<C-k>', [[pumvisible() ? "<C-p>" : "<C-k>"]], {expr = true})

-- Set completeopt to have a better completion experience
set {'completeopt', 'menuone,noinsert,noselect'}

-- Use Ctrl + Space to toggle completion
vim.g.completion_enable_auto_popup = 0
imap('<C-Space>', [[<Plug>(completion_trigger)]], {silent = true})

vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy', 'all'}
vim.g.completion_matching_smart_case = 1

-- Use vim-vsnip snippets
vim.g.completion_enable_snippet = 'vim-vsnip'

-- Insert parenthesis when completing methods or functions.
vim.g.completion_enable_auto_paren = 1
