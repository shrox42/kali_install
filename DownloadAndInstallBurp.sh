#!/bin/bash

GetLatestBurpVersion() {
    output=$(curl -is https://portswigger.net/burp/releases/professional/latest | grep 'location:' 2>/dev/null)

    # Extract the version using regular expression
    if [[ $output =~ ([0-9]{4})-([0-9]+)-([0-9]+) ]]; then
        year="${BASH_REMATCH[1]}"
        month="${BASH_REMATCH[2]}"
        version="${BASH_REMATCH[3]}"
        
        # Format the extracted version
        formatted_version="$year.$month.$version"

        echo "$formatted_version"

    else
        echo "Error: Failed to get the latest Burp version"
        exit 1
    fi
}

DownloadBurp() {
    local version=$1
     
    # Check for the architecture type
    local arch=$(uname -m)
    if [[ $arch == *'arm'* || $arch == *'aarch64'* ]]; then
        local type="LinuxArm64"
    else
        local type="Linux"
    fi

    local filename="Burp_Suite_Pro.sh"
    Link="https://portswigger-cdn.net/burp/releases/download?product=pro&version=$version&type=$type"
    echo "Downloading Burp Suite Pro version $version for $type"
    wget "$Link" -O Burp_Suite_Pro.sh --quiet --show-progress

    echo "$filename $version $type"
}

latest_version=$(GetLatestBurpVersion)
DownloadBurp $latest_version

echo "Installing Burp Suite Pro..."
bash ./Burp_Suite_Pro.sh -q
rm ./Burp_Suite_Pro.sh
echo "Burp Suite Pro installation completed."
