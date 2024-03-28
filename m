Return-Path: <usb-storage+bncBDUNBGN3R4KRBBPUSOYAMGQEDHUW4EA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDEF88F6E9
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 06:03:03 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2d298d601adsf3145881fa.2
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 22:03:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711602182; cv=pass;
        d=google.com; s=arc-20160816;
        b=kMVi0m639YbekeAOyNmlpPLCKFzQphVBixswYpfThbUJYWYBwL2x0YO+dhx/yGjO8H
         xFW2c0ezuD4QIVyW4Up7BG12aFkN95zpG5IHR3JM9Gb//sAv4cteVesZXNfEbrgxVOaR
         L7cg+iZqNFahpU9YXoLAnpIx0+XzbWYQGnfV1VlnWWdyFAlIW9mbXB8x1n8MA2WVYAvv
         Ww43EeQcg3Urun5d/UqplNH1udXymi0f/kSXKV+miOgEFwrxI4VqBUNHpNRwv4MgS4bp
         2HWUogvrcfz5i+5pFTHSeEDCe8g+0JNbsUojQD+Tg/uj6FGYKlnGYtBPZz57LyNhVfxh
         RQjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8ZWthbZuTYtUVoldszF6F8IzqK/QekHG8Gnk7FuZefM=;
        fh=CUJTUN37kRuo7kLYIL0ddS8Bd6bdGG8+WtJV6KDItbM=;
        b=02RxDfq7XgN5rfPUwo48Sv0ayEmSthFpHdDLP8G2b6mI6gu52kCh9QfjVGG4uh6lGd
         vCd+WP3s1XNCAU7yjPmztIbJOjnpoJu1om97VQkbi6R6XaRGfZC2KEyh5FLhouyYh0KE
         x9anwkRf17Mv2nXAAiIitft8quPe9xycWpWj9mZMkD9F7CbXLmA9gHP0cSF1R49tHBmg
         qjTGI0vjktVJlCK5CgqPtp/YdCMKTVmwARsDQ++qmHbCvX8PvpsUXAFrMLAhkX54sE7L
         1k2FjleCHCgMBNzVJcZixDrMy2wdnlrUSiB2g/f9h3JQAdevhWEXkUv+XYFvtfHtiZ86
         kzsg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711602182; x=1712206982; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ZWthbZuTYtUVoldszF6F8IzqK/QekHG8Gnk7FuZefM=;
        b=jV5zioxWATLCTkhn+7qXPinqVusIQ3MdsCJzbTO3ThOtl5e1IANNRyAKAUCzNbAq7m
         LU1kfqalHnNpYag7FTNljwNKFLvbVSLjS0ZQStu24vmmBg630WV7+PTKP+jm4VnEHuYh
         u7AzZjbYaaCo7pgJOZKNFQOgNF70U5WAYs2nM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711602182; x=1712206982;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8ZWthbZuTYtUVoldszF6F8IzqK/QekHG8Gnk7FuZefM=;
        b=gwGpUOBq/fDzI63bT416DqRGmorcgKsBBJ8oGinX5/rgko7buRMNvs6x1rO6DMm8la
         tYaRW89MEqXDNC1hTAfZMrJk0eX+x5c4aEBnRkOvh+6C5NJnAggPJ3Md6F3Jm2UihPhH
         C9wr2WnV6R6alEtpx1YYnlM62XYXfwUXa2XUuWP3kZCKUCwrl71leBzXFx08BbBVHM6T
         HisRY05tR8Ur0pE0G/NscC+n0a710UZk60uMQ2BEAcBMnq1oxISde0torgEDJ9xHOF47
         qDRgVwuaFy7pLKJkL9DgSFKIHNfXeEQNJA+J+J8MJsnHUfXfoJcCx4fijzNel1XQcvZ4
         WvXg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWRll9YjuFRT4xtgCMW6BTNMYWy2cojn7EDABfcfA9uNfgBfsbbTiv3UY1BtqGnK4VKLI7nZWs3gBxpgfNqQ+d1jzJaYEvu7AWV
X-Gm-Message-State: AOJu0Yza7fhb6z36Z02TEiPmIdK4DVlk14RypglnOcJhxNnDvJtVNaew
	si/9NaGFJcwY3R1XKD0F5dTKvFmOzXUb20dlM3spusyJMXbhWMWiyyLcwG2qRNE=
