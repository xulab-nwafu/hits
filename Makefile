all:
	mkdir bin
	mkdir doc
	cp hits dnaseq bin/
	cp README.md doc/
	chmod 755 bin/*
	chmod 644 doc/*
clean:
	rm -rf bin
	rm -rf doc
