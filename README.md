Steps taken to complete task.

1)  Create an S3 bucket for storing logs 
    Go to services and select S3 under Storage.
    Select create bucket and give appropriate name and click on create.

2)  Create a Lambda function to log each invocation with the timestamp to the created S3 bucket.  
    Go to services and select Lambda under Compute.
    Select create function. 
    Use the Author from Scratch option.
    Under permissions select Create a new role with basic Lambda permissions and create function.
    For adding permissions, Identity & Access Management -> Roles -> function role -> Attach Policies -> add AWSLambdaExecute.
    Write the code, then deploy & test.

3)  Create an API in API Gateway and link it to the above created lambda, so that you can invoke the lambda function via curl command/postman or programmatically. 
    In the function, select add trigger under function overview.
    Under trigger configuration, select API Gateway -> REST API -> under security open -> Add.
    The generated link can be used in browser/postman...etc.
    A JSON file is created in the bucket on hitting the API.
    



