repl:
	rlwrap idris2 HelloIdris2/Main.idr

edit-tests1:
	cd ./tests/helloidris2/test001 && rlwrap idris2 -p helloidris2 Main.idr

edit-tests2:
	cd ./tests/helloidris2/test002 && rlwrap idris2 -p helloidris2 Greet.idr

clean:
	rm -f tests/*.idr~
	rm -f tests/*.ibc
	rm -f Idrall/*.idr~
	rm -f Idrall/*.ibc
	rm -rf build/
	rm -rf tests/build/

.PHONY: build
build:
	idris2 --build helloidris2.ipkg

build-executable:
	idris2 ./HelloIdris2/Main.idr -o helloIdris2 # this is the name of the executable
	# it will be created in ./build/exec/

run-executable: build-executable
	./build/exec/helloIdris2

install:
	idris2 --install helloidris2.ipkg

testbin:
	@${MAKE} -C tests testbin

# run like: `make test only=test002`
test-only:
	${MAKE} -C tests only=$(only)

test: build install testbin test-only

time-time:
	time ${MAKE} test INTERACTIVE=''
