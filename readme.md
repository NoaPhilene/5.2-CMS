# 📘 WordPress Website

## 🧩 Over dit project
Dit project bevat een **volledige WordPress-installatie** met zorgvuldig gekozen plugins voor **optimalisatie**, **beveiliging** en **gebruiksgemak**.  
De volledige site kan eenvoudig worden hersteld via een **All-in-One WP Migration-back-upbestand (.wpress)**.  

**Back-up downloaden:**  
[https://files.tomtiedemann.com/api/public/dl/jzSPfU1L/backupfile.wpress](https://files.tomtiedemann.com/api/public/dl/jzSPfU1L/backupfile.wpress)

---

## ⚙️ Installatiehandleiding

### 1. Vereisten
Zorg dat je omgeving aan de volgende eisen voldoet:
- **PHP:** 7.4 of hoger  
- **Database:** MySQL 5.7+ of MariaDB 10+  
- **Webserver:** Apache of Nginx  
- **WordPress:** schone installatie  

---

### 2. Installatieproces

#### Stap 1 — Installeer WordPress  
Download de laatste versie van [wordpress.org](https://wordpress.org/download/) en installeer deze lokaal of op je hostingomgeving.

#### Stap 2 — Voeg de back-up plugin toe  
1. Log in op je WordPress-dashboard.  
2. Ga naar **Plugins → Nieuwe plugin**.  
3. Zoek op **All-in-One WP Migration and Backup**.  
4. Klik op **Installeren** en daarna **Activeren**.

#### Stap 3 — Importeer de back-up  
1. Download het back-upbestand:  
   [https://files.tomtiedemann.com/api/public/dl/jzSPfU1L/backupfile.wpress](https://files.tomtiedemann.com/api/public/dl/jzSPfU1L/backupfile.wpress)  
2. Ga in WordPress naar **All-in-One WP Migration → Importeren**.  
3. Upload het bestand `backupfile.wpress`.  
4. Bevestig het overschrijven van bestaande data wanneer hierom gevraagd wordt.

#### Stap 4 — Inloggen
Gebruik de volgende gegevens om in te loggen:
```
Gebruikersnaam: admin
Wachtwoord: admin
Login URL: http://localhost/wp-admin of het domein van je hosting.
```


Na het inloggen is de volledige site, inclusief thema’s, plugins en instellingen, hersteld.

---

## 🔌 Gebruikte plugins

### 🧳 All-in-One WP Migration and Backup  
**Doel:** Back-ups en volledige siteherstel.  
**Voordelen:**  
- Inclusief database, uploads, thema’s en plugins.  
- Werkt zonder technische kennis.  

---

### ⚡ Autoptimize  
**Doel:** Optimaliseert HTML, CSS en JavaScript voor betere prestaties.  
**Voordelen:**  
- Kortere laadtijden.  
- Betere PageSpeed-score.  
- Werkt goed samen met WP Super Cache.  

---

### 🔒 Secure Custom Fields  
**Doel:** Veilige extra velden toevoegen aan berichten, pagina’s en custom post types.  
**Voordelen:**  
- Versleutelt gevoelige data in de database.  
- Maakt dynamische content mogelijk zonder complexe code.  
- Vermindert risico op datalekken.  

---

### 🛡️ Wordfence Security  
**Doel:** Bescherming tegen aanvallen, malware en loginmisbruik.  
**Voordelen:**  
- Realtime firewall en malware-scanner.  
- Bescherming tegen brute-force aanvallen.  
- Zeer betrouwbare beveiligingsplugin.  

---

### 🚀 WP Super Cache  
**Doel:** Slaat dynamische pagina’s op als statische HTML-bestanden.  
**Voordelen:**  
- Vermindert serverbelasting.  
- Verhoogt de snelheid voor bezoekers en zoekmachines.  
- Eenvoudig te configureren.  

---

### 🎨 Eigen plugin — Customize site 
**Doel:** Maakt de website dynamisch aanpasbaar.  
**Voordelen:**  
- Biedt flexibiliteit voor visuele aanpassingen.  
- Houdt de homepage fris en personaliseerbaar.  

---

## 🧠 Pluginvergelijking

| Functie            | Gekozen Plugin             | Waarom deze keuze? |
|--------------------|----------------------------|--------------------|
| Migratie & Back-up | All-in-One WP Migration     | Gebruiksvriendelijk en compleet |
| Optimalisatie      | Autoptimize                 | Lichtgewicht en stabiel |
| Beveiliging        | Wordfence Security          | Sterke realtime bescherming |
| Gevoelige data     | Secure Custom Fields        | Ingebouwde encryptie |
| Caching            | WP Super Cache              | Betrouwbaar en eenvoudig |
| Customize site     | Eigen plugin                | Flexibel en praktisch |

---

## ✅ Samenvatting
Met deze back-up beschik je over een volledig geoptimaliseerde en veilige WordPress-site.  
Dankzij de combinatie van krachtige plugins is de website snel, veilig en eenvoudig te beheren — perfect als basis voor verdere ontwikkeling of aanpassing.
