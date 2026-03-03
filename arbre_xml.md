# Représentation graphique de l'arbre XML

## 1) Arbre logique (structure)

```text
meteo
└── mesure+ (@date)
    └── ville+ (@nom, @temperature)
```

## 2) Arbre instancié (avec les données du sujet)

```text
meteo
├── mesure [date="2006-1-1"]
│   ├── ville [nom="Casa", temperature="22"]
│   ├── ville [nom="Rabat", temperature="20"]
│   ├── ville [nom="Fes", temperature="18"]
│   ├── ville [nom="Oujda", temperature="19"]
│   ├── ville [nom="Tanger", temperature="25"]
│   ├── ville [nom="Marrakech", temperature="28"]
│   ├── ville [nom="Ouarzazat", temperature="29"]
│   └── ville [nom="Agadir", temperature="20"]
└── mesure [date="2006-1-2"]
    ├── ville [nom="Casa", temperature="21"]
    ├── ville [nom="Rabat", temperature="23"]
    ├── ville [nom="Fes", temperature="19"]
    ├── ville [nom="Oujda", temperature="20"]
    ├── ville [nom="Tanger", temperature="23"]
    ├── ville [nom="Marrakech", temperature="27"]
    ├── ville [nom="Ouarzazat", temperature="25"]
    └── ville [nom="Agadir", temperature="23"]
```
