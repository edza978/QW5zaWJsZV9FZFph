#!/usr/bin/perl
 
$|=1;
while (&lt;&gt;) {
    @X = split;
        $x = $X[0];
        $_ = $X[1];
 
 if (m/^http:\/\/([0-9.]{4}|.*\.youtube\.com|.*\.googlevideo\.com|.*\.video\.google\.com).*?\&amp;(itag=[0-9]*).*?\&amp;(id=[a-zA-Z0-9]*)/) {
        print $x . "http://video-srv.youtube.com.SQUIDINTERNAL/" . $2 . "&amp;" . $3 . "\n";
 
} else {
        print $x . $_ . "\n";
}
}
