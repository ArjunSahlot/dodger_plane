#!/bin/bash

download_link=https://github.com/ArjunSahlot/dodger_plane/archive/master.zip
temporary_dir=$(mktemp -d) \
&& curl -LO $download_link \
&& unzip -d $temporary_dir master.zip \
&& rm -rf master.zip \
&& mv $temporary_dir/dodger_plane-master $1/dodger_plane \
&& rm -rf $temporary_dir
echo -e "[0;32mSuccessfully downloaded to $1/dodger_plane[0m"
