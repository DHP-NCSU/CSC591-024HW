# Default is show help; e.g.
#
#    make 
#
# prints the help text.

SHELL     := bash
MAKEFLAGS += --warn-undefined-variables
.SILENT:

Top=$(shell git rev-parse --show-toplevel)
Data ?= $(Top)/../data/optimize
Tmp  ?= $(HOME)/tmp
Act  ?= mqs

help      :  ## show help
	gawk -f $(Top)/etc/help.awk $(MAKEFILE_LIST) 

pull    : ## download
	git pull

push    : ## save
	read -ep "\033[33mWhy this push? \033[0m" x; git commit -am "$$x"; git push; git status

$(Top)/docs/%.pdf: %.py  ## make doco: .py ==> .pdf
	mkdir -p ~/tmp
	echo "pdf-ing $@ ... "
	a2ps                 \
		-Br                 \
		--chars-per-line=90 \
		--file-align=fill      \
		--line-numbers=1        \
		--pro=color               \
		--left-title=""            \
		--borders=no             \
	    --left-footer="$<  "               \
	    --right-footer="page %s. of %s#"               \
		--columns 3                 \
		-M letter                     \
	  -o	 $@.ps $<
	ps2pdf $@.ps $@; rm $@.ps
	open $@

docs/%.html : docs/%.md etc/b4.html docs/ezr.css Makefile ## make doco: md -> html
	echo "$< ... "
	pandoc -s  -f markdown --number-sections --toc  --toc-depth=5 \
					-B etc/b4.html --mathjax \
  		     --css ezr.css --highlight-style tango \
	  			 -o $@  $<

docs/%.html : %.py etc/py2html.awk etc/b4.html docs/ezr.css Makefile ## make doco: md -> html
	echo "$< ... "
	gawk -f etc/py2html.awk $< \
	| pandoc -s  -f markdown --number-sections --toc --toc-depth=5 \
					-B etc/b4.html --mathjax \
  		     --css ezr.css --highlight-style tango \
					 --metadata title="$<" \
	  			 -o $@ 

# another commaned
acts: ## experiment: mqs
	$(MAKE) Data=$(Data) Tmp=~/tmp/ Act=mqs act

act: ## experiment: mqs
	$(foreach d, config hpo misc process,         \
		$(foreach f, $(wildcard $(Data)/$d/*.csv),   \
				mkdir -p $(Out)/$(Act)/$d;                 \
       ./ezr.py -t $f -e $(Act)  | tee $(Out)/$(Act)/$d/$f ; ))

fred:
	echo $x
