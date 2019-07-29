Return-Path: <usb-storage+bncBCTPRFE7TUKRBUVK7PUQKGQEHMVC3MQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 8198878A42
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 13:15:31 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id e9sf26934461edv.18
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 04:15:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564398931; cv=pass;
        d=google.com; s=arc-20160816;
        b=EtiZibHlHmyhFCjhsqsVeo+8mBNp8DmLo8Z/JOgH9i6nn127SvLCf4rMs8DQfGUhVi
         bIACaVoKGfNfdEFNGFr1cm5iQAAm1pZJiipZbhn5jCF1LEK/jxqXsNduSGWjz4zH8GFv
         U2Xzr2boY6gCid3mKxZ08e0WXN1F4RJ1mbIhR1PjnTOuDmI3TurMnWSVWRGdT3UCTeEa
         wplMRiF3DcMf5RqIFREKAdRNR3FWJm1Zf80aUXez0bIY32cJ3nYfqs7r77oWf86/0zPx
         g1zHcGs+8+rNnAxOVjMurAoIdcNpvTbvj0bzBB1qC7CIvOULlB7s/6VpE7+/WaqMb5oc
         NUOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=u7JD0c2HfElaoerSchcCQGt5B39Yv1YhSJeiZleK80E=;
        b=iC0bNBAeD0Wg8EUR38kCJM5PI+V8V7RBpWUm14yNOKtZyl6Bdflr2yjpGQMa+glcL8
         tcFNAB07fMjF9FkUP6d+rReTREFQCr3M0Vbe31PGns1DoN47VTsqXDAmZ5jWWCdtyz5M
         CnCopqEFwPtOnFKeIq//0Kl+apbzVLBTpuVQV3wzKem2sR71VBLiCAciwx7EllePZVrt
         o/CP5uVTEWFXarkkg4YjAzqDG5tMChjJxa4MhquzvLnlVsnSEBoRgsXDUXJqxByXQFhS
         RCNEeKMz7pAVrJWwIVEgKYaMD9Xni3mSCcskTonUKDZfgu3PRGzO8/fZ97iLciI9UvjT
         K1fw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7JD0c2HfElaoerSchcCQGt5B39Yv1YhSJeiZleK80E=;
        b=EWEMzrLkWBHvbP2Gdir139QWjzKCqKhIT1jt857Q5fkmFvszBl3pQ+pog0WI2xvM6U
         M1woYfQjYngwZ4R2yA/cUp9X/BwJCfB+WjFsKKRVuq/7I1e+hCEYckF8bB4YiGCAl88j
         Z0O9LSzaps+iyL/ij0C+DsiplwF8bG6Fm+NQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7JD0c2HfElaoerSchcCQGt5B39Yv1YhSJeiZleK80E=;
        b=iZSesy+uIS2VBwAbh1VC8xxRZ6VgM6FcsbHgai0oYYHEzZZ+RNdQDLwrsdk10/uGf0
         i0vWo+UkYT+e4rzNPUqg7DnhEreUUiVb2iOX+B/Ts+Jg4Oqxoc+8ligeYsuZ3oq4tFn6
         f9mSavk5Dzo5EDLTWuDX/onG5pUysLNBct9kfRhpcfS01CoNkd9oRMfjcCwTWR26zUlW
         QTM7fkLveIgGiEaJZcKIMukMbM8P+5F4kL2Jr3dPMM3rWR/g5vr6nC2Ov9WeEzbVKjmb
         653rUmp45xU90M6p83JSCc8C4YPXeYKdFDSGawTdGeSWjO7jAT1tK1H4UJYSvEaLo2RB
         sDVA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXGvh8TTKFIQbu8oXjOL37yBYmLDHzPBIXkxGnEuEqtcofE1aQ1
	0UtIg2tFUZ3M2k1JMckHbf0=
X-Google-Smtp-Source: APXvYqzvr2SAguF/eRgfIxvG8URPBcnxGhZPVxYR0GjjM6hqrhFstW0mWVVHKbMwBy1+34Veu9C13g==
X-Received: by 2002:a50:ac46:: with SMTP id w6mr99343709edc.238.1564398931098;
        Mon, 29 Jul 2019 04:15:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:7a05:: with SMTP id d5ls12803899ejo.13.gmail; Mon,
 29 Jul 2019 04:15:30 -0700 (PDT)
