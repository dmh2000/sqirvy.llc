docker-run:
	docker run -it --rm -p 8080:80 --name web -v ./site-content:/usr/share/nginx/html nginx

docker-list:
	-sudo docker ps -a -q

docker-kill:
	-sudo docker ps -a -q | xargs sudo docker kill

docker-rm: docker-kill
	-sudo docker  container list -aq | xargs sudo docker container rm

docker-clean:
	-sudo docker ps -a -q | xargs sudo docker kill
	-sudo docker  container list -aq | xargs sudo docker container rm
	-sudo docker  image list -q | xargs sudo docker image rm
