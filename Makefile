all: generate build
.PHONY: all

build:
	go build github.com/openshift/client-go/apps/...
	go build github.com/openshift/client-go/authorization/...
	go build github.com/openshift/client-go/build/...
	go build github.com/openshift/client-go/image/...
	go build github.com/openshift/client-go/network/...
	go build github.com/openshift/client-go/oauth/...
	go build github.com/openshift/client-go/project/...
	go build github.com/openshift/client-go/quota/...
	go build github.com/openshift/client-go/route/...
	go build github.com/openshift/client-go/security/...
	go build github.com/openshift/client-go/template/...
.PHONY: build

generate:
	hack/update-codegen.sh
.PHONY: generate

update-deps:
	hack/update-deps.sh
	hack/prune-deps.sh
.PHONY: generate
