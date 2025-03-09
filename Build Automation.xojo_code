#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin IDEScriptBuildStep CheckDeveloperID , AppliesTo = 0, Architecture = 0, Target = 0
					If PropertyValue("Sign.Developer ID") = "" Then
					Print "Add your Developer ID to the macOS Sign PostBuildStep." + _
					EndOfLine + EndOfLine + _
					"Otherwise Build and CodeSign (with hardened Runtime) yourself to get the end user experience."
					End If
					
				End
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				  macOSEntitlements={"App Sandbox":"False","Hardened Runtime":"True","Notarize":"False","UserEntitlements":"","Hardened RuntimeEntitlements":{"com.apple.security.automation.apple-events":"True"}}
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
