setup:
	poetry install

# Targeted resumes in targeted/<target>.yaml share resume.yaml's design, locale and settings.
build:
	poetry run rendercv render "resume.yaml"
	@for file in targeted/*.yaml; do \
		[ -e "$$file" ] || continue; \
		target=$$(basename "$$file" .yaml); \
		if ! echo "$$target" | grep -Eq '^[a-z0-9]+(-[a-z0-9]+)*$$'; then \
			echo "invalid target name: $$target (use lowercase letters, digits and single hyphens)"; \
			exit 1; \
		fi; \
		poetry run rendercv render "$$file" \
			--design resume.yaml --locale-catalog resume.yaml --settings resume.yaml \
			--typst-path "../rendercv_output/Guneet_Aggarwal_CV-$$target.typ" \
			--pdf-path "../rendercv_output/Guneet_Aggarwal_CV-$$target.pdf" || exit 1; \
	done
