.PHONY: design_system clean

# Default target
all: design_system

# Build the design system
design_system:
	@cd flutter_design_system_template && $(MAKE) -f generate_design_system.mk

# Clean the build directory
clean:
	@cd flutter_design_system_template && $(MAKE) -f generate_design_system.mk clean 