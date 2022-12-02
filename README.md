# sample-sinatra

## Usage

**Setup**

```
docker compose up -d
```

**DB Migrate**

```
docker compose run --rm ruby bundle exec ridgepole --config ./config/database.yml --file ./db/Schemafile --apply
```
