#!/usr/bin/env bash
set -euo pipefail
mkdir -p logs
echo "---- yosys ----" > logs/versions.txt
if command -v yosys >/dev/null 2>&1; then yosys -V 2>&1 | tee -a logs/versions.txt; else echo "yosys: not found" | tee -a logs/versions.txt; fi
echo "---- iverilog ----" | tee -a logs/versions.txt
if command -v iverilog >/dev/null 2>&1; then iverilog -V 2>&1 | tee -a logs/versions.txt; else echo "iverilog: not found" | tee -a logs/versions.txt; fi
echo "---- gtkwave ----" | tee -a logs/versions.txt
if command -v gtkwave >/dev/null 2>&1; then gtkwave --version 2>&1 | tee -a logs/versions.txt; else echo "gtkwave: not found" | tee -a logs/versions.txt; fi
echo "Verification completed. See logs/versions.txt"
