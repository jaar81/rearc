FROM node:12.18.3
ENV NODE_ENV=production
ENV SECRET_WORD=TwelveFactor
WORKDIR /rearc
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "start"]