Return-Path: <usb-storage+bncBC7M5BFO7YCRBRMVSWZAMGQE45LD4HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE2C8C6F52
	for <lists+usb-storage@lfdr.de>; Thu, 16 May 2024 01:52:39 +0200 (CEST)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-1edf507b9e4sf82255045ad.1
        for <lists+usb-storage@lfdr.de>; Wed, 15 May 2024 16:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715817158; cv=pass;
        d=google.com; s=arc-20160816;
        b=BdVh4QCpPzvQk0XED/T4eXnxkT39aBffTmVdpsQyUNSHBiRTDw8IRofuIto8Tb1WFL
         TBDDC8mmwsL2/FlHmMF4X6FadoSqj5lsKDEvKIUHSLE2xTQrk7qSa4GXcb8Ld5Bnn4tf
         VdARyz14EVwjnf75xKA/E1/UrKGBAKMpt0C9m0iKTHBhm0FDvXWhFUyV7zfnGavz95tg
         C8XrSa6XHanzvPLeNK6C82ssnO4IExod3vuAJ90IQEvXogtAlXE9fRerSKJYlgBy1lTn
         bNYtJir7RGQX30pRyAgrtr+VzfKum921N878igxhKLUfezy3bq4IunXeAcCUgYPu5hKf
         hUWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:sender;
        bh=4SmBBf2hUIutdlWu+asiYNoyWCs8JQC2SNwrtMnGFtI=;
        fh=j/9VdKPCi+/9arNYkr4FDWB6ScG25H10i0MrWpIHwr4=;
        b=U73M1Ug2LgUUqMzZHfO2Vl9W40mVB12EW9rQRxY1b/kptdCUdyU8kI784TP46OAonq
         IcejMC6bzWu0JUzAd7wvDP0Bo6It48WD5lVaqBXqj7bO0nvIK/gKRLDutP2rnvO7oZbi
         fBwnklZyrSFTcOAUezRSsnbkcpWl4O22HB/NJs70xVk3JQXJxa7qH8+KTkYyvz7Gjsok
         LN7/76Ui/+1llZCfk04QZqPen3LrzbNwz2Yds1IQ2SFlX6yWO73Dbmh4nqn4Kti59lXB
         g8H7wW+BuTTLByr5cC9aJYaJPJtIg2akag8YMt6AZH8EpqXTywFLzPchANbZl6VeC2PI
         XNHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Lsq103Bx;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=groeck7@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715817158; x=1716421958;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4SmBBf2hUIutdlWu+asiYNoyWCs8JQC2SNwrtMnGFtI=;
        b=XrThWikYo0knqqBKU7mcwA1ZXRzlB2j4CkuFE4m3scjRqeIdtsYAOH+IOuB55Wy3Ap
         F8jGmn9dZc9mL8glu6QjSP4m8eUud116vhovF3FqT0dWXDW745vdVl2h136rJJZlELdI
         6uEZoOwEbbWUCYdWTyZk9griHu3rYH96VAbK96GAgB8BA12ANBDcZ7zmtfQa04HzgywW
         HCHT1m1OR/NkiUzBtlBfBp7qsjn5SBPzRXBK00i93zK//hL0NTF9S6fdFW1IAFsTfEBS
         RmQGKztE2xRfX3rNgTrtHrZtWJRki+FoHrSwHbMBu458rapJTCoZvOXKx3oUxSEP5NCu
         UhKA==
X-Forwarded-Encrypted: i=2; AJvYcCV/JpQxoJEqWBrcDJA3Kab7rUNYFRQcnwXTsU4x64EmYmtXKu8bsZEAsOlOkQQXUcwcq8SYhZpy0MrZR0I0xG21VI3CdKjbnQy6
X-Gm-Message-State: AOJu0YyKA5oEIqpC4M+RM5ot4Cln7YT9Kh/ettVJzw2134x+JCraFW7I
	GKoTASlwzJabS0WcqmfX9/Ur+8Ldxa8eCB8vUls/3bqke3VAVGCpykQ6YP5a7gw=
X-Google-Smtp-Source: AGHT+IE89PZUAUilHJ/FaVVqPdj5jDB4Je7QtgM+WHXItPp7IMFtnBaBmhNU7Pb1G5eG8ljmCOnL+g==
X-Received: by 2002:a17:902:ce0f:b0:1e5:4f5:7fa7 with SMTP id d9443c01a7336-1ef43d127c0mr292512915ad.21.1715817157910;
        Wed, 15 May 2024 16:52:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:22cf:b0:1e2:c350:b352 with SMTP id
 d9443c01a7336-1eefd8209d2ls23309445ad.0.-pod-prod-08-us; Wed, 15 May 2024
 16:52:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXTvVNEkUq+AJdz4nExHtx80quQss9Td/ngzlgsnwrhDlLib/mEBKizULrRFFuKCT+MEdrxEWidH7UTW8OLYal3veD0+avfGQuyh1gz/5iaM5MhNqU=
