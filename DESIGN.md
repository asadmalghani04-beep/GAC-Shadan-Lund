---
name: Academic Prestige
colors:
  surface: '#f7f9ff'
  surface-dim: '#d1dbe8'
  surface-bright: '#f7f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#edf4ff'
  surface-container: '#e4effd'
  surface-container-high: '#dfe9f7'
  surface-container-highest: '#d9e3f1'
  on-surface: '#121d26'
  on-surface-variant: '#404942'
  inverse-surface: '#27313c'
  inverse-on-surface: '#e8f2ff'
  outline: '#707a72'
  outline-variant: '#bfc9c0'
  surface-tint: '#206b48'
  primary: '#004429'
  on-primary: '#ffffff'
  primary-container: '#0b5d3b'
  on-primary-container: '#8ad4a8'
  inverse-primary: '#8dd6ab'
  secondary: '#795902'
  on-secondary: '#ffffff'
  secondary-container: '#fdd275'
  on-secondary-container: '#775800'
  tertiary: '#244034'
  on-tertiary: '#ffffff'
  tertiary-container: '#3b574b'
  on-tertiary-container: '#accbbc'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#a8f3c6'
  primary-fixed-dim: '#8dd6ab'
  on-primary-fixed: '#002111'
  on-primary-fixed-variant: '#005232'
  secondary-fixed: '#ffdf9e'
  secondary-fixed-dim: '#ebc166'
  on-secondary-fixed: '#261a00'
  on-secondary-fixed-variant: '#5b4300'
  tertiary-fixed: '#caeada'
  tertiary-fixed-dim: '#aecebe'
  on-tertiary-fixed: '#032017'
  on-tertiary-fixed-variant: '#304c41'
  background: '#f7f9ff'
  on-background: '#121d26'
  surface-variant: '#d9e3f1'
typography:
  display-lg:
    fontFamily: Playfair Display
    fontSize: 56px
    fontWeight: '700'
    lineHeight: 68px
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
    letterSpacing: -0.01em
  headline-lg:
    fontFamily: Playfair Display
    fontSize: 40px
    fontWeight: '600'
    lineHeight: 48px
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
  headline-md:
    fontFamily: Playfair Display
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
  headline-sm:
    fontFamily: Playfair Display
    fontSize: 22px
    fontWeight: '600'
    lineHeight: 30px
  title-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  title-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
  body-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 15px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.06em
  label-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 11px
    fontWeight: '500'
    lineHeight: 14px
    letterSpacing: 0.04em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  gutter: 1.5rem
  gutter-mobile: 1rem
  margin: 3rem
  margin-mobile: 1.25rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2.5rem
---

## Brand & Style
The design system reflects the heritage, academic dedication, and civic dignity of an institutional landmark in South Punjab. The visual direction balances solemn scholarly authority with an inviting, future-facing educational atmosphere. 

The aesthetic is built upon **Academic Editorial**: classical, disciplined proportions combined with contemporary institutional clarity. Rather than cold bureaucracy, the interface conveys legacy, mentorship, and empowerment through rich collegiate green tones, warm parchment backdrops, and measured golden ornamentation. Visual assets prioritize symmetry, stately framing, delicate filigree-inspired divider rules, and structured grid compositions that communicate reliability to students, faculty, and regional stakeholders alike.

## Colors
The color architecture honors regional identity and academic excellence:
- **Primary (`#0B5D3B`)**: A deep Pakistani emerald green used for primary navigation banners, primary institutional actions, crest emblems, and dominant header blocks.
- **Secondary (`#C9A24B`)**: A muted brass-and-warm-gold accent applied sparingly for ceremonial distinctions, medals, merit highlights, key callout borders, and decorative flourishes.
- **Tertiary (`#1E3A2F`)**: A dark forest spruce used for structural contrast, footers, and deep card overlays.
- **Neutral (`#1F2933`)**: Deep balanced slate charcoal for high-contrast, effortless body legibility without the harshness of pure black.
- **Surface Canvas**: Base backgrounds utilize warm ivory parchment (`#FAF8F3`), with interior card elements rendered in pure off-white (`#FFFFFF`) to maintain warmth and avoid digital sterility.

