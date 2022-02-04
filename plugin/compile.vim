autocmd BufReadPost *.c nmap <F5> :call CompileRun("gcc")<CR>
autocmd BufReadPost *.cpp nmap <F5> :call CompileRun("g++")<CR>

let s:target = "/tmp/a.out"

function CompileCheck(compiler)
	let l:cmd = "!" . a:compiler . " -fsyntax-only " . expand("%")
	exec l:cmd
endfunction

function CompileRun(compiler)
	let l:cmd = "!" . a:compiler . " -o " . s:target . " " . expand("%") . ";" . s:target
	exec l:cmd
endfunction
