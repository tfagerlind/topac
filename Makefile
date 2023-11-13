.PHONY: project-check make-check spell-check yaml-lint ansible-lint run test

project-check:
	docker run -v "$(CURDIR):/project" --rm tomologic/project-checker

make-check:
	docker run --rm -v $(CURDIR):/data cytopia/checkmake:latest-0.5 Makefile

spell-check:
	docker run --rm -v \
		$(CURDIR):/workdir tmaier/markdown-spellcheck:latest \
			--ignore-numbers -r "**/*.md"

yaml-lint:
	docker run --rm -v $(CURDIR):/data cytopia/yamllint:alpine-1 .

ansible-lint:
	docker run --rm -v $(CURDIR):/data cytopia/ansible-lint:alpine-5 \
		playbook.yml vim.yml

run:
	ANSIBLE_INVENTORY_UNPARSED_FAILED=TRUE ansible-playbook \
	    --ask-become-pass -i inventory.yml playbook.yml

test: project-check make-check spell-check yaml-lint ansible-lint
