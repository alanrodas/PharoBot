versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'initial version'.
		spec author: 'NahuelGarbezza'.
		spec timestamp: '8/25/2012 23:32'.
		spec project: 'Glamour' with: #'stable'.
		spec 
			package: 'PharoBot-Core' with: 'PharoBot-Core';
			package: 'PharoBot-Core-Tests' with: 'PharoBot-Core-Tests';
			package: 'PharoBot-Environment' with: 'PharoBot-Environment';
			package: 'PharoBot-Environment-Tests' with: 'PharoBot-Environment-Tests';
			package: 'PharoBot-UI' with: 'PharoBot-UI'. ].
