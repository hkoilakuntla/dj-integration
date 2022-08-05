<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Survey Dashboard</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Anyar - v4.7.1
  * Template URL: https://bootstrapmade.com/anyar-free-multipurpose-one-page-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
    <main id="main">
        <div class="container">
            <h2 class="text-center my-3 letterpress">Survey Dashboard</h2>
            <div class="line"></div>
            <table id="example" class="table table-striped table-bordered card-1" style="width:100%">
                <thead>
                    <tr>
                        <th>S.NO</th>
                        <th>Survey Name</th>
                        <th>Created_By</th>
                        <th>Survey Count</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ( $surveys as $survey )          
                    <tr>
                       
                        <td  data-bs-toggle="modal" data-bs-target="#surveyModal" onclick="surveydetails({{$survey->survey_id}})">{{$survey->survey_id}}</td>
                        <td>{{$survey->survey_name}}</td>                        
                        <td>{{$survey->user->user_name}}</td> 
                        <?php 
                            $surveycount = sizeof(explode(',', $survey->surveyPublish));                            
                        ?>                       
                        <td>{{$surveycount}}</td>
                        <td><a href="{{route('survey_download',$survey->survey_id)}}"><img src="assets/images/dwl.png" style="width: 40px"></a></td>                     
                    </tr>
                    @endforeach                    
                </tbody>                
            </table>
            <!-- Modal -->
            <div class="modal fade" id="surveyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                    <h5 class="modal-title " id="exampleModalLabel" style="text-align:center;">Survey Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" id="allsurveys">          
                    </div>
                </div>
                </div>
            </div>
        </div>
    </main>
    <!-- End #main -->
    <!-- Modal -->


    <!-- Vendor JS Files -->
    <script src="assets/js/jquery-3.5.1.js"></script>
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/dataTables.bootstrap4.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
        function surveydetails($sid){
            $.ajax(
            {
                url: "{{route('survey_dashboard_details')}}",
                type:"get",
                data : {sid :$sid},
                success:function(html){
                    $('#allsurveys').empty();
			        $('#allsurveys').append(html)
                }
            });
        }        
    </script>
</body>

</html>