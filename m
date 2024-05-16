Return-Path: <usb-storage+bncBC7M5BFO7YCRBK52TCZAMGQELVM5N4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 101B88C78A4
	for <lists+usb-storage@lfdr.de>; Thu, 16 May 2024 16:50:21 +0200 (CEST)
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-36c771adf01sf62361625ab.3
        for <lists+usb-storage@lfdr.de>; Thu, 16 May 2024 07:50:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715871020; cv=pass;
        d=google.com; s=arc-20160816;
        b=zN7DUJPDPaezFvYuwva6bkBtUiEAX7D/g5+8NwITVp44eNk716Ug/oNii4M1cpqLO1
         hZZ8+s8pZMC9nXV3jQEWqBi1BxHUOhxnIaKEm6qB1WX2yHsYLDWsbeZk6TKT2y/BvwTg
         hfRlNp6kL/zqi0dhavYhbxqmzv3isqyls/hc9VDktBvk2dtjIoWZjFQK4nQGlXbMwGtn
         YaJv1eea9giKhkBP2wuRVudxzLWgw97Sf3nVTmk2N9hdKM0NsXI8SEHWI+IMZiTGTJPp
         oiwKQsH6s0660K+qXzQ/ZC17J7IjOfHPIdONDjTELIOq3L4rMMcnEcq1nrf5QUe2i+H+
         ZTMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:sender;
        bh=aqVxWoNRGI2Kp/Y/2QHt5vDGzDeUHIZEPDyhd2Gecxk=;
        fh=BQ36/MQINVGMeUTco6bjtu5lFFbqO9wfNwJDeKYY684=;
        b=dqMWwOOHH7I0wWW95Q6kzd3AeakjCmydcQ82e1oh4LzXppvK5cLtRZAbu0nHdwtT8c
         IU8sQZM3XPs3C+zf1ptVHAkEDLxG0a0Lw48eWoefWQDChvtfM7WmRmcm4U/wPMQ3IGda
         wntWCArJ6bh9EyHXRnJB/ubnVEu4UvQhYdPvfwN+1m5wwgmOnptjE5iP5xLJu7ofBAQw
         H+O1tYZ1Q4COQSbAxNe6nvfp4v2d+F/4Kc+pDGXzYEY4QclHlIZSwQ3DpsNP5kYxiW0D
         bU7oLdHz/ekxd2QvDzg+2BTSZwrHeOKeVuYbLkB015JnJREpJaOkV4K5uW8XLQy6T8Rg
         N7Uw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cOMRmwDx;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=groeck7@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715871020; x=1716475820;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aqVxWoNRGI2Kp/Y/2QHt5vDGzDeUHIZEPDyhd2Gecxk=;
        b=ERKytjXu6mEB+Gd12MIX9brmNG7IRTkq6s2k0Mmcbw81nS87taXid6oaU44hG6up9V
         SvCbwx5fnmotSpNnc5abmtqlMyrUpCWHfQXffICiaE+AHeTKuc4nBZFBLX18EC3LQGBi
         R2hkLCjo18tOaTnkNU1O5JfUFo2ENL9Fjux9uzDBZvivtHUYojlLLUca989RnntHomFi
         RKEx/Y3YQxm/p33Z7zUz5L5eJvknBRgUlmhEyy9z6Kyg6P30UIEuw+gUXzSgBYYgltjb
         DKQUx6tJJzOTHEW5cIv8+QuD73JDhprKNVFd4nKyfPpP9XFqWLpqzaWGISO7yypirY0j
         iLAw==
X-Forwarded-Encrypted: i=2; AJvYcCXWaqRLiE3wdWlTLiDdol+1Rae/BEpqJWyM4R0FnMecC71u+f9issb43fzykjTBQO3jnZi8t1RhFTlkOgxaq96Jupki2yrRYUgi
X-Gm-Message-State: AOJu0YzVXmLC8oOp31wo3gZVzzjOMA9z4nf0Z4fYuY4FB71RI0TWkR3v
	RcmWc9WP8uGgXddUPug5jPmWvSyvLndtVFheXOSJ+Lbz13pYP/fsbTXTCdGgB+I=
