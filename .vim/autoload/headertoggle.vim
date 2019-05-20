function! headertoggle#toggle() " bang for overwrite when saving vimrc
let file_path = expand("%")
let file_name = expand("%<")
let extension = split(file_path, '\.')[-1] " '\.' is how you really split on dot
let err_msg = "There is no file "

if extension == "cpp"
    let next_file = join([file_name, ".h"], "")

    if filereadable(next_file)
    :e %<.h
    else
        echo join([err_msg, next_file], "")
    endif
elseif extension == "h"
    let next_file = join([file_name, ".cpp"], "")

    if filereadable(next_file)
        :e %<.cpp
    else
        echo join([err_msg, next_file], "")
    endif
endif
endfunction

