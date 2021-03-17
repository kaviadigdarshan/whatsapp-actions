FROM python:3.9-slim
COPY . /whatsapp-actions
WORKDIR /whatsapp-actions
RUN pip install --target=/whatsapp-actions twilio
RUN chmod +x /whatsapp-actions/run.py
CMD ["python3.9", "/whatsapp-actions/run.py"]