X-Google-Smtp-Source: AGHT+IGktWnF3sUnAKDGPnY2IvA08dJf1dlon7oatLK5KU5fRpUReyZ92rPN2GEN6hRL1DvLrytaGg==
X-Received: by 2002:a2e:b046:0:b0:2d7:7c0:b077 with SMTP id d6-20020a2eb046000000b002d707c0b077mr455223ljl.43.1711602182125;
        Wed, 27 Mar 2024 22:03:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:8685:0:b0:2d4:977d:bf50 with SMTP id l5-20020a2e8685000000b002d4977dbf50ls255936lji.2.-pod-prod-06-eu;
 Wed, 27 Mar 2024 22:03:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXYSg+M2Zy9ppoqknptMhc2aXcQ3JXwO55y8ztt8thqB+/cVNPnC4WoBah93pI4QIA/FjTmsYYUtvayde8zULieRYpLqzQz1anDX7lAjU8PoqHVyfw=
X-Received: by 2002:a2e:9ad1:0:b0:2d2:d0ba:2586 with SMTP id p17-20020a2e9ad1000000b002d2d0ba2586mr1255196ljj.24.1711602179787;
        Wed, 27 Mar 2024 22:02:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711602179; cv=none;
        d=google.com; s=arc-20160816;
        b=EpGt9zf1rCrBamDzj1zroNcAVbn7+ZVufxF/pq+12SPAPGCgDfPI2eTqnxuSOZv4a1
         HjOAczy07sUiZ+ch3GTznCJHlojvy/81/HphmGhu1pGHicFU1YNTLNwNiSq4JlTZqW6E
         +rfJUfacO9i/M0GbR1Tjy+kkvDw7gSNubPux4W7AnjQg+MNFI72vji4bjqkb61JPzAGW
         HbRG2cNNJpAMYEU5l/8bo3kjfCOK4fgJF86JBEFZq+Ndf2XusP2pdw1BhnCoZJdFJm42
         X2fK0ziVfPjxZIquCTL7Ib9P8vJs9Zi5SkmHfOBUpJOeqo5VijhZaT+RA7Uw/zA9I2EZ
         qUzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4X96eUp2n3528+tNI/Lp7ACf5RXg/G0hI3/Tc34HtD0=;
        fh=O0spm9G4llVPbyHhJ041MDy14lImw6/CKpM6ogn4cVU=;
        b=duBPyl7TgQMZrtj/H9L5wrlQa4jsdtWLZjVcDBHmkXbXxQRSy0CCR/oOiLO1hKfKiz
         udBBkWz0KdqzhzFkefbNZqFI+GjCs6aQVSvCOa9zL0sn3pPGi+6c2x/3Ah0H8pMvfS9v
         VNDTI9l+kNHiUD7s63O5tAqCa8jmpa9GWQG7Z3azJSy2O1/Px11BQkTVzDoqgH1K1QPS
         R5d2gTNCELfgu5+YVsQoKb2lawVcX+jTNfeO5vnKPFFumE1KJirRRPk6yvrNjd9ay3KW
         Psh38s5tR0ToDMDv9xv425RM7ZApHsbIY6RDne2348pP5sSPWrhnm2nVVTagDOtw74RT
         nj/w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id j5-20020a5d4645000000b00341c4692974si330432wrs.497.2024.03.27.22.02.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 22:02:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id EE41968B05; Thu, 28 Mar 2024 06:02:56 +0100 (CET)
Date: Thu, 28 Mar 2024 06:02:55 +0100
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.g.garry@oracle.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH 09/23] scsi: use the atomic queue limits API
 in scsi_add_lun
Message-ID: <20240328050255.GC14655@lst.de>
References: <20240324235448.2039074-1-hch@lst.de> <20240324235448.2039074-10-hch@lst.de> <eaaf6c1d-2a7d-4a67-94e3-bd5dc4a83045@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <eaaf6c1d-2a7d-4a67-94e3-bd5dc4a83045@oracle.com>
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

On Wed, Mar 27, 2024 at 03:39:25PM +0000, John Garry wrote:
> Is there some reason to relocate this and have it included for other error 
> paths, i.e. queue_limits_commit_update() call? It doesn't really tell us 
> much to know the cause of the failure. At least previously it was in one 
> location, so we knew the point of failure.

I assumed an error message might be useful, but maybe it should indeed
be a different one.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240328050255.GC14655%40lst.de.
