# Generate MicroCode ROMs

1) Open DecodeRom.ods in OpenOffice  

2) File->Save A Copy as "DecodeROM.csv" with the following settings:  
	Character Set: UTF-8  
	Fixed delimiter: ,  
	String delimiter: "  
	
3) To generate the ROM files here, run:
```bash
python3 GenerateDecodeROM.py DecodeROM.csv
```

To generate the ROM files in-place, run:
```bash
python3 GenerateDecodeROM.py DecodeROM.csv -i
```
