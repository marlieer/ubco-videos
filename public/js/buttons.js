$(document).ready(function()
{
    function ajaxCall(type, url, data, success) {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $.ajax({
            type: type,
            url: url,
            data: data,
            success: success,
        });
    }


    function onYouTubePlayerReady(){
        alert("ready youtube");
    }

    $(".media-body").click(function(e) {
        alert("here");
        let type = 'POST';
        let url = '/count';
        let data = {
            v_id: v_id,
        };

        // ajaxCall(type, url, data);
    });


    $(".save").click(function(e) {
        let user = e.target.attributes['user'].value;
        let video = e.target.attributes['video'].value;
        let type = 'POST';
        let url = '/myvideos/';
        let data = {
            v_id: video,
            u_id: user,
            save: true
        };
        let success = function () {
            let id = '#save_' + video;
            $(id).addClass("highlight-button");
        };

        ajaxCall(type, url, data, success);
    });


    $(".like").click(function(e) {
        let user = e.target.attributes['user'].value;
        let video = e.target.attributes['video'].value;
        let type = 'POST';
        let url = '/myvideos/';
        let data = {
            v_id: video,
            u_id: user,
            like: true
        };
        let success = function () {
            let dislike_id = '#dislike_' + video;
            let like_id = '#like_' + video;
            $(like_id).addClass('highlight-button');
            $(dislike_id).removeClass('highlight-button');
        };

        ajaxCall(type, url, data, success);
    });


    $(".dislike").click(function(e) {
        let user = e.target.attributes['user'].value;
        let video = e.target.attributes['video'].value;
        let type = 'POST';
        let url = '/myvideos/';
        let data = {
            v_id: video,
            u_id: user,
            dislike: true
        };
        let success = function () {
            let id = '#dislike_' + video;
            let like_id = '#like_' + video;
            $(id).addClass('highlight-button');
            $(like_id).removeClass('highlight-button');
        };

        ajaxCall(type, url, data, success);
    });

    // $("#sort-by-recommended").click(function() {
    //     let topic = $("#topic").html();
    //     let type = 'GET';
    //     let url = '/videosbytopic/' + topic;
    //     let data = {
    //         topic: topic,
    //         sortBy: 'rank'
    //     };
    //
    //     ajaxCall(type, url, data);
    //
    // });

    // $("#sort-by-views").click(function() {
    //     let topic = $("#topic").html();
    //     let type = 'GET';
    //     let url = '/';
    //     let data = {
    //         topic: topic,
    //         sortBy: 'views'
    //     };
    //
    //     ajaxCall(type, url, data);
    //
    // });
});
