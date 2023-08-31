powercfg -attributes 54533251-82be-4824-96c1-47b60b740d00 5d76a2ca-e8c0-402f-a133-2158492d58ad -ATTRIB_HIDE > $null 2>&1
powercfg -setacvalueindex scheme_current sub_processor IDLEDISABLE 0 > $null 2>&1
powercfg -setdcvalueindex scheme_current sub_processor IDLEDISABLE 0 > $null 2>&1
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0 > $null 2>&1
powercfg -setdcvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0 > $null 2>&1
powercfg -setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 5d76a2ca-e8c0-402f-a133-2158492d58ad 0 > $null 2>&1
powercfg -setdcvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 5d76a2ca-e8c0-402f-a133-2158492d58ad 0 > $null 2>&1
