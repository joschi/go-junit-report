VERSION=$(shell git describe --match="v*")
REVISION=$(shell git rev-parse HEAD)
TIMESTAMP=$(shell date +%FT%T)

test:
	go test ./...

release: test
	goreleaser release --snapshot --clean

clean:
	rm -rf dist/

.PHONY: clean release test
