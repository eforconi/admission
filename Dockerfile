FROM hub.psi.unc.edu.ar/base/nodejs:6.2.2


RUN apt-get update && apt-get install -y default-jdk
RUN mkdir -p /opt/project
COPY inner-build/ /opt/project/inner-build
WORKDIR /opt/project/inner-build
RUN NODE_ENV=production npm install
WORKDIR /opt/project

#COPY package.json /opt/project/
#RUN NODE_ENV=production npm install
#COPY index.js /opt/project/
#COPY v1 /opt/project/v1
#COPY test /opt/project/test
COPY Dockerfile /opt/project/
COPY entrypoint.sh /opt/project/
EXPOSE 80
CMD ["npm", "start"]
