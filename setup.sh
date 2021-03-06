#!/bin/bash
#
# Telegram Bot written in Python for halogenOS
# Copyright (C) 2017  Simao Gomes Viana
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

echo "This script will download all necessary files and set up this bot" \
     "for immediate use. Make sure you have an active internet connection."

which curl 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  echo "  Doing connectivity check..."
  curl http://connectivitycheck.gstatic.com/generate_204
  if [ $? -ne 0 ]; then
    echo "  Connectivity check failed! Use a working internet connection."
    exit 1
  else
    echo "  Connectivity check successful."
  fi
fi

echo "Starting setup..."
cd bot
./fetch-and-setup.sh

exit $?
