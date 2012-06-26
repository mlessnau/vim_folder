" register custom file types
augroup CustomFileTypes
	au!
	au BufNewFile,BufRead *.phtml setfiletype html
	au BufNewFile,BufRead *.ctp setfiletype html
	au BufNewFile,BufRead *.ui setfiletype ruby
	au BufNewFile,BufRead Gemfile setfiletype ruby
	au BufNewFile,BufRead Gemfile.lock setfiletype ruby
	au BufNewFile,BufRead Rakefile setfiletype ruby
	au BufNewFile,BufRead Fudgefile setfiletype ruby
augroup END