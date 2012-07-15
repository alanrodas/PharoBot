versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'initial version'.
		spec author: 'NahuelGarbezza'.
		spec timestamp: '1/30/2012 15:38'.
		spec project: 'Glamour' with: #'stable'.
		spec 
			package: 'PharoBot-Core' with: 'PharoBot-Core';
			package: 'PharoBot-Tests-Core' with: 'PharoBot-Tests-Core';
			package: 'PharoBot-UI' with: 'PharoBot-UI'. ].
