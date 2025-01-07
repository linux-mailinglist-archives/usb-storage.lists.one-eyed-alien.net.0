Return-Path: <usb-storage+bncBDUNBGN3R4KRBAHD6S5QMGQEU6KK3OY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 386A3A0413A
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 14:52:01 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-5d3e77fd3b3sf17733161a12.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 05:52:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736257921; cv=pass;
        d=google.com; s=arc-20240605;
        b=OgYsXudYuzdhKzgPkU5lGe5NnkQlAlruXOZhkv6O9IuF3a0Tsla9nArStf4+ey6ps+
         GOhYb+/o2nEkNP1RgRM7zYGEB+SUPLafJv4/L4KwySpM2t8+ZsWndEwYalTa/JuKUw3i
         bcdnmKrc/dLI044izm99SpaBweXdNLTDXMHL4G5cEcB/YgH0+4ZTeSDPMnSxSHW7rfwX
         aUvi1OtyXIUUpDcpiZTGrZAD33Z9c9lCWHJlA0PZsXFbrPmv7XBs3HVZ9hDQoxqJON/X
         kERbj7um595nCh9nNtSM1uB2+lvbgF39qO054AExcmoOqpltV/HvXHyILF/8o36Yc0Bp
         Xj+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=OEe4qCfX1sd8sqHUI+oFQXUmNDNoF0uwAwm166EH1/I=;
        fh=8X1sJfRrjfRBZNHJq3ksNi//c6LtQHgAKM1z9AZKVIU=;
        b=KQdQDYA4UW8gw/RrPy2Q026IgN4e5zzIp+IDA17FUt2BHbNSkZqlPZVuE602zGL5Nl
         aLK6q8dmnwjhKSse0awwxYpRF9cQVbfc5llZJbO6l5dFT8had28xsLh9ZUcwLnU8Y/Ga
         X5lmDxnoOfHAIJY7joi4pAlKhMNXHoXvwhklOqgkO4Y3VRoVvBjctlVp/zrrH9nvotWA
         8xzhJYhj/IIsIvs0g5Z1AKD+YiFWATTPYlCEj1SF8lXbhWaAk/4OWhUfddYdxDeTTf3u
         FKZwXl+k0z6LvSYDyfSyo5J4bqcCEW06RjQA6j1DAh10762WaX1BaCCzRjOSNxMYJkcW
         ta2g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736257921; x=1736862721; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OEe4qCfX1sd8sqHUI+oFQXUmNDNoF0uwAwm166EH1/I=;
        b=YYSCE126KVAPQwGG6zKvDz46CfET5CN002m3gCvuvyDlol326+CsLG7681OfCI84K1
         /BDPhUx1ytdEQxOwSEITBExuZKjRkQAxpAnf80IGjdJPNlTtCZ1bdQKmqsh0JwajQxlC
         j3OJ5jps09N+t0zwE57aDB6Y6VQEjdPIqcBZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736257921; x=1736862721;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OEe4qCfX1sd8sqHUI+oFQXUmNDNoF0uwAwm166EH1/I=;
        b=DJe6cfhTQdKNkprFNqjBMQmTUR/gzPRzjtMcJwOpA4Vt5pG50oPobgGDpDf709X4A8
         5r9zf639iq6zvHzydeucp48Vkk2WCftURd3y1WYmplNwxZzwyLSWQ6B+EfYhV+j9l+Mt
         uwlReQvWhr+gVn8SLmE1PU2ihvX0o4rnsqIgiTJwcs39dA+H3hIeGNN8mPuHkhpBz+PH
         A3pQpAyKLZmr9ciUBw+0a2U55hUP9G8n2ZpTLL4MrP3/Seng7LdrTtMT5Ef55IJI8JnS
         WmOL2tZfViantbEBd5H5cJc1OF5fDS3fqg4KXStKfmgxAkYZ2SMqjL44sB4bDk8UoRK+
         lYLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXCm1oJp9ASFVgaCJ24QA/2eJv++DqLKfvrmq8gdDwuT4Uwp+dV6eeSvPVR8CvIVWxpVxjTzg==@lfdr.de
X-Gm-Message-State: AOJu0YzlC7fZ9VY7WZdbGycWKexWB23tT71ncN+HpokZS4qlLWIrjoBJ
	yTui9/UsZzq5tlgb59r71oCDq9Rdsqm5hvAxxerfmb9K5rx4lAnxIPGrWndXzx8=
