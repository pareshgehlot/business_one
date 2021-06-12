FROM node:latest

RUN mkdir -p /home/ec2-user/docker_contents/business_one
WORKDIR /home/ec2-user/docker_contents/business_one

COPY package.json /home/ec2-user/docker_contents/business_one/

RUN npm install

COPY . /home/ec2-user/docker_contents/business_one/

EXPOSE 3000

CMD ["npm","start"]