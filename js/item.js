$(document).ready(function () {

    // Remove item from playlist
    $("#removeFromPlaylist").on("click", function () {
        const itemId = $(this).data("itemid");

        $.ajax({
            url: "/AWD-assignment/ajax/toggleplaylist.php",
            type: "POST",
            data: { item_id: itemId },
            success: function (response) {
                console.log(response);
                // Reload page to update playlist status
                location.reload();
            },
            error: function () {
                alert("Failed to remove from playlist.");
            }
        });
    });

});
