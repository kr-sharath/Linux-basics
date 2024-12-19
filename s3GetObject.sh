#!/bin/bash
#Output=output.txt
#aws s3api list-objects --bucket sample-devops-bucket --query "Contents[*].Key" --output table > $Output
#echo "File save to, $Output"

OBJECT_KEYS=$(aws s3api list-objects --bucket sample-devops-bucket)

# Write the output to a .txt file
echo "$OBJECT_KEYS" > s3_objects.txt
echo "$OBJECT_KEYS"
# Optional: Print a confirmation message
echo "The S3 object keys have been saved to s3_objects.txt."