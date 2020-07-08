package FlowPlugin::ServiceNowpractice;
use JSON;
use strict;
use warnings;
use base qw/FlowPDF/;
use FlowPDF::Log;
use Data::Dumper;

# Feel free to use new libraries here, e.g. use File::Temp;

# Service function that is being used to set some metadata for a plugin.
sub pluginInfo {
    return {
        pluginName          => '@PLUGIN_KEY@',
        pluginVersion       => '@PLUGIN_VERSION@',
        configFields        => ['config'],
        configLocations     => ['ec_plugin_cfgs'],
        defaultConfigValues => {}
    };
}

# Auto-generated method for the procedure Get Change Request/Get Change Request
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: cr_sysid

sub getChangeRequest {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECServiceNowpracticeRESTClient = $pluginObject->getECServiceNowpracticeRESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'cr_sysid' => $params->{'cr_sysid'},
    );
    my $response = $ECServiceNowpracticeRESTClient->getChangeRequest(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;
    
    $stepResult->setOutputParameter('ResponseContent', encode_json($response));

    $stepResult->apply();
}

# This method is used to access auto-generated REST client.
sub getECServiceNowpracticeRESTClient {
    my ($self) = @_;

    my $context = $self->getContext();
    my $config = $context->getRuntimeParameters();
    require FlowPlugin::ECServiceNowpracticeRESTClient;
    my $client = FlowPlugin::ECServiceNowpracticeRESTClient->createFromConfig($config);
    return $client;
}
# Auto-generated method for the procedure Create Change Request/Create Change Request
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: details

sub createChangeRequest {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECServiceNowpracticeRESTClient = $pluginObject->getECServiceNowpracticeRESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'details' => $params->{'details'},
    );
    my $response = $ECServiceNowpracticeRESTClient->createChangeRequest(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;

    $stepResult->setOutputParameter('ResponseContent', encode_json($response));

    my $sys_id = $response->{result}->{sys_id}->{value};
    $stepResult->setOutputParameter('ChangeRequestSysID', $sys_id);

    $stepResult->setOutputParameter('ChangeRequestLink', $params->{'endpoint'}.'/nav_to.do?uri=change_request.do?sys_id='.$sys_id);

    $stepResult->apply();
}

# Auto-generated method for the procedure Modify Change Request/Modify Change Request
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: cr_sysid
# Parameter: cr_details

sub modifyChangeRequest {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECServiceNowpracticeRESTClient = $pluginObject->getECServiceNowpracticeRESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'cr_sysid' => $params->{'cr_sysid'},
        'cr_details' => $params->{'cr_details'},
    );
    my $response = $ECServiceNowpracticeRESTClient->modifyChangeRequest(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;

    $stepResult->setOutputParameter('ResponseContent', encode_json($response));

    $stepResult->apply();
}

# Auto-generated method for the procedure Upload attachment to Change Request/Upload attachment to Change Request
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: table_name
# Parameter: table_sys_id
# Parameter: file_name
# Parameter: location



# Auto-generated method for the procedure Upload attachment to Change Request/Upload attachment to Change Request
# Add your code into this method and it will be called when step runs
# Parameter: config
# Parameter: table_name
# Parameter: table_sys_id
# Parameter: uploadFile

sub uploadAttachmentToChangeRequest {
    my ($pluginObject) = @_;

    my $context = $pluginObject->getContext();
    my $params = $context->getRuntimeParameters();

    my $ECServiceNowpracticeRESTClient = $pluginObject->getECServiceNowpracticeRESTClient;
    # If you have changed your parameters in the procedure declaration, add/remove them here
    my %restParams = (
        'table_name' => $params->{'table_name'},
        'table_sys_id' => $params->{'table_sys_id'},
        'uploadFile' => $params->{'uploadFile'},
    );
    my $response = $ECServiceNowpracticeRESTClient->uploadAttachementToChangeRequest(%restParams);
    logInfo("Got response from the server: ", $response);

    my $stepResult = $context->newStepResult;

    $stepResult->apply();
}

## === step ends ===
# Please do not remove the marker above, it is used to place new procedures into this file.


1;