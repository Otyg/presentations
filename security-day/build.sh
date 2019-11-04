npm install
cd src/md
for D in *; do [ -d "${D}" ] && node ../../node_modules/reveal-md/bin/cli.js ${D}/*.md --static ../../dist/${D}; mkdir -p ../../dist/${D}/gfx; cp ${D}/gfx/* ../../dist/${D}/gfx; done
cd ../..
