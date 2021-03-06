# NAME

FlowPDF::Exception::UnexpectedEmptyValue

# AUTHOR

CloudBees

# DESCRIPTION

An exception that represents a situation when unexpected empty value has appeared.

# USAGE

This exception could be created using new() method in one of the following ways:

- No parameters

    Exception with default message will be created.

- Custom scalar parameter

    Exception with custom message will be created.

- hashref with the following fields as parameter:

    **Note:** you may not use all of these arguments at once. It is allowed to omit some of them.

    - where

        A description where it happened.

    - expected

        An expected value.

```

FlowPDF::Exception::UnexpectedEmptyValue->new({
    where => 'function result',
    expected => 'non-empty value'
})->throw();

```