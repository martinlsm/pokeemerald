AUTO_GEN_TARGETS += $(DATA_ASM_SUBDIR)/scripts/gen/nuzlocketype.inc

# XXX: Refactor paths
# XXX: Fix problem that gen folder don't have to be created manually with mkdir
$(DATA_ASM_SUBDIR)/scripts/gen/nuzlocketype.inc: poryscripts/nuzlocketype.pory
	$(PORYSCRIPT) -lm=false -cc /poryscript-linux/command_config.json -fc /poryscript-linux/font_config.json -i /pokeemerald/poryscripts/nuzlocketype.pory -o /pokeemerald/data/scripts/gen/nuzlocketype.inc
