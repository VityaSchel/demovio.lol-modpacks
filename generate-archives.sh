modpackver=v3

create_archive() {
    local combo="$1"
    local suffix=""
    if [[ -n "$combo" ]]; then
        suffix="_${combo//+/_}"
    fi
    local archive="modpacks_archives/required${suffix}_${modpackver}.tar"
    
    echo "Creating archive: $archive.gz"
    tar -cf "$archive" -C mods/required .
    
    if [[ -n "$combo" ]]; then
        IFS='+' read -r -a modsArray <<< "$combo"
        for mod in "${modsArray[@]}"; do
            tar -rf "$archive" -C "mods/$mod" .
        done
    fi

    gzip "$archive"
}

echo "Creating modpacks archives for version $modpackver"
rm -rf ./modpacks_archives
mkdir modpacks_archives

create_archive ""                  # Required only
create_archive "base"              # Required + Base
create_archive "extras"            # Required + Extras
create_archive "optimizations"     # Required + Optimizations
create_archive "visual"            # Required + Visual
create_archive "base+extras"         # Required + Base + Extras
create_archive "base+optimizations"  # Required + Base + Optimizations
create_archive "base+visual"         # Required + Base + Visual
create_archive "extras+optimizations" # Required + Extras + Optimizations
create_archive "extras+visual"        # Required + Extras + Visual
create_archive "optimizations+visual" # Required + Optimizations + Visual
create_archive "base+extras+optimizations"   # Required + Base + Extras + Optimizations
create_archive "base+extras+visual"          # Required + Base + Extras + Visual
create_archive "base+optimizations+visual"     # Required + Base + Optimizations + Visual
create_archive "extras+optimizations+visual"   # Required + Extras + Optimizations + Visual
create_archive "base+extras+optimizations+visual" # Required + Base + Extras + Optimizations + Visual


echo "Operation finished: ./modpacks_archives/"