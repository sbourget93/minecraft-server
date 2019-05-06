import os

import boto3
import subprocess


if __name__ == '__main__':

    bucket = 'stephengb-minecraft'

    with open('/tmp/server_name') as f:
        server_name = f.readline().strip()

    with open('/tmp/server_started_at') as f:
        server_started_at = f.readline().strip()

    world_path = '/home/ec2-user/minecraft-server/minecraft/world/'
    backup_path = '/tmp/backup.zip'

    backup_s3_prefix = '%s/backups' % server_name
    latest_backup_key = '%s/latest-backup.zip' % backup_s3_prefix
    persistent_backup_key = '%s/persistent/%s.zip' % (backup_s3_prefix, server_started_at)

    subprocess.call(['zip', '-r', backup_path, '.'], cwd=world_path)

    print 'Copying %(file_path)s to %(bucket)s/%(key)s' % {
        'file_path': backup_path,
        'bucket': bucket,
        'key': latest_backup_key
    }
    s3 = boto3.resource('s3')
    s3.Object(bucket, latest_backup_key).put(Body=open(backup_path, 'rb'))

    print 'Copying %(file_path)s to %(bucket)s/%(key)s' % {
        'file_path': backup_path,
        'bucket': bucket,
        'key': persistent_backup_key
    }
    s3 = boto3.resource('s3')
    s3.Object(bucket, persistent_backup_key).put(Body=open(backup_path, 'rb'))

    os.remove(backup_path)
