sudo docker run --rm \
    -p 8080:8890 -p 1111:1111 \
    -e DBA_PASSWORD=pic3.14 \
    -e SPARQL_UPDATE=true \
    -e DEFAULT_GRAPH=http://www.example.com/my-graph \
    -v /home/heinrich/SYSTEM/servers/virtuoso/db:/data \
    -d tenforce/virtuoso
