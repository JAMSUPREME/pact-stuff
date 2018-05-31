# pact-stuff

Messing around with pact

# Making it run

Make sure it builds
`docker-compose build`

Shell into it
`docker-compose run pact-provider bash`

# TODO

Need the following total:
- Pact provider
- Pact client
- Jenkins server for running Pact contract validation? (Maybe we could be lazy and just run a shell script)
- Ruby app for hosting gems to publish? So we can resolve fakes?