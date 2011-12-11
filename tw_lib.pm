package tw_lib;

use strict;
use warnings;
use utf8;

use Net::Twitter::Lite;

# http://dev.twitter.com/apps/XXXXXX で取得できるやつ
my %CONSUMER_TOKENS = (
    consumer_key    => 'xxxxxxxxxxxxxxxxxxxxxxxxxx',
    consumer_secret => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
);

# http://dev.twitter.com/apps/XXXXXX/my_token で取得できるやつ
my $ACCESS_TOKEN        = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
my $ACCESS_TOKEN_SECRET = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';

my $tw = Net::Twitter::Lite->new(%CONSUMER_TOKENS);

# トークンをセットする
$tw->access_token($ACCESS_TOKEN);
$tw->access_token_secret($ACCESS_TOKEN_SECRET);

#投稿
sub up{
  $tw->update({status => shift});
}

1;
