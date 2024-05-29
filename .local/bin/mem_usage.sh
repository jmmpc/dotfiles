#!/bin/bash

free | awk '/^Mem/ {printf "Mem: %d%%", ($3 * 100 / $2)}'
