# Use Docker-in-Docker as the base image
FROM docker:23.0.0-dind

# Install bash for ease of use (optional)
RUN apk add --no-cache bash

# Set up a working directory
WORKDIR /workspace

# Start the Docker daemon (DinD)
CMD ["dockerd-entrypoint.sh"]
