# Sample PostGRES with seeding

This is a sample DB that can be used as a template to handle the seeding of the DB.

We have included some logic whereby if you are using volumes, it will not try to run the seed again.

How to use:
- edit the scripts/db/dump.sql to include your version of the seed
- scripts/db/init.sh is the entrypoint of the container