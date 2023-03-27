export PLATFORM               = asap7

export DESIGN_NAME            = inverter

export VERILOG_FILES          = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE               = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export CORE_UTILIZATION       = 5
export PLACE_DENSITY          = 0.35
