@php
    $mnum = explode(',',$survey->surveyPublish_to->published_to);
@endphp
<table id="example" class="table table-striped table-bordered card-1" style="width:100%">
    <thead>
        <tr>
            <th>Name</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>        
        @foreach ($mnum as $item)
        <tr>
            <td>{{$item}}</td>
            <td>{{in_array($item,$mobile->toArray()) ? 'Survey Responded' : 'Survey Not Responed'}}</td>
        </tr>
        @endforeach
    </tbody>                           
</table>