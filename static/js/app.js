// jQuery(function( $ ) {
//     'use strict';

//     var exampleJson  = {
        
//         renderJson: function(json) {
//             this.renderCollapsedJson(json);
//             this.renderFormatedJson(json);
//             this.renderRawJson(json);
//         },
//         renderCollapsedJson: function(json) {
//             jsonview(json, this.$collapsedJsonTab);
//         },
//         renderFormatedJson: function(json) {
//             this.$formatedJsonTab.html(JSON.stringify(json, null, 4));
//             prettyPrint();
//         },
//         renderRawJson: function(json) {
//             this.$rawJsonTab.text(JSON.stringify(json));
//         },
//         showJsonTab: function (e) {
//             e.preventDefault();
//             $(this).tab('show');
//         },
//         render: function() {
//         }
//     };

//     App.init();

// });

jQuery(function($) {
    'use strict';

    // var exampleJson = request_api.json;

    // jsonview(exampleJson, $('#jsonviews'));

    var responseStr = $.parseJSON($('#responseStr').text());
   jsonview(responseStr, $('#responseStr'));
});