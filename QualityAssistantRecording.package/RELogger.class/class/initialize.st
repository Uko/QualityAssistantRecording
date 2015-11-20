class initialization
initialize

	ReSystemAnnouncer uniqueInstance announcer unsubscribe: self.
	ReSystemAnnouncer uniqueInstance announcer weak
		when: QACriticsSeen       send: #logSeenCritics:  to: self;
		when: ReEntityCriticized  send: #logCriticized:   to: self;
		when: QAInitiateCriticBan send: #logInitiatedBan: to: self;
		when: QAViewedDiff        send: #logViewedDiff:   to: self;
		when: ReCriticAutofixed   send: #logAutofixed:    to: self;
		when: ReCriticBanned      send: #logBannedCritic: to: self