BCDEdit /deletevalue tscsyncpolicy > $null 2>&1
BCDEdit /timeout 3 > $null 2>&1
BCDEdit /deletevalue bootux > $null 2>&1
BCDEdit /set bootmenupolicy standard > $null 2>&1
BCDEdit /deletevalue quietboot > $null 2>&1
BCDEdit /set nx optin > $null 2>&1
BCDEdit /deletevalue hypervisorlaunchtype > $null 2>&1
BCDEdit /deletevalue vsmlaunchtype > $null 2>&1
BCDEdit /deletevalue vm > $null 2>&1
BCDEdit /deletevalue x2apicpolicy > $null 2>&1
BCDEdit /deletevalue uselegacyapicmode > $null 2>&1
BCDEdit /deletevalue configaccesspolicy > $null 2>&1
BCDEdit /deletevalue usephysicaldestination > $null 2>&1
BCDEdit /deletevalue usefirmwarepcisettings > $null 2>&1
BCDEdit /deletevalue disabledynamictick > $null 2>&1
BCDEdit /deletevalue useplatformclock > $null 2>&1
