import boto3
import json
import datetime

s3 = boto3.client('s3')
bucket_name = 'awsbucketfirst1'

def lambda_handler(event, context):
    timestamp = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    s3.put_object(Bucket=bucket_name, Key=f'{timestamp}.json', Body=json.dumps(event))
    return {
        'statusCode': 200,
        'body': json.dumps('Log entry created')
    }