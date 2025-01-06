Return-Path: <usb-storage+bncBDUNBGN3R4KRBUXM565QMGQEJ6PXSJQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC2FA029B6
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 16:27:15 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-5d3bf8874dbsf7227532a12.2
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 07:27:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736177235; cv=pass;
        d=google.com; s=arc-20240605;
        b=e1RC3SoUw6Ur5V1i7yQiM4jr40vCRc4jA+r8Js+U5Az5lFu5UMLmWLTfBHYhfe16db
         jkWRmeS6W51ymiFe9WxU6CrDsy7AG0+YalyTwHJTdAQkNP28wkHSkQ/kk2yp3GLRupqx
         J1j0e2r9p8RQZZQoayRCQU/EpuBenTs9IXq24d4rUimr6lSHejJ6uSR3dpxm0QiIKxQO
         4KtddWP8ic5P1zNd+9i0u08N0SUXv3x1s5yMyPqZw3nSd3qjhh00KBZ/KgZG+NaZHyMf
         7BqI6eeGZPaQQoL7LjZuyckuoL8+d3f4BjlNtDXy2OSShy6sVoqqsS97CcBoKh7fspDe
         HX5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pa2+qEQZevIWjJYDRNFzmmGG5VSoh6wprQ81CDsT6AY=;
        fh=Qpv499JsbJjiOKUEYirLu5X40mIwJsB1RY0Hz7S4T8g=;
        b=eXdm4A4xoRh22mq74gWMO8F1rW+liOEr8O37Ap62OsLGy9comVW27aaJdbCoy4petN
         /wTdF6BDWcCGJryXrjttYzCNV2Yn3HyJ/tB1i5edVcAUVcSliSGT24xW+5dfWFxy5YK6
         TTW9AkqvHoqvgCGxwJu+HWoa4OyKjAxgbzdHndM6gleFdFgzpmNOj7o+SZ3DrF0/tic1
         cqeG26sELT4QScTry0JXck967IdNqZS4uHtUOH9SX5PhvzR5b2uoLyA10MVL5i/od8Mn
         /t1UaD1Uv4CuKNKRW+jQdt7ltsGK6woO1ALnEx2tLFzePcKTsPdLft1z2AWuYWxG3d+h
         n+Ow==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736177235; x=1736782035; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pa2+qEQZevIWjJYDRNFzmmGG5VSoh6wprQ81CDsT6AY=;
        b=A9thIS1+bzkJHFjxN98GWPIsXKbZUapM0o8DX/gO3H3eaAtshmDLJEonb+OMVY/Ubb
         r+Qc131mtOKQ0F1Seexh3y3e4/lusl4MD1knH5if8Y2Oysddhc2km9U3tqsbfEDkPyuT
         SMtHGJNfbu3k3dENBiKAcVlyQD1ia4den3ZxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736177235; x=1736782035;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pa2+qEQZevIWjJYDRNFzmmGG5VSoh6wprQ81CDsT6AY=;
        b=pQtquFvqLdfdNIgoZ/jVyWW3uGBlw8SAlWiK9bHX4zqDUNi6LHH2MOXVrm5NGey+QQ
         fuRiS8AS5BXYe5L2H+Iginq5AA1tsokFrrmL/zLATwuzdZ8ktmK0xbeGIR1LnOWIiGwP
         ohTIAokCtMVgo+quBz9oxUhlA/mUiyMwfGJBMBHX0KZ1Xccg6ulgR5F6uGgKk7Ym1Elw
         DRN2vEqVS+DscmmONSHOOBqit+zyoDHZ+yyTYAOhHzR8vpz/LjtfGC4hOFubqdTGbEki
         rrqEevau2yz2wBfl9v9uIfuQ4YmQaw6pcHLuAOtnvPNzyHgL9d8HvTd+TD+W/1L2vAvj
         qwgA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWK/bMujP2olmWHpUFG0B/Z/bKCJXteBaXUyz/LkpTsBxCznEdGvXgoFD1oNmRX/rm4VGeWlg==@lfdr.de
X-Gm-Message-State: AOJu0YwlHTslZskYkCBNwWvgpBWaOTpuKqOL2macXrWP3sCob53CnRTm
	FuoBBnTPvLWWBW8Z8nyE101t8AaSfm8fexBam5gWbr5JsLUvqt6Ei88AyQwNTmg=
