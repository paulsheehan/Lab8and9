printf "Test 1\n"
telnet snf-35216.vm.okeanos-global.grnet.gr 8080
printf "Test 2\n"
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers | python -mjson.tool
printf "Test 3\n"
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers?state=running | python -mjson.tool
printf "Test 4\n"
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers/bfe2305d5b31 | python -mjson.tool
printf "Test 5\n"
curl -s -X DELETE -H 'Accept: application/json' http://localhost:8080/containers/bfe2305d5b31 | python -mjson.tool
printf "Test 6\n"
curl -s -X DELETE -H 'Accept: application/json' http://localhost:8080/containersDel | python -mjson.tool
printf "Test 7\n"
curl -X POST -H 'Content-Type: application/json' http://localhost:8080/containers -d '{"image": "49b7d316bf66"}' | python -mjson.tool
printf "Test 8\n"
curl -X PATCH -H 'Content-Type: application/json' http://localhost:8080/containers/c4e2389dd54d -d '{"state": "running"}'
printf "Test 9\n"
curl -X PATCH -H 'Content-Type: application/json' http://localhost:8080/containers/c4e2389dd54d -d '{"state": "stopped"}'
printf "Test 10\n"
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers/bfe2305d5b31/logs | python -mjson.tool
printf "Test 11\n"
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/images | python -mjson.tool
printf "Test 12\n"
curl -s -X DELETE -H 'Accept: application/json' http://localhost:8080/images/imgID | python -mjson.tool
printf "Test 13\n"
curl -s -X DELETE -H 'Accept: application/json' http://localhost:8080/containersDel | python -mjson.tool
printf "Test 14\n"
curl -s -X PATCH -H 'Content-Type: application/json' http://localhost:8080/images/4995526402e7 -d '{"tag": "test:1.0"}'
printf "Test 15\n"
curl -H 'Accept: application/json' -F file=@Dockerfile http://localhost:8080/images | python -mjson.tool
