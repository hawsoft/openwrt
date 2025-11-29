./scripts/feeds clean
./scripts/feeds update -a
rm -rf feeds/packages/net/{mosdns,xray*,v2ray*,v2ray*}
rm -rf feeds/packages/lang/golang
mv feeds/collect/golang feeds/packages/lang/golang
./scripts/feeds install -a
./scripts/feeds install -a -f -p collect