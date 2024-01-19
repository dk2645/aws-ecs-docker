#FROM public.ecr.aws/lambda/nodejs:18
#WORKDIR /app
#COPY . .
#RUN yarn install
#CMD ["node", "index.js"]
#EXPOSE 3000
FROM public.ecr.aws/lambda/nodejs:18

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
