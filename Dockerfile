FROM node:18.16.1-alpine3.18
WORKDIR /portfolio
COPY ./package*.json ./
ENV PATH /app/node_modules/.bin:$PATH
RUN yarn install
COPY . .
EXPOSE 3000

CMD ["yarn","start"]

# Commande to run 

# docker compose up -d --build
# docker compose down -f
# docker stop <name_of_container>
# docker ps or docker compose ps

