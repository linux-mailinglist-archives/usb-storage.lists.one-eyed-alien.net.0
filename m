Return-Path: <usb-storage+bncBDUNBGN3R4KRBMPP525QMGQEW64YNCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D06A023B0
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 12:00:08 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5d3d2cccbe4sf10023729a12.3
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 03:00:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736161202; cv=pass;
        d=google.com; s=arc-20240605;
        b=E/+DL4mwr+MQvE5pDVwaq1bm4iLXPmvPLSb6J8ZAap022ASL+Ox34a+oYWu207A9JY
         +N/axfPhCzGD1JXqB7jFcEyATp5Wbn6DuOY1VZMSckX0VXCqhcQOvwomUN1c8Nvm4KLE
         eKPu3paFDxLZMM5HPqMjgTxMCJJjiHeYX0BzrhTwHYlwiUSYlrO/iFvtRTCzYpbOkXUf
         WLzZnI7doybSNX53yaqRrB9fxHwAan8r1lqh8xTswyikRusz2k92s9Ha8PGT8bg2UfpT
         C6UM8/69iGATR0jTRX4BWfgPSsQlItNNVCDENHuL+NxfmgRs0fqdSuERCVtYteSTE7bH
         ThcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mmc+xuieHdroVP6zf5hSTsQ+/iQCeS6dc/4RETvWNIQ=;
        fh=W1Qs105pzf6dzwNPjp9UM5Cln2hsrZQl9uVvCX9a1bI=;
        b=axoShSNRJDeDedmOMD8NqIRGZcNXKx2l83Qk0x+ix4ORnx7CVXlmN4otGC0DZTlhcd
         YK1OipyT0VEQMzQCbncm4TksTUfMJxoJKvlHHfVp6uxpAS3mqbUZj0CIcuIaMi4tWYUD
         dE2yEK22uO89dB3JIZwSdQgENV/lM3SVNIi2gQhwBJMnBGx3BJuexNC8m7qUiGmj1G+9
         PepBrUrvp+4SsRJPs9RBLDrqnl5psDVlNa5ZXSCEFzqTPrKT/KSj06lWlkGed7Nj2pU4
         SpEKDPyW2y72CCjdoP9gPmJMb0Bt5tMiH3zK+NbJ9Mglp5bK26eA/P+u2Nq6TsGmrGID
         7wog==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736161202; x=1736766002; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mmc+xuieHdroVP6zf5hSTsQ+/iQCeS6dc/4RETvWNIQ=;
        b=R5MjkBjg6IrORFlITmJSfGUoTeNVXqZEoaxlIBwrmj5bukZS2ge7Xp6HIQ0zmjcmsK
         LVjXlw+BHBUu+9ozYsmuNA8LOtzMZGd8oil1RVdMwU+zyy4c3GwW7vOzVLevOSkP9si0
         sS8j+1FbjDnKCGBmDq+QHZ8m4acZApVeRR6MU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736161202; x=1736766002;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mmc+xuieHdroVP6zf5hSTsQ+/iQCeS6dc/4RETvWNIQ=;
        b=FyrRKFlifuFxbxn+P8PI+SmTriuLr9kUwKScZxW6FWV3DQqqP3+7ovPFSSayyrSLmf
         8pFMoM94bw43FkY8wOwTTMyDmv+D5TQIJjqWaZ4FwEspkb87vfuQjdFY/s21JONi+TAS
         Bjg0Cv5YqeSEhR88uYTbFoDgDcncD3h2wOpTYNTMFkAmRUr0VTMyk60dKsKaP0WIReGp
         oJpK8acudru2yJG8giUlGn86Ht6Fdfu/WZ92RYh4Y5ZcVrOn6nISYWj8dNYvo87vluno
         XkqU7w8WeHGF7TYB6nmMXSHpCpIvm8ZaMLlkaAcY/PA8qhY7w18yt4Z471Xz33NuW9uy
         m8gw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUhGmUyFlrj8w8L5SHf9JQWnsPv+4UtRS+3Zw/Bs9MHP/5zLBjVr4zFqDhuP/VxjFxeYdVVKA==@lfdr.de
X-Gm-Message-State: AOJu0YzHu8u64t8Yf/I8kgU2wWOIxTY55od54l1qBNJ12wRy+YL7hc6j
	Eol4hnKdiLQKnGY2+uainaGsxPyXOmg0LCcvkJuH/HL6x10WTVg2i0lVwf83p+A=
