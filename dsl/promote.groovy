
// DO NOT EDIT THIS BLOCK === promote_autogen starts ===
import groovy.transform.BaseScript
import com.electriccloud.commander.dsl.util.BasePlugin

//noinspection GroovyUnusedAssignment
@BaseScript BasePlugin baseScript

// Variables available for use in DSL code
def pluginName = args.pluginName
def upgradeAction = args.upgradeAction
def otherPluginName = args.otherPluginName

def pluginKey = getProject("/plugins/$pluginName/project").pluginKey
def pluginDir = getProperty("/projects/$pluginName/pluginDir").value

//List of procedure steps to which the plugin configuration credentials need to be attached
def stepsWithAttachedCredentials = [
    [procedureName: "Get Change Request", stepName: "Get Change Request"],
    [procedureName: "Create Change Request", stepName: "Create Change Request"],
    [procedureName: "Modify Change Request", stepName: "Modify Change Request"],
    [procedureName: "Upload attachment to Change Request", stepName: "Upload attachment to Change Request"],

]

project pluginName, {
    property 'ec_keepFilesExtensions', value: 'true'
    property 'ec_formXmlCompliant', value: 'true'
    loadPluginProperties(pluginDir, pluginName)
    loadProcedures(pluginDir, pluginKey, pluginName, stepsWithAttachedCredentials)

    // Plugin configuration metadata
    property 'ec_config', {
        configLocation = 'ec_plugin_cfgs'
        form = '$[' + "/projects/$pluginName/procedures/CreateConfiguration/ec_parameterForm]"
        property 'fields', {
            property 'desc', {
                property 'label', value: 'Description'
                property 'order', value: '1'
            }
        }
    }

    }

def retainedProperties = []

upgrade(upgradeAction, pluginName, otherPluginName, stepsWithAttachedCredentials, 'ec_plugin_cfgs', retainedProperties)
// DO NOT EDIT THIS BLOCK === promote_autogen ends, checksum: c0e2eadb6a1957a532d6fd366cf5c9c0 ===
// Do not edit the code above this line

project pluginName, {
    // You may add your own DSL instructions below this line, like
    // property 'myprop', {
    //     value: 'value'
    // }
}