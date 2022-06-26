package com.bitmascot.security

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value

import java.util.UUID

class Token {
    String email
    String value = UUID.randomUUID().toString().replaceAll('-', '')
    Date dateCreated

    static mapping = {
        version false
    }

    static constraints = {
    }

}