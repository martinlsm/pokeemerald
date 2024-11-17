.PHONY: all clean

all: poryscript
	@:

# TODO: Change installation manner
poryscript:
	ln -sf /poryscript-linux/poryscript poryscript
	ln -sf /poryscript-linux/command_config.json command_config.json
	ln -sf /poryscript-linux/font_config.json font_config.json

clean:
	rm -f poryscript command_config.json font_config.json
