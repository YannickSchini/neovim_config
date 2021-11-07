nnoremap <leader>ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>he :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>hm :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <leader>e :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>i :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>u :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>a :lua require("harpoon.ui").nav_file(4)<CR>
