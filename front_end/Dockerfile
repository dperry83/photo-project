# use lightweight Node.js image as base
FROM node:20-alpine AS builder

# set the working directory inside the container
WORKDIR /app

# copy package.json and package-lock.json first for caching dependencies
COPY package*.json ./

# install dependencies
RUN npm install

# copy the rest of the application
COPY . .

# build the application
RUN npm run build

# use Nginx to serve the built app
FROM nginx:1.25-alpine

# copy built files from the builder stage
COPY --from=builder /app/dist /usr/share/nginx/html

# expose port 80 
EXPOSE 80

# start Nginx
CMD ["nginx", "-g", "daemon off;"]