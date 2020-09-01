#!/bin/sh -l

DIR=$1
TOKEN=${2:-$GITHUB_TOKEN}
FORMAT='::{{ToLower .Severity.Name}} file={{.Position.FilePath}},line={{.Position.StartLine}},col={{.Position.StartColumn}}::{{.Message}}'

codeownerslint -f $FORMAT -d $DIR -t $TOKEN
