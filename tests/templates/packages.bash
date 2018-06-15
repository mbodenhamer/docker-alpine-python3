#!/usr/bin/env bats
# -*- shell-script -*-
load test_helpers

@test "[$TEST_FILE] Check depman version" {
    run launch depman version
    [[ ${lines[0]} =~ "depman {{packages.depman.version.stable}}" ]]
}

@test "[$TEST_FILE] Check yatr version" {
    run launch yatr --version
    [[ ${lines[0]} =~ "yatr {{packages.yatr.version.stable}}" ]]
}

@test "[$TEST_FILE] Check system Python version" {
    run launch python --version
    [[ ${lines[0]} =~ "Python 3" ]]
}

@test "[$TEST_FILE] Check if git is installed" {
    run launch git --version
    [[ ${lines[0]} =~ "git version" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if curl is installed" {
    run launch curl --version
    [[ ${lines[0]} =~ "curl" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if gcc is installed" {
    run launch gcc --version
    [[ ${lines[0]} =~ "gcc" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if make is installed" {
    run launch make --version
    [[ ${lines[0]} =~ "GNU Make" ]]
    [[ $status = 0 ]]
}
