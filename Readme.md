# Dummy Golang Project

## Introduction

This is a dummy golang project used as reference for other projects such as: [https://github.com/rms1000watt/hello-world-concourse](https://github.com/rms1000watt/hello-world-concourse)

## Contents

- [Usage](#usage)

## Usage

Build, run, observe, stop:

```bash
docker build -t rms1000watt/dummy-golang-project:latest .
docker run -itd --rm --name dummy-golang-project -p 9999:9999 rms1000watt/dummy-golang-project:latest
open http://localhost:9999/pizza
docker stop dummy-golang-project
```

13
