#!/bin/bash
cd "$(dirname "$0")"
antlr4 psASMLexer.g4 -Dlanguage=Python3 -no-listener -visitor
antlr4 psASMParser.g4 -Dlanguage=Python3 -no-listener -visitor
