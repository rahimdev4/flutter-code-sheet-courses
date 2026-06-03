# 📝 Course Content Rules

Guidelines for writing consistent, beginner-friendly course content.

---

## Code Examples

- Every example **must compile and run** without errors.
- Keep examples **short and focused** — one concept per lesson.
- Use clear `print()` output so students can verify results.
- Add comments explaining key lines of code.
- Avoid third-party packages unless the lesson is specifically about them.

## README Standards

- Write in **simple, clear English** — assume beginner-level readers.
- Use headings, bullet points, and code blocks for readability.
- Always include a "How to Run" section.
- Include a "Practice Challenge" at the end of each lesson README.

## Course Info JSON

Each `course-info.json` must include:

```json
{
  "id": "unique-course-id",
  "title": "Course Title",
  "description": "Short course description.",
  "difficulty": "beginner | intermediate | advanced",
  "totalModules": 6,
  "totalLessons": 18
}
```

## Quality Checklist

- [ ] All code compiles and runs.
- [ ] READMEs are complete and proofread.
- [ ] Folder names follow naming conventions.
- [ ] `course-info.json` is accurate.
- [ ] No placeholder or TODO content left behind.
