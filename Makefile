.PHONY: help design_system flutter_app clean

# Default target: lists available commands.
help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@echo "  design_system    Builds the design system package."
	@echo "  flutter_app      Builds the Flutter application template."
	@echo "  clean            Removes the build directory."

# Build the design system
design_system:
	@dart run assembly/bin/assemble.dart design_package

# Build the flutter app
flutter_app:
	@dart run assembly/bin/assemble.dart flutter_app

# Clean the build directory
clean:
	@rm -rf ./build