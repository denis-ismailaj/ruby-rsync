#!/bin/sh

IMAGE_ID=$(podman build -q .)

TAGS="4.0.2-trixie 4.0-trixie 4-trixie trixie 4.0.2 4.0 4 latest"

for TAG in $TAGS; do
    podman tag "$IMAGE_ID" denisismailaj/ruby-rsync:"$TAG"
    podman push denisismailaj/ruby-rsync:"$TAG"
done
