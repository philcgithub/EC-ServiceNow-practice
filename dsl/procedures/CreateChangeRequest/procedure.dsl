// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Create Change Request', description: '''Create Change Request''', {

    step 'Create Change Request', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/CreateChangeRequest/steps/CreateChangeRequest.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'ResponseContent',
        description: '''Rest API Result'''

    formalOutputParameter 'ChangeRequestSysID',
        description: '''Change Request SysID'''

    formalOutputParameter 'ChangeRequestLink',
        description: '''Link to Change Request'''
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 716e96136f75b65624c543b8f6e30dcb ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}