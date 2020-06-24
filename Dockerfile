FROM openjdk:8-alpine

WORKDIR /app

ADD data/96/WW15MGH.GRD /app/data/96/WW15MGH.GRD
ADD data/08/egm2008.grd /app/data/08/egm2008.grd

CMD ["/bin/sh"]
