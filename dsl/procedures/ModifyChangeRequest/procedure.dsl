// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Modify Change Request', description: '''Modify Change Request''', {

    step 'Modify Change Request', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/ModifyChangeRequest/steps/ModifyChangeRequest.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }

    formalOutputParameter 'ResponseContent',
        description: '''Rest API Result'''
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: fec386ca4afde4197ad1a91be675c001 ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}