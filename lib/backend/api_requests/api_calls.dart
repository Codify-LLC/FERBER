import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Airtable APIs Group Code

class AirtableAPIsGroup {
  static String baseUrl = 'https://api.airtable.com/v0/appHdfZAMkLuAq0ad';
  static Map<String, String> headers = {
    'Authorization': 'Bearer keyZqynOEZ18Oqocr',
    'Content-Type': 'application/json',
  };
  static ListTransactionsRecordsCall listTransactionsRecordsCall =
      ListTransactionsRecordsCall();
  static RetriveTransactionsRecordCall retriveTransactionsRecordCall =
      RetriveTransactionsRecordCall();
  static CreateBothTransactionsRecordCall createBothTransactionsRecordCall =
      CreateBothTransactionsRecordCall();
  static CreateContactsRecordCall createContactsRecordCall =
      CreateContactsRecordCall();
  static RetriveContactsRecordCall retriveContactsRecordCall =
      RetriveContactsRecordCall();
  static ListContactsRecordsCall listContactsRecordsCall =
      ListContactsRecordsCall();
  static ListInboxRecordsCall listInboxRecordsCall = ListInboxRecordsCall();
  static CreateInboxRecordCall createInboxRecordCall = CreateInboxRecordCall();
  static CreateBuyersNewOfferTransactionRecordCall
      createBuyersNewOfferTransactionRecordCall =
      CreateBuyersNewOfferTransactionRecordCall();
}

class ListTransactionsRecordsCall {
  Future<ApiCallResponse> call({
    int? maxRecords = 100,
    String? sortField = 'Last Modified',
    String? sortDirection = 'asc',
    String? filterByFormula = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Transactions Records',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Transactions',
      callType: ApiCallType.GET,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {
        'maxRecords': maxRecords,
        'sort[0][field]': sortField,
        'sort[0][direction]': sortDirection,
        'filterByFormula': filterByFormula,
      },
      returnBody: true,
    );
  }

  dynamic recordList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      );
  dynamic fields(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields''',
        true,
      );
  dynamic addressList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields["🏡 Address"]''',
        true,
      );
  dynamic listingId(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields['ListingId']''',
        true,
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields['Latitude']''',
        true,
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields['Longitude']''',
        true,
      );
  dynamic purchasePrice(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields['💵 Purchase Price']''',
        true,
      );
}

class RetriveTransactionsRecordCall {
  Future<ApiCallResponse> call({
    String? recordId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retrive Transactions Record',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Transactions/${recordId}',
      callType: ApiCallType.GET,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {},
      returnBody: true,
    );
  }

