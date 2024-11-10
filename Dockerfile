FROM node:12.2.0-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
# If we don't expose port in Dockerfile, then also we can build & access this web app in browser after exposing it during running the docker container.
