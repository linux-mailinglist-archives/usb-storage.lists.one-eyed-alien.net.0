Return-Path: <usb-storage+bncBDUNBGN3R4KRBXOSQO6AMGQECIEEXXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E66A08C1A
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 10:33:18 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5d90a59999asf2188122a12.3
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jan 2025 01:33:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736501598; cv=pass;
        d=google.com; s=arc-20240605;
        b=V0wD8E6bXnG7A5eM5HsonNQZsOCzGuwpBMJBAowXDLrcBC25RIGsnovw3kNbl8q9GF
         sCyKFyfETMJRbNjLMjiyrVt8sRIynoCD0gmxWCiZP3NeL/q6gCDD0NpLqZpaP/kdAmsW
         ZkTlTNiM6hRVNpnn+FkzcqsJzaN2q7TdL5q4KeWYQKx66F3EMEwZde1aDXrehzE/g0pG
         agnUCc+FfcsGTj4GHNnqkjhQlZO5xDDyQJqSoz6A+e7N1bVZFCNbbd86DNY5vH48jyau
         4wEXBXlfPQtRW6sIL9x8xrLV5wQy+R7zY8/kJ2hJf/Ad+U9SKWDjUz00Wwv6mlMvBBR9
         dcvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=3BpxzMzdZRqOSKBNCY4jkKcr475QyRR8bUcuNpKgFOg=;
        fh=w+MHIYdIDp1UG1EpUudRlRnD1HLS2F3PCQAiun8aWFY=;
        b=I+Uv3Rq0ymqHqnG5myYBeFoQOEebtg3OhJZBLt0DNzPGWYyzB7c6fFSVryvMrzTPru
         9W7oI3zJfyKDZLMtBK/w2m8UKeK6zNn7EJQ4oVGjZ2PGhoAGZwlDU9914L+ZqGmQncjY
         3JgoFlIIzO4Lhyk76iGfwhAk4kEcLwIj9BfXoCWJ9UvIeryZMnGffQ0Pbv4wpr3LOti9
         CcFgdL3KAxI/AeAM3/jNO3ZePp15cPNzgOKvoZ8Vluq5X9mMTxDCpe7oufQ+Gww9+cdo
         r7GjpM5wploje9XKNUOuU4x1YloKvNKv5Sq+5WGHz3KbwVwvrTA2Rkf10MR2/OJBQOxS
         bk8g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736501598; x=1737106398; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3BpxzMzdZRqOSKBNCY4jkKcr475QyRR8bUcuNpKgFOg=;
        b=d1GOn5s46tB85qE5WoMoz4jantGts4T6Wa/RnPrXvy5d+U5YWRE5PV+bhkNpgMwQQh
         VmYp/yZbQVvJ8JlvqQj/k74DVeIICC+KXCXxbSH8qEf+MjxGtgzYVFBOepLiQNDgcFwb
         jNeI79qqymWEaz2zAQvvwVquyv76rZ16YhSTE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736501598; x=1737106398;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BpxzMzdZRqOSKBNCY4jkKcr475QyRR8bUcuNpKgFOg=;
        b=WDtzsyJoKIarm8rJru2aB+5PqkAnudizrB5WFCb/XTVMx01scYDjrWjVVn+BUJT60f
         WXTP0JBgc2w3J+xUjwEYXIAGWnV5jjhkB9tMhyaPyOWrArXiuUUjbkwtIFu880emU35q
         a1/A1jL5tsPov71T/j3gWMLSIUVvnSp8BMfwX06Nrskbp/bkXCkXCvloUCBJmYHrw1k/
         eFL2oOaPm9EIPzi35W0/7Fhz5eKKwlcJ6A1nJVA+AN62w+Zf7AzCaxl/nANoPaaom2A8
         BBCHNMrx9Iudvko6xjVM4wfF7SxzP99MNksYdSbsUMTNTlBA27+yI3L4ZoOUFs5fOpvO
         /A7Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWYlQigPQaK1NTZq8HJ+wkN622cM2km3FZ6PexG32PHpOWtnNBsU4WG1iy0qLpkMUmC+KbYag==@lfdr.de
X-Gm-Message-State: AOJu0Yw944nVcTFxc2WdMSGxWwlPVsaO7bzjHrt5eL0VOrDcqtmJYYT1
	iYuy3ZHNexqIwfCW6LyLYOcVvwVmcpz+5ohwGJAmIEXfsByUmJ9cfQcgi5ZnD8g=