X-Google-Smtp-Source: AGHT+IHTcpHmEVKohF3fAK0IgQrvJQ1C3VlsW0jwxyoK6AJYbtXcj1bPvcNfcID8H5bJwOGKsl3GPQ==
X-Received: by 2002:a05:6e02:178f:b0:36c:4b9d:7d6e with SMTP id e9e14a558f8ab-36cc142a18cmr221910355ab.2.1715871019629;
        Thu, 16 May 2024 07:50:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1d9d:b0:36d:a927:358e with SMTP id
 e9e14a558f8ab-36da9273744ls25250705ab.2.-pod-prod-01-us; Thu, 16 May 2024
 07:50:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWGzaJgBraJRJLhtJZS1463uAZ5Hy7eidPyK/M+vX9jpEVU7RQVverwTKdvyY2rZUF5hyGDockkbwHHnIvV4YDBENTGQWVzazbF+Z578zZKOi5htXw=
X-Received: by 2002:a05:6e02:18c5:b0:36c:a2c:ceaf with SMTP id e9e14a558f8ab-36cc142a32emr247478315ab.6.1715871018651;
        Thu, 16 May 2024 07:50:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715871018; cv=none;
        d=google.com; s=arc-20160816;
        b=Utgxa1iD/OKESFkQLLTnc3b2ZubUa6dBk12eoB0d64KYpnuvimbX4IRgYbalMcEtbn
         Mt58qTwc3rvA//DeYhx2ffADPb2H3CN6NpEvt3gbAmfTNIaMDAWvwbKwx/5hwaeje8i3
         TKqcpJjoW7hz88SSt5rFiKYHztvwmq5P6wi6m49PcUbTc/Ax51ogkZoY5oyU777wffEJ
         I9yX4UPIPwNH1nZb2J830toqznAmk4xVmA4zGQWu3js7X16hU3ySNKEHu6sq/sP6TKxW
         EDCBDP9lVM1yuFk5/JYt0KvBpKbpiFkk7Eto7HjswDu0vHqXN1BzGLXMFRlwHGgVEoSb
         g0eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=MP0twiF5szRNTbqcyBLQLKZi2/rxtByviGx0EcGxOTI=;
        fh=rK+jDmdpj9QnOpXvIGrJXk+eaOsKG9546EtjCA4pE/A=;
        b=L0GG3cph2woqSBi9PpGXiFRqe7BWUJGtuVFjfO9Aa2TjfNOgFdgQ1Pip/myL5DokLC
         Zts8n9qMT5BaDDDNr24KktcFO8a2ZVJYGVK2Rgyot+hwYtl48OTSbaifUI8bFe32d4iu
         Ohvla1/Z1Oq+NqMV3PFbY8QYUPBm3xbbKSsq2e7QEOcWrN2uYErpczUxz+0nD5rIw8nD
         Ni10IzTDIX41ND/a4nkAt6aJJ5QOJCrSfTb8M8dck9hd4tn0VZMOLeDeqWNxbhZA4ePI
         zc+m34a6yWzBQ2m41vQEgtehawjzzxx9KJ1lK+tG4AW3tkq78zsQNLhmDJ79fRywNQr7
         0Ftg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cOMRmwDx;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 41be03b00d2f7-6340a63409fsor6689107a12.2.2024.05.16.07.50.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 16 May 2024 07:50:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUlAGCF+lCMfJLbnruXYL0rWNTPe52JKXrKSQCZ4vXPCtmGbU6C3gWqL5mJ15OPz24nxvz0vfJs3MUccgJMKl3t0DyxCKjS3w4Sn/YyTB1rgyoMedo=
