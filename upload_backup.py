import sys

import boto3
import os

from datetime import datetime

if __name__ == '__main__':

    mode = sys.argv[1]
    if mode not in ('latest', 'persistent'):
        print('usage: python3 upload_backup.py <latest/persistent>')

    most_recent_file = None

    with open('/tmp/server_name') as f:
        server_name = f.readline().strip()

    path = '/home/ec2-user/minecraft-server/backups'
    bucket = 'stephengb-minecraft'
    prefix = '%s/backups/' % server_name
    backup_format = 'backup-%Y-%m-%dT%H:%M:%S.zip'

    for root, directories, file_names in os.walk(path):
        for file_name in file_names:
            file_path = os.path.join(root, file_name)
            try:
                file_date = datetime.strptime(file_name, backup_format)
                if most_recent_file is None:
                    most_recent_file = {
                        'file_path': file_path,
                        'file_name': file_name,
                        'file_date': file_date
                    }
                elif file_date > most_recent_file['file_date']:
                    most_recent_file = {
                        'file_path': file_path,
                        'file_name': file_name,
                        'file_date': file_date
                    }
            except Exception as e:
                pass

    if most_recent_file is not None:
        file_path = most_recent_file['file_path']

        if mode == 'latest':
            latest_backup_key = prefix + 'latest-backup.zip'

            print('Copying %(file_path)s to %(bucket)s/%(key)s' % {
                'file_path': file_path,
                'bucket': bucket,
                'key': latest_backup_key
            })
            s3 = boto3.resource('s3')
            s3.Object(bucket, latest_backup_key).put(Body=open(file_path, 'rb'))

        if mode == 'persistent':
            persistent_backup_key = prefix + 'persistent/{file_name}'.format(
                file_name=most_recent_file['file_name']
            )

            print('Copying %(file_path)s to %(bucket)s/%(key)s' % {
                'file_path': file_path,
                'bucket': bucket,
                'key': persistent_backup_key
            })
            s3 = boto3.resource('s3')
            s3.Object(bucket, persistent_backup_key).put(Body=open(file_path, 'rb'))
