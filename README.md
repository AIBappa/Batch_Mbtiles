# Batch_Mbtiles
Ansible Batch script for downloading India state .osm.pbf from geo2day.com and converting to Mbtiles in Shortbread and OpenMapTiles formats. Also creating Valhalla routing files.

Pre-requisites
1) Ansible
2) Ansible-collection

Notes: 
1) Playbook.yml and Play_run.yml do not run on ARM64. Tool used = Tilemaker
2) Playbook_planetiler.yml and Slow_planes.yml use Planetiler.
