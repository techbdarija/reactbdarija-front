FROM nginx:1.17.8-alpine

RUN apk add --update nodejs npm

WORKDIR /app

COPY . .

RUN npm ci

# ADD build /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

EXPOSE 80 443

# npm run build && cp build /usr/share/nginx/html