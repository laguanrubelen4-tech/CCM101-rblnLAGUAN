#!/bin/bash
# Host firewall hardening: default deny incoming, allow only SSH and WordPress.
# Run with: sudo ./setup-ufw.sh
set -e

ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp comment 'SSH remote admin'
ufw allow 8080/tcp comment 'WordPress web'
ufw --force enable
ufw status verbose
