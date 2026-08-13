<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Medication
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Medication</sch:title>
    <sch:rule context="f:Medication">
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-name']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-generic-name']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-generic-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-name']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-description']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-strength']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-strength': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dosage-unit']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dosage-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dispensing-units']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dispensing-units': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-doses-per-dispensing-unit']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-doses-per-dispensing-unit': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-size-text']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-size-text': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-pack-size']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-pack-size': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-weight']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-weight': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-packs-per-carton']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-packs-per-carton': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-cartons-per-pallet']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-cartons-per-pallet': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-shelf-life']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-shelf-life': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-instructions']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-instructions': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-transport-instructions']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-transport-instructions': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-refrigerated']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-refrigerated': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-route-of-administration']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-route-of-administration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-classification']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-classification': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-room-temperature']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-room-temperature': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-hazardous']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-hazardous': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-flammable']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-flammable': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-controlled-substance']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-controlled-substance': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-light-sensitive']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-light-sensitive': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-who-approved']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-who-approved': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-supply']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-supply': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-tracer']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-tracer': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-rounding-threshold']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-rounding-threshold': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-can-round-to-zero']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-can-round-to-zero': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-archived']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-archived': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-lsi-enabled']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-lsi-enabled': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-price']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-price': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-type']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-group']) &lt;= 1">extension with URL = 'http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-group': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:doseForm) &gt;= 1">doseForm: minimum cardinality of 'doseForm' is 1</sch:assert>
      <sch:assert test="count(f:totalVolume) &lt;= 0">totalVolume: maximum cardinality of 'totalVolume' is 0</sch:assert>
      <sch:assert test="count(f:ingredient) &lt;= 0">ingredient: maximum cardinality of 'ingredient' is 0</sch:assert>
      <sch:assert test="count(f:batch) &lt;= 0">batch: maximum cardinality of 'batch' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Medication/f:identifier</sch:title>
    <sch:rule context="f:Medication/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Medication/f:code</sch:title>
    <sch:rule context="f:Medication/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Medication/f:code/f:coding</sch:title>
    <sch:rule context="f:Medication/f:code/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
