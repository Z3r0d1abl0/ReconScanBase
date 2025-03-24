# ReconScanBase
Basic nmap scan, with advanced scans and gobuster

Scans the top 1000 most common ports using Nmap.

If port 80 (HTTP) is detected, it automatically runs Gobuster for hidden file/directory enumeration.

Performs an in-depth scan (-sC -sV) on detected open ports.

🛠️ Requirements

Xterm installed (apt install xterm)

Nmap installed (apt install nmap)

Gobuster installed (apt install gobuster or via Go)


Please check the path to your Gobuster wordlist and modify it if necessary.
