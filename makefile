all: curseforge modrinth

curseforge:
	packwiz curseforge export
.PHONY: curseforge

modrinth:
	packwiz modrinth export
.PHONY: modrinth