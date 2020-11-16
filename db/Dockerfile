FROM postgres:12.4
COPY postgresql.conf /var/lib/postgresql/data/postgresql.conf
COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
COPY 001_data.sql /docker-entrypoint-initdb.d/001_data.sql
ENV PGDATA=/data
CMD ["-c", "config_file=/var/lib/postgresql/data/postgresql.conf"]
