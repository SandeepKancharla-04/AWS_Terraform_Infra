SHELL := /bin/bash

TF ?= terraform
TFLINT ?= tflint

.PHONY: init plan apply destroy fmt validate tflint

init:
	$(TF) init -upgrade

fmt:
	$(TF) fmt -recursive

validate:
	$(TF) validate

plan: fmt validate
	$(TF) plan -input=false

apply:
	$(TF) apply -input=false -auto-approve

destroy:
	$(TF) destroy -input=false -auto-approve

tflint:
	$(TFLINT) --init --config .tflint.hcl || true
	$(TFLINT)