## Typography
The system employs an authoritative serif paired with a crisp, welcoming sans-serif:
- **Headlines (`Playfair Display`)**: Conveys scholarly tradition, editorial gravitas, and institutional authenticity. Headlines must use natural sentence capitalization or title case, never all-caps, to preserve literary dignity.
- **Body & Functional UI (`Plus Jakarta Sans`)**: Delivers clear readability across portal notices, examination forms, and admissions data. Its subtle geometric warmth keeps administrative tables and long passages accessible and modern.
- **Micro-labels & Meta**: Rendered in uppercase `Plus Jakarta Sans` with expanded letter spacing (`0.06em`) for department tags, semester badges, and government notifications.

## Layout & Spacing
A 12-column responsive fluid grid governs desktop environments, reducing to 6 columns on tablet and 4 columns on mobile devices. 

The spatial rhythm follows an 8px base unit with generous macro-spacing to emphasize composure and avoid visual clutter:
- **Desktop (>= 1024px)**: Outer margin of `3rem` with an inner container capped at `1280px` to maintain comfortable eye scanning for academic journals and notices. Gutters sit at `1.5rem`.
- **Tablet (768px - 1023px)**: Outer margin adjusts to `2rem` with `1.25rem` gutters. Multi-column cards collapse to 2-column arrays.
- **Mobile (< 768px)**: Outer margin is constrained to `1.25rem` with `1rem` gutters. Academic tables convert into vertical card layouts, and wide display banners scale to compact headline counterparts.

## Elevation & Depth
Depth is created through ambient, sunlight-tinted shadows rather than artificial grey drops:
- **Base Surfaces**: Ivory canvas sits flat at ground level.
- **Card Containers**: Employ an ultra-soft, warm-tinted elevation: `0 4px 20px -2px rgba(31, 41, 51, 0.05)`.
- **Raised & Hover States**: Cards and actionable panels elevate on hover with `0 12px 28px -4px rgba(11, 93, 59, 0.08)`, shifting weight toward the primary institutional hue.
- **Delicate Outlines & Gold Dividers**: In lieu of heavy drop shadows, structures rely on hairline borders (`1px solid rgba(11, 93, 59, 0.08)`). Featured sections, student honors, and administrative decrees incorporate a hairline gold accent divider (`1px solid #C9A24B` or gradient rule `linear-gradient(90deg, transparent, #C9A24B, transparent)`).

## Shapes
The shape language uses deliberate, soft geometry (`roundedness: 1`). Corners maintain an architectural firmness:
- Standard cards, interactive controls, and inputs use a gentle `0.25rem` (`4px`) radius.
- Modals, prominent notices, and hero callout containers use `rounded-lg` (`0.5rem` / `8px`).
- Deep pill-rounding is strictly avoided except for live status pills (e.g., "Admissions Open", "Merit List Active"), ensuring the digital interface preserves formal civic structure.

## Components

### Buttons
- **Primary**: Solid emerald (`#0B5D3B`) fill with off-white text, `0.25rem` radius, padded `0.75rem 1.5rem`. Focus ring uses `#C9A24B` at 2px offset.
- **Secondary (Honorary / Ceremonial)**: Transparent surface with a 1.5px border in `#C9A24B` and gold text. On hover, fills with `#C9A24B` and white text.
- **Tertiary / Ghost**: Text-only in `#0B5D3B` with an underline transition and right arrow chevron for syllabus links and faculty profiles.

### Cards & Panels
- **Academic Card**: Pure white background, `0.25rem` border radius, subtle hairline border in `rgba(31, 41, 51, 0.08)`, interior padding of `1.5rem`.
- **Merit & Featured Card**: Header capped with a top 3px solid `#C9A24B` accent strip, signaling official declarations, board announcements, or merit lists.

### Chips & Badges
- **Status Indicators**: Compact height (`24px`), padded `0.25rem 0.625rem`, utilizing `rounded-full` exclusively for notification state badges (e.g., emerald green background with white text for "Verified", amber for "Pending Verification").

### Input Fields & Forms
- Off-white input surface, bordered with `1px solid rgba(31, 41, 51, 0.18)`.
- On active focus: border transitions to `#0B5D3B` with a subtle `0 0 0 3px rgba(11, 93, 59, 0.12)` glow. Labels are displayed in bold `Plus Jakarta Sans` (`label-md`).

### Lists & Academic Notices
- Row-based tabular items separated by delicate hairline horizontal borders.
- Hover state introduces a soft `#FAF8F3` row wash and a left 3px emerald highlight marker.

### Specialized Component: Institutional Crest & Seal Header
- Dual-tier header architecture: A slender top bar in primary emerald with gold utility text (Helpline, Citizen Portal, Urdu Language Switcher) anchored above a spacious ivory navbar with formal collegiate typography and crest alignment.