FROM node:15.13-alpine
WORKDIR /testdocker
COPY . .
RUN npm run build
CMD npx serve -s build -l 3000