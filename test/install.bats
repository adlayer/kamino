#!/usr/bin/env bats

source ./kamino
verbose=false

@test "Should exec a script" {
	dnas_dir=./test/fixtures
	result=$(install fake-service $dnas_dir)
	[ "$result" = true ]
}

@test "Should exec a script" {
	dnas_dir=./test/fixtures
	result=$(install fake-service-not-found $dnas_dir)
	[ "$result" = false ]
}