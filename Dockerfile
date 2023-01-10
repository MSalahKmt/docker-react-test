FROM node:16-alpine as builder
# specify the working directory
WORKDIR '/app'
# install some deprendencies 
COPY package.json .
RUN npm install
RUN mkdir -p node_modules/.cache && chmod -R 777 node_modules/.cache
# copy project files into the image
COPY . .
# default command 
CMD ["npm", "run", "build"]

FROM nginx
#copy from previous using image name (builder)
COPY --from=builder /app/build /usr/share/nginx/html

