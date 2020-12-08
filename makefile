APP-NAME ?= settings
GO-VERSION ?= 1.15.2
INFO ?= "test_application"
DIR ?= .

repository=github.com/ayupov-ayaz/settings
go-version = '$(repository)/version.GoVersion=$(GO-VERSION)'
app-info = '$(repository)/info.AppInfo=$(INFO)'

LD_FLAGS ?="-X $(go-version) -X $(app-info)"

run:
	go run -v -ldflags=$(LD_FLAGS) -tags develop,local $(DIR)

docker-run:
	docker run 	\
	--name $(APP-NAME) \
	--rm -t -i \
	-v $(PWD):/app -w /app \
	-v $(APP-NAME)-go-vol:/go \
	golang:$(GO-VERSION) \
	make run




