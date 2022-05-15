# Build Stage
FROM --platform=linux/amd64 ubuntu:20.04 as builder

## Install build dependencies.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y gcc g++ clang make cmake libjpeg-dev libpng-dev

## Add source code to the build stage.
ADD . /jpeg2png
WORKDIR /jpeg2png

## TODO: ADD YOUR BUILD INSTRUCTIONS HERE.
RUN make

# Package Stage
FROM --platform=linux/amd64 ubuntu:20.04

## TODO: Change <Path in Builder Stage>
COPY --from=builder /jpeg2png/jpeg2png /

