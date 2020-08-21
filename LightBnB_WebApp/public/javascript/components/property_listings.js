$(() => {

  const $propertyListings = $(`
  <section class="property-listings" id="property-listings">
      <p>Loading...</p>
    </section>
  `);
  window.$propertyListings = $propertyListings;

  window.propertyListings = {};

  const addListing = (listing, id) => {
    const $newListing = $(listing);
    const $resButton = $newListing.find('.property-listing__reserve');
    const $resForm = $newListing.find('.property-listing__reserve-form');
    const $resSuccess = $newListing.find('.property-listing__reserve-success');
    $resForm.hide();
    $resSuccess.hide();
    $resButton.click(() => {
      $resForm.show();
      $resButton.hide();
    });
    $resForm.submit((event) => {
      event.preventDefault();
      const dateInputs = $resForm.find('.property-listing__reserve-date');
      for (const dateInput of dateInputs) {
        if (!$(dateInput).val()) {
          return;
        }
      }
      const formData = $resForm.serialize();
      submitReservation(formData.concat(`&property_id=${id}`))
        .then(() => {
          $resForm.hide();
          $resSuccess.show();
        });
    });
    $propertyListings.append($newListing);
  };
  const clearListings = () => {
    $propertyListings.empty();
  };
  window.propertyListings.clearListings = clearListings;

  const addProperties = (properties, isReservation = false) => {
    clearListings();
    for (const propertyId in properties) {
      const property = properties[propertyId];
      const listing = propertyListing.createListing(property, isReservation);
      addListing(listing, property.id);
    }
  };
  window.propertyListings.addProperties = addProperties;

});