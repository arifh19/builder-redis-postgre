FROM postgres:12.4
COPY postgresql.conf /var/lib/postgresql/data/postgresql.conf
COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
COPY resto.sql /
CMD ["-c", "config_file=/var/lib/postgresql/data/postgresql.conf"]
