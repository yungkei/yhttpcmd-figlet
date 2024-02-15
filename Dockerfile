FROM yungkei/yhttpcmd
LABEL maintainer="yungkei"

WORKDIR /yhttpcmd
RUN apk add figlet
COPY yhttpcmd.yaml /yhttpcmd/yhttpcmd.yaml
CMD [ "./yhttpcmd","start" ]