########################################
#                                      #
# psASM Makefile for psMCU Development #
#           Philipp Schilk             #
#                                      #
########################################

# TODO: set main source name
MAIN_SOURCE_NAME = FibToRam.psASM

# Build Directory:
BUILD_DIR = build

# Output name
# The same as MAIN_SOURCE_NAME by default:
OUTPUT_NAME = $(MAIN_SOURCE_NAME:.psASM=)
OUTPUT = $(BUILD_DIR)/$(OUTPUT_NAME)

# The filenames, as they will be created by psASM:
OUTPUT_PSOBJ = $(OUTPUT).psOBJ
OUTPUT_BIN = $(OUTPUT).bin
OUTPUT_LOGISIM = $(OUTPUT)LOGISIM
OUTPUT_SPLIT_L = $(OUTPUT)_L.bin
OUTPUT_SPLIT_H = $(OUTPUT)_H.bin
OUTPUT_MAP = $(OUTPUT).map
OUTPUT_ANNOTATED = $(OUTPUT)_annotated.psASM

# Additional Flags
ASM_FLAGS = 

# Discover all .psASM source files:
ASM_SOURCES = $(wildcard *.psASM)

###########  Utility Targets  ###########
.PHONY: std 
std: bin info

.PHONY: all 
all: bin logisim split_bin debug_info info

.PHONY: clean
clean:
	-rm -rf $(BUILD_DIR)

.PHONY: flash
flash: $(OUTPUT_BIN)
	psPROG -w 0 $(OUTPUT_BIN)

.PHONY: emu
emu: $(OUTPUT_PSOBJ)
	@echo "TODO"

.PHONY: debug_info
debug_info: $(ASM_SOURCES) makefile
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(OUTPUT) -X all $(ASM_FLAGS)

###########  Output Targets  ###########
.PHONY: obj
obj: $(OUTPUT_PSOBJ)

.PHONY: bin
bin: $(OUTPUT_BIN)

.PHONY: logisim
logisim: $(OUTPUT_LOGISIM)

.PHONY: split_bin
split_bin: $(OUTPUT_SPLIT_H)

.PHONY: info map usage annotated
info: map annotated usage
map: $(OUTPUT_MAP)
annotated: $(OUTPUT_ANNOTATED)
usage: $(OUTPUT_PSOBJ)
	psASM $(OUTPUT_PSOBJ) -o $(OUTPUT) -U $(ASM_FLAGS)

###########  Build Rules ###########

$(OUTPUT_PSOBJ): $(ASM_SOURCES) makefile
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(OUTPUT) -O $(ASM_FLAGS)

$(OUTPUT_BIN): $(OUTPUT_PSOBJ)
	psASM $(OUTPUT_PSOBJ) -o $(OUTPUT) -B $(ASM_FLAGS)

$(OUTPUT_LOGISIM): $(OUTPUT_PSOBJ)
	psASM $(OUTPUT_PSOBJ) -o $(OUTPUT) -L $(ASM_FLAGS)

$(OUTPUT_SPLIT_H): $(OUTPUT_PSOBJ)
	psASM $(OUTPUT_PSOBJ) -o $(OUTPUT) -S $(ASM_FLAGS)

$(OUTPUT_MAP): $(OUTPUT_PSOBJ)
	psASM $(OUTPUT_PSOBJ) -o $(OUTPUT) -M $(ASM_FLAGS)

$(OUTPUT_ANNOTATED): $(ASM_SOURCES) makefile
	@mkdir -p $(BUILD_DIR)
	psASM $(MAIN_SOURCE_NAME) -o $(OUTPUT) -A $(ASM_FLAGS)
