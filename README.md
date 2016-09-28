sa-mariadb
==========

[![Build Status](https://travis-ci.org/softasap/sa-mariadb.svg?branch=master)](https://travis-ci.org/softasap/sa-mariadb)

MariaDB is dropin replacement for mysql with own features

Example of usage (all parameters are optional)

Simple

```
  roles:
    - {
        role: "sa-mariadb"
      }
```

Advanced:

```
  roles:
    - {
        role: "sa-mariadb",
        mariadb_family: "10.1",
        mariadb_bind_to: 127.0.0.1,

        mysql_host: "127.0.0.1",
        mysql_root_user: root,
        mysql_root_password: caspiwrocl,

        # For installation in VPC we really don't have brute force attacks
        mycnf_extra_properties:
           - {regexp: "^#* *max_connect_errors", line: "max_connect_errors = 4294967295", insertafter: '\[mysqld\]'}        
      }
```



