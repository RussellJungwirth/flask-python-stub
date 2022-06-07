FROM python:3.8-slim-buster as deps

COPY requirements.txt .
RUN pip install -qqr requirements.txt && pip uninstall -y pip

FROM python:3.8-alpine
COPY --from=deps /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY src src
CMD ["python3", "src/base.py"]
