# 07 Window Dressing

Demonstrates different methods of masking (clip, subviewport).

### 🚨 POTENTIAL ISSUES

- SubViewport doesn't always obey HiDPI settings, and therefore you might need to scale it to 2x the game screen.
- Godot has a bug where duplicated subviewports hang on to their linked status as textures, which means that if you don't create a new one (instead of duplicating), then any sprite assigned to the original will switch over and vice versa. **tldr; Always create a new SubViewport node.**


