# Generate MicroCode ROMs

1) Open DecodeRom.ods in OpenOffice
2) File->Save A Copy as "DecodeROM.csv" with the following settings:
	Character Set: UTF-8
	Fixed delimiter: ,
	String delimiter: "
3) Run:
	python3 GenerateDecodeROM.py DecodeROM.csv