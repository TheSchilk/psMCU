#!/bin/bash
cd "$(dirname "$0")"
antlr4 psASM.g4 -Dlanguage=Python3 -no-listener -visitor
