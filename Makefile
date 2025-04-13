.PHONY: design_system clean

# Default target
all: design_system

# Build the design system
design_system:
	@dart run assembler/bin/assembler.dart

# Clean the build directory
clean:
	@echo "Clean command not implemented for Dart assembler" 