FROM python:3-alpine

RUN apk add git && git clone https://github.com/s0md3v/Photon.git Photon
WORKDIR Photon
RUN pip install -r requirements.txt

VOLUME [ "/Photon" ]
# ENTRYPOINT ["sh"]
ENTRYPOINT [ "python", "photon.py" ]
CMD ["--help"]
