/// this file includes all the class extensions that are needed to flesh out
/// the Planning Center API either because the documentation is lacking
/// or because some implementation requires special cases.
///
/// For example, when creating a [PcoGivingDonation] in the Giving app, Planning Center
/// expects to receive a [PcoGivingDesignation] in the `included` part of the request.
/// The spec document doesn't describe this in machine-readable form, and so the code
/// cannot be automatically generated.
///
/// Nevertheless, by using class extensions here, we can manually implement whatever
/// special case implementations we need to.

// library declaration
part of pco;

// -- GIVING APP EXTENSIONS

/// This class is a simple abstraction to make creating
/// fund designations easier
class PcoGivingFundMap {
  String fundId;
  int amountCents;
  PcoGivingFundMap(this.fundId, this.amountCents);
}

extension PcoGivingDonationExtension on PcoGivingDonation {
  /// each donation must be designated to one or more funds
  /// Make sure you have already set the `person_id` before calling this
  ///
  /// In most cases, calling `saveToFunds` will be easier unless you already have
  /// a list of designation objects
  Future<PlanningCenterApiResponse> saveWithDesignations(
      List<PcoGivingDesignation> designations) async {
    return save(withIncluded: designations);
  }

  /// each donation must be designated to one or more funds
  /// Make sure you have already set the `person_id` before calling this
  Future<PlanningCenterApiResponse> saveToFunds(
      List<PcoGivingFundMap> funds) async {
    // convert the funds to designation objects
    var designations = <PcoGivingDesignation>[];
    for (var f in funds) {
      designations.add(PcoGivingDesignation(
        amountCents: f.amountCents,
        withRelationships: {
          'fund': [PcoGivingFund(id: f.fundId)]
        },
      ));
    }
    return saveWithDesignations(designations);
  }
}
