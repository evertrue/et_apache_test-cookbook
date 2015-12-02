package 'apache2'


#package 'apache2' do 
#	package_name node['apache']['package']
#end


service 'apache2' do
	supports :status => true
	action [:enable, :start]
end


file 'index.html' do
	content '<html>
	<body>
		<h1>hello</h1>
	</body>
<html>'
end


