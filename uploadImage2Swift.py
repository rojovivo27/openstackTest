import sys

from shade import *

simple_logging(debug=True)
conn = openstack_cloud(cloud='pistones')

print "Upload objects:" 
container_name = 'pistones'
container = conn.create_container(container_name)

pictures = {sys.argv[1]: sys.argv[2]}
for object_name, file_path in pictures.items():
    conn.create_object(container=container_name, name=object_name, filename=file_path)
