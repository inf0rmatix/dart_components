.PHONY: design_system clean

# Default target
all: design_system

# Build the design system
design_system:
	@dart run assembly/bin/assemble_design_package.dart

# Clean the build directory
clean:
	@rm -rf ./build