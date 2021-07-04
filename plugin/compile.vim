autocmd BufReadPost *.c nmap <F5> :call CompileCheck()<CR>
autocmd BufReadPost *.cpp nmap <F5> :call CompileCheck()<CR>
function CompileCheck()
	exec "!gcc -fsyntax-only " . expand("%")
endfunction
