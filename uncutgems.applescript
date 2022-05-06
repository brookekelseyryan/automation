tell application "Google Chrome"
	make new window
	# Doing the automatic ones first 
	
	# Fidelity 
	open location "https://www.fidelity.com/"
	delay 6
	execute active tab of front window javascript "document.getElementById('fs-login-button').click();"
	
	# Morgan Stanley 
	open location "https://login.morganstanleyclientserv.com/ux/#/home"
	delay 3
	execute active tab of front window javascript "document.getElementById('btnLogin').click();"
	
	# US Bank
	open location "https://www.usbank.com"
	delay 5
	execute active tab of front window javascript "document.getElementById('login-button-continue').click();"
	
	# American Express now doesn't work :( 
	open location "https://www.americanexpress.com/en-us/account/login"
	delay 5
	execute active tab of front window javascript "document.getElementsByClassName('btn-fluid margin-0-b')[0].click();"
	
	# Discover
	open location "https://discover.com"
	delay 3
	execute active tab of front window javascript "document.getElementsByClassName('log-in-button')[1].click();"
	
	# Chase doesn't work automatically 
	open location "https://secure05c.chase.com/web/auth/dashboard#/dashboard/overviewAccounts/overview/multiProduct"
	
	# Intuit works, but currently have to manually input the SMS code 
	# Eventually TODO: do it automatically from iMessages app 
	open location "https://accounts.intuit.com/index.html?offering_id=Intuit.ifs.mint&namespace_id=50000026&redirect_url=https%3A%2F%2Fmint.intuit.com%2Foverview.event%3Futm_medium%3Ddirect%26cta%3Dnav_login_dropdown"
	delay 4
	execute active tab of front window javascript "document.getElementById('ius-account-chooser-option-0').click();"
	
end tell

