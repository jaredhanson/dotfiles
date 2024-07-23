# ~ / .dotfiles / docker / postgres


## Usage

```sh
docker run -d --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword postgres
```

To run postgres with the port exposed to the host computer, so that in-development
applications can access it, run

```
docker run -d --name some-postgres -p 127.0.0.1:5432:5432 -e POSTGRES_PASSWORD=mysecretpassword postgres
```



To run with a volume:

```
docker volume create some-data
```

```
docker run -d --name some-postgres -p 127.0.0.1:5432:5432 -v some-data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpassword postgres
```
