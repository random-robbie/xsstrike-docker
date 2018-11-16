FROM python:2.7-alpine
#Use alpine to save disk space
RUN apk add --no-cache git bash
RUN git clone --depth=1 https://github.com/s0md3v/XSStrike.git
WORKDIR /XSStrike/
RUN pip install -r requirements.txt
ENTRYPOINT ["python","xsstrike"]
