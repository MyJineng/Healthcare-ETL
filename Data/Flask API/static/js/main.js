$(document).ready(function() {
    $('#dataset1, #dataset2').change(function() {
        var dataset1 = $('#dataset1').val();
        var dataset2 = $('#dataset2').val();
        var dataset = dataset1 !== 'none' ? dataset1 : dataset2;
        if (dataset && dataset !== 'none') {
            $.ajax({
                url: '/columns',
                method: 'GET',
                data: { dataset: dataset },
                success: function(response) {
                    var x_col_select = $('#x_col');
                    var y_col_select = $('#y_col');
                    x_col_select.empty();
                    y_col_select.empty();
                    $.each(response.columns, function(index, column) {
                        x_col_select.append('<option value="' + column + '">' + column + '</option>');
                        y_col_select.append('<option value="' + column + '">' + column + '</option>');
                    });
                }
            });
        }
    });

    $('#plot-form').submit(function(event) {
        event.preventDefault();
        $.ajax({
            url: '/plot',
            method: 'POST',
            data: $(this).serialize(),
            success: function(response) {
                $('#plot-image').attr('src', response.image);
            }
        });
    });
});