#!/bin/python

import subprocess
import os

acpi_output = subprocess.Popen(['/usr/bin/acpi', '-b'], stdout=subprocess.PIPE).communicate()
acpi_output = acpi_output[0].decode('utf-8').split('\n')
index_of_discharging = acpi_output[0].find('Discharging')
if index_of_discharging > -1:
  index_of_percentage = acpi_output[0].find('%')
  percentage = acpi_output[0][index_of_discharging + 13 : index_of_percentage]
  if int(percentage) < 10:
    os.system('/usr/bin/notify-send "Low battery" "The batery is almost depleted" -u critical')
