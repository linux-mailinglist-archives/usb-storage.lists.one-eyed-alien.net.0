Return-Path: <usb-storage+bncBDUNBGN3R4KRB6HM565QMGQEXT5FSQY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEC1A029CA
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 16:27:53 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-5d3d6d924c1sf7288920a12.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 07:27:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736177273; cv=pass;
        d=google.com; s=arc-20240605;
        b=bwF1LxSqqkKzojQ3VdSWkczXrjb3Kg2YEOETkK+nmCQUdemYVCTTEdBPJPA/oC15R2
         rgO6IslOAWAW3xWkD2Fd5aGWINOF8O0iV0mRI189ndTFKxquuqU2dS4fUBj9i+xsYxEu
         VjJlaVfc1NPblZ37g417J9d/wVqENg1MwiIe1OwSbXbKraXeijNazU3EnHCBuovznU0b
         nsPdjW9YG13H7y3Xk3bCx6uRYSSLpe1Bn83ar/WucoOEyCR9FyZxZksqB41zty12p8o5
         FToN3KL1j5OQV4BNhS9PkAIVDWpbXW88nmf65I4BX1noLbPRYTJ5UKTVOl6tQnVB6Tg4
         OINg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PrOQMODxRDdynVQL591AbF/1RMFNp0gXmPg9MUx/Rvc=;
        fh=oPuvblJ/c7UvySJaLnMKdpoNdL6nPnVqa3Ef5Nnvxg8=;
        b=IJYiv3lWQ7hMytLPytX99v5lpAPdmhfzGSC5eba+hfTjgMWqAytbad3R7NU44W7KB7
         uxXBhQUnI5jaoq4udOf9ntyI2FHhgfx/0mekmtGxM5CorYUwzlxb1tnHLaSqhsPS669x
         XL4GSzj//e3GcCAWEEa9foQ8wDf+9cIQZ95Qbt8tICTk8qWmGZ+bH9VAurABxgwqe6np
         VziluPa6jrEsyx6NLZTqHDj6vl5y4vc2fGesnPxhvcK1lY63iCc3Ke9PawLivGpj5wSC
         ggL8lKr/ZLUGHNPx1w6qnCLqWp+VCD2uO4PT1qNnak6a6bcagduskOw3qUoQ2tNUl/4C
         dvNw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736177273; x=1736782073; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PrOQMODxRDdynVQL591AbF/1RMFNp0gXmPg9MUx/Rvc=;
        b=ZqbnMMisu7dd+erKbcQhuEdUN3rFYMzxBE58RideTkx1CbvJIJO1YhL6SasOFsUZHX
         nIWPNNHObNM8WrmTuGopKK9+RrYDHDyN8eGWPxvkYn0keHvTSwBZR/wJWvIUgVkCEFKB
         I8DpYg7Cq6NUvSKS1Ux4m/M+ejxBjPg17RTFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736177273; x=1736782073;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PrOQMODxRDdynVQL591AbF/1RMFNp0gXmPg9MUx/Rvc=;
        b=k92DVwwE+l5nRqmMCTaLUclClqK5UQ3TEnsxwcRYH2jU8oaip9lnewnhv//4XBYETG
         hKA4kHnhKf1GmGQaq6xib+epio4HB4cQ7nMFRJ5E1tqi8dDEpAhCrE4xoZXeS2SwbVZF
         pIlnfTMqr++2jKpmPLMnCRMQefG/c0nn6XIRzW19RRTz4NcG384Rhl+s4YqP4AloGeWn
         b5QHj7ZisKAKKdDnGQ6Tz9Io4kpjZscRnrPlvwEjRteAqVTeHRjFSL0ySA8mx3fl9O8U
         Y8u2Ip0saZyJycZEHIHMIFb1ZB/GmQqG5NSAMQhTvDOCXQSKfTWvB0Yo4gJOnLgasaOh
         L56A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUoU4JtBVHgyrnbWqHZDoVJAF4yD8Hqp7xQ93wZSJTwkBR3apECnVq+CWcMrO0kA+tnVySwQw==@lfdr.de
X-Gm-Message-State: AOJu0YwjuQWU+1n2vw5LVvnpgjw0I0F1WFABs87mDtjLi5dR+Cr+eY2H
	RA3YSnDSXHr0C6oWWYQuh4vHg7F9jPOtrh2W/2CTd3xOkDHxSbt5PmqnqbiME5o=
