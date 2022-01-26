<!-- SCRIPTS -->
<!-- JQuery -->
<?= $this->asset->js('themes/jquery-3.4.1.min.js'); ?>
<!-- Bootstrap core JavaScript -->
<?= $this->asset->js('themes/bootstrap.js'); ?>
<!-- MDB core JavaScript -->
<?= $this->asset->js('themes/mdb.min.js'); ?>
<!-- Bootstrap tooltips -->
<?= $this->asset->js('themes/popper.min.js'); ?>
<!-- jQuery Custom Scroller CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
<!-- Datatables JS -->
<?= $this->asset->js('addons/datatables.min.js'); ?>
<?= $this->asset->js('addons/datatables-select.min.js'); ?>
<!-- NProgress JS -->
<?= $this->asset->js('plugins/nprogress/nprogress.js'); ?>
<!-- Select2 JS -->
<?= $this->asset->js('plugins/select2/dist/js/select2.min.js'); ?>
<!-- Sweet Alert -->
<?= $this->asset->js('plugins/sweetalert2/dist/sweetalert2.min.js'); ?>
<!-- Waitme JS -->
<?= $this->asset->js('plugins/waitme/waitMe.js'); ?>
<!-- Our Custom JS -->
<?= $this->asset->js('themes/scripts.js'); ?>
<!-- Initializations -->
<script>
    $(function(){
        $('#footer').css('height', $(window).height() - $('html').height() +'px');
    });
    // SideNav Initialization
    $(".button-collapse").sideNav();

    var container = document.querySelector('.custom-scrollbar');
    var ps = new PerfectScrollbar(container, {
        wheelSpeed: 2,
        wheelPropagation: true,
        minScrollbarLength: 20
    });

    // Data Picker Initialization

    $('.datepicker').pickadate({
        monthsFull: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Augustus', 'September', 'Oktober', 'November', 'Desember'],
        format: 'dd mmmm yyyy',
        formatSubmit:'yyyy/mm/dd'
    });

    $('.datepickermonth').pickadate({
        selectYears: true,
selectMonths: true
        // monthsFull: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Augustus', 'September', 'Oktober', 'November', 'Desember'],
        // format: 'dd mmmm yyyy',
        // formatSubmit:'yyyy/mm/dd'
    });

    // Material Select Initialization
    // $(document).ready(function() {
    //     $('.mdb-select').material_select();
    // });

    // Tooltips Initialization
    $(function() {
        $('[data-toggle="tooltip"]').tooltip()
    })

    // Material Select Initialization
    $(document).ready(function () {
      $('.mdb-select').materialSelect();
      $('.mdb-select2').materialSelect();
    });
</script>

<!-- Charts -->
<script>
    // Small chart
    // $(function() {
    //     $('.min-chart#chart-sales').easyPieChart({
    //         barColor: "#FF5252",
    //         onStep: function(from, to, percent) {
    //             $(this.el).find('.percent').text(Math.round(percent));
    //         }
    //     });
    // });

    // Main chart
    // var ctxL = document.getElementById("lineChart").getContext('2d');
    // var myLineChart = new Chart(ctxL, {
    //     type: 'line',
    //     data: {
    //         labels: ["January", "February", "March", "April", "May", "June", "July"],
    //         datasets: [{
    //             label: "My First dataset",
    //             fillColor: "#fff",
    //             backgroundColor: 'rgba(255, 255, 255, .3)',
    //             borderColor: 'rgba(255, 255, 255)',
    //             data: [0, 10, 5, 2, 20, 30, 45],
    //         }]
    //     },
    //     options: {
    //         legend: {
    //             labels: {
    //                 fontColor: "#fff",
    //             }
    //         },
    //         scales: {
    //             xAxes: [{
    //                 gridLines: {
    //                     display: true,
    //                     color: "rgba(255,255,255,.25)"
    //                 },
    //                 ticks: {
    //                     fontColor: "#fff",
    //                 },
    //             }],
    //             yAxes: [{
    //                 display: true,
    //                 gridLines: {
    //                     display: true,
    //                     color: "rgba(255,255,255,.25)"
    //                 },
    //                 ticks: {
    //                     fontColor: "#fff",
    //                 },
    //             }],
    //         }
    //     }
    // });

    // $(function() {
    //     $('#dark-mode').on('click', function(e) {

    //         e.preventDefault();
    //         $('h4, button').not('.check').toggleClass('dark-grey-text text-white');
    //         $('.list-panel a').toggleClass('dark-grey-text');
    //         $('.darkmode').toggleClass('lighten-3 text-white');

    //         $('.card').toggleClass('dark-card-admin');
    //         $('body, .navbar').toggleClass('white-skin navy-blue-skin');
    //         $(this).toggleClass('white text-dark btn-outline-black');
    //         $('body').toggleClass('dark-bg-admin');
    //         $('h6, .card, p, td, th, i, li a, h4, input, label').not(
    //             '#slide-out i, #slide-out a, .dropdown-item i, .dropdown-item').toggleClass('text-white');
    //         $('.btn-dash').toggleClass('grey blue').toggleClass('lighten-3 darken-3');
    //         $('.gradient-card-header').toggleClass('white black lighten-4');
    //         $('.list-panel a').toggleClass('navy-blue-bg-a text-white').toggleClass('list-group-border');

    //     });
    // });
</script>
<!-- JS per Page -->
<?= isset($page_js) ? $page_js : ''; ?>