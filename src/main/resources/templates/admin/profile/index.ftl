<#include "../../layouts/admin.ftl"/>
<@admin title="Admin Posts">

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            My Profile
        </h1>
        <ol class="breadcrumb">
            <li><a href="/eyin"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">My profile</li>
        </ol>
        <br>
        <#include "../../partials/alerts.ftl"/>
    </section>

    <!-- Main content -->
    <section class="content">

        <div class="row">
            <div class="col-md-3">

                <!-- Profile Image -->
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <img id="profilePicImg" class="profile-user-img img-responsive img-circle"
                            <#if (user.profilePic??)>  src='/files/${user.profilePic}' <#else> src="<@asset url='admin/images/user.png'/>" </#if>  alt="User profile picture">
                        <input style="display:none;" type="file" name="file" id="profilePic">
                        <div id="profilePicBtDiv" style="display: none;">
                            <br>
                            <button id="profilePicBt" class="btn btn-sm btn-primary"><span class="fa fa-check"></span> </button>
                            <button onclick="javascript:window.location.reload();" class="btn btn-sm btn-danger"><span class="fa fa-undo"></span></button>
                        </div>
                        <h3 class="profile-username text-center">
                        ${user.name}
                            <br>
                            <small>${user.username}</small>
                        </h3>
                        <p class="text-muted text-center">${user.email}</p>

                        <p class="text-muted text-center">${user.roleId}</p>

                        <hr>
                        <p class="text-muted text-center">${(user.bio)!"Add a bio/status in the settings tab"}</p>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->


            </div>
            <!-- /.col -->
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li><a href="#articles" data-toggle="tab">Articles</a></li>
                        <li><a href="#settings" data-toggle="tab">Settings</a></li>
                    </ul>
                    <div class="tab-content">

                        <div class="active tab-pane" id="articles">
                            <!-- The timeline -->
                            <ul class="timeline timeline-inverse">
                                <!-- timeline time label -->
                                <li class="time-label">
                        <span class="bg-red">
                          10 Feb. 2014
                        </span>
                                </li>
                                <!-- /.timeline-label -->
                                <!-- timeline item -->
                                <li>
                                    <i class="fa fa-envelope bg-blue"></i>

                                    <div class="timeline-item">
                                        <span class="time"><i class="fa fa-clock-o"></i> 12:05</span>

                                        <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

                                        <div class="timeline-body">
                                            Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                                            weebly ning heekya handango imeem plugg dopplr jibjab, movity
                                            jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                                            quora plaxo ideeli hulu weebly balihoo...
                                        </div>
                                        <div class="timeline-footer">
                                            <a class="btn btn-primary btn-xs">Read more</a>
                                            <a class="btn btn-danger btn-xs">Delete</a>
                                        </div>
                                    </div>
                                </li>
                                <!-- END timeline item -->
                                <!-- timeline item -->
                                <li>
                                    <i class="fa fa-user bg-aqua"></i>

                                    <div class="timeline-item">
                                        <span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span>

                                        <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request
                                        </h3>
                                    </div>
                                </li>
                                <!-- END timeline item -->
                                <!-- timeline item -->
                                <li>
                                    <i class="fa fa-comments bg-yellow"></i>

                                    <div class="timeline-item">
                                        <span class="time"><i class="fa fa-clock-o"></i> 27 mins ago</span>

                                        <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>

                                        <div class="timeline-body">
                                            Take me to your leader!
                                            Switzerland is small and neutral!
                                            We are more like Germany, ambitious and misunderstood!
                                        </div>
                                        <div class="timeline-footer">
                                            <a class="btn btn-warning btn-flat btn-xs">View comment</a>
                                        </div>
                                    </div>
                                </li>
                                <!-- END timeline item -->
                                <!-- timeline time label -->
                                <li class="time-label">
                        <span class="bg-green">
                          3 Jan. 2014
                        </span>
                                </li>
                                <!-- /.timeline-label -->
                                <!-- timeline item -->
                                <li>
                                    <i class="fa fa-camera bg-purple"></i>

                                    <div class="timeline-item">
                                        <span class="time"><i class="fa fa-clock-o"></i> 2 days ago</span>

                                        <h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>

                                        <div class="timeline-body">
                                            <img src="http://placehold.it/150x100" alt="..." class="margin">
                                            <img src="http://placehold.it/150x100" alt="..." class="margin">
                                            <img src="http://placehold.it/150x100" alt="..." class="margin">
                                            <img src="http://placehold.it/150x100" alt="..." class="margin">
                                        </div>
                                    </div>
                                </li>
                                <!-- END timeline item -->
                                <li>
                                    <i class="fa fa-clock-o bg-gray"></i>
                                </li>
                            </ul>
                        </div>
                        <!-- /.tab-pane -->

                        <div class="tab-pane" id="settings">
                            <form class="form-horizontal" method="POST" id="updateForm" action="/eyin/users/profile">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <input type="hidden" name="id" value="${user.id}" />
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">Full Name</label>

                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="name" name="name" value="${user.name}" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="username" class="col-sm-2 control-label">Username</label>

                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="username" name="username" value="${user.username}" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">Email</label>

                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="email" name="email" value="${user.email}" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="bio" class="col-sm-2 control-label">Bio</label>

                                    <div class="col-sm-10">
                                        <textarea class="form-control" id="bio" name="bio">${(user.bio)!""}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-danger">Save Changes</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /.tab-pane -->
                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script>
    $(document).ready(function () {

        $("#profilePic").on("change", function(){

            var file = document.getElementById("profilePic").files[0];

            if(!file) { return; }

            if(file.type.indexOf("image") < 0) { //not an image
                swal("Oops", "Only Image files are supported", "error");
                return false;
            }

            if(file.size > 9000000) { //max 9mb
                swal("Oops", "Image File Too Large, max is 9MB", "error");
                return false;
            }


            //this will read the file content once the pix has been loaded
            var reader = new FileReader();

            //after reading it, use the result as the src target
            reader.onload = function(e) {
                $("#profilePicImg").attr("src", e.target.result);
            }

            reader.readAsDataURL(file);

            $("#profilePicBtDiv").show("slow");

        });

        $("#profilePicImg").on("click", function() {
            $("#profilePic").trigger("click");
        });

        function uploadImage() {
            //first uplaod the cover_pic
            var formData = new FormData();
            formData.append('file', document.getElementById("profilePic").files[0]);
            formData.append("${_csrf.parameterName}", "${_csrf.token}");
            $.ajax({
                url: "/eyin/users/profile/pic",
                method: "post",
                data: formData,
                processData: false,
                contentType: false,
                beforeSend: function() {
                  displayWait(".box-profile");
                },
                success: function(data) {
                     swal("Profile Pic updated successfully");
                    $("#profilePicBtDiv").hide();
                    cancelWait(".box-profile");
                },
                error: function (error) {
                    swal("error uploading file ");
                    console.log("error \n" + JSON.stringify(error));
                    cancelWait(".box-profile");
                    return false;
                }
            });
        }

        $("#profilePicBt").on("click", function () {
           uploadImage();
        });


    });
</script>
</@admin>