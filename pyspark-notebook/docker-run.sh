docker run \
-dp 8888:8888 \
-w /Users/$USER \
--mount type=bind,source=/Users,target=/Users \
pyspark \
--port=8888 \
--notebook-dir=/Users/$USER