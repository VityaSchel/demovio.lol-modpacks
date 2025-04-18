rm -rf ./modpacks_archives
mkdir modpacks_archives

modpackver=v3

tar -czvf modpack_archives/tmp_required_$modpackver.tar.gz -C mods/required .

# base
cp modpacks_archives/tmp_required_$modpackver.tar.gz modpacks_archives/base_$modpackver.tar.gz
tar -czrvf modpacks_archives/base_$modpackver.tar.gz -C mods/base .

# base, optimizations
cp modpacks_archives/base_$modpackver.tar.gz modpacks_archives/base+optimizations_$modpackver.tar.gz
tar -czrvf modpacks_archives/base+optimizations_$modpackver.tar.gz -C mods/optimizations .

# base, extras
cp modpacks_archives/base_$modpackver.tar.gz modpacks_archives/base+extras_$modpackver.tar.gz
tar -czrvf modpacks_archives/base+extras_$modpackver.tar.gz -C mods/extras .

# base, visual
cp modpacks_archives/base_$modpackver.tar.gz modpacks_archives/base+visual_$modpackver.tar.gz
tar -czrvf modpacks_archives/base+visual_$modpackver.tar.gz -C mods/visual .

# base, optimizations, extras
cp modpacks_archives/base_$modpackver.tar.gz modpacks_archives/base+optimizations+extras_$modpackver.tar.gz
tar -czrvf modpacks_archives/base+optimizations+extras_$modpackver.tar.gz -C mods/optimizations .
tar -czrvf modpacks_archives/base+optimizations+extras_$modpackver.tar.gz -C mods/extras .

# base, optimizations, visual
cp modpacks_archives/base_$modpackver.tar.gz modpacks_archives/base+optimizations+visual_$modpackver.tar.gz
tar -czrvf modpacks_archives/base+optimizations+visual_$modpackver.tar.gz -C mods/optimizations .
tar -czrvf modpacks_archives/base+optimizations+visual_$modpackver.tar.gz -C mods/visual .

# base, extras, visual
cp modpacks_archives/base_$modpackver.tar.gz modpacks_archives/base+extras+visual_$modpackver.tar.gz
tar -czrvf modpacks_archives/base+extras+visual_$modpackver.tar.gz -C mods/extras .
tar -czrvf modpacks_archives/base+extras+visual_$modpackver.tar.gz -C mods/visual .

# base, optimizations, extras, visual
cp modpacks_archives/base_$modpackver.tar.gz modpacks_archives/base+optimizations+extras+visual_$modpackver.tar.gz
tar -czrvf modpacks_archives/base+optimizations+extras+visual_$modpackver.tar.gz -C mods/optimizations .
tar -czrvf modpacks_archives/base+optimizations+extras+visual_$modpackver.tar.gz -C mods/extras .
tar -czrvf modpacks_archives/base+optimizations+extras+visual_$modpackver.tar.gz -C mods/visual .

rm tmp_required_$modpackver.tar.gz