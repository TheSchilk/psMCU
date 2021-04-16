# Main .psASM file name:
MAIN_SOURCE_NAME = combined_startup_test.psASM

# Build Directory:
BUILD_DIR = build

# Output name
# The same as MAIN_SOURCE_NAME by default:
OUTPUT_NAME = $(MAIN_SOURCE_NAME:.psASM=)

# Additional Flags:
ASM_FLAGS =

.PHONY: all
all: bin info 

.PHONY: clean
clean:
	rm $(ASM_FLAGS) $(BUILD_DIR)/$(OUTPUT_NAME).bin
	rm $(ASM_FLAGS) $(BUILD_DIR)/$(OUTPUT_NAME)LOGISIM
	rm $(ASM_FLAGS) $(BUILD_DIR)/$(OUTPUT_NAME)_H.bin
	rm $(ASM_FLAGS) $(BUILD_DIR)/$(OUTPUT_NAME)_L.bin
	rm $(ASM_FLAGS) $(BUILD_DIR)/$(OUTPUT_NAME).map
	rm $(ASM_FLAGS) $(BUILD_DIR)/$(OUTPUT_NAME).defs

.PHONY: bin
bin:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -D $(ASM_FLAGS)

.PHONY: logisim
logisim:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -L $(ASM_FLAGS)

.PHONY: split_bin
split_bin:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -S $(ASM_FLAGS)

.PHONY: info map defs
info: map defs

map:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -M $(ASM_FLAGS)

defs:
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(BUILD_DIR)/$(OUTPUT_NAME) -D $(ASM_FLAGS)








