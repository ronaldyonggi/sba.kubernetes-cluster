# Use official Python image, debian slim variant. I don't use Alpine because internet claims 
# that it can lead to longer buid times, obscure bugs and performance issues.
FROM python:rc-slim

# Creates 'src' and copy source code into it.
WORKDIR /src
COPY . /src

# Install required Python dependencies
RUN pip install -r requirements.txt

# We're not running this image with additional argument anyway, so just use ENTRYPOINT to automatically start the
# app.
ENTRYPOINT ["python", "web.py"]