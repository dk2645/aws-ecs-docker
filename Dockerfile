FROM public.ecr.aws/lambda/nodejs:18
WORKDIR /app
COPY . .
RUN yarn install
CMD ["node", "index.js"]
EXPOSE 3000
