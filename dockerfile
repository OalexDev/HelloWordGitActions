FROM public.ecr.aws/lambda/provided:al2 as build
# install compiler
RUN yum install -y tar wget gzip git
RUN wget https://go.dev/dl/go1.18.linux-amd64.tar.gz 

RUN tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz

ENV PATH="${PATH}:/usr/local/go/bin"
ENV GOPRIVATE="github.com/Musatech"
# RUN git config --global url."git@github.com:".insteadOf "https://github.com/"

RUN echo $PATH
RUN source /etc/profile

RUN go version
RUN go env -w GOPROXY=direct

# cache dependencies
ADD go.mod go.sum ./
RUN go mod download

# build
ADD . .
RUN go build -o /main

# copy artifacts to a clean image
FROM public.ecr.aws/lambda/provided:al2
COPY --from=build /main /main
ENTRYPOINT [ "/main" ]