  dynamic recordId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic createdTime(dynamic response) => getJsonField(
        response,
        r'''$.createdTime''',
      );
  dynamic fields(dynamic response) => getJsonField(
        response,
        r'''$.fields''',
      );
  dynamic tcName(dynamic response) => getJsonField(
        response,
        r'''$.fields.TC[:].name''',
      );
  dynamic tcEmail(dynamic response) => getJsonField(
        response,
        r'''$.fields.TC[:].email''',
      );
  dynamic tcId(dynamic response) => getJsonField(
        response,
        r'''$.fields.TC[:].id''',
      );
  dynamic tcData(dynamic response) => getJsonField(
        response,
        r'''$.fields.TC''',
        true,
      );
  dynamic broker(dynamic response) => getJsonField(
        response,
        r'''$.fields.Broker''',
        true,
      );
  dynamic brokerageId(dynamic response) => getJsonField(
        response,
        r'''$.fields.Brokerage[:].id''',
      );
  dynamic brokerageData(dynamic response) => getJsonField(
        response,
        r'''$.fields.Brokerage''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.fields.⚡❗Status''',
      );
  dynamic propertyImages(dynamic response) => getJsonField(
        response,
        r'''$.fields['Property Image']''',
        true,
      );
  dynamic coopAgent(dynamic response) => getJsonField(
        response,
        r'''$.fields.✔Co-opAgent''',
        true,
      );
  dynamic coopClient(dynamic response) => getJsonField(
        response,
        r'''$.fields.Co-opClient''',
        true,
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.fields['🏡 Address']''',
      );
  dynamic closingDate(dynamic response) => getJsonField(
        response,
        r'''$.fields['🥂 Closing Date']''',
      );
  dynamic purchasePrice(dynamic response) => getJsonField(
        response,
        r'''$.fields['💵 Purchase Price']''',
      );
  dynamic inspectionDeadline(dynamic response) => getJsonField(
        response,
        r'''$.fields['🔍 Inspection Deadline']''',
      );
  dynamic emdDeadlineAutomation(dynamic response) => getJsonField(
        response,
        r'''$.fields['💲 EMD Deadline (Automation)']''',
      );
  dynamic tcFee(dynamic response) => getJsonField(
        response,
        r'''$.fields['🤑 TC Fee']''',
      );
  dynamic commissionOurSide(dynamic response) => getJsonField(
        response,
        r'''$.fields['commission (OurSide)']''',
      );
  dynamic escrowAmount(dynamic response) => getJsonField(
        response,
        r'''$.fields['💰 Escrow Amount']''',
      );
  dynamic inspectionDays(dynamic response) => getJsonField(
        response,
        r'''$.fields['Inspection Days']''',
      );
  dynamic submittedByOurAgent(dynamic response) => getJsonField(
        response,
        r'''$.fields['Submitted By (OurAgent)']''',
        true,
      );
  dynamic listDateActiveDate(dynamic response) => getJsonField(
        response,
        r'''$.fields['List Date (Active Date)']''',
      );
  dynamic contacts(dynamic response) => getJsonField(
        response,
        r'''$.fields.Contacts''',
        true,
      );
  dynamic participantsOurAgent(dynamic response) => getJsonField(
        response,
        r'''$.fields['Participants (OurAgent)']''',
        true,
      );
  dynamic ourClientsBuyerSellerForm(dynamic response) => getJsonField(
        response,
        r'''$.fields['✔OurClient (Buyer/SELLER Form)']''',
        true,
      );
  dynamic type(dynamic response) => getJsonField(
        response,
        r'''$.fields['👪 Type']''',
      );
  dynamic newOurClientPhone(dynamic response) => getJsonField(
        response,
        r'''$.fields['✔New OurClient Phone (Bform)']''',
      );
  dynamic typeOfFinancing(dynamic response) => getJsonField(
        response,
        r'''$.fields['Type of financing']''',
      );
  dynamic offerExpirationDate(dynamic response) => getJsonField(
        response,
        r'''$.fields['Offer Expiration Date']''',
      );
  dynamic inspections(dynamic response) => getJsonField(
        response,
        r'''$.fields.Inspections''',
      );
  dynamic acceptanceDate(dynamic response) => getJsonField(
        response,
        r'''$.fields['✅Acceptance Date']''',
      );
  dynamic downPayment(dynamic response) => getJsonField(
        response,
        r'''$.fields['Down Payment']''',
      );
  dynamic loanApprovalDeadline(dynamic response) => getJsonField(
        response,
        r'''$.fields['🏦Loan Approval Deadline']''',
      );
  dynamic loanApprovalPeriod(dynamic response) => getJsonField(
        response,
        r'''$.fields['Loan Approval Period']''',
      );
  dynamic notesDocuments(dynamic response) => getJsonField(
        response,
        r'''$.fields['Notes (Documents)']''',
      );
  dynamic arielViewUrls(dynamic response) => getJsonField(
        response,
        r'''$.fields['Arial View']..url''',
        true,
      );
  dynamic agentPay(dynamic response) => getJsonField(
        response,
        r'''$.fields['Agent Pay']''',
      );
  dynamic lastModified(dynamic response) => getJsonField(
        response,
        r'''$.fields['Last Modified']''',
      );
  dynamic lastModifiedBy(dynamic response) => getJsonField(
        response,
        r'''$.fields['Last Modified By']''',
      );
  dynamic agentImageTest1(dynamic response) => getJsonField(
        response,
        r'''$.fields['🤵 Agent Image Test1']''',
        true,
      );
  dynamic listingID(dynamic response) => getJsonField(
        response,
        r'''$.fields['ListingId']''',
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.fields['Latitude']''',
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.fields['Longitude']''',
      );
}

class CreateBothTransactionsRecordCall {
  Future<ApiCallResponse> call({
    String? address = '',
    String? preApprovalOrProofOfFundsPOF = '',
    String? aSISContractAndEtc = '',
    String? status = '',
    String? type = '',
    List<String>? submittedByOurAgentList,
    List<String>? ourClientBuyerSELLERFormList,
    List<String>? participantsOurAgentList,
    double? listingPrice,
    List<String>? typesOfFinancingAcceptedList,
    String? listDateActiveDate = '',
    String? listingExpirationDate = '',
    String? formEntry = '',
    String? newOurClientNameBform = '',
    String? newOurclientEmailBform = '',
    String? newOurclientPhoneBform = '',
    double? totalCommission,
    double? commissionOurSide,
    double? cooperatingBrokerCommission,
    String? additionalTerms = '',
    String? notes = '',
    String? listingDocs = '',
    double? purchasePrice,
    double? escrowAmount,
    String? downPayment = '',
    String? offerExpirationDate = '',
    String? closingDate = '',
    int? inspectionPeriod,
    String? signature = '',
  }) {
    final submittedByOurAgent = _serializeList(submittedByOurAgentList);
    final ourClientBuyerSELLERForm =
        _serializeList(ourClientBuyerSELLERFormList);
    final participantsOurAgent = _serializeList(participantsOurAgentList);
    final typesOfFinancingAccepted =
        _serializeList(typesOfFinancingAcceptedList);
    final body = '''
{
  "records": [
    {
      "fields": {
        "🏡 Address": "${address}",
        "💲 Pre Approval or Proof of Funds (POF)": [
          {
            "url": "${preApprovalOrProofOfFundsPOF}"
          }
        ],
        "📝Listing Docs": [
          {
            "url": "${listingDocs}"
          }
        ],
        "⭐ AS-IS Contract & etc": [
          {
            "url": "${aSISContractAndEtc}"
          }
        ],
        "🥂 Closing Date": "${closingDate}",
        "⚡❗Status": "${status}",
        "👪 Type": "${type}",
        "Participants (OurAgent)": "${participantsOurAgent}",
        "✔New OurClient Name (Bform)": "${newOurClientNameBform}",
        "✔New Ourclient Email (Bform)": "${newOurclientEmailBform}",
        "✔New OurClient Phone (Bform)": "${newOurclientPhoneBform}",
        "✔OurClient (Buyer/SELLER Form)": "${ourClientBuyerSELLERForm}",
        "List Date (Active Date)": "${listDateActiveDate}",
        "Listing Price": ${listingPrice},
        "💵 Purchase Price": ${purchasePrice},
        "💰 Escrow Amount": ${escrowAmount},
        "Inspection Period": ${inspectionPeriod},
        "commission (OurSide)": ${commissionOurSide},
        "Inspections": "Let the client decide",
        "Listing Expiration Date": "${listingExpirationDate}",
        "Offer Expiration Date": "${offerExpirationDate}",
        "⏲ Inspection Time (00:00PM)": "TBD",
        "Additional Terms": "${additionalTerms}",
        "Notes": "${notes}",
        "Down Payment": "${downPayment}",
        "👪Form Entry": "${formEntry}",
        "Types of Financing Accepted": "${typesOfFinancingAccepted}",
        "Total Commission": ${totalCommission},
        "Cooperating Broker Commission": ${cooperatingBrokerCommission},
        "Submitted By (OurAgent)": "${submittedByOurAgent}",
        "Signature": [
          {
            "url": "${signature}"
          }
        ]
      }
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Both Transactions Record',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Transactions',
      callType: ApiCallType.POST,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class CreateContactsRecordCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? companyBrokerage = '',
    String? phone = '',
    String? email = '',
    String? role = '',
    String? transactions = '',
    String? brokerages = '',
    String? profilePicture = '',
    String? brokerage = '',
    String? mLSUsername = '',
    String? mLSPassword = '',
    String? system = '',
    String? systemUsername = '',
    String? systemPassword = '',
    String? licenseNumber = '',
    String? transactions8 = '',
    String? transactions2 = '',
    int? brokerFee,
  }) {
    final body = '''
{
  "records": [
    {
      "fields": {
        "Name": "${name}",
        "Company (Brokerage)": "${companyBrokerage}",
        "Phone": "${phone}",
        "Email": "${email}",
        "Role": "${role}",
        "Transactions": [
          "${transactions}"
        ],
        "Brokerages": "${brokerages}",
        "Profile Picture": [
          {
            "url": "${profilePicture}"
          }
        ],
        "Brokerage": [
          "${brokerage}"
        ],
        "MLS Username": "${mLSUsername}",
        "MLS Password": "${mLSPassword}",
        "System": [
          "${system}"
        ],
        "System Username": "${systemUsername}",
        "System Password": "${systemPassword}",
        "License Number": "${licenseNumber}",
        "Transactions 8": "${transactions8}",
        "Transactions 2": [
          "${transactions2}"
        ],
        "Broker Fee": ${brokerFee}
      }
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Contacts Record',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Contacts',
      callType: ApiCallType.POST,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class RetriveContactsRecordCall {
  Future<ApiCallResponse> call({
    int? maxRecords = 100,
    String? recordId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retrive Contacts Record',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Contacts/${recordId}',
      callType: ApiCallType.GET,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {},
      returnBody: true,
    );
  }
}

class ListContactsRecordsCall {
  Future<ApiCallResponse> call({
    String? maxRecords = '',
    String? filterByFormula = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Contacts Records',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Contacts',
      callType: ApiCallType.GET,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {
        'maxRecords': maxRecords,
        'filterByFormula': filterByFormula,
      },
      returnBody: true,
    );
  }

  dynamic records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      );
  dynamic recordIds(dynamic response) => getJsonField(
        response,
        r'''$.records[:].id''',
        true,
      );
  dynamic createdTime(dynamic response) => getJsonField(
        response,
        r'''$.records[:].createdTime''',
        true,
      );
  dynamic fields(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields''',
        true,
      );
  dynamic names(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Name''',
        true,
      );
  dynamic roles(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Role''',
        true,
      );
  dynamic calculations(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Calculation''',
        true,
      );
}

class ListInboxRecordsCall {
  Future<ApiCallResponse> call({
    int? maxRecords = 100,
    String? filterByFormula = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Inbox Records',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Inbox',
      callType: ApiCallType.GET,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {
        'maxRecords': maxRecords,
        'filterByFormula': filterByFormula,
      },
      returnBody: true,
    );
  }

  dynamic recordsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      );
  dynamic recordIdList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].id''',
        true,
      );
  dynamic fieldsList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields''',
        true,
      );
  dynamic attachmentsList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Attachments''',
        true,
      );
  dynamic attachmentUrlsList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Attachments[:].url''',
        true,
      );
  dynamic addressList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Address''',
        true,
      );
  dynamic tagsList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Tags''',
        true,
      );
  dynamic sourceList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Source''',
        true,
      );
}

class CreateInboxRecordCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
  "fields": {
    "Buyer Agent": "Jesus Garcia",
    "Source": "Website",
    "Type of Msg": "Inbound Offer on Listing",
    "Tags": "Old",
    "Address": [
      "recvNDo0MCDEGv3Br"
    ],
    "Attachments": [
      {
        "url": "https://dl.airtable.com/.attachments/b0405c2823619ec4251f4b5de7890196/0274e541/1232LakePiedmont-Offer-DavisJones.pdf"
      }
    ],
    "Purchase Price": 395000,
    "Financing Type": "Conventional",
    "Escrow Amount": 4000,
    "Offer Expiration Date": "2022-04-18",
    "Closing Date": "2022-05-20",
    "Buyer's Agent Phone": "(386) 561-1276",
    "Buyer's Agent": "jesus.garcia@live.com",
    "Inspection Period": "7 days",
    "Terms": "Appraisal gap - up to \$8,000 not to exceed the contract's purchase price",
    "OurClient Email (from Address)": [
      "recZkiWUQxMtasJPN",
      "rec9zLOcTbsZKti6v"
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Inbox Record',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Inbox',
      callType: ApiCallType.POST,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class CreateBuyersNewOfferTransactionRecordCall {
  Future<ApiCallResponse> call({
    String? address = ' ',
    double? purchasePrice = 0,
    String? status = 'New Offer',
    double? escrowDeposit = 0,
    String? offerExpirationDate = '0000-00-00',
    String? closingDate = '0000-00-00',
    int? inspectionPeriod,
    String? additionalTerms = ' ',
    String? preApprovalProofOfFunds1 = '',
    String? signature = ' ',
    String? typeOfFinancing = 'VHA',
    String? preApprovalProofOfFunds2 = '',
    String? preApprovalProofOfFunds3 = '',
    String? preApprovalProofOfFunds4 = '',
    String? preApprovalProofOfFunds5 = '',
  }) {
    final body = '''
{
  "fields": {
    "👪 Type": "Buyer",
    "🏡 Address": "${address}",
    "💵 Purchase Price": ${purchasePrice},
    "⚡❗Status": "${status}",
    "💰 Escrow Amount": ${escrowDeposit},
    "Offer Expiration Date": "${offerExpirationDate}",
    "🥂 Closing Date": "${closingDate}",
    "🔍 Inspection Deadline": "${inspectionPeriod}",
    "Additional Terms": "${additionalTerms}",
    "Type of financing": "${typeOfFinancing}",
    "💲 Pre Approval or Proof of Funds (POF)": [
      {
        "url": "${preApprovalProofOfFunds1}"
      },
      {
        "url": "${preApprovalProofOfFunds2}"
      }
    ],
    "Signature": [
      {
        "url": "${signature}"
      }
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Buyers New Offer Transaction Record',
      apiUrl: '${AirtableAPIsGroup.baseUrl}/Transactions',
      callType: ApiCallType.POST,
      headers: {
        ...AirtableAPIsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  dynamic recordID(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic createdTime(dynamic response) => getJsonField(
        response,
        r'''$.createdTime''',
      );
  dynamic fieds(dynamic response) => getJsonField(
        response,
        r'''$.fields''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.fields.⚡❗Status''',
      );
}

/// End Airtable APIs Group Code

class BridgeDataOutputCall {
  static Future<ApiCallResponse> call({
    String? listingId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Bridge Data Output',
      apiUrl:
          'https://api.bridgedataoutput.com/api/v2/stellar/listings/${listingId}?access_token=cb92e2fa0c41b0abebb5b7333729c75f',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic coordinates(dynamic response) => getJsonField(
        response,
        r'''$..Coordinates''',
      );
}

class SearchByMLSorSTREETCall {
  static Future<ApiCallResponse> call({
    String? unparsedAddress = '',
    String? listingId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchByMLSorSTREET',
      apiUrl:
          'https://api.bridgedataoutput.com/api/v2/stellar/listings/?access_token=cb92e2fa0c41b0abebb5b7333729c75f&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'UnparsedAddress': unparsedAddress,
        'ListingId': listingId,
      },
      returnBody: true,
    );
  }

  static dynamic coordinates(dynamic response) => getJsonField(
        response,
        r'''$..Coordinates''',
        true,
      );
  static dynamic addressList(dynamic response) => getJsonField(
        response,
        r'''$..UnparsedAddress''',
        true,
      );
  static dynamic bundle(dynamic response) => getJsonField(
        response,
        r'''$.bundle''',
        true,
      );
  static dynamic propertyPhoto(dynamic response) => getJsonField(
        response,
        r'''$..['Media'][0]['MediaURL']''',
        true,
      );
}

class MyGateWayHookCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "Test" : 3
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'My GateWay Hook ',
      apiUrl: 'orcokwnqsfo8dvo4kafeeimqcltcdhms@hook.us1.make.com',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
