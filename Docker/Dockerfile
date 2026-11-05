#FREEC
FROM ubuntu:latest 
RUN apt update -y #updating the package 
RUN apt install nginx -y
EXPOSE 80 
ENTRYPOINT [ "nginx"] 
CMD [ "-g", "daemon off;" ]