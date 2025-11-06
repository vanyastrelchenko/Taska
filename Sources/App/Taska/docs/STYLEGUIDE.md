# Taska Brand Styleguide

Документация бренд-токенов и дизайн-системы для приложения Taska.

---

## Цветовая палитра

### Основные (Brand)

| Название | HEX | RGB | Описание |
|----------|-----|-----|----------|
| **Primary** | `#079D52` | `7, 157, 82` | Taska Green 600 |
| **Secondary** | `#343434` | `52, 52, 52` | Graphite 800 |
| **Accent** | `#079D52` | `7, 157, 82` | Taska Green 600 (совпадает с Primary) |

### Фоновые (System-native)

Используются динамические системные цвета iOS для поддержки Light/Dark режимов:

| Название | Light Mode | Dark Mode | Описание |
|----------|------------|-----------|----------|
| **Background** | `#FFFFFF` | `#000000` | `systemBackground` |
| **Surface** | `#F2F2F7` | `#1C1C1E` | `secondarySystemBackground` (карточки) |
| **Divider** | — | — | `separator` (системный, полупрозрачный) |

### Семантические (System)

| Название | HEX | RGB | Системный цвет |
|----------|-----|-----|---------------|
| **Success** | `#34C759` | `52, 199, 89` | `systemGreen` |
| **Error** | `#FF3B30` | `255, 59, 48` | `systemRed` |
| **Warning** | `#FF9500` | `255, 149, 0` | `systemOrange` |
| **Info/Link** | `#0A84FF` | `10, 132, 255` | `systemBlue` |

### Дополнительные бренд-оттенки

| Название | HEX | RGB | Описание |
|----------|-----|-----|----------|
| **Pine 700** | `#04542C` | `4, 84, 44` | Тёмный оттенок зелёного |
| **Mist** | `#EFEFEF` | `239, 239, 239` | Светлый нейтральный |

---

## Типографика

### Семейства шрифтов

- **Primary**: SF Pro (Text/Display) — нативный iOS, поддержка Dynamic Type
- **Alt**: SF Rounded — для дружелюбных элементов (опционально)

### Размеры (pt, iOS Text Styles)

| Стиль | Размер | Вес | Использование |
|-------|--------|-----|---------------|
| **Large Title** | 34 | Semibold | Главные заголовки экранов |
| **Title 1 (H1)** | 28 | Semibold | Заголовки секций |
| **Title 2 (H2)** | 22 | Semibold | Подзаголовки |
| **Title 3 (H3)** | 20 | Semibold | Заголовки карточек |
| **Headline** | 17 | Semibold | Акцентный текст |
| **Body** | 17 | Regular | Основной текст |
| **Callout** | 16 | Regular | Вспомогательный текст |
| **Subheadline** | 15 | Regular | Подписи |
| **Footnote** | 13 | Regular | Мелкий текст |
| **Caption 2** | 11 | Regular | Минимальный текст |

### Веса шрифтов

- **Regular** — длинные тексты, body
- **Medium** — средний акцент
- **Semibold** — заголовки, CTA
- **Bold** — максимальный акцент

**Рекомендации:**
- Заголовки и CTA → Semibold/Bold
- Длинные тексты → Regular

---

## Размеры и отступы

### Система spacing (модуль 4pt)

```
4, 8, 12, 16, 20, 24, 32, 40, 48, 64
```

**Применение:**
- Кнопки: вертикаль `12–16pt`, горизонталь `16–20pt`
- Карточки: внутренний отступ `16–20pt`, межкарточный `12–16pt`

### Радиусы скругления

| Название | Значение | Использование |
|----------|----------|---------------|
| **xs** | `4pt` | Бейджи, чипы |
| **sm** | `8pt` | Поля ввода |
| **md** | `12pt` | Карточки (рекомендовано Apple) |
| **lg** | `16pt` | Модальные окна, крупные плитки |
| **full** | `999pt` | Аватары, круги |

### Тени и эффекты

Деликатные тени в стиле iOS:

| Название | Значение | Использование |
|----------|----------|---------------|
| **shadow-1** | `rgba(0,0,0,0.08) 0 1 2` | Лёгкие элементы |
| **shadow-2** | `rgba(0,0,0,0.10) 0 4 12`<br>`+ rgba(0,0,0,0.04) 0 2 4` | Карточки, кнопки |
| **shadow-3** | `rgba(0,0,0,0.14) 0 8 24` | Модальные окна |

**Примечание:** В тёмной теме чаще используются обводки и заливки вместо тяжёлых теней.

---

## Иконки и графика

### iOS (SF Symbols)

В iOS приложении используются нативные **SF Symbols** для консистентности и поддержки Dynamic Type.

**Базовый набор:**
- `plus` — добавление
- `pencil` — редактирование
- `trash` — удаление
- `paperplane` — отправка
- `checkmark.circle` — успех
- `exclamationmark.triangle` — предупреждение
- `info.circle` — информация
- `heart` — избранное
- `star` — рейтинг
- `calendar` — календарь
- `clock` — время
- `map` — карта
- `person` — профиль
- `location` — местоположение
- `gear` — настройки

### SVG (для веб/маркетинга)

**Спецификация:**
- Размер сетки: `24×24 px`
- Толщина stroke: `≈1.5 px`
- Формат: SVG

**Расположение:** `brand-assets/icons/`

### Логотип и брендинг

- Монограмма + словознак
- Светлая и тёмная версии
- Расположение: `brand-assets/logo/`

---

## Использование в коде

### SwiftUI — Цвета

```swift
// Brand colors
extension Color {
    static let taskaPrimary = Color(hex: "#079D52")
    static let taskaSecondary = Color(hex: "#343434")
    
    // System colors (используются автоматически)
    // Background: Color(.systemBackground)
    // Surface: Color(.secondarySystemBackground)
    // Divider: Color(.separator)
}

// Semantic colors
extension Color {
    static let taskaSuccess = Color(.systemGreen)
    static let taskaError = Color(.systemRed)
    static let taskaWarning = Color(.systemOrange)
    static let taskaInfo = Color(.systemBlue)
}
```

### SwiftUI — Типографика

```swift
// Используйте стандартные Text Styles iOS
Text("Заголовок")
    .font(.largeTitle)
    .fontWeight(.semibold)

Text("Основной текст")
    .font(.body)
```

### SwiftUI — Spacing

```swift
// Создайте extension для консистентности
extension CGFloat {
    static let spacing4: CGFloat = 4
    static let spacing8: CGFloat = 8
    static let spacing12: CGFloat = 12
    static let spacing16: CGFloat = 16
    static let spacing20: CGFloat = 20
    static let spacing24: CGFloat = 24
    static let spacing32: CGFloat = 32
    static let spacing40: CGFloat = 40
    static let spacing48: CGFloat = 48
    static let spacing64: CGFloat = 64
}
```

### SwiftUI — Радиусы

```swift
extension CGFloat {
    static let radiusXS: CGFloat = 4
    static let radiusSM: CGFloat = 8
    static let radiusMD: CGFloat = 12
    static let radiusLG: CGFloat = 16
    static let radiusFull: CGFloat = 999
}
```

---

## Версия

**v1.0** — Первичная версия бренд-ресурсов  
**Дата:** 2025-01-XX

---

## Примечания

- Все цвета протестированы на контрастность согласно WCAG
- Для Dark Mode Accent Color можно использовать `#11C16B` после теста контраста
- Дизайн-система следует принципам Human Interface Guidelines от Apple

