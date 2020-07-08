// This procedure.dsl was generated automatically
// DO NOT EDIT THIS BLOCK === procedure_autogen starts ===
procedure 'Upload attachment to Change Request', description: '''Upload attachment to Change Request''', {

    step 'Upload attachment to Change Request', {
        description = ''
        command = new File(pluginDir, "dsl/procedures/UploadattachmenttoChangeRequest/steps/UploadattachmenttoChangeRequest.pl").text
        shell = 'ec-perl'
        shell = 'ec-perl'

        postProcessor = '''$[/myProject/perl/postpLoader]'''
    }
// DO NOT EDIT THIS BLOCK === procedure_autogen ends, checksum: 22e486d61ad1cc1649b6301022c262d2 ===
// Do not update the code above the line
// procedure properties declaration can be placed in here, like
// property 'property name', value: "value"
}