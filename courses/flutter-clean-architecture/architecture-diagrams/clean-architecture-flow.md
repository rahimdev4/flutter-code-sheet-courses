# 🔄 Clean Architecture Flow
```
┌──────────────────────────────────┐
│         UI / Screens             │  ← Presentation Layer
│    (Widgets, Pages)              │
└──────────┬───────────────────────┘
           │
           ▼
┌──────────────────────────────────┐
│    Providers / Controllers       │  ← State Management
│    (Riverpod, Notifiers)         │
└──────────┬───────────────────────┘
           │
           ▼
┌──────────────────────────────────┐
│         Use Cases                │  ← Domain Layer
│    (Business Logic)              │
└──────────┬───────────────────────┘
           │
           ▼
┌──────────────────────────────────┐
│    Repository Interface          │  ← Domain Layer (contract)
└──────────┬───────────────────────┘
           │
           ▼
┌──────────────────────────────────┐
│    Repository Implementation     │  ← Data Layer
└──────┬───────────────┬───────────┘
       │               │
       ▼               ▼
┌──────────────┐ ┌──────────────┐
│ Remote Source │ │ Local Source  │
│ (API, Firebase)│ │ (Cache, Hive)│
└──────────────┘ └──────────────┘
```
