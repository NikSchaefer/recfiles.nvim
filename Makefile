.PHONY: test install clean

test:
	@echo "Testing syntax file..."
	@nvim --headless -c "set rtp+=." -c "source syntax/recfiles.vim" -c "q" && echo "✓ Syntax file loads correctly"
	
	@echo "Testing file type detection..."
	@echo "Title: Test" > test_detection.rec
	@result=$$(nvim --headless -c "set rtp+=." -c "runtime ftdetect/recfiles.vim" -c "edit test_detection.rec" -c "echo &filetype" -c "q" 2>&1 | tail -n1); \
	if [ "$$result" = "recfiles" ]; then \
		echo "✓ .rec extension detected correctly"; \
	else \
		echo "✗ .rec extension detection failed (got: $$result)"; \
		exit 1; \
	fi
	@rm -f test_detection.rec
	
	@echo "All tests passed!"

install:
	@if [ -d "$$HOME/.config/nvim" ]; then \
		mkdir -p $$HOME/.config/nvim/pack/plugins/start; \
		ln -sf $(PWD) $$HOME/.config/nvim/pack/plugins/start/recfiles.nvim; \
		echo "Plugin installed to ~/.config/nvim/pack/plugins/start/recfiles.nvim"; \
	else \
		echo "Neovim config directory not found at ~/.config/nvim"; \
		echo "Please create it first: mkdir -p ~/.config/nvim"; \
	fi

clean:
	@rm -f test_*.rec test_*.recfile test_*.txt