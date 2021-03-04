# Docker

## Build
```
docker build -t spang -f dockerfile .
```

## Run

command using `rapper`
```
cat raptor.rdf | docker run -i --rm spang rdfcount
cat raptor.rdf | docker run -i --rm spang rdf2ttl
```

command included in Jena
```
docker run -v $(pwd):/work -i --rm raptor2 sparql --data=raptor.rdf --query=test.rq
```
