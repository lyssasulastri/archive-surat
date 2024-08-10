$("document").ready(function(){
  $(".modal-viewdocument").click(function(event){
    content_viewpdf      = $(event.target).attr("content-viewpdf");
    content_modal_header = $(event.target).attr("content-modal-header");
    length_pagepdf       = $(event.target).attr("length-pagepdf");
    inputlength_pagepdf  = $(event.target).attr("inputlength-pagepdf");
    total_pagepdf        = $(event.target).attr("total-pagepdf");
    printAllButton       = $(event.target).attr("printAllButton");
    content_modal_body   = $(event.target).attr("content-modal-body");
    content_pdf          = $(event.target).attr("content-pdf");
    viewcontentpdf       = $(event.target).attr("viewcontentpdf");
    iddocument           = $(event.target).attr("iddocument");
  
    var getdocument = $("."+viewcontentpdf).attr("document");

    pdfjsLib.GlobalWorkerOptions.workerSrc = '/vendor/build/pdf.worker.js';
  
    var loadingTask = pdfjsLib.getDocument(getdocument);
  
    // Memeriksa apakah worker sedang berjalan
    const isWorkerEnabled = pdfjsLib.GlobalWorkerOptions.workerSrc !== null;

    if (isWorkerEnabled) {
      console.log('Worker is enabled.');
    } else {
      console.log('Worker is not enabled.');
    }

    loadingTask.promise.then(function(pdf) {
  
      for(let i = 1; i <= pdf._pdfInfo.numPages; i++){
          pdf.getPage(i).then(function(page) {
  
              var parentWidth     = $("."+content_modal_body).width();
              var parentHeight    = $("."+content_modal_body).height();
              var content_loading = $(".content-loading-"+iddocument); 
      
              var pdfWidth  = page.view[2];
              var pdfHeight = page.view[3];
      
              var scale = Math.min(parentWidth / pdfWidth, parentHeight / pdfHeight);
  
              $("."+content_viewpdf).attr("scale", scale);
  
              var crcanvas = document.createElement('canvas');
              crcanvas.id  = 'the-canvas'+ iddocument + i;
              crcanvas.className = "canvasview"+iddocument;
      
              var divView = document.getElementById(content_pdf);
  
              divView.appendChild(crcanvas);
  
              var canvas = document.getElementById('the-canvas'+ iddocument + i);
      
              canvas.width        = pdfWidth * scale;
              canvas.height       = pdfHeight * scale;
              canvas.style.width  = "100%";
              canvas.style.height = pdfHeight * scale;
      
              var context = canvas.getContext('2d');
      
          
              var viewport = page.getViewport({ scale: scale, });
          
              var renderContext = {
                  canvasContext: context,
                  viewport: viewport
              };
          
              var task = page.render(renderContext);

              // Loading Argument
              task.promise.then(function() {
                if(i == pdf._pdfInfo.numPages){

                  content_loading.css("display", "none");
                  $("."+viewcontentpdf).css("display", "block");
  
                  for(let i = 1; i <= pdf._pdfInfo.numPages; i++){
                    setTimeout(function() {
                      $(".canvasview"+ iddocument + ":nth-child(" + i + ")").addClass("animate-in");
                    }, i * 200);
                  }
               
                  var pages = $('.canvasview'+iddocument);
                  $("."+total_pagepdf).html(pages.length);
                }
              });
          });    
      }
    });
  
  
  // Scroll View Number
    $("."+content_modal_body).scroll(function(){
    var pages = $('.canvasview'+iddocument);
    var view = $("."+content_modal_body); 
    var currentPage = 1;
  
    var scrolledPercentage = ((view.scrollTop() / ($(document).height() - view.height())) * 100).toFixed(2);
    var currentViewPage = 1;
  
  
    for (var i = 0; i < pages.length; i++) {
      var pageTop = $(pages[i]).offset().top;
      if (pageTop <= (view.height() / 2)) { // jika setengah bagian atas halaman sudah terlihat
        currentViewPage = i + 1; // maka halaman tersebut adalah halaman yang sedang dilihat
      }
    }
    
  
    if (currentViewPage !== currentPage) { // jika halaman yang sedang dilihat tidak sama dengan halaman sebelumnya
      currentPage = currentViewPage; // maka update nomor halaman
      $("."+inputlength_pagepdf).attr("value", currentPage);
    } else {
      $("."+inputlength_pagepdf).attr("value", 1);
    }
    });
  
  
    // Print PDF
  var printAllButton = document.getElementById(printAllButton);
  printAllButton.addEventListener('click', printAllPages);
  
  function printAllPages(data) {
    var canvases = $('.canvasview'+iddocument);
    var printDoc = document.createElement('div');
    var css = `
      img {
        width: 100%;
        height: auto;
        margin-bottom: 2px;
      }
    `;
  
    var style = document.createElement('style');
    style.appendChild(document.createTextNode(css));
    printDoc.appendChild(style);
  
    var allImagesLoaded = 0;
    for (var i = 0; i < canvases.length; i++) {
      var img = new Image();
      img.onload = function() {
        allImagesLoaded++;
        if (allImagesLoaded == canvases.length) {
          printWindow.print();
        }
      }
      img.src = canvases[i].toDataURL('image/png');
      img.className = 'printed-image'+iddocument;
      printDoc.appendChild(img);
      var printWindow = window.open('', 'Print', 'height=600,width=800');
      printWindow.document.body.appendChild(printDoc);
    }
  
  }
  
  });
});
