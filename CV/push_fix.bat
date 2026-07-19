@echo off
cd /d "c:\Users\luky\Desktop\cline documents"
"C:\Program Files\Git\bin\git.exe" add -A
"C:\Program Files\Git\bin\git.exe" commit -m "Fix: update engineeringresumes with correct photo, email, and GitHub"
"C:\Program Files\Git\bin\git.exe" push -u origin main
echo Done.
pause
