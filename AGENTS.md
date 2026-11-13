# Resume editing guidelines

- Keep `resume.yaml` as the general resume. Create job-specific versions only when requested.
- Targeted resumes live in `targeted/<target>.yaml`, where `<target>` uses lowercase letters, digits and single hyphens (for example `cybersecurity`). Each file holds only the `cv` section; `make build` renders it with the design, locale and settings from `resume.yaml`. Tailor a targeted resume by selecting, ordering and rewording facts from the general resume; any new fact must meet the same standard as the general resume.
- Write specific, action-led bullets that explain the candidate's actual contribution and its outcome. Vary opening verbs and avoid filler such as “multiple” when it adds no useful detail.
- Prefer clear explanations over internal product jargon. Distinguish the candidate's work from the overall team's or service's capabilities, and avoid overstating individual ownership.
- Include meaningful metrics where supported. Estimates must be identified as such and grounded in information the candidate can explain; never invent figures, achievements, skills, or experience. Do not force a number into every bullet.
- Preserve context for metrics, such as typical versus peak throughput and project data size versus user count. Do not silently drop important figures during rewrites.
- Avoid repetition and unnecessary verbosity, but do not cut substantive work merely to make bullets shorter. Do not add filler to satisfy resume-scoring tools.
- Treat automated resume feedback as a suggestion, not a fact. Check flagged wording and formatting against the actual resume before changing it; avoid adding unsupported leadership, teamwork, or other claims to improve a score.
- Keep dates consistently formatted with full month names. Preserve a readable one-page layout and keep header links on one line when possible, without removing substantive content just to fit.
- The resume uses RenderCV. After each resume edit, run `make build` to render every resume to `rendercv_output` and check validity and layout so the generated PDFs stay current.
- Do not put a semicolon directly after bold text (`**text**;`). RenderCV's Typst output drops it; reword or use other punctuation.

## Publication

Every push to `main` runs `.github/workflows/release.yml`, which replaces the PDFs on the public `latest` release: `Guneet_Aggarwal_CV.pdf` for the general resume and `Guneet_Aggarwal_CV-<target>.pdf` for each targeted resume. PDFs of deleted targeted resumes are removed. guneet.dev serves them at `/resume` and `/resume/<target>`, so merging to `main` changes the live site's resumes.

## Cross-project context

The owner's workspace repository, <https://git.guneet.dev/guneet/workspace> (default local checkout `~/workspace`), routes agents to cross-project context, project locations and workflow. Its catalog entries for this repository (`catalog/projects/resume.md`), the guneet.dev site and the owner's other projects can help when describing that work. Treat it as background: resume claims still need to be the candidate's own work and meet the rules above.
