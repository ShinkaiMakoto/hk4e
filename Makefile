CUR_DIR=$(shell pwd)

VERSION=1.0.0

.PHONY: all
all: build

# 清理
.PHONY: clean
clean:
	rm -rf ./bin
	rm -rf ./protocol/proto
	rm -rf ./gate/client_proto/client_proto_gen.go

# 构建服务器二进制文件
.PHONY: build
build:
	mkdir -p bin && CGO_ENABLED=0 go build -ldflags "-X main.Version=$(VERSION)" -o ./bin/ ./cmd/...

# 清理镜像
.PHONY: docker_clean
docker_clean:
	rm -rf ./docker/node/bin/*
	rm -rf ./docker/dispatch/bin/*
	rm -rf ./docker/gate/bin/*
	rm -rf ./docker/fight/bin/*
	rm -rf ./docker/pathfinding/bin/*
	rm -rf ./docker/gs/bin/*
	rm -rf ./docker/gm/bin/*
	docker rmi flswld/node:$(VERSION)
	docker rmi flswld/dispatch:$(VERSION)
	docker rmi flswld/gate:$(VERSION)
	docker rmi flswld/fight:$(VERSION)
	docker rmi flswld/pathfinding:$(VERSION)
	docker rmi flswld/gs:$(VERSION)
	docker rmi flswld/gm:$(VERSION)

# 构建镜像
.PHONY: docker_build
docker_build:
	mkdir -p ./docker/node/bin && cp -rf ./bin/node ./cmd/node/* ./docker/node/bin/
	mkdir -p ./docker/dispatch/bin && cp -rf ./bin/dispatch ./cmd/dispatch/* ./docker/dispatch/bin/
	mkdir -p ./docker/gate/bin && cp -rf ./bin/gate ./cmd/gate/* ./docker/gate/bin/
	mkdir -p ./docker/fight/bin && cp -rf ./bin/fight ./cmd/fight/* ./docker/fight/bin/
	mkdir -p ./docker/pathfinding/bin && cp -rf ./bin/pathfinding ./cmd/pathfinding/* ./docker/pathfinding/bin/
	mkdir -p ./docker/gs/bin && cp -rf ./bin/gs ./cmd/gs/* ./docker/gs/bin/
	mkdir -p ./docker/gm/bin && cp -rf ./bin/gm ./cmd/gm/* ./docker/gm/bin/
	docker build -t flswld/node:$(VERSION) ./docker/node
	docker build -t flswld/dispatch:$(VERSION) ./docker/dispatch
	docker build -t flswld/gate:$(VERSION) ./docker/gate
	docker build -t flswld/fight:$(VERSION) ./docker/fight
	docker build -t flswld/pathfinding:$(VERSION) ./docker/pathfinding
	docker build -t flswld/gs:$(VERSION) ./docker/gs
	docker build -t flswld/gm:$(VERSION) ./docker/gm

# 安装natsrpc生成工具
.PHONY: dev_tool
dev_tool:
	go install github.com/golang/protobuf/protoc-gen-go@v1.5.2
	go install github.com/byebyebruce/natsrpc/cmd/protoc-gen-natsrpc@develop

# 生成natsrpc协议代码
.PHONY: gen_natsrpc
gen_natsrpc:
	protoc \
	--proto_path=gs/api \
	--go_out=paths=source_relative:gs/api \
	--natsrpc_out=paths=source_relative:gs/api \
	gs/api/*.proto
	protoc \
	--proto_path=node/api \
	--go_out=paths=source_relative:node/api \
	--natsrpc_out=paths=source_relative:node/api \
	node/api/*.proto

# 生成客户端协议代码
.PHONY: gen_proto
gen_proto:
	cd protocol/proto_hk4e && \
	rm -rf ./proto && mkdir -p proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./*.proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./cmd/*.proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./pb/*.proto && \
	protoc --proto_path=./ --go_out=paths=source_relative:./proto ./server_only/*.proto && \
	mv ./proto/cmd/* ./proto/ && rm -rf ./proto/cmd && \
	mv ./proto/pb/* ./proto/ && rm -rf ./proto/pb && \
	mv ./proto/server_only/* ./proto/ && rm -rf ./proto/server_only && \
	rm -rf ../proto && mkdir -p ../proto && mv ./proto/* ../proto/ && rm -rf ./proto && \
	cd ../../

# 生成服务器配置表
.PHONY: gen_csv
gen_csv:
	cd gdconf && go test -v -run TestGenGdCsv .

# 生成客户端协议代理功能所需的代码
.PHONY: gen_client_proto
gen_client_proto:
	cd gate/client_proto && rm -rf client_proto_gen.go && go test -v -run TestClientProtoGen .
