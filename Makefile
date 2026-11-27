ROLE ?= general
ROLES := general devops software biomedical mechanical electrical robotics
ifeq ($(filter $(ROLE),$(ROLES)),)
$(error Unknown ROLE '$(ROLE)'. Choose one of: $(ROLES))
endif
OUTDIR := $(if $(filter general,$(ROLE)),out,out/$(ROLE))

.PHONY: pdf all clean
pdf:
	mkdir -p $(OUTDIR)
	latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -jobname=Gavin_Tranquilino -outdir=$(OUTDIR) -auxdir=$(OUTDIR) -usepretex='\def\resumeRole{$(ROLE)}' Gavin_Tranquilino.tex

all:
	$(foreach role,$(ROLES),$(MAKE) pdf ROLE=$(role) && ) true

clean:
	$(foreach role,$(ROLES),latexmk -C -outdir=$(if $(filter general,$(role)),out,out/$(role)) -auxdir=$(if $(filter general,$(role)),out,out/$(role)) Gavin_Tranquilino.tex;)