X-Google-Smtp-Source: AGHT+IGRLiwlDfBcCz9uLAU1kYMVdfDaA0scwoP6UWyhMqUTS0wzxrofFzDGsJ8xjnyzrWa/Eo66Ew==
X-Received: by 2002:a05:6402:2689:b0:5d2:7383:a3b7 with SMTP id 4fb4d7f45d1cf-5d972e6482cmr8536523a12.23.1736501597756;
        Fri, 10 Jan 2025 01:33:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:d485:0:b0:5d3:cdb1:60a with SMTP id 4fb4d7f45d1cf-5d9855b14f4ls37751a12.2.-pod-prod-06-eu;
 Fri, 10 Jan 2025 01:33:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVpHRwKS+iTkEdvz4YDz70YpDJ7ls93nCJyJ/z76cSlSREWFhhTrU6kxeP3VQhGxLuShafPivBmx65hgg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:5d0:b0:5d8:16ea:cfb4 with SMTP id 4fb4d7f45d1cf-5d972e0b23amr9124811a12.8.1736501595402;
        Fri, 10 Jan 2025 01:33:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736501595; cv=none;
        d=google.com; s=arc-20240605;
        b=BfhBsuG/cgSpU40XBeGlsIppjzgQlS99m+GHF8XncCnrPh6bgakxFNfi8Qy2XJhFb3
         jJyv6IpjnXyG90lH78bysoal0/MCQtb9OzYY77ZGgoJZjx0/iWm1y7L96gvqF7qHhcUy
         Myo/iZBfShKu8wUayDs6nwxVGN3+2HLaWET/rObDgHl6GusVY/6fFMrYIocUaKOaz8xp
         492Ceib5Y7fPNf8NsadmCen4UQ8/L763M7Du4nYnJ0uNJu00W9NXgw5a41oMh1lcmoRC
         Xtv/6n01VCRr9oKVUl3Zg9lxyWRJEECi1Uudjp5ODApZZEFUKXVymfwXuVr98jd/QFRS
         1iDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=Mx3R+4Y4b07XTyiJw93ocRKEAlHKvHhzgMc1cCd71qs=;
        fh=NmTq7XolkJtkp/LA3xNLbIbjuCAygSY4hbklQSdNAR4=;
        b=jyWM0/43d+Swvo7Bc5YWgSqV8KK2W7bzfYnwCI8otroE4+rnfl57+EyTENQVFoF07v
         +f1CJ9srImxY0tvFCRjB9FPJAbmQt39eNQv/wuhmBKj6d6QO6HJ419E8hyeXhJp6czEI
         cN5/UG6bqyInCSbeNuWWC6ChPwLrRM0l5StJk0aWAZ1kVIeZ0CUNgG192T9Jt/wh0DSP
         zPK8Zv1iD56wXAW0/GYPD7DRiRbezg9VZlis5OtfLxofQqwXVpzGwNU1S1jY3cRMg95G
         uQ9PmtsAeN+S7VnOlPAZ3OOf1gTtW4/RhhPc5zWZAaFyG44hTS+HMremZuR+HZ1keY5o
         pxtQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d99efd97b2si928217a12.217.2025.01.10.01.33.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:33:15 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id B95E868BFE; Fri, 10 Jan 2025 10:33:11 +0100 (CET)
Date: Fri, 10 Jan 2025 10:33:11 +0100
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	Nilay Shroff <nilay@linux.ibm.com>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, nbd@other.debian.org,
	linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>
Subject: [usb-storage] Re: [PATCH 06/11] block: fix queue freeze vs limits
 lock order in sysfs store methods
Message-ID: <20250110093311.GA9083@lst.de>
References: <20250109055810.1402918-1-hch@lst.de> <20250109055810.1402918-7-hch@lst.de> <8cfe7690-0101-42e7-ba97-6c6b717c4706@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8cfe7690-0101-42e7-ba97-6c6b717c4706@oracle.com>
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

On Thu, Jan 09, 2025 at 01:07:47PM +0000, John Garry wrote:
> Do you mean that the sysfs_lock could be removed in future? I would have=
=20
> thought that queue limits lock could be used for the same thing, but I am=
=20
> probably failing to see some lock nesting/ordering issues...

More or less.  Think about it: what does it even try to protect?

Read=D1=96ng/writing sysfs files vs itself and file removal it serialized b=
y
sysfs/kernfs internally.

Any information tweaked in sysfs usually also has other places that can
modify it.  So we'll need a lock independent of sysfs for that anyway.
A big part, buy by far all of that is covered by limits_lock.

Serializing creating/removing sysfs attribues is supposed to be
serialized using sysfs_dir_lock, although that needs a careful audit.

It's also used to serialize a few debugfs things, but we'll need to look
carefully for what exactly and switch that over to debugfs_mutex or
something new.

And then there's a bunch of misc cruft that also needs a careful look.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250110093311.GA9083%40lst.de.