X-Google-Smtp-Source: AGHT+IHlZXAlmaddJ2bbZOcgl8c7apv8nSwerGuM28m9EGGwGguORPD3JXp6d9qgns90cOkT02o2qg==
X-Received: by 2002:a05:6402:2345:b0:5d0:abb8:7b2 with SMTP id 4fb4d7f45d1cf-5d81dd54381mr53732538a12.4.1736177273364;
        Mon, 06 Jan 2025 07:27:53 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:a692:0:b0:5d3:e99c:a4c9 with SMTP id 4fb4d7f45d1cf-5d95cc35831ls98358a12.1.-pod-prod-06-eu;
 Mon, 06 Jan 2025 07:27:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW5B0//Og5H7/qdYUa2lAuWV5pYYSch94EI5E5gITrXWW0iU9Ku3YbiKBK7/wo95pX4+1B7h7902sHQPQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:214f:b0:5d0:cfb9:4132 with SMTP id 4fb4d7f45d1cf-5d81dd9953amr47310326a12.18.1736177271095;
        Mon, 06 Jan 2025 07:27:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736177271; cv=none;
        d=google.com; s=arc-20240605;
        b=Z3Oc0+U9XZ+cXBJPz1mqKEuJXF+J0Z69Zvic8TyVxgQASlxFTRWoUTbBbCXVd/XDZv
         lIaxcfUNQ3Ga2yyzkEB3mRwixJcZ0+1oDyXfr7tzYXlkIOFun+qJT/rku+0TrJEdWfMg
         8jO8EUwRDmgTLfvTK5enta80yEiqMrObZCYTco0V/r6SNgUGVCHGuR3u1m3+SV+RLyOd
         UoziPtl6VP1lIQpBVcBG37eLGE6ca2Rlksyj1B+nydsX2YxWf8X6JCGmKP61AD1jtNTf
         ZookjkaudkFW7AZb+DUaDKx4gD2rpuGeOjJ5wqW6YbVJIipDwtKKPdluWltT5mJq5rOh
         SItw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=u3u4e4h2vhvK3jfvYBnqQlWOxzG/vuxc/BDzp3ituoM=;
        fh=0qHgCB7+SOrarOTC3pV+ALWol5rvcqRtlHP+Nymp0i4=;
        b=NDWEX4BWvchGd1pvg7wma9YmgSJ0Rx6Aavqmny6j9n8239pSEJcgtswHOAWO9m8tvU
         t7VnoNcJs2KpIjP5TeuSuRL2WEY00eETi7OF07Hu5/n1+7l8GNbeZf0SHuILgvnoRopK
         W48RggId6JumLlO4WPkqw/syCnHx8huUAFNOm2rp1glRW+oV1yVE6adWOMye7UBeXAt2
         BkHQqhTpJ1cUyvI4PLmy6hkyLeHTrkJDBFeMGKfisTETPBNi5BOhf9MoIXgYHXhDNLWf
         vU9Pjfq8dUTs/1qgfqJ2Q/riIzjfa9QyvrG0uWZfQfb4YvHV72lGVNRPtIuNnLu7JMP+
         b6tg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d806ff441dsi21580276a12.374.2025.01.06.07.27.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 07:27:51 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id B42BE68C7B; Mon,  6 Jan 2025 16:27:48 +0100 (CET)
Date: Mon, 6 Jan 2025 16:27:48 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 06/10] virtio_blk: use queue_limits_commit_update_frozen
 in cache_type_store
Message-ID: <20250106152748.GB27431@lst.de>
References: <20250106100645.850445-1-hch@lst.de> <20250106100645.850445-7-hch@lst.de> <07353499-b62d-488a-9575-12de5d9b6f2e@kernel.org> <20250106105957.GC21833@lst.de> <3cf61c5f-b53b-43b6-90de-e42272f74e3f@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <3cf61c5f-b53b-43b6-90de-e42272f74e3f@kernel.org>
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

On Mon, Jan 06, 2025 at 10:09:16PM +0900, Damien Le Moal wrote:
> Sounds good to me, but let's be consistent then: do not remove the
> freeze/unfreeze from virtio_blk in patch 2 and do it here in this patch.
> Otherwise, patch 2 *does* change the behavior of virtio_blk, introducing a bug
> (missing freeze around commit update).

Yeah, I'll fix it up.  As mentioned in the cover letter I just brushed
this up just enough to be presentable for now.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106152748.GB27431%40lst.de.
