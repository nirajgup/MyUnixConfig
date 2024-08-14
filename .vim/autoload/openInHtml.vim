function! openInHtml#open() " bang for overwrite when saving vimrc
	let file_path = expand("%")
	if strlen(file_path) == 0
		let file_path = "~/Untitled"
	endif

	let s:current_colorscheme = execute(":colorscheme")
	:colorscheme morning
	:set nonumber
	let s:generateHTML = execute(":TOhtml")
	:wq
	execute "silent !open " . join([file_path, ".html"], "")
	execute ':source ~/.vimrc'
	"execute ':colorscheme ' . s:Chomp(s:current_colorscheme )
endfunction

function! s:Chomp(string)
	return substitute(a:string, '\n\+', '', '')
endfunction

