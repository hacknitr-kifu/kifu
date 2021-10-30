docker exec -it kifu_roach_1 ./cockroach sql -e "CREATE DATABASE kifu;" --insecure
&& docker exec -it kifu_roach_1 ./cockroach sql -e "CREATE USER kifu;" --insecure
&& docker exec -it kifu_roach_1 ./cockroach sql -e "GRANT ALL ON DATABASE kifu TO kifu;" --insecure
