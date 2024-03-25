Return-Path: <usb-storage+bncBD3JNNMDTMEBBGWAQ6YAMGQETA52NGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E27B88B18D
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 21:35:40 +0100 (CET)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-5dc4ffda13fsf4033031a12.0
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 13:35:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711398938; cv=pass;
        d=google.com; s=arc-20160816;
        b=wfCOjEAq0iEvRbAmQ18MuzDZDFFy5IHZOSMynRk+yzoMZx+eJbO9b69fY0ruyWXPj1
         3eD526sIDxPoo0AXeirZ1reD5D2oqx+XpPJD7FNtDc1pGviYasFC6Dv4VNSVABLagAOo
         mixgn4n6V8jYxk8rR+wjFzXJddCRTXW/nXcD+4l5rtwySI+o9kkYnEV1KRX2VqQfCCBJ
         6SxT6G5Ym9bVCk9TtVavWhjrk8IxqQ9aAYZyZDRHziJnGzQzvmS6PWVAfB4Ho3Pq2dcB
         gCr3BXr4QeKS7+0raee0UzreRitCGvSex6AJ8YbZtk2dpBl+n6o/dTXCjcHOpPm340/n
         ROjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=ORHiOi28n2eS//talIQItGgXIPITOvFsZf+eZc6kMsc=;
        fh=cv4Fh1F3PnZwfVrC0Yz7ozmd0nbHcj0pjoy98X380WA=;
        b=HaKHUtIe0jzNf76Zk3mic6bLcRUywHKVawwX1Y7ilqEW6m+30AG4+63m+r1eKnVOPq
         4YSySIJOzL95sx/96jQuC1gW91WDM0aE18V9T/NIWR8xAEmU9nYLvQI0AFcO3A38Xi3C
         Zdmqip86GlxiR7l6b6pa/M6s27qyKF5F/nDiFJ7Gr9sKwLwhKXKFXd6DznuiDRP/QEl9
         qCfUxpFiU2lNHgX+M6t6RnV09Upt52Xp+YlIkwY3cse4MyQVjcwLCC20ogtqKejLOLQc
         d8yqJtNkgrJYTNfHQ9243ITsb8zxFqin7phi9/y+H1u/hRCzHYagKELyjnZDlQLhSHuZ
         XtbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=CwOss4Dj;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711398938; x=1712003738; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ORHiOi28n2eS//talIQItGgXIPITOvFsZf+eZc6kMsc=;
        b=AGOTXJD1ivWD7/sf2AuvyIOBINU202pfKK3GQbMpx6q6/mSnQ27P2zZRm/fQkkIx8y
         pkB9ziWl1jYVth461tIDtoYgylkGElIiee22Ul6Cba/QfYy4co7b8Vo5GJ9Is5PQ/ipE
         03aSzTEN614LU/BDjkhOBmxg7TjdynRSjD2AI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711398938; x=1712003738;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ORHiOi28n2eS//talIQItGgXIPITOvFsZf+eZc6kMsc=;
        b=Xa8/4fjS03FnD5L7rapFu2bdDClUgv8GYYTLMPxONoXt8hogMqO989rVbJn81i8zxv
         1HCYziNT8I4oMmLzYmtXOgkbHzO9UhP0Y9yN3I1YslQdlWfOdr6TJthpWN1z7Hy+NGzI
         /oyBENykT+gd6leePyoIiUOa/75AVECeFN+5/dDHu65X1Y8Ucs7/T7zrCd2DBVY0N1MW
         6fumQ/x4s/eMoiZqN9o8ryAOeSAZxml81rzKj0ViHNqQlD6lxLnHS3lqKJNobDsX2UYY
         gHQ9ygK1FoAFNXL+jEu+OKiknvdR0Zf3AZpZAGXJSIGozm0VUjIkoXGCPyaFc3u3d9Sy
         3CGQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU4EASv2eTDIvRGCwyMdPqB7raJPB+pEgBgEOZprweahoF7VqONxgwyzxGpG3j4DMH7EjjDFttEqu4+JczemcNWxlb1ru3uaqZt
X-Gm-Message-State: AOJu0Yw56DDhLe6GOzYaRSWP7+xyXvnSysPyFd3ojEnbdj3al17rWGuX
	rJHhKj78bRYG1tHiu3qUOBZNDNv+cJMJSmCsIEy5fzybrfInabrxPJfIc/aDOjo=
