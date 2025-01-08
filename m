Return-Path: <usb-storage+bncBDUNBGN3R4KRBT5S7K5QMGQE6V3Y5WI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x648.google.com (mail-ej1-x648.google.com [IPv6:2a00:1450:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 93010A06014
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 16:27:13 +0100 (CET)
Received: by mail-ej1-x648.google.com with SMTP id a640c23a62f3a-aa6704ffcaesf699438266b.2
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 07:27:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736350033; cv=pass;
        d=google.com; s=arc-20240605;
        b=JqsKcDG1jltMMz0LXXKuJJjZC1/FEtxebRzTnzTJHzNGXsBJB/0tpXiOfEWiUuxeu6
         CmHIa+kM50gsAYy1dfnzAiJWcuS3c7X4w/Spbn1TdmJo9NORNqNEkgwJU+trBgRdBzm+
         FDTorElcbWCCbEHbEfwayIp0kbPXfLZ5y0gSZopBepwz/n1EKzQdHi5s0gUEPIXX4U1J
         GLyV6hXgKCO8WXdzg0HmQoHF80qEP++OwHWuXV6HEh+Rm5CEzIDon9TW7LSA5Knd0lKF
         impGVGiei80TLGA+PCejD3O+6UDrANujCgUAKkHDGYyP9xSDANh+X25Qqu+DHqk+2UPD
         GXwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=QVUCeFg2uZfCLs0owl7GjK3SpGpz5eCxtzAetwE2zRw=;
        fh=Cl1/6U6lmnpnOW6lK9AQPsWcw41KVqxmC3Ono8bwA3s=;
        b=DPsW+bpTEa5eN731IQJO2AMw2JEGBpQouizwSN33g7WNBUsLlyrbl2+dDXH7o5MhsK
         xnanch83XB+FYGvsT48oe2k2PV9APnAGvFjpe9xdHbKTin8TnqMD9gslEpMueCvCdO0S
         i83zlfxRLalx4XxJAuPQR28RwldHt999mtuOhcSG8G3RC/MvbGhysibemQdhwRUsW+o7
         1Wvj+dGVsjEoVggHt/ATkblFg+S+2AOfD++1+BZP4DWkKzjKLHqZogxG1fHO345vc62u
         zKr0Jk/W9DMB/FvFzkGBTQAIMWtideVAD5IUPo16yfe9oBlP62DsII79G2HwNnHKwrW6
         AcZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736350033; x=1736954833; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QVUCeFg2uZfCLs0owl7GjK3SpGpz5eCxtzAetwE2zRw=;
        b=BPvJskrPR3/53JG6eW3OKmLU6QHgKrpU6e1Okk7qRo3SnXnI5fUgFIxTQ+NI18N1kX
         PfepurDGioTZfoCkEbxwXRdqtKFLjk08Bzz5sHAoS6hryWYZ9ZtR/qER9tVBIY9zikLw
         FehHfp6EjkBQqhpb9gv36xbWIhb+SdtFg5xjg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736350033; x=1736954833;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QVUCeFg2uZfCLs0owl7GjK3SpGpz5eCxtzAetwE2zRw=;
        b=stJ3ggkU1NLqsV6mbT59R7uBg9yfiuq5KqOesZT21RNaGRrffpFSN8CvzxOrKOvpSg
         Zsy2eTFsAgUOhUGM4YV7jD1i+TxuFBEi7Do3t9HLdKh2cx4rw2nOfX/3AHtXlHP/xFhy
         jM0m0Rr6xfZOfmapP4+9c55RZ7fW/wsV/iM3zm/F9kNxEXS0mb0QnsLeDVFGst2EFm94
         HuMwE83J+Vddg808lFOYqgjqMgsIQb2SdCH4xpB5SPzc0gqKBWLxV0BxWBLaQ8IZDYlh
         lyC5Mp/Q32za+XbdlQulN9KR7MKoCRe+Szq9Xnpnuw0fhnNSlJNcpaFsYWQeipOlXSBt
         0lMg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWSWxZB5zk96jN8Rn8qY2JDUoQu3fFQ911mPNbV4XjxaljNvTT73OQFSpcmg7S4q6ez/8Ur6g==@lfdr.de
X-Gm-Message-State: AOJu0Yy+7g8QesPQNy8JBn4WQAEizqdLGfkxcgSlAjVSGa4IDCCI0WGP
	LBOcH2OOLJeOWh7MIHHyQPDKrdEamOelDUVFdFpJK+nxaD0d1SItlnCg2g8zXYE=
X-Google-Smtp-Source: AGHT+IENa0H5izdiLMU74EpdEugYIzZo/IqO4R8nf2e6D1FUgA/DVGJjZHxLX375NvCqBopuGVCf4A==
X-Received: by 2002:a05:6402:2114:b0:5d0:214b:9d15 with SMTP id 4fb4d7f45d1cf-5d972e000d0mr2705614a12.5.1736350032784;
        Wed, 08 Jan 2025 07:27:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:99c8:0:b0:5d3:cdb1:60a with SMTP id 4fb4d7f45d1cf-5d95cc35802ls159654a12.2.-pod-prod-06-eu;
 Wed, 08 Jan 2025 07:27:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWrP3qPt0RWOp6zN/OvNAey4cdFzqj3/ROnIcQ6OWAXhKUehvvvlNvs1SBkh8FXJNneuefDeESNhOvPAA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:720e:b0:aa6:6c08:dc79 with SMTP id a640c23a62f3a-ab2ab741567mr224596866b.35.1736350029634;
        Wed, 08 Jan 2025 07:27:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736350029; cv=none;
        d=google.com; s=arc-20240605;
        b=iJYES8xAjlBj4/nHsL3AR0acR7+T917wC09caZXay944iRUwvh3WRH78YECykZqgm1
         kZETNhI1AHO/Ty7SOpkCfbqqazJbr9sOcLajUD3iZqTfcXtPktL5mq7efjatTNNVwma1
         yHJGdO+8lMGpKPHNAiyv6n7C4VhsbWVGl8UIoWbRaHeJOzoDd4ov4/FCeOjSP0nYOpWt
         GH5lszJs4F0CYtAqBKSrKyzW4pX+pc5h1j12mPMVs8GSE1B7EtARW6yKv7+CL0PYOIc9
         ULwo6OQr+hSam9PfTgng5DWO7DM+lMMR4iB+y46B6Ubjo2XCuDWk46sBa5qCY9l6ORJI
         K2iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=c7ql+OSqJfj84/r/VppX6gzv+9w1BxVrKvnHJw1qL3U=;
        fh=ASjV2SCNhw3+0CjjC3hMIlcKstd2UC2VvTKUuWyRC/Y=;
        b=EV4x+bsIcXPSedgfXfuHO9Qjy+gkx5fGa+G2ExihH6SKTdfl9WyaeNZ/W81jVcQ25M
         e5jxPpZbyfaaNOVakjfTSd3VQAO1GzsUGj07HqP14YwEpLhqh3mnY4ocBo/jGW0PAeYc
         w3+BCH8r6UuKgwGV7HmMiILi8bMXdnze1TABVCI53jggqgfGcJFsLGa7FYclhkdQk415
         qXR8RBsa7fhI+NcDpQyYiEZBvPSMioVcVV/Ci82gzY2zyruRdlwH9b2YBuZf52IUGd82
         ejMdsbypu2gVg0H+QS40RtTnnqXdVv22IYOLiC6ChUS4XPBnY6SnBSd5cKWP6m3CVxdL
         zAug==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a640c23a62f3a-aac0e7f5015si2571222466b.4.2025.01.08.07.27.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2025 07:27:09 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 4A05568BFE; Wed,  8 Jan 2025 16:27:06 +0100 (CET)
Date: Wed, 8 Jan 2025 16:27:05 +0100
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <20250108152705.GA24792@lst.de>
References: <20250108092520.1325324-1-hch@lst.de> <20250108092520.1325324-4-hch@lst.de> <Z35T8xeLxhXe-zAS@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Z35T8xeLxhXe-zAS@fedora>
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

On Wed, Jan 08, 2025 at 06:31:15PM +0800, Ming Lei wrote:
> > -	if (!(q->limits.features & BLK_FEAT_POLL) &&
> > -			(bio->bi_opf & REQ_POLLED)) {
> > +	if ((bio->bi_opf & REQ_POLLED) && !bdev_can_poll(bdev)) {
> 
> submit_bio_noacct() is called without grabbing .q_usage_counter,
> so tagset may be freed now, then use-after-free on q->tag_set?

Indeed.  That also means the previous check wasn't reliable either.
I think we can simple move the check into
blk_mq_submit_bio/__submit_bio which means we'll do a bunch more
checks before we eventually fail, but otherwise it'll work the
same.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250108152705.GA24792%40lst.de.
