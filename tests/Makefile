INTERACTIVE ?= --interactive

.PHONY: testbin test

test:
	./build/exec/runtests idris2 $(INTERACTIVE) --failure-file failures --only $(only)

retest:
	@touch failures
	./build/exec/runtests idris2 $(INTERACTIVE) --failure-file failures --only-file failures --only $(only)

testbin:
	idris2 --build tests.ipkg

clean:
	$(RM) -r build
	@find . -type f -name 'output' -exec rm -rf {} \;
	@find . -type f -name '*.ttc' -exec rm -f {} \;
	@find . -type f -name '*.ttm' -exec rm -f {} \;
	@find . -type f -name '*.ibc' -exec rm -f {} \;