X-Google-Smtp-Source: AGHT+IEowiqzFLBRAMeKM9BjfbUCvjA5alvVcpz921NX7Uft/n14Y1rtcTseG5EbSDs5DAV6zYEeVA==
X-Received: by 2002:a05:6402:50d0:b0:5d1:1f1:a283 with SMTP id 4fb4d7f45d1cf-5d81dd849efmr54503521a12.4.1736257920566;
        Tue, 07 Jan 2025 05:52:00 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:319b:b0:5d3:eaf5:6da7 with SMTP id
 4fb4d7f45d1cf-5d96ca3f99els298396a12.0.-pod-prod-03-eu; Tue, 07 Jan 2025
 05:51:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVCNLwbOQdlmEVayKDE3oy19RaBZT0l+5qaT93fnX3ZGqtpaxDziDfZDMZcL1E+LNPkuAn8ebHqKmn5sg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:2813:b0:5d4:3105:c929 with SMTP id 4fb4d7f45d1cf-5d81de203fbmr57469284a12.23.1736257918044;
        Tue, 07 Jan 2025 05:51:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736257918; cv=none;
        d=google.com; s=arc-20240605;
        b=SVUMTy3qJEmDoCw3nKq+7xSCNdJjBaXS/d12z/w4OSwDBK75SnRUNe4Q21nzkK3bou
         NYik09Zpg5f8GZCxYGbbrfD2eJHW40HNWBy7/q0qwzjLxOidvqzyxd1/CpbPFfv1j5RD
         7qTRXHbfVK3RrXVEqsuKqbBbzLihD7z/fgABspGrlJoN7HpNQ3wwproGuOHX2bbhX/4e
         cEEenKGH2RXm4ayB2yN4kLOpT7FhP6BvFrffQz6EJwjpM9O5RchIOI1LjwoRpY73XsKR
         kR+vIPro/isRIrVt6frCQebujJnHuo7WovzpcFL6F754gj7N1LGVp2UocTd/dc/3R4Y/
         UGzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Kbb8eiGkRBCGGbgzzfOOeGqWDJhasr7p64hEWf9dgPY=;
        fh=XJ/xA22z07LYCWeoHUPlSDZTqwZKXWlTH+Re0f0x2tM=;
        b=N2O/S+PKR2E06IWJpEAbVa9Vnv6tJX6BumA2kFD1mWrDgeeCCT8RzSdnHbl/aaJz+d
         8f2AkH3ujus6WO1iV/gqRHNzImTSvXIsIJCp8463HWRXEcrQ9dd6xrF4OZWOGuyj1Bh8
         uzG4pkQbuIv90SLAe3+A05LwhhygBwME0Ky2WcrEHZh7l4OkSgzldl/nQgDpN1h4uRYm
         UA1JhoRhVUxXfbdAPV8kTPXWQGJDxe36HUGqpyD8YGvGHwPGNnePsdWjDu/s4kLUi0Be
         yG7VIbx+YPH1B1YBo6wBRQwH140Jmb+aYuePHBqvCdvpf3EhDvCBEXTPFskiUTNgoGnV
         MMHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d806fc983bsi24043959a12.277.2025.01.07.05.51.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 05:51:58 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 830B868D07; Tue,  7 Jan 2025 14:51:53 +0100 (CET)
Date: Tue, 7 Jan 2025 14:51:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nilay Shroff <nilay@linux.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
	linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	nbd@other.debian.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 3/8] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
Message-ID: <20250107135153.GB22046@lst.de>
References: <20250107063120.1011593-1-hch@lst.de> <20250107063120.1011593-4-hch@lst.de> <220cdd33-527f-405d-90af-2abaace36645@linux.ibm.com> <20250107082145.GA15960@lst.de> <90ae40c5-b695-4e17-8293-6a61648ed24a@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <90ae40c5-b695-4e17-8293-6a61648ed24a@linux.ibm.com>
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

On Tue, Jan 07, 2025 at 02:53:40PM +0530, Nilay Shroff wrote:
> When I applied you patch on my system and access io_poll attribute
> of one of my nvme disk, I see it returns 1, though I didn't configure 
> poll queue for the disk. With this patch, as we're now always setting 
> BLK_FEAT_POLL (under blk_mq_alloc_queue()) it return 1. So when I haven't
> configured poll queue for NVMe driver, shouldn't it return 0 when I access 
> /sys/block/nvmeXnY/queue/io_poll ?  

While that was the case with the previous RFC series it should not be
the case with this version, as the nvme driver does not enable the
poll tag set map unless poll queues are enabled.  I also double checked
that I do not see it on any of my test setups.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250107135153.GB22046%40lst.de.
