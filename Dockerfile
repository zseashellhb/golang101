FROM golang:1.19


# 应对go mod download 失败问题
ENV GOPROXY https://goproxy.cn,direct

WORKDIR /user/src/app

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build -o /usr/local/bin/golang101 .

CMD ["golang101"]