vim.cmd [[
  " https://stackoverflow.com/questions/2490227/how-does-vims-autoread-work/20418591#20418591
  " from Bananach's answer"
  if ! exists("g:CheckUpdateStarted")
      let g:CheckUpdateStarted=1
      call timer_start(1,'CheckUpdate')
  endif
  function! CheckUpdate(timer)
      silent! checktime
      call timer_start(1000,'CheckUpdate')
  endfunction
]]
