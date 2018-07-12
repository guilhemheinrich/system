sudo docker run --name issac-virtuoso\
    -p 8890:8890 -p 1111:1111 \
    -e DBA_PASSWORD=pic3.14 \
    -e SPARQL_UPDATE=true \
    -e DEFAULT_GRAPH=http://www.example.com/my-graph \
    -v /home/heinrich/SYSTEM/servers/virtuoso/db:/data \
    -d tenforce/virtuoso


docker exec -it issac-virtuoso bash