X-Received: by 2002:a17:906:6c97:: with SMTP id s23mr85013652ejr.136.1564398930416;
        Mon, 29 Jul 2019 04:15:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564398930; cv=none;
        d=google.com; s=arc-20160816;
        b=VoW7WrI2Eok78mLZrQ2O0fT4apf59y71FOnfDTfRkpHWoirm1bzJgtTEV4YFZYpAms
         C/vjdieKPmCxtKx/PzrPf1o7DX/6kuQ6houxdZ1wgs7N5N9TJh7ky36e0FCIETjZiKtW
         Y1iGD2QQIXDWmDEx9AkS3vmvlhz4e2ZiVq6JACR/cpLmVwXQ781NzYQcgKQ4Ho65CVqv
         Uu3zd55BhyS8fOAusthHq8SJ37ppDzXq7tUMijffJ5J4pyqTxGO5iP9vDK8sPW1Vg6pa
         cVm3wtqM2YaINH2XbjSV5WdAZPoWR4v0ukYeLG54svDP18azIUrnqEEU2XmYuoXNxoWJ
         SLPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=5GrLNzc253B/Kp92PeukRRku/IaKJ9n8mYPDW7l69Jc=;
        b=iX53o87xN0IUJ1IXyW2Q2zA0oHFv6doN+w17K71ZV0c2vwc7PBZLpGoImSxSyR/OnJ
         2b7mCIouC2M6ekQGkagUhzd0s3awQb4dzdxDCzfM2+LLdrENbLdVO7CQEwg7f1jgo74M
         4z4Ht9sKMPUfx1tKoldF+A+PkuA6pZhx342hW9XVZAr7cAMzad0qgvrSPWt9RCJckA4v
         rJql6vRXzDIp8VwMiD+UbZlPHRUHcxMJX7RjzqIuf358lOE5z2rnFc5t6tAO286M7haC
         x+BcUQz9kfW1EuJUG2s1BWuWwJUEFDLF0k3rCoLgqnxh7w+mMp5QVNVTTazOAPdeBkqt
         fGzw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id g15si14748864ejm.175.2019.07.29.04.15.30
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 04:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id A69DFAF0B;
	Mon, 29 Jul 2019 11:15:29 +0000 (UTC)
Message-ID: <1564398922.25582.6.camel@suse.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: sddr55: Fix a possible
 null-pointer dereference in sddr55_transport()
From: Oliver Neukum <oneukum@suse.com>
To: Jia-Ju Bai <baijiaju1990@gmail.com>, gregkh@linuxfoundation.org, 
	stern@rowland.harvard.edu
Cc: usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Date: Mon, 29 Jul 2019 13:15:22 +0200
In-Reply-To: <20190729100555.2081-1-baijiaju1990@gmail.com>
References: <20190729100555.2081-1-baijiaju1990@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of oneukum@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=oneukum@suse.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Am Montag, den 29.07.2019, 18:05 +0800 schrieb Jia-Ju Bai:

Hi,

> In sddr55_transport(), there is an if statement on line 836 to check
> whether info->lba_to_pba is NULL:
>     if (info->lba_to_pba == NULL || ...)
> 
> When info->lba_to_pba is NULL, it is used on line 948:
>     pba = info->lba_to_pba[lba];
> 
> Thus, a possible null-pointer dereference may occur.

Yes, in practice READ_CAPACITY will always be called and set
up the correct translation table, but you can probably exploit
this.

> To fix this bug, info->lba_to_pba is checked before being used.
> 
> This bug is found by a static analysis tool STCheck written by us.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> ---
>  drivers/usb/storage/sddr55.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
> index b8527c55335b..50afc39aa21d 100644
> --- a/drivers/usb/storage/sddr55.c
> +++ b/drivers/usb/storage/sddr55.c
> @@ -945,7 +945,8 @@ static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
>  			return USB_STOR_TRANSPORT_FAILED;
>  		}
>  
> -		pba = info->lba_to_pba[lba];
> +		if (info->lba_to_pba)
> +			pba = info->lba_to_pba[lba];

If you use that fix, pba will be uninitialized when used. It should be
something like:

pba = info->lba_to_pba ? info->lba_to_pba[lba] : 0;

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1564398922.25582.6.camel%40suse.com.
