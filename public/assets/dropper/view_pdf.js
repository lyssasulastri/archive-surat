

// $("#modal-viewdocument").on("click", function(event){
//     badge         = $("#modal-viewdocument");
//     suratid       = badge.attr("surat-id");
//     name_document = badge.attr("name-document");

//     urlpath = "/assets/document/". $name_document;

//     pdfjsLib.getDocument(urlpath).then(function(pdf) {
//         // Tentukan skala tampilan halaman
//         var scale = 1.5;

//         // Tentukan konteks render untuk elemen canvas
//         var canvas = $("#view-suratmasuk-". suratid);
//         var context = canvas.getContext('2d');

//         // Tentukan ukuran elemen canvas sesuai dengan ukuran halaman PDF
//         var viewport = page.getViewport(scale);
//         canvas.width = viewport.width;
//         canvas.height = viewport.height;

//         // Render halaman PDF ke dalam elemen canvas
//         page.render({
//             canvasContext: context,
//             viewport: viewport
//         });
//     });

// });