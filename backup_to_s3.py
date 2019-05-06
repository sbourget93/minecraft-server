import boto3

if __name__ == '__main__':

    with open('/tmp/server_name') as f:
        server_name = f.readline().strip()

    path = '/home/ec2-user/minecraft-server/minecraft/backups/world'
    bucket = 'stephengb-minecraft'
    prefix = '%s/backups/' % server_name
    backup_format = 'Backup-world-%Y-%m-%d--%H-%M.zip'

    if most_recent_file is not None:

        file_path = most_recent_file['file_path']

        latest_backup_key = prefix + 'latest-backup.zip'
        with open('/tmp/server_started_at') as f:
            server_started_at = f.readline().strip()

        persistent_backup_key = prefix + 'persistent/%s.zip' % server_started_at

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