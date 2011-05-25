#!/usr/bin/perl
#
# FixMyStreet:Map::Tilma::1_10k_OL
# Using tilma.mysociety.org with OpenLayers
#
# Copyright (c) 2010 UK Citizens Online Democracy. All rights reserved.
# Email: matthew@mysociety.org; WWW: http://www.mysociety.org/

package FixMyStreet::Map::Tilma::OL::1_10k;
use base 'FixMyStreet::Map::Tilma::OpenLayers';

use strict;

sub tile_width   { return 254; }
sub tif_size_m   { return 5000; }
sub tif_size_px  { return 7874; }
sub scale_factor { return tif_size_m() / (tif_size_px() / tile_width()); }
sub tile_type    { return '10k-full'; }

sub copyright {
    return _('&copy; Crown copyright. All rights reserved. Ministry of Justice 100037819&nbsp;2008.');
}

sub watermark {
    return 1;
}

1;
