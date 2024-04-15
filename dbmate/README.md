# ~ / .dotfiles / dbmate

[`dbmate`](https://github.com/amacneil/dbmate) is a database migration tool.

## Install

### macOS

```sh
brew install dbmate
```

> [!IMPORTANT]  
> In order to dump the database schema, `dbmate` relies on database-specific
> programs being available on $PATH.  Refer to [`postgresql`](../postgresql/)
> as needed for database-specific installation and usage instructions.

## Usage

To dump the database schema, execute:

```sh
dbmate dump
```

This command will write the database schema to `./db/schema.sql`.

To create a new migration, execute:

```sh
dbmate new create_users_table
```

To create the database and migrate to the latest version, execute:

```sh
dbmate up
```

To rollback the most recent migration, execute:

```sh
dbmate down
```

To drop the database:

```sh
dbmate drop
```
