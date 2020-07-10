COMMAND=latexmk
BUILD_DIR=build

SRC_MAIN=main.tex
SRC_HANDOUT=handout.tex $(SRC_MAIN)
SRC_COMMON=content.tex style.tex macro.tex $(wildcard img/*)

MAIN=$(BUILD_DIR)/$(SRC_MAIN:%.tex=%.pdf)
HANDOUT=$(BUILD_DIR)/$(SRC_HANDOUT:%.tex=%.pdf)

all: $(MAIN)

$(MAIN): $(SRC_MAIN) $(SRC_COMMON) $(BUILD_DIR)
	@$(COMMAND) -pv $<

$(HANDOUT): $(SRC_HANDOUT) $(SRC_COMMON) $(BUILD_DIR)
	@$(COMMAND) -pv $<

$(BUILD_DIR):
	@mkdir -p $@

.PHONY: clean daemon
clean:
	@rm -rf $(BUILD_DIR)

daemon: $(SRC_MAIN)
	@$(COMMAND) -pvc $<
