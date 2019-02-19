" todo文件的语法高亮文件"
syntax match Todo_Project "\v\$.*$"
highlight link Todo_Project Todo

syntax match Note "\v\@.*$"
highlight link Note Label

syntax match checkLabel "\v✔.*$"
syntax match checkLabel "\v✔ .*★"
highlight link checkLabel Comment

syntax match starLabel  "\v[^✔]*★"
highlight link starLabel Exception

syntax match uncheckLabel "\v☐.*$"
highlight link uncheckLabel Identifier

