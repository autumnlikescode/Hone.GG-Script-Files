BCDEdit /set tscsyncpolicy enhanced > $null
BCDEdit /timeout 0 > $null
BCDEdit /set bootux disabled > $null
BCDEdit /set bootmenupolicy standard > $null
BCDEdit /set quietboot yes > $null
BCDEdit /set nx alwaysoff > $null
BCDEdit /set hypervisorlaunchtype off > $null
BCDEdit /set vsmlaunchtype Off > $null
BCDEdit /set vm No > $null
BCDEdit /set x2apicpolicy Enable > $null
BCDEdit /set uselegacyapicmode No > $null
BCDEdit /set configaccesspolicy Default > $null
BCDEdit /set usephysicaldestination No > $null
BCDEdit /set usefirmwarepcisettings No > $null
BCDEdit /set disabledynamictick yes > $null 2>&1
BCDEdit /deletevalue useplatformclock > $null 2>&1
