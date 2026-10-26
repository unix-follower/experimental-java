```bash
podman machine stop
podman machine rm -f

# Initialize a new machine with Rosetta emulation enabled
podman machine init --cpus 4 --memory 16384 --disk-size 200

# Start the new machine
podman machine start
```
