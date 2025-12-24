FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT 5173

EXPOSE 5173

CMD ["npm", "run", "dev"]

#  Steps to build
#  docker build -t shafiq-2d-portfolio:latest .
#  test the container if it works
#  docker run -p 5173:5173 shafiq-2d-portfolio:latest

#  Push to repo
#  docker logout ghcr.io
#  echo "YOUR_TOKEN" | docker login ghcr.io -u YOUR_USERNAME --password-stdin
#  docker tag shafiq-2d-portfolio:latest ghcr.io/YOUR_USERNAME/shafiq-2d-portfolio:latest
#  docker push ghcr.io/YOUR_USERNAME/shafiq-2d-portfolio:latest
#  docker pull ghcr.io/YOUR_USERNAME/shafiq-2d-portfolio:latest
