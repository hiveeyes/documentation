.. include:: _resources.rst

.. _platform-operations:

##########
Operations
##########

******
Backup
******

Backupninja
===========
Backupninja_ is running *everyday at 23:30* doing incremental backups while retaining 60 days of history.
It backups important files and directories and the InfluxDB_ and Grafana_ databases::

    include = /opt
    include = /srv
    include = /var/www
    include = /var/lib/mosquitto
    include = /var/lib/grafana
    exclude = /var/lib/grafana/sessions


InfluxDB
========

Basics
------
::

    influx_databases=$(influx --execute 'show databases;' -format 'csv' | awk -F, '{ print $2 }' | tail -n +2)
    influxd backup -database "${database}" "/var/backups/influxdb/snapshots/${database}"


Backupninja handler
-------------------

.. highlight:: bash

A Backupninja_ handler for backing up all InfluxDB_ databases::

    # -*- mode: sh; sh-basic-offset: 3; indent-tabs-mode: nil; -*-
    # vim: set filetype=sh sw=3 sts=3 expandtab autoindent:
    #
    # InfluxDB backup handler script for backupninja
    #
    # 2016-01-27 Andreas Motl <andreas.motl@elmyra.de>
    #
    getconf backupdir /var/backups/influxdb
    getconf databases "$(influx --execute 'show databases;' -format 'csv' | awk -F, '{ print $2 }' | tail -n +2)"
    getconf method snapshot

    status="ok"

    [ -d $backupdir ] || mkdir -p $backupdir
    [ -d $backupdir ] || fatal "Backup directory '$backupdir'"

    snapshotdir="$backupdir/snapshots"
    [ -d $snapshotdir ] || mkdir -p $snapshotdir

    names=(${databases})
    info "Backing up ${#names[@]} InfluxDB databases\n${databases}"

    for database in $databases; do

          execstr="influxd backup -database '${database}' '$snapshotdir/${database}'"

          if [ $test ]; then

             info "Pretending to backup InfluxDB database '${database}'"
             debug "$execstr"

          else

             debug "$execstr"
             output=`su root -c "set -o pipefail ; $execstr" 2>&1`
             code=$?
             if [ "$code" == "0" ]; then
                debug $output
                info "Successfully finished InfluxDB backup of $database"
             else
                warning $output
                warning "Failed InfluxDB backup of $database"
             fi

          fi
    done

    return 0


See also
--------
- InfluxDB backup and restore:
  https://docs.influxdata.com/influxdb/v0.9/administration/backup_and_restore/
- InfluxDB data retention:
  https://docs.influxdata.com/influxdb/v0.9/query_language/database_management/#retention-policy-management
