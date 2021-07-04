FROM fusuf/whatsasena:latest

RUN git clone https://github.com/invisible-bot/y8ob23f /root/y8ob23f
WORKDIR /root/y8ob23f/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
