let g:wiki_root = '~/storage/external-1/wiki'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_link_target_type = 'md'

nnoremap <silent> <leader>wp :WikiFzfPages<CR>
nnoremap <silent> <leader>wt :WikiFzfTags<CR>
