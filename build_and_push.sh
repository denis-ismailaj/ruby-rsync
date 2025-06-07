#!/bin/sh

IMAGE_ID=$(podman build -q .)

TAGS="3.4.4-bookworm 3.4-bookworm 3-bookworm bookworm 3.4.4 3.4 3 latest"

for TAG in $TAGS; do
    podman tag "$IMAGE_ID" denisismailaj/ruby-rsync:"$TAG"
    podman push denisismailaj/ruby-rsync:"$TAG"
done
