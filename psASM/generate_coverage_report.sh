#!/bin/bash
coverage run --omit test_psASM.py,Parsing/psASMantlr4/psASMLexer.py,Parsing/psASMantlr4/psASMParser.py,Parsing/psASMantlr4/psASMParserVisitor.py test_psASM.py
coverage report
coverage html
