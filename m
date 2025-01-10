Return-Path: <usb-storage+bncBDUNBGN3R4KRBAPAQO6AMGQE2NMS3NQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x647.google.com (mail-ej1-x647.google.com [IPv6:2a00:1450:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F806A08D2D
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 11:01:38 +0100 (CET)
Received: by mail-ej1-x647.google.com with SMTP id a640c23a62f3a-aa69c41994dsf134682366b.0
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 02:01:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736503298; cv=pass;
        d=google.com; s=arc-20240605;
        b=SBIbwcxDCYqOStykcqILSrBhSmKOZxOEbbvq1NbxrakXDzkDGHs0sq24JHVNo1eRIG
         dmsoZy8pB+vu8kXn02/eZeXTu6RGboFz/w6kXGkx4HOdyw2gaaXbc8bIYKDaTnBBoT97
         xHrSX4UE5f1xXPVzUaUmFRw4bczAoJTpLJoDXkSprA3HSSOXJHyGeKxLl2yw+KtYffel
         JfEjNw57h/N8t+GQtRcslAGkkgJukBPXIP3TA2CkkUsY03A05lehBukJmbUQ2x1vyqL0
         4vxvul0uJpTj1ogxnTEwi/SZAX/Oypdl9TZqKlQx4W+91iOQrdpIPUl1pf9cdhaQeXVe
         VMVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7hPX/zk7xFzDfdDuhHhuiCZ0WjhcFSp7dgkUb40mBJI=;
        fh=d4QDqd4CrM663xAQc2URr1T54kvqEB3D8BstMjJZaB4=;
        b=KWSNpJwOda6biWHj3MY+8LvunS35gJNOS1DVcaIJJGElLeLFu63PPpo54q+9EhrltG
         70iV3+Qsdlw1zctquWGa1TbffTpgnRxTwvC1KmNsiZ6/BQeWs6/YBMZC792z61fq71jK
         gSl7LMkDVOgV1HjJMxta6eN/Rnnt1e9aMWZnz+58b3AYnwLab2f5+pSjYR3Hlae75A3S
         LMbAei9Y5XbNvIt9UwLyYBRHlO05EW0pKS6ytdBi9pYTwGtBqXFxqMFFhE/gndNqPgTp
         GbJVqMls2ZzBMcFNGJ6NOVJP6wB8DctF8r4LVUqdEraLyDuseCrNnVGGP+Lw/mPu/jPN
         OEcg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736503298; x=1737108098; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7hPX/zk7xFzDfdDuhHhuiCZ0WjhcFSp7dgkUb40mBJI=;
        b=LGB0aXYech/gr2j3Pwq8ltnYW6+k/zksjIRWB2Ls7aPNUTsChZPsFew1QQOutLXra4
         cuivlc7AzmYwIj5Bu0wolWXgzpFmpWmxkdzK18R/q1Q0jseyXT5APvsMPgiuYh6i9tz3
         K4dORcGTcG2OEec6e1xNFGlHC7vVsTLavF5eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736503298; x=1737108098;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7hPX/zk7xFzDfdDuhHhuiCZ0WjhcFSp7dgkUb40mBJI=;
        b=PGHMayyZYdugkkS2PE5c5E/23WIQI8yVSTC+I2Sr9EYb2wgxXfZiBvQpq1eBm6av8/
         fvD+OWhjwx+b17AAfLG1P7OYM/VRnCJiF0jz17GXXuO5ogX6X7/9BqFdTcNRuWrHnzs2
         GDZ0WkeBP5XJcGWdb3ye6nOnfKUK4kL2WsywHX2vshYH6KPjCx0f/M/a1wj+9yrgSA+8
         dBScSk+7nY0QM+pKCKegEg7LNHhGJDbOlApRBIh9wEBR18XixSVp9PlJhv/3jilkveQU
         TjNyEPmG+zS5/9ZfqKKjuV2Q8fYERh3CMTz8AlZUJzv86NoZREUByTw+61xKSz0WToG0
         JFdA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUPl5tlnnl7Z2aVUyQpiRukBSRa0J1QXoqCSrCHFxK7dDXu/vzo0oJH2M9H2mzA+PeEOdkYnw==@lfdr.de
X-Gm-Message-State: AOJu0YxoUNhj9ydfN4bGLEFY/HOY0UFWsvB/7gHtuos6syEm7vtBPjVW
	ZoU9w6BNko8tXf9Jb2capgy5GLCtMlhcdonKWFiyWp4wvOZ9WCkBbIYmUsG7/Qw=
X-Google-Smtp-Source: AGHT+IFHy4r75R91+6T3IF5AAUC2kUEn8Vzgw2IKtTnq3f8IjBW4IMaF57FhlZgirqXLHy9XiVUcfQ==
X-Received: by 2002:a05:6402:4310:b0:5d6:48ef:c19f with SMTP id 4fb4d7f45d1cf-5d972e708a1mr22301398a12.29.1736503297910;
        Fri, 10 Jan 2025 02:01:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:cd47:0:b0:5d3:d2b9:4c4 with SMTP id 4fb4d7f45d1cf-5d9851d2e1fls133726a12.0.-pod-prod-05-eu;
 Fri, 10 Jan 2025 02:01:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV8Q6eoSsVqnbeTZdVhvKT4ddnMZBGsmTczZn6qHV8iFDxP2ZJ2VNqsgihfZfdvEznh2ui8WLJCtnx5lw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:4310:b0:5d6:48ef:c19f with SMTP id 4fb4d7f45d1cf-5d972e708a1mr22301128a12.29.1736503295582;
        Fri, 10 Jan 2025 02:01:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736503295; cv=none;
        d=google.com; s=arc-20240605;
        b=OlCmmzbAyZ/VlFiv21wp6lLVeefGsRvHDReQHBueu4/YCzDleNx6pWrKckNT0VNOJg
         Fd8iM2nsWwF67koBJb2SuL9rF6PRJcxnpl08mOzmiUj8lAI0tn9emmeBs7RDo5zZjFs9
         LDnfQUQF5MKTEat4WLfnaateQNGV5PimsC1FRRWN1yaAFE4yYXAMG25ybV0/fGZedRoK
         TNBgXuVk2mWGZ/eDKY+HCfCtHTv/HEjRyGXRdqkJ4kQXp2EXSha0xIPEDAEFINug4EP+
         nnxzU6zbLplE1ZNiiTh0ei2c/5xD85oX70a+TkzzuPu53qz52Kmz7lEdoDy2xn2kcdhX
         tOAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BvZHaclgLoxcp9vK/QHTIvJtmhmJreaGsDh9XJetxac=;
        fh=quH26clXjLpZXscCcKwr+AEN/ExB8C7cY90QRhK1I3I=;
        b=DJLiiM7sx9m4LdPv1Gl0Yh/QGAFPKcsD4kcE0GdCH6g1xjW53FuBwSItXKyVQAPqQR
         OhYfrza7ZYfSZqv5X8zRfMi/MvN2ogZRezJZVb2IrD+FLsF9QQUhwJ8y7vaf6O3p/RBH
         IDLUR5mmtNzou/GWX0u/lrGhFNRQifDOwSYOHVIdjyOYPUKqdP6q601pccO9QtiTBuPG
         ihvBSihK1vYqujJ62mjUopbDDPpvAY2McD3Y30HUFpSD5L4x+64RTwPArN9/Bcuaq/fi
         1nhp8GS7G49ry3BeDYK6Ep96wp8sqKXpGgcAl1sEpjOqpbp2JStGhcWR0b3lIqb2PFMW
         znRw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d99efd02bcsi971605a12.216.2025.01.10.02.01.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 02:01:35 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 481FA68BFE; Fri, 10 Jan 2025 11:01:32 +0100 (CET)
Date: Fri, 10 Jan 2025 11:01:32 +0100
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] Re: [PATCH 05/11] block: add a store_limit operations
 for sysfs entries
Message-ID: <20250110100132.GA11632@lst.de>
References: <20250110054726.1499538-1-hch@lst.de> <20250110054726.1499538-6-hch@lst.de> <79d85a4e-57c3-454e-a65b-d2a3764eaf0c@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <79d85a4e-57c3-454e-a65b-d2a3764eaf0c@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Fri, Jan 10, 2025 at 09:56:35AM +0000, John Garry wrote:
>> +		lim->flags &= ~BLK_FLAG_IOSTATS_PASSTHROUGH;
>> +	return 0;
>>   }
>
> BTW, this function seems to duplicate queue_feature_store(), no?

That operates on lim->features using BLK_FEAT_* values, while
the quoted on operates on lim->flags and BLK_FLAG_*.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250110100132.GA11632%40lst.de.
