# Git Guidelines для Taska

## Модель ветвления

Используем префиксы для типов изменений:
- `feature/*` — новая функциональность (например: `feature/onboarding-flow`)
- `fix/*` — исправление багов (например: `fix/login-crash`)
- `chore/*` — технические задачи (например: `chore/ci-config`)
- `docs/*` — документация
- `release/*` — подготовка релиза

## Правила работы с main

**Запрещены прямые коммиты в `main`.** Все изменения через Pull Request:
1. Создай ветку от `main`
2. Внеси изменения
3. Открой PR → `main`
4. Дождись CI и review (≥1 approval)
5. Squash merge с удалением ветки

## Коммиты

**Частота:** каждые 10–30 минут работы. **Размер:** атомарные изменения (одна задача = один коммит).

**Формат:** Conventional Commits, императив, ≤72 символа в заголовке.

**Типы:**
- `feat` — новая функциональность
- `fix` — исправление бага
- `chore` — технические изменения
- `docs` — документация
- `refactor` — рефакторинг
- `test` — тесты

**Примеры:**
```
feat(home): add task card with actions
fix(auth): resolve login crash on empty credentials
chore(ci): update build configuration
```

## Именование веток и PR

**Ветки:** `тип/краткое-описание` (kebab-case)
- `feature/onboarding-flow`
- `fix/login-crash`
- `chore/ci-config`

**Заголовок PR:** `[тип/ветка] Краткое описание`
- `[feature/onboarding-flow] Onboarding screens MVP`
- `[fix/login-crash] Resolve authentication crash`

## Merge-стратегия

- **Squash merge** — все коммиты ветки объединяются в один
- **Удаление ветки** после merge (автоматически)
- **Линейная история** в `main`

## Требования к PR

- ✅ CI проходит успешно (`CI / build (pull_request)`)
- ✅ ≥1 review approval
- ✅ Линейная история (без merge commits)
- ✅ Соответствие стилю коммитов

### PR Checklist

```markdown
- [ ] Код соответствует стилю проекта
- [ ] Коммиты следуют Conventional Commits
- [ ] CI проверки проходят успешно
- [ ] Добавлены/обновлены тесты (если применимо)
- [ ] Обновлена документация (если применимо)
```

---

## TL;DR

1. **Ветки:** `feature/*`, `fix/*`, `chore/*`, `docs/*`, `release/*` от `main`
2. **Коммиты:** атомарные, каждые 10–30 мин, Conventional Commits, ≤72 символа
3. **PR:** обязательны для всех изменений в `main`, ≥1 review, успешный CI
4. **Merge:** squash merge, удаление ветки, линейная история
5. **Запрет:** прямые коммиты в `main`

