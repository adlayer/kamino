#!/usr/bin/env bats

source ./kamino
verbose=false

@test "Depends of a uninstalled existent dna" {
	dnas_dir=./test/fixtures
	result=$(depends fake-service $dnas_dir)
	[ "$result" = true ]
}

@test "Depends of a uninstalled non-existent dna" {
	dnas_dir=./test/fixtures
	result=$(depends fake-service-not-found $dnas_dir)
	[ "$result" = false ]
}

@test "Depends of a installed existent dna" {
	dnas_dir=./test/fixtures
	result=$(depends fake-service $dnas_dir)
	[ "$result" = true ]
}