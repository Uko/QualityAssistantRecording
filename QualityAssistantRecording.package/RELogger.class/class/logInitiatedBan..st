logging
logInitiatedBan: anAnnouncement

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self initbankey;
			<< self separator;
			<< anAnnouncement entity name;
			<< self separator;
			<< anAnnouncement critic rule class name;
			lf ]