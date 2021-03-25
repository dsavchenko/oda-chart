SUBCHARTS := $(wildcard charts/*)

dev:
	bash make.sh upgrade-dev

deploy:
	bash make.sh upgrade

create-secrets: $(SUBCHARTS)
	bash make.sh create-secrets

recreate-dev:
	bash make.sh recreate-dev

test:
	bash make.sh $(MAKECMDGOALS)

$(SUBCHARTS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(SUBCHARTS)
