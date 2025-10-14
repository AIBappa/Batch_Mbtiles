# Batch_Mbtiles
Ansible Batch script for downloading India state .osm.pbf from geo2day.com and converting to Mbtiles in Shortbread and OpenMapTiles formats. Also creating Valhalla routing files.

Sequence of commands
1) Install Ansible
2) Install Ansible-collection
3) Run india_download_geo2.sh in the /root/geo2day_india folder to pull all India state .osm.pbf files from geo2day.com
4) Created /root/ansible_india folder and run the ansible scripts (*.yml) files with the command ansible-playbook playbook.yml --connection=local -vvv

Notes: 
1) Playbook.yml and Play_run.yml do not run on ARM64. Tool used is Tilemaker
2) Playbook_planetiler.yml and Slow_planes.yml use Planetiler. Slow_planes limits RAM to 3G and serial processing for slower machines.
