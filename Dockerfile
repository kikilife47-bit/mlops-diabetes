# Use the official Python 3.11 image from Microsoft devcontainers
FROM mcr.microsoft.com/devcontainers/python:3.11
WORKDIR /workspace
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
