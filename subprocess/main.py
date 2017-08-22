import subprocess

result = subprocess.check_output( ["ssh", "pi@192.168.11.161", "ls"] )
print(result)
