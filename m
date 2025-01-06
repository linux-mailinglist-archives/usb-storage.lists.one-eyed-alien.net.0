Return-Path: <usb-storage+bncBDUNBGN3R4KRBAPS525QMGQEN34NBJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB94A023DC
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 12:05:38 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-5d3f3d6a999sf8144022a12.0
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 03:05:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736161538; cv=pass;
        d=google.com; s=arc-20240605;
        b=e1+CCF1Oo1rQRV6M20rixS6u7JcUPf7F+FBfkQDPG+qe2FBJDrGowPgYX5OsCZ1PGC
         zWtpDpvjuexOF98CaJ36VlL+Zv1YTy3XrQRsaM627/9tPgKrLfJzCHGVvUtrcvhH/bqB
         TE/uxPJKWd2wfN/2BOl4dWTm4HBDrk71O19riD9wsoMg7iOLR3Y3xmEn2BVAxEAJ+iZs
         YWhRmpslQxbjpYtG+aFQcO58LoLKYQz2r7CSLwbZTYUYj2DuUIZt+0lRtSZWaVSEqZVL
         0iFU6UIcytICeQMMKc9l2dUgg6PQeHha8G3ioRakubaFkU6ZqUf4huN/zjhDX/aJDQe2
         ZcIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9Ex5lc5RTPeV3kLLQVhMzqILAFbQDB2jNiB4H9iN8EQ=;
        fh=LieeRDKNk0dzCMzTWMeFzu3YM0z1O2YbW7P7Hr7e2as=;
        b=B5Vs5oyVwcJ5dtFhnmnx7e9A5yykXku+OOqB9V+OjqcvP3l/UGc6EGUwi1Vzm4mRQD
         xbs7b0SryIEUzuD77OQFQ4ZxfFAOR2DPsEMSB73vC9W4hwxrtM6unF9iaMfPTxCff1ao
         jXHCxflVJlxFFXbnZFNgdqP5kLavi7iZoO33up2Nsmi2qLp6VO1yDtWn7qokKUOJCHEl
         q18vYKUmp3kauffmtquxjDpne/y/Jmoocw1wSSZv5sYXl6sy8ZENu+V8G970GJbei5KP
         U/dtViDsZ8TZZwKjXC2/tdHi15qsxxzKexKIFRi4fMzisy7/K5zTJiuDEHEpipBxz1+a
         7YiA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736161538; x=1736766338; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Ex5lc5RTPeV3kLLQVhMzqILAFbQDB2jNiB4H9iN8EQ=;
        b=Q2vFgLDKib/0MdrTI14BYeLMrmDXhTbzpQo2alIhtF+8g4GCcm7ExucN8SYBZ77zG8
         gGtJZurQvTDfiNdMtay1RmA30rWc+jLh520LGSkNuiTbTuYgSMz+q6viRzAKsCrynS/H
         60B0+zElIslVQDZfdPuzayCtiX7d+nowqXZnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736161538; x=1736766338;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9Ex5lc5RTPeV3kLLQVhMzqILAFbQDB2jNiB4H9iN8EQ=;
        b=IprRjSkQelV1DdAVpSmfpm5YiRgzPDPMfHan0lmaGucx1KgNXrySwatwl2MmAJGI7T
         wmiT8JsuDrpX4Do3iAdED7iG8zqhgNCT3kgc1OnmaTC/L/yKmDUyQs58wBJW974sAJHy
         ctNwBu7hFvA3cxoufLytRE42MmksxGt1kTWj46/bxYNBmLwzsLSY+2/uUcW8f/t2xnaG
         BwSCtuBfW4kIBZ5uVbKTPGbQN9fVp83hCTS0QCSE+huT6zfffUf1E2S0jZHFR1asaigW
         rw1WgKuIwVCyIA0x9RpqCflta04c/oEiDAtkrj564jbivN/Pqffvemu3AlejFCWdj3o5
         r53A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWBjUOXyhUbkuhotUtpmPD3xZOeT/h0JHE0jeOY1tpMMwSOecdByqSktw+g51tkfzZk916WEw==@lfdr.de
X-Gm-Message-State: AOJu0Yw7T8gEc87OPjB5p+vPeOqy62aLZUYCntZ78IflY26v76I3Vx5J
	4xEzSwNNypoxsKGdXtMWPPnOFEj5901YCII0UIqGCxUpXEYNfRTIZHDu3tgVncM=
