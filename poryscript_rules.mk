PORY_FILES := $(wildcard poryscripts/*.pory)
PORY_INC_FILES := $(patsubst poryscripts/%.pory,$(DATA_ASM_SUBDIR)/scripts/gen/%.pory.inc,$(PORY_FILES))

AUTO_GEN_TARGETS += $(PORY_INC_FILES)

$(DATA_ASM_SUBDIR)/scripts/gen/%.pory.inc: poryscripts/%.pory
	$(PORYSCRIPT) -lm=false -cc $(TOOLS_DIR)/poryscript/command_config.json -fc $(TOOLS_DIR)/poryscript/font_config.json -i $< -o $@
