build:
	cd backend && docker build . -t evelynn_bot:latest
	docker tag evelynn_bot:latest 348836439571.dkr.ecr.us-east-2.amazonaws.com/evelynn_bot:latest
push:
	aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 348836439571.dkr.ecr.us-east-2.amazonaws.com
	docker push 348836439571.dkr.ecr.us-east-2.amazonaws.com/evelynn_bot:latest