# 🧱 Data → Domain → Presentation Layers
```
┌─────────────────────────────────────────┐
│            PRESENTATION                  │
│  Screens, Widgets, Providers            │
│  Depends on: Domain layer only          │
└────────────────┬────────────────────────┘
                 │ calls
                 ▼
┌─────────────────────────────────────────┐
│              DOMAIN                      │
│  Entities, Repository Interfaces,       │
│  Use Cases                              │
│  Depends on: Nothing (pure Dart)        │
└────────────────┬────────────────────────┘
                 │ implemented by
                 ▼
┌─────────────────────────────────────────┐
│               DATA                       │
│  Models, Repository Impl,              │
│  Remote/Local Data Sources              │
│  Depends on: Domain layer contracts     │
└─────────────────────────────────────────┘
```
