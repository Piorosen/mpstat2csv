# mpstat2csv

It was created to measure CPU core usage through `mpstat`.
In particular, you can measure previous records through `sar`, but it's more troublesome than anything, right? It is convenient if you can warm up the program and immediately display the measured records as `CSV`. Give it a try! It's convenient.

## Requirements

1. `Python3` (Maybe... wouldn't it work even with Python 3.1? I just used the basic code.)
2. `mpstat` (if you don't have it, build at install time in install.sh)

## Getting started?

To install, run:
```sh
curl -fsSL https://raw.githubusercontent.com/Piorosen/mpstat2csv/main/install.sh | sh
```

To uninstall, run:
```sh
curl -fsSL https://raw.githubusercontent.com/Piorosen/mpstat2csv/main/uninstall.sh | sh
```

## How to run?

Enter the shellcode below to run mpstat for 1 hour.

```sh
# interval(unit) : Next step in mpstat event(captured cpu core)  (second)
# Epoch(unit) : interval * Epoch == Total Captured time
mpstat2csv --interval=1 --epoch=3600 --file=export.csv
``` 

## Result

```sh
# I ran the code and got the result below.
mpstat2csv # it just have default value. --interval=1 --epoch=5
```

|time|all|0|1|2|3|4|
|---|---|---|---|---|---|---|
|3:23:01 PM|3.67|4.12|0|6.06|1|12.12 |
|3:23:02 PM|10.84|15.46 |6|19.39|5 |25|
|3:23:03 PM|3.49 |6 |0|4.04 |0 |6.25|
|3:23:04 PM|3.42 |6 |0|2.02 |0.99|9.09|
|3:23:05 PM|4.11 |4.08|1|4.04 |0 |10|
