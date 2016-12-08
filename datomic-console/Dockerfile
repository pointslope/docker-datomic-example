FROM pointslope/datomic-console:0.9.5544
# the hostname 'db' is created by linking a Datomic Pro Starter container with the db alias
# docker-compose does this for us, but it can be done with docker run --link
CMD ["dev", "datomic:dev://datomicdb:4334"]
