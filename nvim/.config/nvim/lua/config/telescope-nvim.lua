local telescope = require 'telescope'

telescope.setup {
    defaults = {
        prompt_prefix = '  ',
        color_devicons = false,
        file_ignore_patterns = {'node_modules/%', '%.ppm'},
        theme = 'ivy'
    },
    pickers = {
        find_files = {
            theme = 'ivy'
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = 'smart_case'        -- or "ignore_case" or "respect_case"
                                            -- the default case_mode is "smart_case"
        }
    }
}

telescope.load_extension 'fzf'
telescope.load_extension 'projects'
