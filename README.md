# psMCU
### Philipp Schilk, 2020-2021

## Repo Overview
`Doc/`: Documentation  
`ECAD/`: KiCad PCB Project  
`Logisim/`: Logisim Digital Simulation  
`SyntaxHighlighting/`: Syntax Highlighting for psASM assembly in Notepad++ and vim  
`Programs/`: Programms for the psMCU written in psASM  
`psASM/`: Python assembler that creates binaries from .psASM files  
`ROMGeneration/`: Script and source file for generating state machine ROMs  
`ROMs/`: Binaries for all ROMs  

## Quickstart

### Logisim Simulation

### KiCad PCB

### psASM
An assembler written in python that converts .psASM assembly files
into binaries for psMCU and the Logisim simulation.  

To use it simply run:  
`python3 psASM.py main.psASM`

See `Doc/ProgrammingGuide.md` for details about the psASM 'language'.

### Syntax Highlighting 
Predefined profiles for psASM syntax highlighting in Notepad++ and vim.

### ROM Generation
The Microcode that defines each individual step of each instruction (or
more precisely the state of the control signals at a specific step of 
a specific instruction) was handwritten in Excel in:   
`ROMGeneration/MicroCodeRoms.xlsx`.

The python script `ROMGeneration/GenerateMicroCodeROMs.py` is used to  
convert this excel file into the binary files for both the actual
psMCU and the Logisim simulation as follows:  

 - Open the .xlsx file and save it as a MS-DOS csv file in `ROMGeneration/`
 - run `python3 GenerateMicroCodeROMs.py [CSVFileName]` 
