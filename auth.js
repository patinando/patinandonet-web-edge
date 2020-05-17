function introspectAccessToken(r) {
    r.subrequest("/_oauth2_send_request",
                 function(reply) {
                     if (reply.status == 200) {
                         r.headersOut['AUTHORIZATION'] = 'Bearer ' + reply.responseBody
                         r.status = 204;
                         r.sendHeader();
                         r.finish();
                     } else {
                         r.return(401);
                     }
                 }
                );
}