X-Google-Smtp-Source: AGHT+IHMBet4bpz9kMJsMpN6Zo06829/7nOmStU1C036mSH4GBfa2U+s1KiO1Ff24FSsg33CUeQRRA==
X-Received: by 2002:a05:6402:3585:b0:5d0:ea2a:726c with SMTP id 4fb4d7f45d1cf-5d81dd8faaamr49459745a12.8.1736161538108;
        Mon, 06 Jan 2025 03:05:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:bb06:0:b0:5cf:e3e9:1723 with SMTP id 4fb4d7f45d1cf-5d93bd59136ls219043a12.2.-pod-prod-04-eu;
 Mon, 06 Jan 2025 03:05:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWXWaeKHRfqGLEoHteNydIbc2YJlN1IX0i8w7GygfGrqvn8P1dSuvqyd+F4pFQYtsVwMtYdu0UVrrLvkQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:26c5:b0:5d1:f009:925e with SMTP id 4fb4d7f45d1cf-5d81ddad8edmr56989363a12.16.1736161535608;
        Mon, 06 Jan 2025 03:05:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736161535; cv=none;
        d=google.com; s=arc-20240605;
        b=HNqQsCvjzOYuZ78BMbK0kAX5Pdogv0CbHOK2l13hQl+aQA2tvK9ZsLLrSJMgM/nhXC
         gJDCpnlsvUi6TsbbhMZckIsz4H9pOd6XWxV7FhF4Tb5CjKUzzIor5N7/rwgiKiTG7sRm
         tExX1DnZi0uCtpoAKieuVAnE+YPTRKlZzBoHRP9k+g7FQeZXe04/onLndsq2l+sq/whq
         YhkcdK5d76T/GHxY7EM121AFulIEpYFEI5Wvifq3pT7vMT8L7ss5eak70mShxlbiHykO
         98UOnQ0cuwCMRbqJuTOCRLWoBAHtfwNSwvH+oxo2SCNgQjYB5C7vVf+y3SnCmV7yLBLm
         SJ4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WHomfacRzefhD+fXbxHYEFTGHgt/EzW8qOZ2AgMz5/o=;
        fh=TtpvWT47JUDeNkrGBo1kpfmeYji2isfp66GaEaGRmfg=;
        b=cvadr3VsBth9wKO1+jckcEwAZISEBwdMtV24JI6zlqiUE3kpIi1Ks7kpeY5CYfB6TB
         n42BYleCxZ7YgPZTJBy0U3QzMfCGCXiS48ZbP8jjQssQ+HSi0+TZNeLbe5ZZyDvs4Hu2
         sGoAX6E+xJQalSC4lnmN0A8ALejGT887+Ll8vyAFJGLBbYO3TXgRCvpP4PKD0MSQXPKv
         KVmVAApjBBszi/RCS4WGRfdjGPg+1GhhJQ/Qr72fnemzU1ALTrSSFD8zaFkxd+x6Ae3A
         KR3UtBDEci+1+fOxSKGojCls26SzNB0w11ao9u8wvkeN2WVli4A27Mvc9Iv5NWwa8S1D
         fpjw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d806ff5600si22606998a12.397.2025.01.06.03.05.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 03:05:35 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 4122D68B05; Mon,  6 Jan 2025 12:05:32 +0100 (CET)
Date: Mon, 6 Jan 2025 12:05:32 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, virtualization@lists.linux.dev,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <20250106110532.GA22062@lst.de>
References: <20250106100645.850445-1-hch@lst.de> <20250106100645.850445-6-hch@lst.de> <4addcb5e-fc88-4a86-a464-cc25d8674267@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4addcb5e-fc88-4a86-a464-cc25d8674267@linux.ibm.com>
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

On Mon, Jan 06, 2025 at 04:31:23PM +0530, Nilay Shroff wrote:
> > +static bool bdev_can_poll(struct block_device *bdev)
> > +{
> > +	struct request_queue *q = bdev_get_queue(bdev);
> > +
> > +	if (queue_is_mq(q))
> > +		return blk_mq_can_poll(q->tag_set);
> > +	return q->limits.features & BLK_FEAT_POLL;
> > +}
> > +
> 
> Should we make bdev_can_poll() inline ?

I don't really see the point.  It's file local and doesn't have any
magic that could confuse the code generator, so we might as well leave
it to the compiler.  Although that might be about to change per the
discussion with Damien, which could require it in blk-sysfs, in
which case it should become an inline in a header.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250106110532.GA22062%40lst.de.
