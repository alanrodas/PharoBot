baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://ss3.gemstone.com/ss/PharoBot'.
		spec project: 'Glamour' with: [
				spec
					className: 'ConfigurationOfGlamour';
					versionString: #'default';
					repository: 'http://www.squeaksource.com/Glamour' ].
		spec 
			package: 'PharoBot-Core';
			package: 'PharoBot-Tests-Core' with: [
				spec requires: #('PharoBot-Core' ). ];
			package: 'PharoBot-UI' with: [
				spec requires: #('PharoBot-Core' 'Glamour'). ].
		spec 
			group: 'default' with: #('PharoBot-Core' 'PharoBot-UI' );
			group: 'Tests' with: #('default' 'PharoBot-Tests-Core' ). ].
