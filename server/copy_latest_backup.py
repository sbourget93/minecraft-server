import boto3
import os

from datetime import datetime

if __name__ == '__main__':

    most_recent_file = None

    path = '/home/ec2-user/server/server/backups/world'
    bucket = 'stephengb-server'
    prefix = 'backups/'
    backup_format = 'Backup--world--%Y-%m-%d--%H-%M.zip'

    for file_name in os.listdir(path):
        try:
            file_date = datetime.strptime(file_name, backup_format)
            if most_recent_file is None:
                most_recent_file = {
                    'file_name': file_name,
                    'file_date': file_date
                }
            elif file_date > most_recent_file['file_date']:
                most_recent_file = {
                    'file_name': file_name,
                    'file_date': file_date
                }
        except Exception as e:
            pass

    if most_recent_file is not None:

        file_path = '%(path)s/%(file_name)s' % {
            'path': path,
            'file_name': most_recent_file['file_name']
        }

        latest_backup_key = prefix + 'latest-backup.zip'
        with open('/tmp/server_started_at') as f:
            server_started_at = f.readline().strip()

        persistent_backup_key = 'backups/persistent/%s.zip' % server_started_at

        print 'Copying %(file_path)s to %(bucket)s/%(key)s' % {
            'file_path': file_path,
            'bucket': bucket,
            'key': latest_backup_key
        }
        s3 = boto3.resource('s3')
        s3.Object(bucket, latest_backup_key).put(Body=open(file_path, 'rb'))

        print 'Copying %(file_path)s to %(bucket)s/%(key)s' % {
            'file_path': file_path,
            'bucket': bucket,
            'key': persistent_backup_key
        }
        s3 = boto3.resource('s3')
        s3.Object(bucket, persistent_backup_key).put(Body=open(file_path, 'rb'))
