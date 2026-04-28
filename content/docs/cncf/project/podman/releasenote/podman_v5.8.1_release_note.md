来源: https://github.com/containers/podman/releases/tag/v5.8.1

# containers/podman v5.8.1 Release Notes

Published at: 2026-03-11T20:03:43Z

### Bugfixes
- Fixed a critical bug where automatic migration from BoltDB to SQLite after a reboot could perform a partial migration, with some containers in SQLite and some remaining in BoltDB, when Quadlets were in use ([#28215](https://github.com/containers/podman/issues/28216)). For those who encountered this bug with 5.8.0 there is no way to automatically recover. If you do not have persistent containers/pods/volumes (i.e. all containers are run using Quadlets) then the easiest option is to move the `db.sql` file in Podman's storage directory to `db.sql.bak` (or similar) and reboot again with v5.8.1 to attempt another migration. Please contact the maintainers with any issues during migration and we will assist as able.

