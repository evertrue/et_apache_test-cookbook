package 'apache2'


service 'apache2' do
	supports :status => true
	action [:enable, :start]
end

file 'index.html' do
	content '<html>
	<body>
		<h1>Test</h1>
	</body>
<html>'
end

