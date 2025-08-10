
#!/bin/bash
set -e

echo "Creating CyberQuest RPG folder structure..."

mkdir -p cyberquest-rpg/{client/core,client/assets/{maps,tilesets},server,tools,data}

# Root files
cat > cyberquest-rpg/.gitignore <<'EOF'
__pycache__/
*.py[cod]
.venv/
.DS_Store
Thumbs.db
players_db.json
EOF

cat > cyberquest-rpg/requirements.txt <<'EOF'
pygame>=2.0
pytmx>=3.0
Pillow>=9.0
websockets>=10.0
EOF

cat > cyberquest-rpg/README.md <<'EOF'
# CyberQuest RPG
A multiplayer cyberpunk-fantasy RPG in Python (Pygame + WebSockets).

See chat log for full details.
EOF

# Client placeholder files
touch cyberquest-rpg/client/main_network_tmx_quests.py
touch cyberquest-rpg/client/main_network_tmx.py
touch cyberquest-rpg/client/main_tmx.py
touch cyberquest-rpg/client/core/map_loader.py

# Server placeholder
touch cyberquest-rpg/server/server.py

# Tools placeholder
touch cyberquest-rpg/tools/generate_tilesets_enhanced.py
touch cyberquest-rpg/tools/generate_maps_with_warps.py

# Data placeholder
touch cyberquest-rpg/data/quests.json
touch cyberquest-rpg/data/items.json
touch cyberquest-rpg/data/enemies.json

echo "Scaffold created at ./cyberquest-rpg"
