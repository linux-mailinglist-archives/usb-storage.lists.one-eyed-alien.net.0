Return-Path: <usb-storage+bncBDUNBGN3R4KRB77O525QMGQEJHFZCDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CA3A023A8
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 11:59:12 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5d3bf8874dbsf6926063a12.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 02:59:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736161152; cv=pass;
        d=google.com; s=arc-20240605;
        b=kzYfCTqHCKctP50suzV3KjSQKe0n4/xKI2Ut1tFTBLdYnzdNUKGjqTIJx8dLTMUguU
         Vk8ZiwwPKAAKplBMrWycQ+EwXQwHLXrdXs4ubOCfJ/ZeU0XqAB4BWHZZJ8K+ee3pF/d3
         9P0cXAe3oJRUuotiXOe0+av5KZuMIcH4yw2mBzz+Y6utt5e3/iBpDdg5mambk/Hs7jAz
         M0IU2AB6y6YI2A4DPSz/17J+I1bzOmAwguxqVw9zrELEkbbFyPyLwRbAGAU97P5u3b3D
         GjvQnFi2Jg/hAYXWKO42VzfCeQVkD+GNh4GWRei5on6/rBjx2K6MhsP2dxLOH483vZ01
         +IAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=d4lDfZ01gAaPeIRW0XdaAZJ9Atcmqf+9G4VurS+1pYE=;
        fh=ns2PoBMAyCHtd/DSB1kumdEymzIMIaqj/9H/4eL0ZFQ=;
        b=jkG2mAXnG7YbiHT73A02Klbrs9Ug4AYlISsKXh8XgiVy20Rk8FQddJsi3m9J6TplXo
         LMVxMD2m71GMiwVQmOGx5adC6pidr3WfeB3DkBlknfklJIXxwq2oYrfnH+qGMklgxCB2
         kqV9ZMNID9to+VkqZe7Q3InouqebFI0ALygbxQKyaI4qqX4jguPyq3aPERR0DeAWk5pZ
         3PA6vFWlh15majmTDfMukCViQckREPj4GTDEzZtGLh32D8/sAo4MkwuM+7Ijarce2rN4
         9odopLwZ7mcKUJAnovnWtP8+SI8HnthEjhoIxAl2ZAB+8zLh3E7/RRLmXYm1YXyipFT4
         o+ng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736161152; x=1736765952; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d4lDfZ01gAaPeIRW0XdaAZJ9Atcmqf+9G4VurS+1pYE=;
        b=RnuqsMTuzoAh78286fWSSOpNDNCbfLqEiggRe6QTp+sXnDHhWnXrpBzNYuKF+wxBW7
         armRwBsrduDPfvUgXdzgHkGShf6Fh+6YP6udXdktqDzrvOfV3hT+vQcrUOKSDGr30osN
         9YfFtMDxgMBFm+rBH9YiniVRzNNbxSdMO4H6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736161152; x=1736765952;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d4lDfZ01gAaPeIRW0XdaAZJ9Atcmqf+9G4VurS+1pYE=;
        b=Omqk6+c5QPnc8Fsqfnca5XXXb0mFoKsvzBJ5bH1PTGDfJcQKdnD5eoYGmUyKQ8PP6l
         qfc2U8XrmtWbxtfoNCOkKbsZt1Em3s3Oo523uUnzRNFDeP9xWp2h/Tqfg/KWmS5rjyKl
         uwMDCni0u7HAkv+BYS32FgXu79gxpTQjMAYlKjRWnaMLNp5jHkZvF/JM4kviGem+WPPy
         pmGI1hicMKCIP0cWCIuq368tGawu11BqZUjWua45C4/qwu+J5JJ/mwJ40MTdzFCHu9+s
         w1K90PzZJZyJ5jUbnhlpE+cep7YqqLFPM/QFXRIIKWxDHh/OauoLJsPEQjg9imqGRwPd
         89jA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWJgqfjFhdEO2IInwh4+83toy/hKO0cJwPB9YyYOvWP1j6s/gWdgNhlJXYNh2Y+WbCibpLTZA==@lfdr.de
X-Gm-Message-State: AOJu0YxNmMgsFzFgnVoxzVwSoKskFbTT5vInX8sss7iUyQLkrUYwqCoW
	AxqlzzdXCZP2icKpSShR0aQcZEOZ/e3uupRbRF5CltmPyNSun1XPRR7xLKNep38=
