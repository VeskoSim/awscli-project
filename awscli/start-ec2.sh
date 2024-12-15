INSTANCE_ID=$(aws ec2 run-instances \
    --image-id ami-00ac244ee0ad9050d \
    --count 1 \
    --instance-type t2.micro \
    --key-name MyWebAppKey \
    --security-group-ids sg-004bf120d0076275f \
    --subnet-id subnet-025ac70cb3accf939 \
    --query 'Instances[0].InstanceId' \
    --output text)

echo "Instance ID: $INSTANCE_ID"
