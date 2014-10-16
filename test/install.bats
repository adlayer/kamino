#!/usr/bin/env bats

source ./kamino
verbose=false

@test "Should install an existing dna" {
	dnas_dir=./test/fixtures
	result=$(install fake-service $dnas_dir)
	[ "$result" = true ]
}

@test "Should not install an unexisting dna" {
	dnas_dir=./test/fixtures
	result=$(install fake-service-not-found $dnas_dir)
	[ "$result" = false ]
}