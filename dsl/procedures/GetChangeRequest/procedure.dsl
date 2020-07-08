// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Get Change Request', description: '''Get Change Request''', {

    step 'Get Change Request', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/GetChangeRequest/steps/GetChangeRequest.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'ResponseContent',
        description: '''Rest API Result'''
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 14ff0d5e85fabc8efe3c5d05f32471ef ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}