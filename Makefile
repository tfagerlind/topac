.PHONY: project-check make-check spell-check yaml-lint ansible-lint run test

project-check:
	docker run -v "$(CURDIR):/project" --rm tomologic/project-checker

make-check:
	docker run --rm -v $(CURDIR):/data cytopia/checkmake Makefile

spell-check:
	docker run --rm -v $(CURDIR):/workdir tmaier/markdown-spellcheck:latest "**/*.md"

yaml-lint:
	docker run --rm -v $(CURDIR):/data cytopia/yamllint .

ansible-lint:
	docker run --rm -v $(CURDIR):/data cytopia/ansible-lint playbook.yml

run:
	ansible-playbook -i hosts playbook.yml

test: project-check make-check spell-check yaml-lint ansible-lint
