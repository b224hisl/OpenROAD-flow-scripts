export PLATFORM               = asap7

export DESIGN_NAME            = bfly

export VERILOG_FILES          = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE               = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc


export PLACE_DENSITY          = 0.35
