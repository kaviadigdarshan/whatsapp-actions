FROM python:3.9-slim
ADD run.py /whatsapp-actions
WORKDIR /whatsapp-actions
RUN pip install --target=/whatsapp-actions twilio
RUN chmod +x /run.py
CMD ["python3.9", "/run.py"]
