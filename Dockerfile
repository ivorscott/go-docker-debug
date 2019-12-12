FROM golang:1.12

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN go get github.com/go-delve/delve/cmd/dlv
RUN go get golang.org/x/tools/cmd/godoc
# set the working directory to /go/src
WORKDIR $GOPATH/src

# Copy everything from the current directory to the working directory inside the container
# (as set by WORKDIR)
COPY . .

# 8080 is for the web application
EXPOSE 8080 2345 3000