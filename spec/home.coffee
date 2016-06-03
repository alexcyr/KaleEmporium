# Test the Homepage
home = 'http://localhost:4567/'
home.form = {
	"name":"Jesse Flores",
	"email":"jesse@superwebpros.com"
}

casper.test.begin "The homepage is up", (test) ->
	casper.start home, ->
		test.assertHttpStatus(200, home + 'is up!')
	casper.run ->
		test.done()

casper.test.begin "The Navigation Menu", (test) ->
	nav = "#mainNav"
	casper.start home, ->
		test.assertExists(nav)
		test.assertSelectorHasText(nav, "home")
		test.assertSelectorHasText(nav, "positions")
		test.assertSelectorHasText(nav, "employers")
		test.assertSelectorHasText(nav, "recruiting")
		test.assertSelectorHasText(nav, "prospecting")
		test.assertSelectorHasText(nav, "blog")
		test.assertSelectorHasText(nav, "contact")
	casper.run ->
		test.done()

casper.test.begin "Validate 'positions' link", (test) ->
	casper.start home, ->
		this.clickLabel('positions')
	casper.then ->
		test.assertHttpStatus(200, "The link resolves!")
		test.assertUrlMatches("/positions")
	casper.run ->
		test.done()

casper.test.begin "Validate 'recruiting' link", (test) ->
	casper.start home, ->
		this.clickLabel('recruiting')
	casper.then ->
		test.assertHttpStatus(200, "The link resolves!")
		test.assertUrlMatches("/recruiting")
	casper.run ->
		test.done()

casper.test.begin "Validate 'prospecting' link", (test) ->
	casper.start home, ->
		this.clickLabel('prospecting')
	casper.then ->
		test.assertHttpStatus(200, "The link resolves!")
		test.assertUrlMatches("/prospecting")
	casper.run ->
		test.done()

casper.test.begin "Validate 'blog' link", (test) ->
	casper.start home, ->
		this.clickLabel('blog')
	casper.then ->
		test.assertHttpStatus(200, "The link resolves!")
		test.assertUrlMatches("/blog")
	casper.run ->
		test.done()

casper.test.begin "Validate 'contact' link", (test) ->
	casper.start home, ->
		this.clickLabel('contact')
	casper.then ->
		test.assertHttpStatus(200, "The link resolves!")
		test.assertUrlMatches("/contact")
	casper.run ->
		test.done()

casper.test.begin "Validate open positions button", (test) ->
	casper.start home, ->
		this.click('.blueBox a')
	casper.then ->
		test.assertUrlMatches("/positions")
	casper.run ->
		test.done()

casper.test.begin "Validate Recruting button", (test) ->
	casper.start home, ->
		this.click('.tealBox a')
	casper.then ->
		test.assertUrlMatches("/recruiting")
	casper.run ->
		test.done()

casper.test.begin "Validate Prospecting button", (test) ->
	casper.start home, ->
		this.click('.lightBlueBox a')
	casper.then ->
		test.assertUrlMatches("/prospecting")
	casper.run ->
		test.done()