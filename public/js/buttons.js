function incrementViews(v_id) {
    alert("here");
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $.ajax({
        type: 'POST',
        url: '/count',
        data: {
            v_id: v_id,
        },
        success: function (data) {
            alert(data);
        }
    });
}

function likeVideo(v_id, u_id) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $.ajax({
        type: 'POST',
        url: '/myvideos',
        data: {
            v_id: v_id,
            u_id: u_id,
            like: true
        },
        success: function () {
            let dislike_id = '#dislike_' + v_id;
            let like_id = '#like_' + v_id;
            $(like_id).css({"border": "1px solid green"});
            $(dislike_id).css({"border": "inherit"});
        }
    });
}


function dislikeVideo(v_id, u_id) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $.ajax({
        type: 'POST',
        url: '/myvideos',
        data: {
            v_id: v_id,
            u_id: u_id,
            dislike: true
        },
        success: function () {
            let id = '#dislike_' + v_id;
            let like_id = '#like_' + v_id;
            $(id).css({"border": "1px solid dark-red"});
            $(like_id).css({"border": "inherit"});
            // alert("Disliked");
        }
    });
}


function saveVideo(v_id, u_id) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $.ajax({
        type: 'POST',
        url: '/myvideos',
        data: {
            v_id: v_id,
            u_id: u_id,
            save: true
        },
        success: function () {
            let id = '#save_' + v_id;
            $(id).css({"border": "1px solid blue"});
        }
    });
}