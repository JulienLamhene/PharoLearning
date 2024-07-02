"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMyCounter,
	#superclass : #PackageManifest,
	#category : #'MyCounter-Manifest'
}

{ #category : #'code-critics' }
ManifestMyCounter class >> ruleUnclassifiedMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#'Coffee class' #coffeeName:cup: #true)) #'2024-06-20T12:55:27.381259+02:00') )
]