X-Received: by 2002:a05:6a20:43a3:b0:1af:ab09:c555 with SMTP id adf61e73a8af0-1afde201c7emr21317705637.47.1715871017985;
        Thu, 16 May 2024 07:50:17 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c138b79sm140026125ad.260.2024.05.16.07.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 May 2024 07:50:16 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <7df05966-36ea-4d37-99bc-1cf01b4ed921@roeck-us.net>
Date: Thu, 16 May 2024 07:50:13 -0700
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
 <08beb913-f525-49e2-8ef2-f62e9d466e53@roeck-us.net>
 <ff3277c1-f3ea-4e12-aeb6-548b97d42589@oracle.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <ff3277c1-f3ea-4e12-aeb6-548b97d42589@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=cOMRmwDx;       spf=pass
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

On 5/16/24 06:08, John Garry wrote:
> On 15/05/2024 17:52, Guenter Roeck wrote:
>> max_segment_size is 65280; PAGE_SIZE is 65536; BLK_MAX_SEGMENT_SIZE is 6=
5536
>> WARNING: CPU: 0 PID: 12 at block/blk-settings.c:202 blk_validate_limits+=
0x2d4/0x364
>> ...
>>
>> This is with PPC_BOOK3S_64 which selects a default page size of 64k.
>> Looking at the old code, I think it did what you suggested above,
>>
>> void blk_queue_max_segment_size(struct request_queue *q, unsigned int ma=
x_size)
>> {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (max_size < PAGE_SIZ=
E) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 max_size =3D PAGE_SIZE;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 printk(KERN_INFO "%s: set to minimum %d\n",
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __func__=
, max_size);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> ...
>>
>> but assuming that the driver requested a lower limit on purpose that
>> may not be the best solution.
>=20
> Right, it is relied on that PAGE_SIZE can fit into a segment.
>=20
>>
>> Never mind, though - I updated my test configuration to explicitly
>> configure the page size to 4k to work around the problem. With that,
>> please consider this report a note in case someone hits the problem
>> on a real system (and sorry for the noise).
>=20
> Other controllers do have a 4K segment limit and are broken on systems wi=
th 16/64K PAGE_SIZE, like:
>=20
> https://lore.kernel.org/linux-block/20230612203314.17820-1-bvanassche@acm=
.org/
>=20

Understood, only it isn't just 4k segment limit with 16/64k page size, but =
more
generally any system with segment limit < PAGE_SIZE.

It is a bit sad that support for affected configurations is [now ?] broken
because above patch series was rejected (and, no, that has nothing to do
with me working for the same company as the submitter of that patch series =
-
that is me testing the upstream kernel with qemu).

Given that various controllers are affected by that problem, would it be
acceptable to submit patches such as the following to avoid runtime failure=
s ?

diff --git a/drivers/ata/pata_macio.c b/drivers/ata/pata_macio.c
index 817838e2f70e..6adf9105b5fb 100644
--- a/drivers/ata/pata_macio.c
+++ b/drivers/ata/pata_macio.c
@@ -1380,6 +1380,8 @@ static int __init pata_macio_init(void)
  {
         int rc;

+       BUILD_BUG_ON(MAX_DBDMA_SEG < PAGE_SIZE);
+
         if (!machine_is(powermac))
                 return -ENODEV;

or, alternatively,

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index b595494ab9b4..d7bd64702109 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -789,6 +789,7 @@ config PATA_JMICRON
  config PATA_MACIO
         tristate "Apple PowerMac/PowerBook internal 'MacIO' IDE"
         depends on PPC_PMAC
+       depends on PAGE_SIZE_LESS_THAN_64KB
         help
           Most IDE capable PowerMacs have IDE busses driven by a variant
            of this controller which is part of the Apple chipset used on

Thanks,
Guenter

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/7df05966-36ea-4d37-99bc-1cf01b4ed921=
%40roeck-us.net.
