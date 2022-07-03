FROM node:12.18.1
ENV NODE_ENV=production

#Creating app dirs 
RUN mkdir -p rearc

WORKDIR /rearc

COPY ["package.json", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "000.js" ]
