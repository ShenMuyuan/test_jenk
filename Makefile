# tool macros
CC = gcc
CXX = g++
CFLAGS = 
CXXFLAGS =
CPPFLAGS =
LDFLAGS =

# path macros
BIN_PATH = .
OBJ_PATH = .
SRC_PATH = .

# compile macros
TARGET_NAME := test_jenk_proj
TARGET := $(BIN_PATH)/$(TARGET_NAME)

# src files & obj files
SRC := $(foreach x, $(SRC_PATH), $(wildcard $(addprefix $(x)/*,.c*)))
OBJ := $(addprefix $(OBJ_PATH)/, $(addsuffix .o, $(notdir $(basename $(SRC)))))

# clean files list
CLEAN_LIST := $(TARGET) $(OBJ)

# default rule
default: makedir all

# non-phony targets
$(TARGET): $(OBJ)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(OBJ_PATH)/%.o: $((SRC_PATH)/%.c*)

# phony rules
.PHONY: makedir
makedir:
	@mkdir -p $(BIN_PATH) $(OBJ_PATH)

.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	@rm -rf $(CLEAN_LIST)