-- neovim
vim.api.nvim_set_hl(0,"StatusLine",{bg="none"})
vim.api.nvim_set_hl(0,"StatusLineNC",{bg="none"})
vim.api.nvim_set_hl(0,'Comment',{bold=true,undercurl=true})
vim.opt.termguicolors=false
vim.opt.number=true
vim.opt.relativenumber=false
vim.opt.updatetime=250
vim.opt.inccommand="split"
vim.opt.list=true
vim.opt.colorcolumn="0"
vim.opt.listchars={tab='» ',trail='·',nbsp='␣'}
-- netrw
vim.g.netrw_liststyle=3
vim.g.netrw_browse_split=2
vim.g.netrw_keepdir=0
vim.g.netrw_banner=0
-- remap
vim.g.mapleader=" "
vim.keymap.set('n','<leader>e','<cmd>Alpha<CR>')
vim.keymap.set('n','<leader>w',vim.cmd.w)
vim.keymap.set('n','<leader>q',vim.cmd.q)
vim.keymap.set({'n','v'},'<Leader>y','"+y')
vim.keymap.set({'n','v'},'<Leader>p','"+p')
vim.keymap.set('n','<Esc>','<cmd>nohlsearch<CR>')
-- alpha
local alpha=require("alpha")
local dashboard=require("alpha.themes.dashboard")
dashboard.section.header.val={
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠠⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠠⡐⣐⣧⣾⣾⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣥⣤⣴⢶⣶⣶⣶⣶⠾⠞⠓⠂⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣻⣿⣿⣿⣿⣥⠤⠤⢶⡂⠀⠄⠀⠄⠀⠀⠀⣄⣔⣤⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠄⡀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣍⣿⣿⣛⣻⡿⣿⡷⣶⢍⠢⡀⣀⣤⢲⡆⢹⢾⢸⠂⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠉⠛⣿⣎⢻⠞⣣⣄⡷⢿⠿⣼⢃⣓⢎⠆⠀⠀]],
[[⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠆⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣟⢦⣶⣿⢝⠞⡨⣳⡿⢑⣹⠟⠁⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⢾⡻⣙⢔⢨⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⣴⣟⣵⡿⣻⣕⢥⣾⢞⣵⡣⠞⠁⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⣠⣶⢟⡭⡺⣝⣝⣾⡾⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣟⡿⣞⣿⡾⡿⣝⣼⡪⣟⣽⡾⠟⠁⠀⢀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⡠⣴⠟⣩⣾⠗⡩⣪⣾⡿⣻⡾⠛⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣻⣯⣗⣯⣷⡟⣏⣧⡷⣟⣫⡵⠞⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⢀⡪⠞⠡⣚⡻⠥⡜⣮⣟⣾⢼⣿⡅⠀⢹⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢿⡞⣿⣻⢼⢷⣛⣯⡷⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⢠⣱⣍⣡⣁⡮⡷⢺⣟⢿⣷⣻⣮⣻⡿⣶⣤⣿⣿⣟⣿⣿⣿⣛⣻⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣧⣿⣷⣫⣿⢷⡟⢏⡙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⣼⢶⣟⢼⡻⣺⣝⡷⣨⢓⠥⡟⣻⣾⣿⠿⠿⣷⣶⣶⣾⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣯⣿⣿⣿⣟⡻⠹⣓⣺⣵⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠘⠿⣗⡽⣵⡌⣝⡛⣷⡿⢿⣤⣿⣿⣷⣾⡿⢿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡯⣤⡷⡿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠉⠙⠚⠛⠛⠿⠿⠿⠿⠿⠿⠟⠛⠛⠛⠛⠋⠉⠩⢗⢽⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠙⠋⠟⠋⠛⠛⡛⠛⠉⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠁⠀⠀⠀⠀⠀⠀⠄⠂]],
[[⠄⠀⠀⠀⠐⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠈⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠂⠀⠀⠂⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠁⡀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠂⠀⠀⠀⠠⠀⠀⠀]]
}
dashboard.section.buttons.val={
dashboard.button("n"," Novo",":ene <BAR> startinsert <CR>"),
dashboard.button("f","󰱽 Procurar",":Telescope find_files <CR>"),
dashboard.button( "r"," Recentes",":Telescope oldfiles<CR>"),
dashboard.button("e","󰙅 Explorar",":Ex <CR>"),
dashboard.button("q","󰅚 Sair",":qa <CR>")
}
alpha.setup(dashboard.config)
-- telescope
vim.cmd([[packadd plenary.nvim]])
vim.cmd([[packadd telescope.nvim]])
local telescope=require("telescope")
telescope.setup({
defaults={
file_ignore_patterns={
"%.cache",
"%.config/GIMP",
"%.config/dconf",
"%.config/discord",
"%.config/gtk%-3%.0",
"%.config/mozilla",
"nvim/pack/.*",
"%.config/mprocps",
"%.config/pulse",
"%.config/unity3d",
"%.java",
"%.local",
"%.mysql",
"%.netbeans",
"%.pki",
"%.steam",
"netbeans",
"node_modules",
"%.git/",
"target/",
"dist/"
},
},
pickers={
find_files={
hidden=true,
},
}
})
local builtin = require('telescope.builtin')
vim.keymap.set('n','<leader>f',builtin.find_files)
