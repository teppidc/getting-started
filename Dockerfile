FROM node:12-alpine
# Cài đặt thêm các gói
RUN apk add --no-cache python2 g++ make
#Thiết lập thư mục hiện tại
WORKDIR /app
# Copy tất cả các file trong thư mục hiện tại (.)  vào (.) container
COPY . .
RUN yarn install --production
# chạy terminate của container
CMD ["node", "src/index.js"]
EXPOSE 3000