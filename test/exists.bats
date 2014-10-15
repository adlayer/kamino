#!/usr/bin/env bats

source ./kamino

@test "Should be able to find a file path" {
	result=$(exists /bin/ls)
	[ "$result" = true ]
}

@test "Should be false when the file not exists" {
	result=$(exists /bin/da-haduken-ryu)
	[ "$result" = false ]
}

@test "Should be find a global binary file" {
	result=$(exists ls)
	[ "$result" = true ]
}