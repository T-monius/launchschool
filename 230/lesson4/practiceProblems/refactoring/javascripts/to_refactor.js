$(function() {
  $("nav a").on("mouseenter", function() {
    // $(this).next("ul").css({
    //   display: "block"
    // });
    if ($(this).next("ul").hasClass("accordion")) {
      $(this).next("ul").removeClass("accordion")
    }
    $(this).next("ul").addClass("opened");
    // if ($(this).next("ul").hasClass("opened")) {
    //   $(this).next("ul").removeClass("opened");
    // } else {
    //   $(this).next("ul").addClass("opened");
    // }
  });

  $("nav").on("mouseleave", function() {
    // $(this).find("ul ul").css({
    //   display: "none"
    // });
    if ($(this).find("ul ul").hasClass("opened")) {
      $(this).find("ul ul").removeClass("opened");
    }
    $(this).find("ul ul").addClass("accordion");
  });

  $(".button").on("click", function(e) {
    e.preventDefault();

    $(this).addClass("clicked");
  });

  $(".toggle").on("click", function(e) {
    e.preventDefault();

    $(this).next(".accordion").hasClass("opened accordion");
    // if ($(this).next(".accordion").hasClass("opened")) {
    //   $(this).next(".accordion").removeClass("opened");
    // }
    // else {
    //   $(this).next(".accordion").addClass("opened");
    // }
  });

  var ccOddAndEvenDigitTotal = function ccOddAndEvenDigitTotal(ccNumber) {
    var oddTotal = 0;
    var evenTotal = 0;

    ccNumber = ccNumber.split("").reverse();
    for (var i = 0, len = ccNumber.length; i < len; i++) {
      if (i % 2 == 1) {
        ccNumber[i] = (+ccNumber[i] * 2) + "";
        if (ccNumber[i].length > 1) {
          ccNumber[i] = +ccNumber[i][0] + +ccNumber[i][1];
        }
        else {
          ccNumber[i] = +ccNumber[i];
        }
        oddTotal += ccNumber[i];
      }
      else {
        evenTotal += +ccNumber[i];
      }
    }

    return [oddTotal, evenTotal];
  };

  $("form").on("submit", function(e) {
    e.preventDefault();
    var cc_number = $(this).find("[type=text]").val(),
        odd_total,
        even_total;

    [odd_total, even_total] = ccOddAndEvenDigitTotal(cc_number);

    if ((odd_total + even_total) % 10 == 0) {
      $(this).find(".success").show();
      $(this).find(".error").hide();
    }
    else {
      $(this).find(".error").show();
      $(this).find(".success").hide();
    }
  });

  $("ul a").on("click", function(e) {
    e.preventDefault();

    var month = $(this).text(),
        $stone = $("#birthstone");

    var monthsAndStones = {
      January: 'garnet',
      February: 'amethyst',
      March: 'bloodstone',
      April: 'diamond',
      May: 'emerald',
      June: 'pearl, moonstone, alexandrite',
      July: 'ruby',
      August: 'peridot',
      September: 'sapphire',
      October: 'opal or tourmaline',
      November: 'topaz or citrine',
      December: 'turquoise, zircon, or tanzanite',
    };

    $stone.text(`Your birthstone is ${monthsAndStones[month]}`);
    // switch (month) {
    //   case "January":
    //     $stone.text("Your birthstone is garnet");
    //     break;
    //   case "February":
    //     $stone.text("Your birthstone is amethyst");
    //     break;
    //   case "March":
    //     $stone.text("Your birthstone is aquamarine or bloodstone");
    //     break;
    //   case "April":
    //     $stone.text("Your birthstone is diamond");
    //     break;
    //   case "May":
    //     $stone.text("Your birthstone is emerald");
    //     break;
    //   case "June":
    //     $stone.text("Your birthstone is pearl, moonstone, or alexandrite");
    //     break;
    //   case "July":
    //     $stone.text("Your birthstone is ruby");
    //     break;
    //   case "August":
    //     $stone.text("Your birthstone is peridot");
    //     break;
    //   case "September":
    //     $stone.text("Your birthstone is sapphire");
    //     break;
    //   case "October":
    //     $stone.text("Your birthstone is opal or tourmaline");
    //     break;
    //   case "November":
    //     $stone.text("Your birthstone is topaz or citrine");
    //     break;
    //   case "December":
    //     $stone.text("Your birthstone is turquoise, zircon, or tanzanite");
    //     break;
    // }
  });
});
