blog_url = 'http://localhost:4567/blog'

casper.test.begin "The Blog is up", (test) ->
	casper.start blog_url, ->
		test.assertHttpStatus(200, blog_url + ' is working!')
	casper.run ->
		test.done()

casper.test.begin "A working sidebar", (test) ->
	casper.start blog_url, ->
		test.assertExists('#sidebar')
	casper.run ->
		test.done()

casper.test.begin "A working sidebar", (test) ->
	casper.start blog_url, ->
		test.assertExists('#posts')
	casper.run ->
		test.done()