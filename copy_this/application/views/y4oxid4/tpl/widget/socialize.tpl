[{*
#########################################################################
#	$Id: 81c363a219c6f72ea332813d3eb835d9b943a34e $
#	Project:	YAML4 OXID eSales 4 Template 4.8.x
#	ProjectId:	oxYaml 
#	Copyright: 	Rene Ettling (r.ettling@eshop-source.com)
#				(http://www.eshop-source.com)
#				Some parts based on YAML4, Copyright 2005-2012, Dirk Jesse
#
#	Lizenz:		CC BY 3.0
#	Deutsch:	http://creativecommons.org/licenses/by/3.0/de/
#	Schweiz:	http://creativecommons.org/licenses/by/3.0/ch/
#	Englisch:	http://creativecommons.org/licenses/by/3.0/de/deed.en
#
#########################################################################
*}]
[{capture assign=socialize}]
[{literal}]
$('#social_details').socialSharePrivacy({
    services : {
        facebook : {
            'perma_option'  : 'off',
            [{/literal}]
            'dummy_img' : '[{$oViewConf->getImageUrl()}]dummy_facebook.png'
            [{literal}]
        }, 
        twitter : {
            'perma_option' : 'off',
            [{/literal}]
            'dummy_img' : '[{$oViewConf->getImageUrl()}]dummy_twitter.png'
            [{literal}]
        },
        gplus : {
            'perma_option' : 'off',
            [{/literal}]
            'dummy_img' : '[{$oViewConf->getImageUrl()}]dummy_gplus.png'
            [{literal}]
        }
    },
    [{/literal}]
    'css_path' : '[{ $oViewConf->getResourceUrl() }]css/socialshareprivacy.css'
    [{literal}]
});
[{/literal}]
[{literal}]
$('#social_footer').socialSharePrivacy({
    services : {
        facebook : {
            'perma_option'  : 'off',
            [{/literal}]
            'dummy_img' : '[{$oViewConf->getImageUrl()}]dummy_facebook.png'
            [{literal}]
        }, 
        twitter : {
            'perma_option' : 'off',
            [{/literal}]
            'dummy_img' : '[{$oViewConf->getImageUrl()}]dummy_twitter.png'
            [{literal}]
        },
        gplus : {
            'perma_option' : 'off',
            [{/literal}]
            'dummy_img' : '[{$oViewConf->getImageUrl()}]dummy_gplus.png'
            [{literal}]
        }
    },
    [{/literal}]
    'css_path' : '[{ $oViewConf->getResourceUrl() }]css/socialshareprivacy.css'
    [{literal}]
});
[{/literal}]

[{/capture}]
[{oxscript add=$socialize}]