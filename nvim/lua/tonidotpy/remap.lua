local map = vim.keymap.set

-- Requires
local dap = require('dap')
local cmp = require('cmp')

-- Does nothing other than clear highlights
map('n', '<ESC>', '<cmd>noh<CR>', { desc = 'general clear highlights' })

-- Open file editor
map('n', '<leader>fe', vim.cmd.Oil, { desc = 'open file editor' })

-- Reload current file
map('n', '<leader>r', ':e<CR>', { desc = 'reload current file' })

-- Open config files
map('n', '<leader>fc', ':e ' .. vim.fn.stdpath('config') .. '/lua/' .. vim.env.USER .. '/set.lua<CR>', { desc = 'open neovim configuration file' })
map('n', '<leader>fm', ':e ' .. vim.fn.stdpath('config') .. '/lua/' .. vim.env.USER .. '/remap.lua<CR>', { desc = 'open neovim remaps file' })

map('n', '<leader>fC', ':e ' .. vim.env.XDG_CONFIG_HOME .. '<CR>', { desc = 'open the XDG_CONFIG_HOME folder' })
map('n', '<leader>fd', ':e ' .. vim.env.HOME .. '/Desktop<CR>', { desc = 'open the desktop' })
map('n', '<leader>fw', ':e ' .. vim.env.HOME .. '/Desktop/informatica/eagletrt<CR>', { desc = 'open the work folder' })

-- Telescope
map('n', '<leader>fs', '<cmd>Telescope find_files<CR>', { desc = 'telescope find files' })
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = 'telescope live grep' })
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'telescope find buffers' })
map('n', '<leader>ff', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { desc = 'telescope fuzzy find in current buffer' })

-- Undo tree
map('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "open undo tree" })

-- Change current working directory
map('n', '<leader>cd', function()
    local path = vim.api.nvim_buf_get_name(0)
    local dir = nil
    -- Check if path is directory or file
    if vim.fn.isdirectory(path) ~= 0 then
        dir = path
    elseif not vim.fn.empty(vim.fn.glob(path)) ~= 0 then
        dir = path:match('(.*'..'/'..')')
    end

    -- Change current global directory
    if dir ~= nil then
        -- Remove URI prefix if present
        dir = dir:gsub('^%w+://', '')

        -- Print and change directory
        print(dir)
        vim.api.nvim_set_current_dir(dir)
    else
        print('Cannot change directory in this context')
    end
end, { desc = 'Change directory to the folder of the current active buffer' })

-- Quit and save
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>we', ':w<CR>')

-- Quick exit from insert mode
map('i', 'jk', '<esc>', { desc = 'exit from insert mode' })
map('i', 'JK', '<esc>', { desc = 'exit from insert mode' })

-- Move between windows
map('n', '<C-j>', '<C-w>j', { desc = 'switch window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'switch window up' })
map('n', '<C-h>', '<C-w>h', { desc = 'switch window left' })
map('n', '<C-l>', '<C-w>l', { desc = 'switch window right' })

-- Split window
map('n', '<leader>wh', '<C-w>s', { desc = 'split window horizontally' })
map('n', '<leader>wv', '<C-w>v', { desc = 'split window vertically' })

-- Move selection
map('v', 'J', ':m \'>+1<CR>gv=gv', { desc = 'move selection down' })
map('v', 'K', ':m \'<-2<CR>gv=gv', { desc = 'move selection up' })

-- Comments
map('n', '<leader>/', function()
    require('Comment.api').toggle.linewise.current()
end, { desc = 'comment toggle' })
map(
    'v',
    '<leader>/',
    '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
    { desc = 'comment toggle' }
)

-- Move cursor in insert mode
map('i', '<C-j>', '<down>', { desc = 'move down' })
map('i', '<C-k>', '<up>', { desc = 'move up' })
map('i', '<C-h>', '<left>', { desc = 'move left' })
map('i', '<C-l>', '<right>', { desc = 'move right' })
map('i', '<C-b>', '<home>', { desc = 'move at the beginning of the line' })
map('i', '<C-e>', '<end>', { desc = 'move at the end of the line' })

-- Fix curson position while appending lines
map('n', 'J', 'mzJ`z', { desc = 'fix cursor position while appending lines' })

-- Keep cursor in the middle during movement
map('n', '<C-d>', '<C-d>zz', { desc = 'go a page down' })
map('n', '<C-u>', '<C-u>zz', { desc = 'go a page up' })
map('n', 'n', 'nzzzv', { desc = 'go to the next word of the search' })
map('n', 'N', 'Nzzzv', { desc = 'go to the previous word of the search' })

-- Replace all
map('n', '<leader>h', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'replace all the instances of a selection' })

-- Open terminal horizontally
map('n', '<leader>th', '<C-w>s<C-w>j14<C-w>_:terminal<CR>i', { desc = 'open terminal' })

-- Escape from terminal mode
map('t', '<esc>', '<C-\\><C-n>', { desc = 'escape from terminal' })

-- Nvim Cmp
-- map("i", "<CR>", function()if cmp.visible() then cmp.mapping.confirm {
--     behavior = cmp.ConfirmBehavior.Insert,
--     select = true
-- }end end, { desc = "autocomplete current word" })
-- map("i", "<Tab>", function()
--     cmp.mapping["<Tab>"] = cmp.mapping(function(fallback)
--         if cmp.visible() then
--             cmp.mapping.confirm {
--                 behavior = cmp.ConfirmBehavior.Replace,
--                 select = true
--             }
--         else
--             fallback()
--         end
--     end)
-- end, { desc = "autocomplete and replace current word" })

-- Debug
map('n', '<leader>db', dap.toggle_breakpoint, {})
map('n', '<leader>dc', dap.continue, {})
map('n', '<leader>ca', '<F4>', {})
