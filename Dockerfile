FROM debian:10

RUN apt-get update -yq \
&& apt-get install curl gnupg -yq \
&& curl -sL https://deb.nodesource.com/setup_10.x | bash \
&& apt-get install nodejs -yq \
&& apt-get clean -y

ADD . /app/
WORKDIR /app
RUN npm install

EXPOSE 3000:3000
VOLUME C:\Users\guili\OneDrive\Documents\Cours\MBA1\Docker\Volume_app_nodejs

CMD npm run start 