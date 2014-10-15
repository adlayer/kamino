#!/usr/bin/env bats

source ./kamino

@test "is_up should be true" {
	result=$(is_up google.com.br)
	[ "$result" = true ]
}

@test "is_up should be false when the status is 404" {
	result=$(is_up google.com.br/jssjsjsjssj)
	[ "$result" = false ]
}

@test "is_up should be false when the domain is not reponding" {
	result=$(is_up google.com.br/jssjsjsjssj)
	[ "$result" = false ]
}