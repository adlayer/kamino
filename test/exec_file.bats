#!/usr/bin/env bats

source ./kamino

@test "Should exec a script" {
	path=./test/fixtures/fake-service/install
	result=$(exec_file $path)
	[ "$result" = true ]
}

@test "Should not install an unexisting dna" {
	path=./test/fixtures/fake-service/installlll
	result=$(exec_file $path)
	[ "$result" = false ]
}