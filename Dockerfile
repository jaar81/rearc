FROM node:12-slim
ENV SECRET_WORD=TwelveFactor 

#Creating app dirs 
RUN mkdir -p rearc

WORKDIR /rearc

COPY ["package*.json", "./"]

RUN npm install --production

COPY . .
EXPOSE 3000

CMD [ "node", "000.js" ]