X-Google-Smtp-Source: AGHT+IHgYcmAD0uMAMuGAgK3kS8FHQyVYUKa4IloBbhNy691JJOCYQGGRgxd9idG8AxuK6nVzhns/g==
X-Received: by 2002:a05:6402:524b:b0:5d0:bf27:ef8a with SMTP id 4fb4d7f45d1cf-5d81de48bd1mr49389843a12.26.1736161151436;
        Mon, 06 Jan 2025 02:59:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:ba81:0:b0:5d3:cfc7:9eef with SMTP id 4fb4d7f45d1cf-5d928209f7cls185492a12.1.-pod-prod-08-eu;
 Mon, 06 Jan 2025 02:59:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXXv+EkNUWo0k5L8bEc3gJDKpdm3A5W60IL8FO8GuVWHkULXLwOESO3Pql1DGjGBVGlSReZujAk+jbOBA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:906:f5a6:b0:aae:b259:ef6c with SMTP id a640c23a62f3a-aaeb259f285mr4732682566b.0.1736161147770;
        Mon, 06 Jan 2025 02:59:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736161147; cv=none;
        d=google.com; s=arc-20240605;
        b=W3wjml5I4QMGJZCOV+VbqzFa4yB7z5donF+arc4xW2Gbm1yW0muAM6FhpSFz6EFcXF
         +DVIOFphcH7Bcp/reY7bv5nRisaj3OCb4wKRVez4a03nKtzsswzuz4LaI/V8yWhALXvV
         rZ5a3kM++kR/caZOej/vJDt9C7gNdyJtaT8OCRkw3vPE7zXEumTjGlvAxLkjWuZHBAjE
         uzvxIgF5dGMFKNSKpyUIwyKOtDQHrsXez+BiRssgmlWsIrMkbApanV6kukoYZYiZWIRX
         TwtkPa+u6x/8Q1S+k+KCstQ8+kcQAJXl8lyq8pRSOqzeqLVch5j0il+/3wehSNzHIMuD
         Mtzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=fhbOPqszPdCBwTFicMGrn2/LOi//kpDeoXaRV65HYRw=;
        fh=0qHgCB7+SOrarOTC3pV+ALWol5rvcqRtlHP+Nymp0i4=;
        b=Zwcs6/jv3zwEYxnJtbw+H/rXA2OlKMYFnxaWSIE8bw77r7LkuUVS6FdmbQ2dBCAETC
         co81TET/CrTx80l3XMjwfqjt3W7EorHMRA6xS72Bt0GqGvAa+TkHLUuEk/eK56KVAl3G
         /R/NZ0JLL/Kb5LY1uzXoO+jomK/4RIPEgmI+IT1r734yyxWsh0PhhVqutgzUhKlmPlmX
         5jl6kQ9EGcdp0qFH1jMiU8TF9EH0IzI5peWEXojZfQYjwtDq8MBaeHLEekqnVM0o4fhZ
         8tqeXQHEH8HfXY1p4CW/cxD2FVURB348Jjwoj3X1m+skOFeYCK4RKR71ggW11pSJA9yi
         4vzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-aac0eff1e3asi2187561266b.262.2025.01.06.02.59.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 02:59:07 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 6422968CFE; Mon,  6 Jan 2025 11:59:05 +0100 (CET)
Date: Mon, 6 Jan 2025 11:59:05 +0100
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <20250106105905.GB21833@lst.de>
References: <20250106100645.850445-1-hch@lst.de> <20250106100645.850445-6-hch@lst.de> <1538d5e9-eb59-49a7-90c8-77a290f3a420@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1538d5e9-eb59-49a7-90c8-77a290f3a420@kernel.org>
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

On Mon, Jan 06, 2025 at 07:55:30PM +0900, Damien Le Moal wrote:
> > +	lim->features |= BLK_FEAT_IO_STAT | BLK_FEAT_NOWAIT | BLK_FEAT_POLL;
> 
> Why set BLK_FEAT_POLL unconditionally ? This is changing the current default
> for many devices, no ?

Due to the runtime check it doesn't actually change behavior.  But
it does change the value read from sysfs, which also need extra check
for poll queues.  But the entire point is that we don't have to update
this field when updating the queues, so yes it should be set
unconditonally.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106105905.GB21833%40lst.de.
