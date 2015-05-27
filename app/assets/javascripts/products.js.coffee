# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ -> 
  product_table = $('#product_table').DataTable 
    processing: true 
    serverSide: true 
    ajax: 
      url: '/products_ajax/datatable_ajax' 
      data: (d) -> 
        d.product_code = $('#product_code').val() 
        d.product_name = $('#product_name').val() 
        return 
    columns: [ 
      { width: "0%", className: "dont_show", searchable: false, orderable: false } 
      { width: "15%" } 
      { width: "35%", className: "row_config" } 
      { width: "null", className: "row_config", searchable: false, orderable: false } 
      { width: "null", className: "row_config", searchable: false, orderable: false } 
      { width: "5%", className: "center", searchable: false, orderable: false } 
      { width: "5%", className: "center", searchable: false, orderable: false } 
      { width: "5%", className: "center", searchable: false, orderable: false } 
    ] 
    order: [ [1,'asc'] ] 
