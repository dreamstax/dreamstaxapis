download:
	@echo Download go.mod build dependencies
	@go mod download

install: download
	@echo installing tools from tools.go
	@cat tools.go | grep _ | awk -F'"' '{print $$2}' | xargs -tI % go install %

gen:
	$(MAKE) -C dreamstax/piper/v1alpha1 gen-proto

