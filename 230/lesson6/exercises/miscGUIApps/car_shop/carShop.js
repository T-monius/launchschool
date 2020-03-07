// carShop.js

let CarGallery = (function() {
  let cars = [
    { make: 'Honda', image: 'images/honda-accord-2005.jpg', model: 'Accord', year: 2005, price: 7000 },
    { make: 'Honda', image: 'images/honda-accord-2008.jpg', model: 'Accord', year: 2008, price: 11000 },
    { make: 'Toyota', image: 'images/toyota-camry-2009.jpg', model: 'Camry', year: 2009, price: 12500 },
    { make: 'Toyota', image: 'images/toyota-corrolla-2016.jpg', model: 'Corolla', year: 2016, price: 15000 },
    { make: 'Suzuki', image: 'images/suzuki-swift-2014.jpg', model: 'Swift', year: 2014, price: 9000 },
    { make: 'Audi', image: 'images/audi-a4-2013.jpg', model: 'A4', year: 2013, price: 25000 },
    { make: 'Audi', image: 'images/audi-a4-2013.jpg', model: 'A4', year: 2013, price: 26000 },
  ];

  return {
    init: function() {
      this.initializeTemplates();
      this.initializeTemplateHelpers();
      this.populateCarGallery();
      this.populateFilterForm();
      this.setFilterHandler();

      return this;
    },
    initializeTemplates: function() {
      this.carGalleryTemplate = Handlebars.compile($('#car_gallery_template').html());
      this.carInfo = Handlebars.compile($('#car_info').html());
      this.filterFormTemplate = Handlebars.compile($('#filter_form').html());
      this.optionListTemplate = Handlebars.compile($('#option_list').html());
      Handlebars.registerPartial('car_info', $('#car_info').html());
      Handlebars.registerPartial('option_list', $('#option_list').html());
    },
    populateCarGallery: function() {
      $('.car_gallery').append(this.carGalleryTemplate({ cars: cars }));
    },
    rePopulateGallery: function(filteredList) {
      $('.car_gallery').find('ul').remove();
      $('.car_gallery').append(this.carGalleryTemplate({ cars: filteredList }));
    },
    populateFilterForm: function() {
      $('main header').append(this.filterFormTemplate(this.retrieveInfoFields()));
    },
    retrieveInfoFields: function() {
      let infoFields = {};
      Object.keys(cars[0]).forEach( (infoField) => {
        cars.forEach( (car) => {
          if (!infoFields[infoField]) {
            if (infoField === 'make' || infoField === 'model') {
              infoFields[infoField] = ['All'];
            } else {
              infoFields[infoField] = ['Any'];
            }
          }
         if (!infoFields[infoField].includes(car[infoField])) {
            infoFields[infoField].push(car[infoField]);
          }
        });
      });
      return infoFields;
    },
    setFilterHandler: function() {
      let $form = $('header form');
      let filteredList;
      let self = this;

      $form.on('submit', function(submitEvent) {
        submitEvent.preventDefault();

        filteredList = self.filterCars($form);
        self.rePopulateGallery(filteredList);
        $form.trigger('reset');
      });
    },
    filterCars: function($form) {
      let filteredList = cars;
      $form.serializeArray()
                 .forEach( (nameValuePair) => {
                    switch(nameValuePair.name) {
                      case 'make':
                        if (nameValuePair.value !== 'All') {
                          filteredList = filteredList.filter((car) => {
                            return car.make === nameValuePair.value;
                          });
                        }
                        break;
                      case 'model':
                        if (nameValuePair.value !== 'All') {
                          filteredList = filteredList.filter((car) => {
                            return car.model === nameValuePair.value;
                          });
                        }
                        break;
                      case 'price':
                        if (nameValuePair.value !== 'Any') {
                          filteredList = filteredList.filter((car) => {
                            return car.price === Number(nameValuePair.value);
                          });
                        }
                        break;
                      case 'year':
                        if (nameValuePair.value !== 'Any') {
                          filteredList = filteredList.filter((car) => {
                            return car.year === Number(nameValuePair.value);
                          });
                        }
                        break;
                    }
                 });
      return filteredList;
    },
    isDefault: function(infoField) {
      return infoField === 'Any' || infoField === 'All';
    },
    initializeTemplateHelpers: function() {
      Handlebars.registerHelper('isDefault', this.isDefault);
    },
  };
})();

$(CarGallery.init.bind(CarGallery));
