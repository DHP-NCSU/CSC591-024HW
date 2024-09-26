# modified to generate shell to verify the JJR hypo

SHELL     := bash
MAKEFLAGS += --warn-undefined-variables
.SILENT:

Top=$(shell git rev-parse --show-toplevel)/HW3
Data ?= $(Top)/data
Act  ?= SnD
Out  ?= $(Top)/tmp

# function to check if a file is low-dimensional
define is_low_dim
$(shell python3 -c "from ezr import DATA, csv; d = DATA().adds(csv('$(1)')); print('yes' if len(d.cols.x) <= 5 else 'no')")
endef

SnD_low_dim: ## experiment: Smart and Dumb on low-dimension data
	echo "mkdir -p $(Out)/$(Act)/low_dim"
	echo "rm -f $(Out)/$(Act)/low_dim/*"
	$(foreach d, config hpo misc process, \
		$(foreach f, $(wildcard $(Data)/$d/*.csv), \
			$(if $(filter yes,$(call is_low_dim,$(f))), \
				echo "python3.13 $(PWD)/SnD.py $(f) | tee $(Out)/$(Act)/low_dim/$(shell basename $(f)) & "; \
			) \
		) \
	)

SnD_other_dim: ## experiment: Smart and Dumb on non-low-dimension data
	echo "mkdir -p $(Out)/$(Act)/other_dim"
	echo "rm -f $(Out)/$(Act)/other_dim/*"
	$(foreach d, config hpo misc process, \
		$(foreach f, $(wildcard $(Data)/$d/*.csv), \
			$(if $(filter no,$(call is_low_dim,$(f))), \
				echo "python3.13 $(PWD)/SnD.py $(f) | tee $(Out)/$(Act)/other_dim/$(shell basename $(f)) & "; \
			) \
		) \
	)