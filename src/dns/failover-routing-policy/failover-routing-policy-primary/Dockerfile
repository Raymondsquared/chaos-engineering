FROM node:12-slim

WORKDIR /failover-routing-policy-primary

COPY . /failover-routing-policy-primary
RUN npm install
RUN npm run build  

CMD [ "npm", "run", "serve" ]
