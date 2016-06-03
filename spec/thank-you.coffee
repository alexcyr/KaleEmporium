thankurl = 'http://localhost:4567/thank-you'

casper.test.begin "The page is up", (test) ->
	casper.start thankurl, ->
		test.assertHttpStatus(200, "The page is up!")
	casper.run ->
		test.done()

casper.test.begin "The download works", (test) ->
	casper.start thankurl, ->
		this.click('.main-button')
	casper.then ->
		test.assertUrlMatches('files/eam_open_positions.xlsx')
	casper.run ->
		test.done()