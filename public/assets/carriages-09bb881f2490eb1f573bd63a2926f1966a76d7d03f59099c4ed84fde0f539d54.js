function renderPartial() {
    var elements = ['CoupeCarriage', 'EconomyCarriage', 'SoftSeatsCarriage', 'LuxeCarriage'];
    var x = document.getElementById("carriage_type").value;
    
    document.getElementById(x).style.visibility = 'visible';
    document.getElementById(x).style.display = 'unset';
    
    elements = elements.filter(val => val !== x);
    
    elements.forEach(function(entry) {
         document.getElementById(entry).style.visibility = 'hidden';
         document.getElementById(entry).style.display = 'none';
     });
   }
    
;
