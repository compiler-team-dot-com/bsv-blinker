# bsv-blinker

Hello World with BSV and a Cmod A7.

```bash
bsc -verilog -vdir rtl -bdir bsv-b -simdir bsv-sim -info-dir bsv-info Top.bsv
```

```bash
vivado -mode batch -log vivado/vivado.log -journal vivado/vivado.jou -tempDir vivado/.Xil -source vivado.tcl
```
