# React Docker

## 1. Create Dockerfile

## 2. Dockerfile content
```
FROM node:15.13-alpine
WORKDIR /testdocker
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm run build
CMD ["npm", "start"]
```

## 3. Build Image 
```
$ docker build --tag react .
```

## 4. Run container
```
$ docker run --publish 3000:3000 react
```

