import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestCall {
  static Future<ApiCallResponse> call({
    String? listingId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Test',
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
}

class AirtableTestCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Airtable Test',
      apiUrl:
          'https://api.airtable.com/v0/appQu29ahm5ITgrwH/Transactions?view=Participants%20%F0%9F%91%AA',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer keyiAe5OpxnQbEjvx',
      },
      params: {},
      returnBody: true,
    );
  }
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

class SellerIntakeFormCall {
  static Future<ApiCallResponse> call({
    String? address = '',
    String? status = '',
    int? listingPrice,
    String? arrayOfTypesOfFinancingAccepted = '',
    String? listDateActiveDate = '',
    String? listingExpirationDate = '',
    String? newOurClientNameBform = '',
    String? newOurclientEmailBform = '',
    String? newOurClientPhoneBform = '',
    double? totalCommission,
    double? cooperatingBrokerCommission,
    String? additionalTerms = '',
    String? notes = '',
    String? listingDocs = '',
    String? aSISContractAndEtc = '',
    String? ourClientBuyerOrSELLERForm = '',
    String? arrayOfParticipantsOurAgent = '',
  }) {
    final body = '''
{
  "records": [
    {
      "fields": {
        "Participants (OurAgent)": [
          "${arrayOfParticipantsOurAgent}"
        ],
        "🏡 Address": "${address}",
        "⚡❗Status": "${status}",
        "Listing Price": ${listingPrice},
        "Types of Financing Accepted": [
          "${arrayOfTypesOfFinancingAccepted}"
        ],
        "List Date (Active Date)": "${listDateActiveDate}",
        "Listing Expiration Date": "${listingExpirationDate}",
        "✔OurClient (Buyer/SELLER Form)": "${ourClientBuyerOrSELLERForm}",
        "✔New OurClient Name (Bform)": "${newOurClientNameBform}",
        "✔New Ourclient Email (Bform)": "${newOurclientEmailBform}",
        "✔New OurClient Phone (Bform)": "${newOurClientPhoneBform}",
        "Total Commission": ${totalCommission},
        "Cooperating Broker Commission": ${cooperatingBrokerCommission},
        "Additional Terms": "${additionalTerms}",
        "Notes": "${notes}",
        "📝Listing Docs": [
          {
            "url": "${listingDocs}"
          }
        ],
        "⭐ AS-IS Contract & etc": [
          {
            "url": "${aSISContractAndEtc}"
          }
        ]
      }
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Seller Intake Form',
      apiUrl: 'https://api.airtable.com/v0/appHdfZAMkLuAq0ad/Transactions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer keyZqynOEZ18Oqocr',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic createdTime(dynamic response) => getJsonField(
        response,
        r'''$.records[:].createdTime''',
      );
  static dynamic transactionRecordID(dynamic response) => getJsonField(
        response,
        r'''$.records[:].id''',
      );
  static dynamic transactionRecord(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      );
  static dynamic transactionRecordFields(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields''',
      );
}

class BuyerIntakeFormCall {
  static Future<ApiCallResponse> call({
    String? mlsId = '',
    String? status = '',
    int? purchasePrice,
    int? escrowAmount,
    String? typeOfFinancing = '',
    String? financedAmount = '',
    String? offerExpirationDate = '',
    String? closingDate = '',
    int? inspectionDays,
    String? formEntry = '',
    String? ourClientBuyerOrSELLERForm = '',
    String? newOurClientNameBform = '',
    String? newOurclientEmailBform = '',
    String? newOurClientPhoneBform = '',
    String? additionalTerms = '',
    String? internalNotes = '',
    String? pDFPreApprovalOrProofOfFundsPOFPrefill = '',
    String? participantsOurAgent = '',
  }) {
    final body = '''
{
  "records": [
    {
      "fields": {
        "Participants (OurAgent)": [
          "${participantsOurAgent}"
        ],
        "🏡 Address": "${mlsId}",
        "⚡❗Status": "${status}",
        "💵 Purchase Price": ${purchasePrice},
        "💰 Escrow Amount": ${escrowAmount},
        "Type of financing": "${typeOfFinancing}",
        "Down Payment": "${financedAmount}",
        "✔OurClient (Buyer/SELLER Form)": [
          "${ourClientBuyerOrSELLERForm}"
        ],
        "✔New OurClient Name (Bform)": "${newOurClientNameBform}",
        "✔New Ourclient Email (Bform)": "${newOurclientEmailBform}",
        "✔New OurClient Phone (Bform)": "${newOurClientPhoneBform}",
        "Offer Expiration Date": "${offerExpirationDate}",
        "🥂 Closing Date": "${closingDate}",
        "Additional Terms": "${additionalTerms}",
        "Inspection Days": ${inspectionDays},
        "👪Form Entry": "${formEntry}",
        "Notes": "${internalNotes}",
        "💲 Pre Approval or Proof of Funds (POF)": [
          {
            "url": "${pDFPreApprovalOrProofOfFundsPOFPrefill}"
          }
        ]
      }
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Intake Form',
      apiUrl: 'https://api.airtable.com/v0/appHdfZAMkLuAq0ad/Transactions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer keyZqynOEZ18Oqocr',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic createdTime(dynamic response) => getJsonField(
        response,
        r'''$.records[:].createdTime''',
      );
  static dynamic transactionRecordID(dynamic response) => getJsonField(
        response,
        r'''$.records[:].id''',
      );
  static dynamic transactionRecord(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      );
  static dynamic transactionRecordFields(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.⚡❗Status''',
      );
  static dynamic notes(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Notes''',
      );
  static dynamic brokerageID(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Brokerage[:].id''',
      );
  static dynamic brokerage(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Brokerage''',
        true,
      );
  static dynamic brokerageImageURL(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Brokerage[:].url''',
      );
  static dynamic brokerageImageFileName(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Brokerage[:].filename''',
      );
  static dynamic broker(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.Broker''',
        true,
      );
}

class GetTransactionsCall {
  static Future<ApiCallResponse> call({
    int? maxRecords = 100,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTransactions',
      apiUrl: 'https://api.airtable.com/v0/appHdfZAMkLuAq0ad/Transactions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer keyZqynOEZ18Oqocr',
        'Content-Type': 'application/json',
      },
      params: {
        'maxRecords': maxRecords,
      },
      returnBody: true,
    );
  }

  static dynamic statusList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields.⚡❗Status''',
        true,
      );
  static dynamic idList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].id''',
        true,
      );
  static dynamic recordsList(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      );
  static dynamic fieldsList(dynamic response) => getJsonField(
        response,
        r'''$.records[:].fields''',
        true,
      );
  static dynamic addressesList(dynamic response) => getJsonField(
        response,
        r'''$.records[:]..fields['🏡 Address']''',
        true,
      );
}
