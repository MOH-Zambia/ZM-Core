<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Consent
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Consent</sch:title>
    <sch:rule context="f:Consent">
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-consent-communication-channel']) &gt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-consent-communication-channel': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:decision) &gt;= 1">decision: minimum cardinality of 'decision' is 1</sch:assert>
      <sch:assert test="count(f:provision) &gt;= 1">provision: minimum cardinality of 'provision' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Consent/f:provision</sch:title>
    <sch:rule context="f:Consent/f:provision">
      <sch:assert test="count(f:action) &gt;= 1">action: minimum cardinality of 'action' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
