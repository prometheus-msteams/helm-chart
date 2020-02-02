#!/bin/bash

helm lint charts/*
helm package charts/*
helm repo index --url https://prometheus-msteams.github.io/helm-chart/ .
