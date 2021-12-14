#!/bin/bash  
  
image="albertodeduce/streamlit-cam-demo"
version="alpha"
  
#get timestamp for the tag  
timestamp="$(date +%Y.%m.%d-%H.%M.%S)"

tag=$image:$version
stamp=$tag-$timestamp
latest=$image:latest  

buildImage(){
sudo docker build -t $tag . &&\
sudo docker tag $tag $stamp &&\
sudo docker tag $stamp $latest
} 

  
#push to dockerhub  
pushImage(){
sudo docker login  
# sudo docker login -u username -p password  
sudo docker push $stamp    
}

#run
buildImage && pushImage
  
#remove dangling images  
#sudo docker system prune -f  
  