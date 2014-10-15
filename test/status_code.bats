#!/usr/bin/env bats

source ./kamino

@test "status_code should be 200" {
	result="$(status_code google.com.br)"
	[ "$result" -eq 200 ]
}

@test "status_code should be 404" {
	result="$(status_code google.com.br/jssjsjsjssj)"
	[ "$result" -eq 404 ]
}