# Dummy Golang Project

## Introduction

This is a dummy golang project used as reference for other projects such as: [https://github.com/rms1000watt/hello-world-concourse](https://github.com/rms1000watt/hello-world-concourse)

## Contents

- [Usage](#usage)
- [Old Build Process](#old-build-process)

## Usage

Build, run, observe, stop:

```bash
./build.sh
docker run -itd --rm --name dummy-golang-project -p 9999:9999 rms1000watt/dummy-golang-project:latest
open http://localhost:9999/pizza
docker stop dummy-golang-project
```

## Old Build Process

This is kept for historic reasons. Usage:

```bash
cd old-build-process
make
cd ..
```

Then follow the run, observe & stop steps above.

6
