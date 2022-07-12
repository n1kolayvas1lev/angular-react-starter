FROM nginx:alpine
	LABEL file1 maintainer="ckb01@ya.ru"	
	RUN apk update && apk upgrade && apk add bash && apk add git && apk add npm
	RUN git clone -q https://github.com/n1kolayvas1lev/angular-react-starter.git
	WORKDIR angular-react-starter
	WORKDIR angular
	RUN npm install
	WORKDIR react
	RUN npm install
	CMD ["npm","start"]	
