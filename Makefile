.PHONY: public

public:
	hugo -D

tarball: public
	tar -czf radioquotes.tar.gz -C public .
