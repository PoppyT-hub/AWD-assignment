$(function() {

    // Add item to favourites
    $('body').on('click', '#addFav', function() {
        var item_id = $(this).data('itemid');

        $.ajax({
            method: "POST",
            url: "/AWD-assignment/ajax/togglefav.php",
            dataType: "json",
            data: { item_id: item_id }
        })
        .done(function(rtnData){
            // Update button to show removal option
            $('#addFav')
                .text('Remove from favourites')
                .attr('id', 'removeFav');
        });
    });

    // Remove item from favourites
    $('body').on('click', '#removeFav', function() {
        var item_id = $(this).data('itemid');

        $.ajax({
            method: "POST",
            url: "/AWD-assignment/ajax/togglefav.php",
            dataType: "json",
            data: { item_id: item_id }
        })
        .done(function(rtnData){
            // Update button to show add option
            $('#removeFav')
                .text('Add to favourites')
                .attr('id', 'addFav');
        });
    });

});