X-Google-Smtp-Source: AGHT+IGNaDt4XdiSPQmzvOem05Jw7JYsrXE4CP2a5S2uB2PX8d6zvPGWz/WN+kxcO353MXFf/1wrsQ==
X-Received: by 2002:a05:6402:518f:b0:5d4:4143:c07a with SMTP id 4fb4d7f45d1cf-5d81ddd657dmr51770545a12.1.1736177235327;
        Mon, 06 Jan 2025 07:27:15 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:4141:b0:5d3:ecaf:6210 with SMTP id
 4fb4d7f45d1cf-5d928209f88ls479129a12.0.-pod-prod-08-eu; Mon, 06 Jan 2025
 07:27:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXiHRwZDan+I+d6gDZOVWAkpxkBF5OkFDmndgzPr+mgfZnTfMfqVoKd0hRZ8p6xwGxQScHAb7QzRYTrJw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:7e86:b0:aaf:ada2:181e with SMTP id a640c23a62f3a-aafada219d8mr1152584066b.26.1736177232072;
        Mon, 06 Jan 2025 07:27:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736177232; cv=none;
        d=google.com; s=arc-20240605;
        b=JyCELFeSYUh45PbAmMF6M1Ihlh2Tnfi5yzikwy/PJp3nBy2IHxN7VHsZXuHQyfgEy5
         S7lb9v+F5rlDJ/HUiJWfFRPEDKE1zv98P5f4BmzMYG3zI1IBQ4SaRrmFMrwN1jjcdPaj
         lgnc/2vn+f2zyHBBOoI95CI7Qs9kAeDFazzDZv6Fv4x7EdK6S3e6fqUFMKup3imrtRJe
         2bbTM1vDVNVdjQsu9n6Z/f7IMxDT0x0Swsox71f6extN8I7+87Pz6oF5S3/twfAZY4G/
         ie9kNGa89y4XQUo7ZsWpNLfoJb7g9z84XqJBFFwo1/T9yObmVl+SaMJpnqv4c4DJQvpd
         cFQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=PbxeaC/oOuVBMpw+uAN4H1JgYjUbpMJOW9aAtNgQMoI=;
        fh=TtpvWT47JUDeNkrGBo1kpfmeYji2isfp66GaEaGRmfg=;
        b=CrzzGbQqdgDmcXQW/QkrwNjB2pm3NOCluR6OpV1ouEIBtFXmfBxMXAKU8Yj/4fWrik
         2YnQho0mG+RFKZdYsu0JGiq4axfA6SiKUclXoLsUrjaIf8P0l9i35CdjjGnBuyY3pnK3
         GTO5BgZTDm6tEkwT+Qx6nBexQTk3jv1YB1m6ccVQ8VytX9cCluutn1wtseX3IZy+qZ6i
         /KonDSEKSL87I+Rv6fK0fHl4xglJtF1TbXNnEJmyWMvMrHXpipg4xwemTekjreqioVOS
         UMz7WuJNkIpzz8+ct6K9odMEkeL/7q5DdyH5pIcQEdzk0zxsJbHb3g5UABwneOXKBgvi
         4dlA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-aac0f0c8887si2361459466b.827.2025.01.06.07.27.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 07:27:12 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 98D4A68C7B; Mon,  6 Jan 2025 16:27:08 +0100 (CET)
Date: Mon, 6 Jan 2025 16:27:08 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <20250106152708.GA27431@lst.de>
References: <20250106100645.850445-1-hch@lst.de> <20250106100645.850445-6-hch@lst.de> <4addcb5e-fc88-4a86-a464-cc25d8674267@linux.ibm.com> <20250106110532.GA22062@lst.de> <3fb212e4-8fff-45fc-9cff-f5b5eaff4231@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <3fb212e4-8fff-45fc-9cff-f5b5eaff4231@linux.ibm.com>
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

On Mon, Jan 06, 2025 at 05:36:52PM +0530, Nilay Shroff wrote:
> Oh yes, I saw that you moved blk_mq_can_poll() to blk-mq.h and 
> made it inline so thought why bdev_can_poll() can't be made inline?

It can be, but why would you want it to?  What do you gain from forcing
the compiler to inline it, when sane compilers with a sane inlining
threshold will do that anyway.

> BTW, bdev_can_poll() is  called from IO fastpath and so making it inline 
> may slightly improve performance. 
> On another note, I do see that blk_mq_can_poll() is now only called 
> from bdev_can_poll(). So you may want to merge these two functions 
> in a single call and make that inline.

I'd rather keep generic block layer logic separate from blk-mq logic.
We tend to do a few direct calls into blk-mq from the core code to
avoid the indirect call overhead, but we should still keep the code
as separate as possible to keep it somewhat modular.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106152708.GA27431%40lst.de.
