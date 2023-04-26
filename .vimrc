source ~/.minimal_vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" INSTALL VUNDLE PLUGINS HERE

" FZF used for fuzzy searching: since I've installed it via Homebrew I need:
" More here: https://github.com/junegunn/fzf/blob/master/README-VIM.md
set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim' " uses FZF for file searching
Plugin 'maralla/completor.vim' " completion manager. For language support, configure as documented
Plugi 'w0rp/ale' " async linter



" Launch vim and run :PluginInstall

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Map Ctrl-P to FZF Files
nnoremap <C-p> :FZF!<Cr>

" Point path to clang for you completor
let g:completor_clang_binary = '/Library/Developer/CommandLineTools/usr/bin/clang'

" Common mappings for completor to jump to definitions and document strings
noremap <silent> <leader>d :call completor#do('definition')<CR>
noremap <silent> <leader>c :call completor#do('doc')<CR>
noremap <silent> <leader>f :call completor#do('format')<CR>
noremap <silent> <leader>s :call completor#do('hover')<CR>






