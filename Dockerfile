FROM node:latest

RUN mkdir -p /home/ec2-user/docker_contents/business_one
WORKDIR /home/ec2-user/docker_contents/business_one

COPY package.json .

RUN npm install

CMD ["npm","start"]