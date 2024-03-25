Return-Path: <usb-storage+bncBD3JNNMDTMEBBEPOQ6YAMGQETTXRMHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D6488B3A5
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 23:13:38 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id d2e1a72fcca58-6e69fda3952sf2001282b3a.1
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 15:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711404817; cv=pass;
        d=google.com; s=arc-20160816;
        b=BywSALpnkKu1koMSajyTQdbxHxGY7wwS46X25ZUlYnX/EGjDh2xibRxGuWv3oexPvD
         Upa7NtgTTcOMsVL62lNxMfgAAY1VfTjiuFlVuCl1EcbdrCTTcl/zduB13yZsW5WWtGPI
         nI4NTpZ1N0LS31HfFerdBAnAlcSVwKswSrYdGBYDoX3a0bxV1YTeP31o5IpG98ttmlOa
         16FNYDvG5V+dfkOwMsHL5wHc6BqBZDVd/ETqJyCRqGIrPWs/iXLWNROoaC6t3cUa6cfx
         JuoltJC+imY8RzEmcKVduAdDbec52lVpCHaigN4Ky7k8atdxw1Ub5AKf7MF77q819Ero
         X2aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=/jWDP7qSCDq/gDJ1tQJ9G/G1JPJFnXGi2jw2EuxHDQo=;
        fh=V45DMabpF2qF2xdGzLlBLsBgYiOSvfaDqBCN81tLNRY=;
        b=UGTlcsWumCLE/Pmr/bZJGx2j+pI24CtHQTYZYRcue491dI7kSIRNosUtnd5K8sO1Nr
         4nNzOCw+8Uoldzk0hIyC5gKIpCoFObvjblKzi9rvTOJCicAdCgTFcWGuIaGPCvszxMNq
         pD+KPPbH0ppfKcLltvY6DnnaG47jWYgz2uUfZ3NSafm8a7TZdkF7pkPkUuvwTJL6mTvB
         3Y5FEbRACsxAHIDzHlIvdi861uZidsKvBxmofsaA2N+775ZAW/hRHYgZAo5s/va9dwee
         kHCrjmo/SS0SwT9BLwwa8kNa6Qc1q+lPKb/EWm74V2tEWcnC6mf4PGuw/92+L6MzI96w
         w3dw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711404817; x=1712009617; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/jWDP7qSCDq/gDJ1tQJ9G/G1JPJFnXGi2jw2EuxHDQo=;
        b=h3h2b2r+YnTxnP1MPXxRPmKmFU36ngEvijHLt+ekOWgD2kNq8yFrc4sa1iRH3b7O2V
         zUtQPiPJ7MhocSmVqtghsXubuhGLPh+xG9RwUxYDqL1j0524/VPX3Of8bQ99riW9MhUu
         cJK5n5j/508somFcJ94tkGnrT8MP7LB5DY8hg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711404817; x=1712009617;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/jWDP7qSCDq/gDJ1tQJ9G/G1JPJFnXGi2jw2EuxHDQo=;
        b=afhVh6pJmyZiaBX/xMZz7U+tZUscMKF7lzTgIdpZnLZbxi0HRjL7FNObVfaGjTOX50
         OurIt7adzJCb45ti1eVgXqvgfsAEGDv5VmA33krqvc/xtZkjQmJ0W+Aya++tuZY4UvMI
         oPFUmXu8ZjYwtrCkJD04XUsztQztimxabzHqaoIcRCUF45MW653YQ0hr9HITMEHQDway
         E2J3yRcSLRZo8yCsRI0uPLpwZTMzQ9qrP6051pzJM5jUks/klN9FzgQss0ni+v+rrVDh
         n0h3+O4GSoPdxEo2LDOEn4nc3UBWOKYVTjEXoReJc81Wkf0MIljR9VH9x3txcItNOppJ
         +4Rw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUnbfYEeC/t49lIJ5KeQah35qtahQrawVKIf8Jw2FBWfqGpJzhzi06f6ZuEVyvnYIfbYsLfCRuOf4zD30ooshuxjjOF1wa1lYQo
X-Gm-Message-State: AOJu0YzejIjmE2RbT42HIHcGI7T/HxqIfayMFc73aulOQACn5ehIN5uC
	V3G8hPwYp5bJhgUKI6JplUAF33rhLAs4KZWa3bz4KCZ7gN5xQnFMW1ByNJaIuqg=
