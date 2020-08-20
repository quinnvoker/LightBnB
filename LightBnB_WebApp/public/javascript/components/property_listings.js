$(() => {

  const $propertyListings = $(`
  <section class="property-listings" id="property-listings">
      <p>Loading...</p>
    </section>
  `);
  window.$propertyListings = $propertyListings;

  window.propertyListings = {};

  const addListing = (listing) => {
    const $newListing = $(listing);
    const $resButton = $newListing.find('.property-listing__reserve');
    const $resForm = $newListing.find('.property-listing__reserve-form');
    $resForm.hide();
    $resButton.click(() => $resForm.show());
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
      addListing(listing);
    }
  };
  window.propertyListings.addProperties = addProperties;

});