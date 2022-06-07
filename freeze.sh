
# freeze requirements.txt
if [ -e "constraints.txt" ]; then
    rm -r _venv
    python3 -m venv _venv
    ./_venv/bin/pip3 install --upgrade pip
    ./_venv/bin/pip3 install -r constraints.txt
    ./_venv/bin/pip3 freeze -r constraints.txt --no-cache-dir > requirements.txt
fi
