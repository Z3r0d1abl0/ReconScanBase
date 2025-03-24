# ReconScanBase
Basic nmap scan, with advanced scans and gobuster

Scans the top 1000 most common ports using Nmap.

If port 80 (HTTP) is detected, it automatically runs Gobuster for hidden file/directory enumeration.

Performs an in-depth scan (-sC -sV) on detected open ports.

📦 Features
✔ Quick scan of the top 1000 ports
✔ Open port detection
✔ Service and script scanning (-sC -sV)
✔ Automatic web enumeration with Gobuster
✔ Terminal-displayed report (or exportable)

🛠️ Requirements

Nmap installed (apt install nmap)

Gobuster installed (apt install gobuster or via Go)
