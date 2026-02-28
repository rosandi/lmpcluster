# lmpcluster
Lammps Docker Cluster

This is a cluster system using 4 nodes of docker container.

## User setting

Change `LMPUSER` environment to set user name. The user will be created if not allready created. Home directory is in `/home/$LMPUSER`.

## Directory

Shared directory is mounted under `/home`, shared and accessible through out the nodes. Use this directory for working.

## Lammps program

LAMMPS binary is tored under `/home/share/bin`. The directory is in the `$PATH`.
User full address in batch file


