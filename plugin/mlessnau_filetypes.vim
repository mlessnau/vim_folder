" register custom file types
"augroup CustomFileTypes
	"au!
	au BufNewFile,BufRead *.phtml      setfiletype html
	au BufNewFile,BufRead *.ctp        setfiletype html
	au BufNewFile,BufRead *.phtml      setfiletype html
	au BufNewFile,BufRead *.ui         setfiletype ruby
	au BufNewFile,BufRead Rakefile     setfiletype ruby
	au BufNewFile,BufRead Guardfile    setfiletype ruby
	au BufNewFile,BufRead Fudgefile    setfiletype ruby
	au BufNewFile,BufRead Gemfile      setfiletype ruby
	au BufNewFile,BufRead Gemfile.lock setfiletype ruby
	au BufRead,BufNewFile *.scss       set filetype=scss
	au BufRead,BufNewFile *.less       set filetype=scss
"augroup END