X-Received: by 2002:a17:902:db0a:b0:1e3:e243:1995 with SMTP id d9443c01a7336-1ef43c095cdmr273021715ad.1.1715817155141;
        Wed, 15 May 2024 16:52:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715817155; cv=none;
        d=google.com; s=arc-20160816;
        b=s2gh5WD7mV03sv9CQuOEP1oWffaypN/lHIIOR2I5IIgySudkl6PGUeaJSYncImTrTT
         hP+CfqevRgCbAmOefy/CTBJ/HL6JoFNKu3N6ue+QTwDjO3iuQN7J5hT2jakDteBLBbT/
         VM7S8LkfRe4EKOP+288Q9foMaYHg4VBwh7AnkxBq3M9wV+W3e/QfYD5LV1V6e5scnPJo
         8LisL9NXV5Vb+SlIG29MaI67DP3q5NRvDWWehQyunqFJJ5uNGSGpK77f5Or62XfEdaWR
         xOTAdVSh3ZL6e6jXoE8TbJRGDdIy2XFCmko5rWc9u8Naqc26Oy+XnQ1iPo83Dod5HdTc
         qsTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=FKhifieaISK073Y1BZFKCyfNkYAdJs4Ik0qOYBYCQEw=;
        fh=5/8kg6xvx84baljHJMDy5NNpSkX2FxBmwLx+FK8sSOs=;
        b=LFz41VHK3k6zPgP4hMrCL02f98IN4+wNAG6Hz4UrZfQo0ZSmLCcq8TBsMTxVtiiJCh
         AzbWnHTZ6BJoxOL3AaNoYbPFxGNYbWEYsZaM4NDTj0iArleplzfcvcqmGs2uqlSaiZFx
         UgaETxFYUnGdhUjsG1vSSGgCxsZXXSQvu8RW697pDTpFH7HW+6C9ju90/ld6ztBN0ru5
         qC+yhoT49vI5knZ+iYt4UT38WJ06+V1+Tj7al/wu5MInw0SI5eQKq3PO1r6gUiIzzDG0
         3bqPhONkN1o7hlC+DHYz1hhsmoOXVHkud0bWW+OHts82O0Nbuew27h7TE4iZCWv6CyZZ
         GeFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Lsq103Bx;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1ef0bc01e7esor100591995ad.10.2024.05.15.16.52.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 15 May 2024 16:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWafaB6vcN2bglUZaXtX51nV5ZACaXrsCinpGk5y+17KKmrM/3inBzsM2ImpRHqHNboMfQkm5Uvs764ImxYRJaOExJi5ifl72k9si1bKF77ZH7KLbo=
X-Received: by 2002:a17:902:f602:b0:1e4:19e3:56cb with SMTP id d9443c01a7336-1ef43c0954cmr298417585ad.12.1715817154637;
        Wed, 15 May 2024 16:52:34 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0b9d4733sm124678615ad.54.2024.05.15.16.52.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 May 2024 16:52:33 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <08beb913-f525-49e2-8ef2-f62e9d466e53@roeck-us.net>
Date: Wed, 15 May 2024 16:52:29 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 04/23] scsi: initialize scsi midlayer limits
 before allocating the queue
To: John Garry <john.g.garry@oracle.com>, Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>, Jason Yan
 <yanaijie@huawei.com>, Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Hannes Reinecke <hare@suse.de>
References: <20240409143748.980206-1-hch@lst.de>
 <20240409143748.980206-5-hch@lst.de>
 <ce2bf6af-4382-4fe1-b392-cc6829f5ceb2@roeck-us.net>
 <a8c39499-1410-4251-bf26-36763f5f56b0@oracle.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <a8c39499-1410-4251-bf26-36763f5f56b0@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Lsq103Bx;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 5/15/24 15:16, John Garry wrote:
> On 15/05/2024 15:50, Guenter Roeck wrote:
>> Hi,
>>
>> On Tue, Apr 09, 2024 at 04:37:29PM +0200, Christoph Hellwig wrote:
>>> Turn __scsi_init_queue into scsi_init_limits which initializes
>>> queue_limits structure that can be passed to blk_mq_alloc_queue.
>=20
> The previous behavior would sanitize max_segment_size < PAGE_SIZE, so I s=
uppose you could try:
>=20
> --- a/block/blk-settings.c
> +++ b/block/blk-settings.c
> @@ -199,6 +199,8 @@ static int blk_validate_limits(struct queue_limits *l=
im)
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 */
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if (!lim->max_segment_size)
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lim->max=
_segment_size =3D BLK_MAX_SEGMENT_SIZE;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 else if (lim->max_segment_size < PAGE_SIZE)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lim->max_segme=
nt_size =3D PAGE_SIZE;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if (WARN_ON_ONCE(lim->max_segment_size < PAGE_SIZE))
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -=
EINVAL;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>=20

With some debugging:

pata_macio_common_init() Calling ata_host_activate() with limit 65280
...
max_segment_size is 65280; PAGE_SIZE is 65536; BLK_MAX_SEGMENT_SIZE is 6553=
6
WARNING: CPU: 0 PID: 12 at block/blk-settings.c:202 blk_validate_limits+0x2=
d4/0x364
...

This is with PPC_BOOK3S_64 which selects a default page size of 64k.
Looking at the old code, I think it did what you suggested above,

void blk_queue_max_segment_size(struct request_queue *q, unsigned int max_s=
ize)
{
         if (max_size < PAGE_SIZE) {
                 max_size =3D PAGE_SIZE;
                 printk(KERN_INFO "%s: set to minimum %d\n",
                        __func__, max_size);
         }
...

but assuming that the driver requested a lower limit on purpose that
may not be the best solution.

Never mind, though - I updated my test configuration to explicitly
configure the page size to 4k to work around the problem. With that,
please consider this report a note in case someone hits the problem
on a real system (and sorry for the noise).

Thanks,
Guenter

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/08beb913-f525-49e2-8ef2-f62e9d466e53=
%40roeck-us.net.
