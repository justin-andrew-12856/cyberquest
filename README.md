# CyberQuest RPG — Multiplayer Cybersecurity-Themed RPG (Python / Pygame)

**Status:** Prototype / playable scaffold  
**Theme:** Four ex-military cybersecurity students get pulled into a mysterious website and must traverse a cyber-fantasy world to return home.  
**Engine:** Python (pygame) client, asyncio + websockets server. Maps use Tiled (.tmx) and `pytmx`.

---

## Repo structure (what you'll have)

cyberquest-rpg/
├── README.md
├── .gitignore
├── data/
│ ├── items.json
│ ├── enemies.json
│ └── quests.json
├── client/
│ ├── main_network_tmx_quests.py
│ ├── main_network_tmx.py
│ ├── main_tmx.py
│ └── core/
│ └── map_loader.py
│ └── assets/
│ ├── maps/ # generated TMX maps
│ └── tilesets/ # generated tileset PNGs
├── server/
│ └── server.py
├── tools/
│ ├── generate_tilesets_enhanced.py
│ ├── generate_maps_with_warps.py
│ └── generate_maps.py # optional alternative
└── requirements.txt



---

## Quick start (after clone)

1. Create a Python 3.10+ virtualenv and install dependencies:

```bash
python -m venv .venv
source .venv/bin/activate      # macOS/Linux
.venv\Scripts\activate         # Windows

pip install -r requirements.txt
# requirements.txt contains: pygame, pytmx, pillow, websockets

