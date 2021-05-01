MAIN_SOURCE_NAME = recursion.psASM

# Build Directory:
BUILD_DIR = build

# Output name
# The same as MAIN_SOURCE_NAME by default:
OUTPUT_NAME = $(MAIN_SOURCE_NAME:.psASM=)

# Additional Flags
ASM_FLAGS = 

.PHONY: all
all: bin logisim info

.PHONY: clean
clean:
	-rm -rf $(BUILD_DIR)

.PHONY: bin
bin:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -B $(ASM_FLAGS)

.PHONY: logisim
logisim:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -L $(ASM_FLAGS)

.PHONY: split_bin
split_bin:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -S $(ASM_FLAGS)

.PHONY: info map defs usage
info: map defs usage

map:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -M $(ASM_FLAGS)

defs:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -D $(ASM_FLAGS)

usage:
	psASM $(MAIN_SOURCE_NAME) -U







