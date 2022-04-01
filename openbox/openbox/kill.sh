#!/bin/bash

sleep 30s

pkill mintUpdate
pkill mintreport-tray
pkill applet.py
killall blueberry-obex-agent
pkill obexd
pkill tumblerd
pkill xdg-permission-store
pkill xdg-documents-portal
pkill xdg-desktop-portal
killall tracker-miner-fs
