// ============================================================================
// Unified Health Communication Hub terminology
// ============================================================================

CodeSystem: ZMCommunicationLaneCS
Id: zm-communication-lane
Title: "Zambia Communication Lane"
Description: "Governance lanes used to separate communication purposes, access rules, and disclosure controls in the Zambia Unified Health Communication Hub."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #clinical "Clinical" "Patient care communications such as appointment, referral, result-availability, and follow-up notifications."
* #public-health "Public health" "Surveillance alerts, outbreak notifications, and incident escalation."
* #operational "Operational" "Reporting deadlines, data-quality issues, and service interruptions."
* #supply-chain "Supply chain" "Stock alerts, requisition approvals, and delivery notifications."
* #workforce "Workforce" "Workforce approvals, deployments, training, and licence-expiry reminders."
* #public-information "Public information" "Approved campaigns, service availability, and health advisories."

ValueSet: ZMCommunicationLaneVS
Id: zm-communication-lane-vs
Title: "Zambia Communication Lane Value Set"
Description: "Communication governance lanes supported by the Zambia Unified Health Communication Hub."
* ^status = #draft
* ^experimental = false
* include codes from system ZMCommunicationLaneCS

CodeSystem: ZMCommunicationChannelCS
Id: zm-communication-channel
Title: "Zambia Communication Channel"
Description: "Delivery channels supported by the Zambia Unified Health Communication Hub."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #sms "SMS"
* #email "Email"
* #teams "Microsoft Teams"
* #whatsapp "WhatsApp"
* #portal "Authenticated portal"
* #push "Mobile push notification"
* #ivr "Interactive voice response"

ValueSet: ZMCommunicationChannelVS
Id: zm-communication-channel-vs
Title: "Zambia Communication Channel Value Set"
Description: "Approved preferred and fallback delivery channels for hub communications."
* ^status = #draft
* ^experimental = false
* include codes from system ZMCommunicationChannelCS

CodeSystem: ZMCommunicationDataClassificationCS
Id: zm-communication-data-classification
Title: "Zambia Communication Data Classification"
Description: "Data classifications that drive disclosure and channel controls for health communications."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #public "Public" "Information approved for public disclosure."
* #internal "Internal" "Ministry operational information not intended for public disclosure."
* #confidential "Confidential" "Personal, workforce, or business information requiring controlled disclosure."
* #restricted-health "Restricted health information" "Sensitive clinical or public-health information that must be accessed through an authenticated channel."

ValueSet: ZMCommunicationDataClassificationVS
Id: zm-communication-data-classification-vs
Title: "Zambia Communication Data Classification Value Set"
Description: "Data classifications used to enforce communication disclosure rules."
* ^status = #draft
* ^experimental = false
* include codes from system ZMCommunicationDataClassificationCS

CodeSystem: ZMCommunicationTaskCodeCS
Id: zm-communication-task-code
Title: "Zambia Communication Task Code"
Description: "Actions used to capture acknowledgement and escalation in communication workflows."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #acknowledge "Acknowledge communication"
* #complete-action "Complete requested action"
* #escalate "Escalate communication"
* #resolve-recipient "Resolve recipient"

ValueSet: ZMCommunicationTaskCodeVS
Id: zm-communication-task-code-vs
Title: "Zambia Communication Task Code Value Set"
Description: "Task actions supported by a communication workflow."
* ^status = #draft
* ^experimental = false
* include codes from system ZMCommunicationTaskCodeCS

CodeSystem: ZMCommunicationConsentActionCS
Id: zm-communication-consent-action
Title: "Zambia Communication Consent Action"
Description: "Consent actions governing contact by the Unified Health Communication Hub."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #contact "Contact individual"
* #send-notification "Send notification"
* #send-sensitive-content "Send sensitive content through an authenticated channel"

ValueSet: ZMCommunicationConsentActionVS
Id: zm-communication-consent-action-vs
Title: "Zambia Communication Consent Action Value Set"
Description: "Permitted contact actions represented in a communication consent."
* ^status = #draft
* ^experimental = false
* include codes from system ZMCommunicationConsentActionCS
