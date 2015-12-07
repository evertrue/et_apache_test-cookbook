include_recipe 'default'

@test "et_apache_test-cookbook is found in PATH" {
	run which et_apache_test-cookbook
	[ "$status" -eq 0 ]
}