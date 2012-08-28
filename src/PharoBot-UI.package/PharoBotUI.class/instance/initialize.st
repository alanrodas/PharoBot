initialize-release
initialize

	environment := self environmentClass new.
	methodBrowser := Browser new.
	self subscribeToAnnouncements.