X-Google-Smtp-Source: AGHT+IHkWwoK2JQmptcZVrmp1QmL5Aqonvl2dfteNjwb6EkO+C2YS9cF5MbEq3JaLZJWhdEPtLUrMQ==
X-Received: by 2002:a05:6402:278c:b0:5d0:b60a:2ff6 with SMTP id 4fb4d7f45d1cf-5d81ddffb14mr48375532a12.22.1736161202101;
        Mon, 06 Jan 2025 03:00:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:9358:0:b0:5d9:1cc9:31e9 with SMTP id 4fb4d7f45d1cf-5d91cc93252ls11775a12.2.-pod-prod-02-eu;
 Mon, 06 Jan 2025 03:00:00 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU6BHbQYD01drTevwQiK7PGp0THji/I9fotFoGLrRbz7iIYfMT0q/maZBtShIWYzLzhBP327jNWdx4B0w==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:7f88:b0:aa6:3f93:fb99 with SMTP id a640c23a62f3a-aac2d230f1cmr5561860866b.36.1736161199747;
        Mon, 06 Jan 2025 02:59:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736161199; cv=none;
        d=google.com; s=arc-20240605;
        b=bTcSZubZElyKCBLQhpzHjg3OZtlPlCoBE78qama/1cf/1gPqcJYwtxC5ycRktQsF7W
         wzMbr51y1gZelk3+DKBa7Xmgf7GkmbYe/ez36bM0YkSSY+f6Zxe30si3SgMUY4TUAw1l
         3Orte3aTBWdydLVzIaNyXpAuUQsWU4kUigPfKOIg2rjiXhlt8CqOd5TWiPa7hveuo1pQ
         gAgcKzCFGtf2invuAA+Fo3I/X5rEdvSyo9i5BhusukU9TVsQvLUUfEGx96B1LrIbfq2e
         Ka2UnVKWH69UO2d2SFjo47oDp1ffAJSxv8Xi+hyxphBIVTLTP38BFDdFMEN9VZdPrPIw
         1e9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7t4JN7BLv2Yp1mrkUobHyEiyvEO1XEs23Zyn+HKT/+I=;
        fh=0qHgCB7+SOrarOTC3pV+ALWol5rvcqRtlHP+Nymp0i4=;
        b=hc5MrXFAmG/QCaKH0JzzA0CQbe3jDtRO7GLHtW47eQCLSfDGUOGha6/YGpftsoBNe9
         jamCQuxexOil6PaoaizTg1xj+0FVzbVGEc5/wR+5AjO7bA3l5y3zx5ALGK6DznH7lJmD
         ntPvMM3rlHsihFA21rQo31XEw4bn7iwFPxxZ6xMsiYleNpu2ON/yhaZANXhGpsjBPM2h
         Qvl8RlhVpgtaUGV57QVgCQu1eN3G6VWp/R35fCopAFBr++zed8pFipfvu88PcUlLczCx
         dlgwMEe1nrFALxBUC7tmqcAyyt+EtgK3cuLj1cMrtCUVe1NF39AsPUqpb5ix4YHofpI7
         u6Bw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d8d3dc49e1si9036924a12.213.2025.01.06.02.59.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 02:59:59 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 4254968D05; Mon,  6 Jan 2025 11:59:57 +0100 (CET)
Date: Mon, 6 Jan 2025 11:59:57 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 06/10] virtio_blk: use queue_limits_commit_update_frozen
 in cache_type_store
Message-ID: <20250106105957.GC21833@lst.de>
References: <20250106100645.850445-1-hch@lst.de> <20250106100645.850445-7-hch@lst.de> <07353499-b62d-488a-9575-12de5d9b6f2e@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <07353499-b62d-488a-9575-12de5d9b6f2e@kernel.org>
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

On Mon, Jan 06, 2025 at 07:56:19PM +0900, Damien Le Moal wrote:
> On 1/6/25 7:06 PM, Christoph Hellwig wrote:
> > So far cache_type_store didn't freeze the queue, fix that by using the
> > queue_limits_commit_update_frozen helper.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> This should be squashed in patch 2, no ?

patch 2 is supposed to just be a mechanical conversion, and each
behavior change should be in it's own patch.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106105957.GC21833%40lst.de.
