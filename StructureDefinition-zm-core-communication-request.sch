<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CommunicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CommunicationRequest</sch:title>
    <sch:rule context="f:CommunicationRequest">
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification']) &gt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-template']) &gt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-template': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-template']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-template': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-message-language']) &gt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-message-language': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-message-language']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-message-language': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-acknowledgement-required']) &gt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-acknowledgement-required': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-acknowledgement-required']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-acknowledgement-required': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry']) &gt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-requesting-system']) &gt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-requesting-system': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-requesting-system']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-requesting-system': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:priority) &gt;= 1">priority: minimum cardinality of 'priority' is 1</sch:assert>
      <sch:assert test="count(f:medium) &gt;= 1">medium: minimum cardinality of 'medium' is 1</sch:assert>
      <sch:assert test="count(f:medium) &lt;= 1">medium: maximum cardinality of 'medium' is 1</sch:assert>
      <sch:assert test="count(f:payload) &gt;= 1">payload: minimum cardinality of 'payload' is 1</sch:assert>
      <sch:assert test="count(f:occurrence[x]) &gt;= 1">occurrence[x]: minimum cardinality of 'occurrence[x]' is 1</sch:assert>
      <sch:assert test="count(f:authoredOn) &gt;= 1">authoredOn: minimum cardinality of 'authoredOn' is 1</sch:assert>
      <sch:assert test="count(f:requester) &gt;= 1">requester: minimum cardinality of 'requester' is 1</sch:assert>
      <sch:assert test="count(f:recipient) &gt;= 1">recipient: minimum cardinality of 'recipient' is 1</sch:assert>
      <sch:assert test="count(f:reason) &gt;= 1">reason: minimum cardinality of 'reason' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CommunicationRequest/f:identifier</sch:title>
    <sch:rule context="f:CommunicationRequest/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
