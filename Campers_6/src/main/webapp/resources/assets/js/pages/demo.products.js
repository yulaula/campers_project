$(document).ready(function() {
    "use strict";
    $("#products-datatable").DataTable({
        language: { paginate: { previous: "<i class='mdi mdi-chevron-left'>", next: "<i class='mdi mdi-chevron-right'>" }, info: "Showing products _START_ to _END_ of _TOTAL_", lengthMenu: '<select class=\'custom-select custom-select-sm ml-1 mr-1\'><option value="5">5</option><option value="10">10</option><option value="20">20</option><option value="-1">All</option></select> 개씩 보기' },
        pageLength: 20,
        columns: [{ orderable: !1, targets: 0, render: function(e, o, t, l) { return "display" === o && (e = '<div class="custom-control custom-checkbox"><input type="checkbox" class="custom-control-input dt-checkboxes"><label class="custom-control-label">&nbsp;</label></div>'), e }, checkboxes: { selectRow: !0, selectAllRender: '<div class="custom-control custom-checkbox"><input type="checkbox" class="custom-control-input dt-checkboxes"><label class="custom-control-label">&nbsp;</label></div>' } }, { orderable: !0 }, { orderable: !0 }, { orderable: !0 }, { orderable: !0 }, { orderable: !0 }, { orderable: !0 }, { orderable: !1 }],
        select: { style: "multi" },
        order: [
            [1, "asc"]
        ],
        drawCallback: function() { $(".dataTables_paginate > .pagination").addClass("pagination-rounded") }
    })
});