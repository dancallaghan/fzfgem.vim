let s:checked = 0

function! s:check_requirements()
  if s:checked
    return
  endif

  if !exists('*fzf#run')
    throw "fzf#run function not found. You also need Vim plugin from the main fzf repository (i.e. junegunn/fzf *and* junegunn/fzf.vim)"
  endif

  if !exists(':Bundle')
    throw "tpope/vim-bundler plugin not found."
  endif

  let s:checked = 1
endfunction

function! fzfgem#gems(bang)
  call s:check_requirements()

  let gems = bundler#project().gems()
  return fzf#run(fzf#wrap('gems', { 'source': sort(keys(gems)), 'sink': 'Bopen' }, a:bang))
endfunction
