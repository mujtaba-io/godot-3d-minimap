# Godot Minimap System

I implemented this [Godot minimap for 3D games](https://gameidea.org/2024/12/13/how-to-make-mini-map-or-radar-for-3d-game/), as part of my RTS tutorial series. It uses another camera-3d to render to a subviewport, without replicating the scene. The othewr cameera is top-down so it views the world from above. We can optionally set another Environment node on mini-map camera to disable fog.
![godot-3d-minimap-system-test](https://github.com/user-attachments/assets/ae628761-711f-4d14-aa78-34bb8e5b47b2)