X-Google-Smtp-Source: AGHT+IEAWBFmt7l0F0sTHXxsuKgMfYkpdJY42Q8musNDfFgjdkldLslt5budFD5AKtM9YUutsUvoPg==
X-Received: by 2002:a05:6a20:3d8e:b0:1a3:c5be:678c with SMTP id s14-20020a056a203d8e00b001a3c5be678cmr1444873pzi.47.1711404817359;
        Mon, 25 Mar 2024 15:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:e542:b0:1e0:b5e8:71b4 with SMTP id
 n2-20020a170902e54200b001e0b5e871b4ls1181075plf.1.-pod-prod-01-us; Mon, 25
 Mar 2024 15:13:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXulOJ2GJgPfhxY4sV8RjpAnUY0/vbG6jktS4Yzlyxd9LHlWfr61+tWPawBz/AJB9qBd5p26MlJWVNmVw5B1P4V61yuWSlA1OhtWKySNeZV74wOGDE=
X-Received: by 2002:a17:902:9047:b0:1e0:552d:8a1b with SMTP id w7-20020a170902904700b001e0552d8a1bmr970648plz.57.1711404816017;
        Mon, 25 Mar 2024 15:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711404816; cv=none;
        d=google.com; s=arc-20160816;
        b=UAGz+7kjnNevO16IRIhtCNcB5Pj2/uPICPUgK4ScR18qh4dIsQ70WvtiC3D41pJXWM
         FaP83/sdJUrIZEaBxezbjgANS8kBTmRkcghyWahifOx/9jqtUTNYvETx/SPqTw1yorXd
         mflbunhLq+D0yBKP9TSEXMWOOz24bTX1aDsbGDrvXUcv7fTpn28Wp+yAvy31aw+ghJI1
         c1Fr1jm+Bx3OSJRDL5mots6wwn6rlPX5fCwN801/jPWTYHG0fZZ6XBR2JRN8fhYO8JyX
         cQEVKdknbdSjdU3q2fp8BzEZJn905+DJAj1ep6vvHn22pXaVHLwDy7LbL7PMCovwBJxT
         9ZMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=/aQ4e/dbCdS2itYvqCPdo8g2LXYfZKkrZB47BoXZEIg=;
        fh=9CybH57Kj2DY75aitPW1pE6BORDx88bRO7aeIZRqBfg=;
        b=T2fqPQf9E7uXxxLMijnmGSCPK/QlBLb/WDKw5AvPJR1L6ZbM4za2W6vzMUh29wMpm7
         E9pQVfBwVx9A7mE3Kpf0vYeb9eBmTxj6R6NjPL8P907AU8/YoG91WbKAeKLNjSltHbDA
         2gVbXzdQNTdjsQmQcaUclrkTVrO4i+FbKiYM/CoxIcbRCUUe6RfrKdl4biNcOwQhW6U5
         w7EdIO+S22GAAzC1bRhXdLyL1+wYSPq2WaQNAteGza2kVAbDMp9PKw7nAdb4xFDWJinx
         zn5jqxnxTpMUcFrx9rN6uMBmx4n9Nc2tUsFTH5BA/0Kx07Vv832g5q9O1WTtTknW50v1
         bkUg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d24-20020a170902b71800b001dd55aeae3bsor2666689pls.3.2024.03.25.15.13.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV48eqSRcePBm4O8kNgDWBt0Z2sZJHwbekS+ElNNBvUDis+H+vS04Oa67bnMo3er+wizE04Pt7vRCdvB1XTUWqJzg14+fiAgmSrF98EO+cYnwCyg0c=
X-Received: by 2002:a17:902:d650:b0:1e0:d579:91df with SMTP id y16-20020a170902d65000b001e0d57991dfmr956391plh.68.1711404815577;
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
Received: from ?IPV6:2620:0:1000:8411:262:e41e:a4dd:81c6? ([2620:0:1000:8411:262:e41e:a4dd:81c6])
        by smtp.gmail.com with ESMTPSA id s19-20020a170902989300b001dd67c8e108sm5195084plp.199.2024.03.25.15.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
Message-ID: <a81db761-7ed2-4e4b-834f-7641f6199fcc@acm.org>
Date: Mon, 25 Mar 2024 15:13:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 08/23] ufs-exynos: move setting the the dma
 alignment to the init method
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-9-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-9-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=acm.org
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

On 3/24/24 16:54, Christoph Hellwig wrote:
> Use the SCSI host's dma_alignment field and set it in ->init and remove
> the now unused config_scsi_dev method.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a81db761-7ed2-4e4b-834f-7641f6199fcc%40acm.org.
