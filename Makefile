whattodo: ./src/whattodo.cr
	mkdir build || true
	crystal build -s --release --verbose src/whattodo.cr -o build/whattodo 