X-Google-Smtp-Source: AGHT+IG6ufzGm9iMA8buQsTU6+8vuFp8kiBMzpGFxRCQKU4/Egwz6oWku7v/YH/E1IrdqvNt4nL67A==
X-Received: by 2002:a17:90b:218e:b0:29d:e2dc:bf5d with SMTP id ku14-20020a17090b218e00b0029de2dcbf5dmr10911001pjb.16.1711398938494;
        Mon, 25 Mar 2024 13:35:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d34a:b0:2a0:2a05:dd6b with SMTP id
 i10-20020a17090ad34a00b002a02a05dd6bls2158958pjx.0.-pod-prod-00-us-canary;
 Mon, 25 Mar 2024 13:35:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUWnKMM2hjA+CnIP63H4jLkHc4DLY2YCGonuSQL4gg8PDUf9KWpF4PtSoLc+9m2D/x+Afi0p2rI95Oqt8/v+8wHMFlg0Mhpi/AU9Jv0LZOCKdOTCj4=
X-Received: by 2002:a17:90a:7101:b0:2a0:3876:c019 with SMTP id h1-20020a17090a710100b002a03876c019mr10081337pjk.2.1711398937072;
        Mon, 25 Mar 2024 13:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711398937; cv=none;
        d=google.com; s=arc-20160816;
        b=UrTBzxcL15KFPVbM68JmgJl+R0b846s5xN1YlB2Ssc0SFyDs9xBLptXwY5du1T69me
         Vx4r5lPpUsOeo50m6knfPddDkaXNoldMCTmAwlpFsYk98WT0QQraqQ+Gjz5reaHYTJbT
         i2P4Iz505Lngogrk6IQ/ezZl3JuI4c6OVE5+Ux993vVc1lzIgfDjxF/Z5jvdbhImRvzO
         XTRaukb1+FwGjDQ1TbLZYpU1D0auN5jrSDfY1NL+jpLgR1IuG9RUTyMsEA419OBlNIRb
         qKsaIJnMfvFk24MVS+BbQAWpBaL1nA0bK94irWyD50M5GgPwyirgjg5PsGHuYwzAdHcQ
         JSDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=QT9Io8KlSjuHM6Qho+N/CED+XBtHtFpIBkOTBJKm48w=;
        fh=ZF8T/hrxrX+7Ws2prm5mPVJd75XGm8RH7SBtPTVK71Q=;
        b=JhykmnymMGbKQ6wORqNPBHZiBZmRXv8AUVh7sGfu2KPv3OyPNzphDcOjtcvhfkFM2F
         jX6KG1hwlAiyXQ9IMlcIBKoRdUmNECXPQHM3q4vI9ssYF9ijEOVcmVXoPBDcVBN+rzJb
         3FXNPtsH9P+djxpHBT50KP+M7iHuiB2yz7mcoc0UW98xo+NfFTmu+gTA+aIGY3mpTEnJ
         xpsMYG4FuKGqlhABmkqsYK/AjBwFl6MN9nBlOaOXAn44IYLN/xjPN5UXZ3iYP8xtKiie
         v493HOhHCnTlp0XUGPl52aCRImuPfS3aK7D3UfC+LDzwxqotNb8I1WgrsBJLvB3lSqSH
         3AbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=CwOss4Dj;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id a2-20020a17090a854200b0029de03c20d9si12083787pjw.9.2024.03.25.13.35.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 13:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V3Pp04KSNzlgVnN;
	Mon, 25 Mar 2024 20:35:36 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id qG5C0clMo2Zv; Mon, 25 Mar 2024 20:35:23 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V3PnV22fmzlgTGW;
	Mon, 25 Mar 2024 20:35:09 +0000 (UTC)
Message-ID: <b3ee2dec-3258-4c9f-81d8-0a266128b9ef@acm.org>
Date: Mon, 25 Mar 2024 13:35:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 10/23] scsi: add a device_configure method
 to the host template
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
 <20240324235448.2039074-11-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=CwOss4Dj;       spf=pass
 (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted
 sender) smtp.mailfrom=bvanassche@acm.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=acm.org
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
> This is a version of ->slave_configure that also takes a queue_limits
> structure that the caller applies, and thus allows drivers to reconfigure
> the queue using the atomic queue limits API.
> 
> In the long run it should also replace ->slave_configure entirely as
> there is no need to have two different methods here, and the slave
> name in addition to being politically charged also has no basis in
> the SCSI standards or the kernel code.

There are two methods with names that are politically charged:
slave_configure() and slave_alloc(). Shouldn't both be renamed?

>   	 * Status: OPTIONAL
> +	 *
> +	 * Note: slave_configure is the legacy version, use device_configure for
> +	 * all new code.
>   	 */
> +	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
>   	int (* slave_configure)(struct scsi_device *);

The name "device_configure" may make people wonder whether that method
perhaps configures a struct device instance. How about using the name
"sdev_configure" instead of "device_configure" to make it more clear
that this method is used to configure a SCSI device?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b3ee2dec-3258-4c9f-81d8-0a266128b9ef%40acm.org.
