# Generate MicroCode ROMs

1) Open MicroCodeRoms.ods in OpenOffice  

2) File->Save A Copy as "MicroCodeRoms.csv" with the following settings: 
 
	Character Set: UTF-8  
	Fixed delimiter: ,  
	String delimiter: "  
	
3) To generate the ROM files here, run: 
```bash
python3 GenerateMicroCodeROMs.py MicroCodeRoms.csv
```


To generate the ROM files in-place, run:
```bash
python3 GenerateMicroCodeROMs.py MicroCodeRoms.csv -i
```
