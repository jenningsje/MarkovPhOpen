# copy the files for accessing the live data from the arxiv repository
cp ../../fetch-arxiv/fetch_arxiv.js ../src/fetch_arxiv.js

# copy the Integral-SEQ logo into the MarkovPhysics repository so that it is displayed in the chat as well as the top of the browser
cp ../../logo.png logo.png
cp ../../logo.png ./src/app/components/logo.png

# build and run the freedomgpt image
docker build -t freedomgpt/freedomgpt .
docker run -d -p 8889:8889 freedomgpt/freedomgpt

# remove Newton.rb fetch_arxiv.js and the Integral-SEQ logo from the repository after the container is build and ran
rm ../src/fetch_arxiv.js
rm logo.png 
rm ./src/app/components/logo.png

# Best! Integral Sequencing Team!
