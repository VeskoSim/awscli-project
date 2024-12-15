jq -c '.MovieReleases[]' movies.json | while read -r item; do
    aws dynamodb batch-write-item --request-items "{\"MovieReleases\": [$item]}"
done
