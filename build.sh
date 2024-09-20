rm -rf pkg pkg-node pkg-web
wasm-pack build --target nodejs
mv pkg pkg-node
wasm-pack build --target web
jq '.name = "uplc-wasm-web"' pkg/package.json > pkgtemp.json && mv pkgtemp.json pkg/package.json
mv pkg pkg-web
