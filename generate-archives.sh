modpackver=v3

echo "Creating modpacks archives for version $modpackver"

rm -rf ./modpacks_archives
mkdir modpacks_archives

tar -cf modpacks_archives/tmp_required_$modpackver.tar -C mods/required .

echo "[1/8] Base"
cp modpacks_archives/tmp_required_$modpackver.tar modpacks_archives/base_$modpackver.tar
tar -rf modpacks_archives/base_$modpackver.tar -C mods/base .

echo "[2/8] Base+Optimizations"
cp modpacks_archives/base_$modpackver.tar modpacks_archives/base+optimizations_$modpackver.tar
tar -rf modpacks_archives/base+optimizations_$modpackver.tar -C mods/optimizations .

echo "[2/8] Base+Extras"
cp modpacks_archives/base_$modpackver.tar modpacks_archives/base+extras_$modpackver.tar
tar -rf modpacks_archives/base+extras_$modpackver.tar -C mods/extras .

echo "[3/8] Base+Visual"
cp modpacks_archives/base_$modpackver.tar modpacks_archives/base+visual_$modpackver.tar
tar -rf modpacks_archives/base+visual_$modpackver.tar -C mods/visual .

echo "[4/8] Base+Optimizations+Extras"
cp modpacks_archives/base_$modpackver.tar modpacks_archives/base+optimizations+extras_$modpackver.tar
tar -rf modpacks_archives/base+optimizations+extras_$modpackver.tar -C mods/optimizations .
tar -rf modpacks_archives/base+optimizations+extras_$modpackver.tar -C mods/extras .

echo "[5/8] Base+Optimizations+Visual"
cp modpacks_archives/base_$modpackver.tar modpacks_archives/base+optimizations+visual_$modpackver.tar
tar -rf modpacks_archives/base+optimizations+visual_$modpackver.tar -C mods/optimizations .
tar -rf modpacks_archives/base+optimizations+visual_$modpackver.tar -C mods/visual .

echo "[6/8] Base+Extras+Visual"
cp modpacks_archives/base_$modpackver.tar modpacks_archives/base+extras+visual_$modpackver.tar
tar -rf modpacks_archives/base+extras+visual_$modpackver.tar -C mods/extras .
tar -rf modpacks_archives/base+extras+visual_$modpackver.tar -C mods/visual .

echo "[7/8] Base+Optimizations+Extras+Visual"
cp modpacks_archives/base_$modpackver.tar modpacks_archives/base+optimizations+extras+visual_$modpackver.tar
tar -rf modpacks_archives/base+optimizations+extras+visual_$modpackver.tar -C mods/optimizations .
tar -rf modpacks_archives/base+optimizations+extras+visual_$modpackver.tar -C mods/extras .
tar -rf modpacks_archives/base+optimizations+extras+visual_$modpackver.tar -C mods/visual .

printf '%s' "[8/8] Compressing... "

gzip -f modpacks_archives/base_$modpackver.tar
printf '%s' "12%... "
gzip -f modpacks_archives/base+optimizations_$modpackver.tar
printf '%s' "25%... "
gzip -f modpacks_archives/base+extras_$modpackver.tar
printf '%s' "37%... "
gzip -f modpacks_archives/base+visual_$modpackver.tar
printf '%s' "50%... "
gzip -f modpacks_archives/base+optimizations+extras_$modpackver.tar
printf '%s' "62%... "
gzip -f modpacks_archives/base+optimizations+visual_$modpackver.tar
printf '%s' "75%... "
gzip -f modpacks_archives/base+extras+visual_$modpackver.tar
printf '%s' "87%... "
gzip -f modpacks_archives/base+optimizations+extras+visual_$modpackver.tar
echo "100%"

rm modpacks_archives/tmp_required_$modpackver.tar

echo "Operation finished: ./modpacks_archives/"