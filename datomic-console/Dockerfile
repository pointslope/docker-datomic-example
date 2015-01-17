FROM pointslope/datomic-console:0.9.5130
# the hostname 'db' is created by linking a Datomic Pro Start container with the db alias
# fig does this for us, but it can be done with docker run --link
CMD ["dev", "datomic:dev://datomicdb:4334"]
