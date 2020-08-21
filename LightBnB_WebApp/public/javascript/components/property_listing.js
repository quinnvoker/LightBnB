$(() => {
  window.propertyListing = {};
  
  const createListing = (property, isReservation) => {
    return `
    <article class="property-listing">
        <section class="property-listing__preview-image">
          <img src="${property.thumbnail_photo_url}" alt="house">
        </section>
        <section class="property-listing__details">
          <h3 class="property-listing__title">${property.title}</h3>
          <ul class="property-listing__details">
            <li>number_of_bedrooms: ${property.number_of_bedrooms}</li>
            <li>number_of_bathrooms: ${property.number_of_bathrooms}</li>
            <li>parking_spaces: ${property.parking_spaces}</li>
          </ul>
          ${isReservation ? 
            `<p>${moment(property.start_date).format('ll')} - ${moment(property.end_date).format('ll')}</p>` 
            : `<button class="property-listing__reserve">Make Reservation</button>`}
            <form class="property-listing__reserve-form">
            <label for="start_date">Start:</label>
            <input class="property-listing__reserve-date" name="start_date" type="date">
            <label for="end_date">End:</label>
            <input class="property-listing__reserve-date" name="end_date" type="date">
            <input type="submit">
            </form>
            <strong class="property-listing__reserve-success">RESERVATION SUCCESSFUL</strong>
          <footer class="property-listing__footer">
            <div class="property-listing__rating">${Math.round(property.average_rating * 100) / 100}/5 stars</div>
            <div class="property-listing__price">$${property.cost_per_night/100.0}/night</div>
          </footer>
        </section>
      </article>
    `
  }

  window.propertyListing.createListing = createListing;

});