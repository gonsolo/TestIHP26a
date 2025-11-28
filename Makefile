DOCKER_IMAGE=ubuntu-24.04=catthehacker/ubuntu:act-24.04
GITHUB_TOKEN=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
ARTIFACTS=--artifact-server-path /tmp/artifacts --artifact-server-port 8080
docs:
	act -j docs -P $(DOCKER_IMAGE) -s GITHUB_TOKEN=$(GITHUB_TOKEN) $(ARTIFACTS)
# Not working due to a bug in act
#gds:
#	act -j gds -P $(DOCKER_IMAGE) -s GITHUB_TOKEN=$(GITHUB_TOKEN) $(ARTIFACTS)
test:
	act -j test -P $(DOCKER_IMAGE) -s GITHUB_TOKEN=$(GITHUB_TOKEN) $(ARTIFACTS)

.PHONY: docs test
