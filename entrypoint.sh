#!/bin/sh -l

DIR=$1
TOKEN=${2:-$GITHUB_TOKEN}

codeownerslint -f '::{{.Severity.Name()}} file={{.Position.FilePath}},line={{.Position.StartLine}},col={{.Position.StartColumn}}::{{.Message}}' -d $DIR -t $TOKEN
