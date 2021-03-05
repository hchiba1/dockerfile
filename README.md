# Docker

## Build
```
docker build -t spang [-f Dockerfile] .
```

## Run

Use `rapper` command

Use commands that use `rapper` command
```
cat raptor.rdf | docker run -i --rm spang rdfcount
cat raptor.rdf | docker run -i --rm spang rdf2ttl
```

Use `sparql` (included in Jena package)
```
docker run -v $(pwd):/work -i --rm raptor2 sparql --data=raptor.rdf --query=test.rq
```

Use `spang` command
