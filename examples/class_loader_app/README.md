# Class loader demo

## The Monitoring Tools commands cheat-sheet
```bash
jps -lv
jstat -gcutil 45094 250 7
jstat -gcnew -h3 45094 250
jconsole 45094
jcmd 45094
jcmd 45094 GC.heap_info
# For localhost only - address=5005; for remote - address=*:5005
jdb -attach 5005
jmap -dump:live,format=b,file=heap.bin 49255
jinfo -sysprops 49255
jstack -l 49255
```

## Commands cheat-sheet
```bash
./helper.sh build
./helper.sh run_printClassLoaders
./helper.sh run_printParents
./helper.sh run_loadClass
```
```bash
./helper.sh build_module
./helper.sh run_modular_loadClass
```
Run with Automatic-Module-Name set
```bash
./helper.sh run_modular_loadClass_with_automatic_module_name
```
```bash
./helper.sh build_module
./helper.sh executeScenarioWithChemistryModule
```
