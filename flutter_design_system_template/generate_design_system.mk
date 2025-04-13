.PHONY: build clean

# Default target
all: build

# Prompt for prefix only if not set externally (e.g. `make build PREFIX=my`)
ifndef PREFIX
  PREFIX := $(shell read -p "Enter desired prefix (e.g., 'my'): " prefix; echo $$prefix)
endif

# Directories
SRC_DIR := custom_design
BUILD_DIR := ../build
DEST_DIR := $(BUILD_DIR)/$(PREFIX)_design

# Capitalized prefix for class names
CAP_PREFIX := $(shell echo $(PREFIX) | awk '{print toupper(substr($$0,1,1)) substr($$0,2)}')

# Validate prefix
ifeq ($(strip $(PREFIX)),)
    $(error Please provide a non-empty prefix)
endif

build:
	@echo "📁 Creating build directory..."
	@mkdir -p $(BUILD_DIR)
	@cp -r $(SRC_DIR) $(DEST_DIR)

	@echo "🔤 Replacing file and directory names..."
	@find $(DEST_DIR) -depth -name "*custom_*" | while read path; do \
		new_path=$$(echo $$path | sed "s/custom_/$(PREFIX)_/g"); \
		mv "$$path" "$$new_path"; \
	done

	@echo "📝 Replacing contents in files..."
	@find $(DEST_DIR) -type f | while read file; do \
		sed -i '' \
			-e "s/CustomDesign/$(CAP_PREFIX)Design/g" \
			-e "s/Custom/$(CAP_PREFIX)/g" \
			-e "s/custom_design/$(PREFIX)_design/g" \
			-e "s/package:custom_design/package:$(PREFIX)_design/g" \
			-e "s/src\/custom_/src\/$(PREFIX)_/g" \
			-e "s/'custom_/'$(PREFIX)_/g" \
			-e 's/"custom_/"$(PREFIX)_/g' \
			-e "s/export '\([^']*\)custom_/export '\1$(PREFIX)_/g" \
			-e 's/export "\([^"]*\)custom_/export "\1$(PREFIX)_/g' \
			"$$file"; \
	done

	@echo "📦 Updating pubspec.yaml if it exists..."
	@if [ -f "$(DEST_DIR)/pubspec.yaml" ]; then \
		sed -i '' "s/name: custom_design/name: $(PREFIX)_design/g" "$(DEST_DIR)/pubspec.yaml"; \
	fi

	@echo "✅ Build complete! Output at $(DEST_DIR)"

clean:
	@echo "🧹 Cleaning build directory..."
	@rm -rf $(BUILD_DIR)
	@echo "✅ Clean complete!"
