FROM klakegg/hugo:0.78.0-alpine AS build

WORKDIR /radioquotes
COPY . /radioquotes

RUN hugo -D

FROM nginx:1.19.4-alpine

COPY --from=build /radioquotes/public /usr/share/nginx/html
