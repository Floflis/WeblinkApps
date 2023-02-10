echo "Installing Decentraland weblink app..."
cat > /usr/bin/decentraland <<EOF
#!/bin/bash

xdg-open https://play.decentraland.org/
EOF
$maysudo chmod +x /usr/bin/decentraland
cat > /usr/share/applications/decentraland.desktop <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=Decentraland
Comment=Play in a open 3D metaverse with other etherean players, and spend tokens to buy NFT items/wearables
Type=Application
Exec=decentraland
Icon=decentraland
Categories=Game;Simulation;Metaverse;Ethereum;Polygon;
Keywords=metaverse;world;mining;tokens;ethereum;wearables;multiplayer;roleplaying;
EOF

echo "Installing The Sandbox weblink app..."
cat > /usr/bin/thesandbox <<EOF
#!/bin/bash

xdg-open https://www.sandbox.game/en/
EOF
$maysudo chmod +x /usr/bin/thesandbox
cat > /usr/share/applications/thesandbox.desktop <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=The Sandbox
Comment=Play in a open 3D voxels metaverse with other etherean players, and spend tokens to buy NFT items/wearables
Type=Application
Exec=thesandbox
Icon=thesandbox
Categories=Game;Simulation;Metaverse;Ethereum;
Keywords=metaverse;world;mining;tokens;ethereum;wearables;multiplayer;roleplaying;sandbox;voxels;
EOF

echo "Installing Voxels (former Cryptovoxels) weblink app..."
cat > /usr/bin/voxels <<EOF
#!/bin/bash

xdg-open https://www.cryptovoxels.com/play
EOF
$maysudo chmod +x /usr/bin/voxels
cat > /usr/share/applications/voxels.desktop <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=Voxels
Comment=Play in a open 3D voxels metaverse with other etherean players, and spend tokens to buy NFT items/wearables
Type=Application
Exec=voxels
Icon=voxels
Categories=Game;Simulation;Metaverse;Ethereum;
Keywords=metaverse;world;mining;tokens;ethereum;wearables;multiplayer;roleplaying;sandbox;voxels;
EOF

echo "Installing Audius weblink app..."
cat > /usr/bin/audius <<EOF
#!/bin/bash

xdg-open https://audius.co/trending
EOF
$maysudo chmod +x /usr/bin/audius
cat > /usr/share/applications/audius.desktop <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=Audius
Comment=Discover underground music! Partnered with Tiktok. Higher quality than other music streamming services (even in their PRO/premium versions).
Type=Application
Exec=audius
Icon=audius
Categories=AudioVideo;Audio;
Keywords=music;blockchain;metaverse;nft;ethereum;
EOF

echo "Installing OpenSea weblink app..."
cat > /usr/bin/opensea <<EOF
#!/bin/bash

xdg-open https://opensea.io/
EOF
$maysudo chmod +x /usr/bin/opensea
cat > /usr/share/applications/opensea.desktop <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=OpenSea
Comment=Discover, collect, and sell extraordinary NFTs on the world's first & largest NFT marketplace
Type=Application
Exec=opensea
Icon=opensea
Categories=Internet;
Keywords=music;video;art;blockchain;metaverse;nft;ethereum;polygon;xdai;
EOF

cd include/icons
cp -r -f --preserve=all . /usr/share/icons/hicolor/scalable/apps/
ln -s voxels.svg /usr/share/icons/hicolor/scalable/apps/cryptovoxels.svg
cd "$SCRIPTPATH"
$maysudo gtk-update-icon-cache /usr/share/icons/gnome/ -f
