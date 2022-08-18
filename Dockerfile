FROM httpd:2-alpine

WORKDIR /app

EXPOSE 80

CMD ['ls','-lha']