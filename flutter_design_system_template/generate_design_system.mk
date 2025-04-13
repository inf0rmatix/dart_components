.PHONY: build clean

# Default target
all: build

# Ask for prefix input
PREFIX := $(shell read -p "Enter desired prefix (e.g., 'my'): " prefix; echo $$prefix)

# Source and build directories
SRC_DIR := custom_design
BUILD_DIR := ../build

# Ensure prefix is provided
ifeq ($(PREFIX),)
    $(error Please provide a prefix)
endif

# Capitalize first letter of prefix
CAP_PREFIX := $(shell echo $(PREFIX) | awk '{print toupper(substr($$0,1,1)) substr($$0,2)}')

# Create build directory and copy files
build:
	@echo "Creating build directory..."
	@mkdir -p $(BUILD_DIR)
	@echo "Copying files with prefix replacement..."
	@cp -r $(SRC_DIR) $(BUILD_DIR)/$(PREFIX)_design
	
	# Rename files and directories
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -name "custom_*" -exec sh -c 'mv "$$1" "$$(echo $$1 | sed "s/custom_/$(PREFIX)_/")"' _ {} \;
	@find $(BUILD_DIR)/$(PREFIX)_design -type d -name "custom_*" -exec sh -c 'mv "$$1" "$$(echo $$1 | sed "s/custom_/$(PREFIX)_/")"' _ {} \;
	
	# Replace all occurrences in all files
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -exec sed -i '' 's/CustomDesign/$(CAP_PREFIX)Design/g' {} \;
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -exec sed -i '' 's/custom_design/$(PREFIX)_design/g' {} \;
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -exec sed -i '' 's/package:custom_design/package:$(PREFIX)_design/g' {} \;
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -exec sed -i '' 's/src\/custom_/src\/$(PREFIX)_/g' {} \;
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -exec sed -i '' 's/'\''custom_/'\''$(PREFIX)_/g' {} \;
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -exec sed -i '' 's/"custom_/"$(PREFIX)_/g' {} \;
	
	# Replace class name prefix in all files
	@find $(BUILD_DIR)/$(PREFIX)_design -type f -exec sed -i '' 's/Custom/$(CAP_PREFIX)/g' {} \;
	
	# Update pubspec.yaml if it exists
	@if [ -f "$(BUILD_DIR)/$(PREFIX)_design/pubspec.yaml" ]; then \
		sed -i '' 's/name: custom_design/name: $(PREFIX)_design/g' $(BUILD_DIR)/$(PREFIX)_design/pubspec.yaml; \
	fi
	
	@echo "Build complete! Files copied to $(BUILD_DIR)/$(PREFIX)_design with prefix '$(PREFIX)'"

# Clean build directory
clean:
	@echo "Cleaning build directory..."
	@rm -rf $(BUILD_DIR)
	@echo "Clean complete!" 