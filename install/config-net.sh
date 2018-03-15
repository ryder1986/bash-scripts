#!/bin/bash
systemctl stop  NetworkManager
systemctl disable NetworkManager
systemctl stop  networking
systemctl disable networking
