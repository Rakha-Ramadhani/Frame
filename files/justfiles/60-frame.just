# Frame custom just recipes

default:
    @just --list

# Show system status
status:
    @systemctl status --no-pager

# Toggle performance profile
performance:
    @powerprofilesctl set performance

# Toggle balanced profile
balanced:
    @powerprofilesctl set balanced

# Toggle power saver profile
powersave:
    @powerprofilesctl set power-saver

# Check Podman socket
podman-status:
    @systemctl status podman.socket --no-pager

# Restart podman socket
podman-restart:
    @sudo systemctl restart podman.socket

# Quick system health check
health:
    @echo "=== System ==="
    @uname -a
    @echo ""
    @echo "=== Power profile ==="
    @powerprofilesctl get
    @echo ""
    @echo "=== Podman socket ==="
    @systemctl is-active podman.socket

# Rebuild image helper
rebuild:
    @echo "Use your BlueBuild rebuild workflow or local build command"

# Safe update check
updates:
    @rpm-ostree status
