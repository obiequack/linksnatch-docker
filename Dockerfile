FROM node:buster
RUN mkdir app
RUN apt-get -qq -y update && apt-get -qq -y install git
WORKDIR /app
RUN git clone https://github.com/amitmerchant1990/linksnatch
WORKDIR /app/linksnatch
RUN npm install
RUN touch entrypoint.sh
RUN echo "cd /app/linksnatch && npm run dev" > entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["/app/linksnatch/entrypoint.sh"]
