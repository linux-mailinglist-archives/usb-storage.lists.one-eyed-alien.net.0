Return-Path: <usb-storage+bncBD3JNNMDTMEBBAWAXOYAMGQE7QH2YTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 822A5898D10
	for <lists+usb-storage@lfdr.de>; Thu,  4 Apr 2024 19:14:44 +0200 (CEST)
Received: by mail-pf1-x446.google.com with SMTP id d2e1a72fcca58-6eaed26eecdsf789122b3a.1
        for <lists+usb-storage@lfdr.de>; Thu, 04 Apr 2024 10:14:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712250883; cv=pass;
        d=google.com; s=arc-20160816;
        b=QyOIr3YErvtseJw4JipXNEFnK4a0jrQRIaGHTT8WNCM3SAb8yZUV3ShZ7hX1mIOgFw
         vfGHqWPPyHiPKcxD8e0/h5iXbVCl63SR3d4FhPk/qRA0C/KK1GQrPIr6JaW0hlPqZEjn
         zP1X+VWjPCTkVHnu5yNnIJ396WCaixIoagx4RGOmwSoB9ksRooFB/B4ov4R3HPCYN+4H
         amgRpWx4yqTQ+35yYo3NvJeB4MqndC5STeMS/hRirnbfJj/wxlM929bFhV6e0IYcnj0P
         sHe9B0iKT8OMaUGrkxxTo2BcY4HAzaD/Zg3AqzSsMKjMOspepyfkUMnsDHlc8STu9fph
         2IUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=MZJ1x8tsRyUXyMbH0QjF4IspqAG7Oc3XXRtkZO2wzdo=;
        fh=1RZSnQ6kvIZzTwMbbWmYijczmaS4XlFLDlY6JYX64kg=;
        b=VknQaKGGUj5vaUzUogExLvFHt4/5pO6vOHlll/B7HL6dsUJ02SZGekEzbsW20DT/6b
         E9HV/aUy1t2TLPs+au+RjFjUAxyprlfaxXXx9wOlTnccOroFHgzR1P41GhDZzLpTt6Rw
         H3dC/fivpFfshejfIDuUzT7hCLXt4+GBSxRbMVHADcBPAHZ5ayunmRsg/aAT1G5KBk7r
         Wi9c/5DrgFVpw7nyGnIBsQgX7mSvvNnDtlX4iFHgL/qi+Ewuf04qqYz4OzUgtzUzTWEm
         r2uN3MS8ta6MYBOXTioVGSNv6zhBUObwuTIhVM7xARB8wl86p3TepaQQ7R8tMlHiCtwx
         EnaA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=4elaLUQp;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712250883; x=1712855683; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=MZJ1x8tsRyUXyMbH0QjF4IspqAG7Oc3XXRtkZO2wzdo=;
        b=Hov/kWEJ0sxlcDNEhod9paAdfrSwVLWTk22jfoBjjGJHZJgBdaL5EjlkZgGA/sxRte
         Nm3IHNRb2yQsSfkunw2Wc54lGoSnJ/JbcQ2XK22eWuBKih+7hikVfjlvgi2Kpni2soCh
         UvnDW13IYVEYtbFMGGTHdeTB2TBMbPah/2hv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712250883; x=1712855683;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MZJ1x8tsRyUXyMbH0QjF4IspqAG7Oc3XXRtkZO2wzdo=;
        b=VBi6fFLr82CbQcImbYCCUbVfDNxvQiVNcZBtffjkYJGKXE+O1CU4uMIC5gcYvxXkry
         mzGrujHPyp0eBqEIqPRVA8xRFfp0Ych1oze97UcKyNcO8Qkh+vphhXOI20QJKZiYE67G
         FssBC9Ms5iCk0lOSkzbrDTMDsGzWwZi5f3HOpmaXBJNufxQ40cg5Sjrp3eTHM3tuJ3bK
         Pl4gE1Sorx7zFP8LXSEYgKRLulX43MInJasRZ5LDVdDuBqeYASFPSqstVTiVMKYroitK
         /iWGwLaf50uYvQTccM83rGYygBs+O/EpsxLf+QlgcXDrgIcuEZSU1EdA7wo3ChZCl9aK
         8clg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWqUbBUZrscpMX7O0ii/Fg3agOt5XbLY+TuGsO0pxpuwbrKGCRwasv0dV0mx6EIOhCjZ0NTuQuj80hF4To/+deSqSuHkOL3zoML
X-Gm-Message-State: AOJu0Yz9f9FRfC9bNwj2INgYF2stm+1CTv3OqC3s3tjNYnm13axhY5y1
	bN95qxpJ8Yb/J8bSTSITJ+4e5JeoIChW6aYcQXE1GNaKx/4PKd7TDI5SPDYRtKc=
X-Google-Smtp-Source: AGHT+IGyyQo+NkPYaya8O5Ys4l33onM31NmN7PblR4cJjOlSYAPI7pvIsxHUCOdAWAooJ6NoqoqN3A==
X-Received: by 2002:a05:6a00:8cf:b0:6ea:c2c7:5d6a with SMTP id s15-20020a056a0008cf00b006eac2c75d6amr3857664pfu.2.1712250882898;
        Thu, 04 Apr 2024 10:14:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:18a1:b0:6ec:ec93:d297 with SMTP id
 x33-20020a056a0018a100b006ecec93d297ls569652pfh.2.-pod-prod-06-us; Thu, 04
 Apr 2024 10:14:41 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUw6Z4mo+aFIIOxEkdnLQ1RNNt79JOkN8fd3jfMDaGknxPhG5j0EtnEtbsrVVZ8DVILn2u/NSVokxk4rdoRoFVTfpBGLrOmSScOrHQoaPMqscHoTv4=
X-Received: by 2002:a05:6a00:2908:b0:6ea:f422:64ce with SMTP id cg8-20020a056a00290800b006eaf42264cemr3035664pfb.33.1712250881530;
        Thu, 04 Apr 2024 10:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712250881; cv=none;
        d=google.com; s=arc-20160816;
        b=nEY2SwfgOArZfqH2V1gs/aL108j99J49eD109bsLVY0kkDFMGSlixoVdR6vrS7Nu+f
         DKqnEYHIHw0gyc9EmlZJaHoGB7+IDpF5jt/iPEZFQqtWhDDbPcm6DmHKoIZBUugl6JcJ
         9m2uTV0NQRX6+8uKwvllLi+zdsZ/vEPM7Gi2qy67NhtQUayxCgg+96C2nxOP41LNs/Bn
         zI5X/3knYGCCgRXgVHJoT9Qyq29KgGHVsYXDJWSR3qJDRSer0tlfJRUbxVGPck6SzvqL
         +ShLqu8wmSXt6tkMdTZSUn48/hrvasFV5Hi/Y4sX8QDAoG8MZWSXqt98zuZGEjdNNFqE
         wHtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=jr0JFFiQtpqpO8gPLnOaQNi8PjSCGPDkwB+DlLUzoY4=;
        fh=d+NN1/9nDuwnwJoao3XCncS9eXV4fvw18mXgsLtMD5A=;
        b=P/oY4KybYNW7Dx8zW52yhbqCV7AkmuVozfy7wdeLPBotbpbotSGn2g1AlftKCBo0su
         0NbNZ842jKK6kxQ8Emsbn3i3zkPLkBrdfS4+OcM68RjwssoI1IxQevZwGCGAQxfgckLx
         E0ctCStpQqXJoU+s3jhk+PP4QQqZ4JwhooaqR/KywGz2Za7QN/ekWcBnt4gHl0nfn7rQ
         APSLk36Li44HrjjRmfUI70/Ey3l1GlOhl+9jd8HASjsROKSdEiWfaykCJ9nJHqYJNvtZ
         3OqIxbZoG9PRXQO72/3JJD67GN0dxb4CdpZbuRjK0Y5JhzNO/eSlRVbi1BZ9BboXBKz+
         AAxA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@acm.org header.s=mr01 header.b=4elaLUQp;
       spf=pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) smtp.mailfrom=bvanassche@acm.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from 009.lax.mailroute.net (009.lax.mailroute.net. [199.89.1.12])
        by mx.google.com with ESMTPS id fj24-20020a056a003a1800b006e6b32eb8afsi15824968pfb.73.2024.04.04.10.14.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 10:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bvanassche@acm.org designates 199.89.1.12 as permitted sender) client-ip=199.89.1.12;
Received: from localhost (localhost [127.0.0.1])
	by 009.lax.mailroute.net (Postfix) with ESMTP id 4V9SsY12nqzlgTGW;
	Thu,  4 Apr 2024 17:14:41 +0000 (UTC)
X-Virus-Scanned: by MailRoute
Received: from 009.lax.mailroute.net ([127.0.0.1])
 by localhost (009.lax [127.0.0.1]) (mroute_mailscanner, port 10029) with LMTP
 id CLtdbJxEdr2m; Thu,  4 Apr 2024 17:14:31 +0000 (UTC)
Received: from [100.96.154.173] (unknown [104.132.1.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bvanassche@acm.org)
	by 009.lax.mailroute.net (Postfix) with ESMTPSA id 4V9SsH0BryzlgTHp;
	Thu,  4 Apr 2024 17:14:26 +0000 (UTC)
Message-ID: <b3c2fb51-2655-43b8-b741-201dd3fa2a2e@acm.org>
Date: Thu, 4 Apr 2024 10:14:26 -0700
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
 megaraidlinux.pdl@broadcom.com, mpi3mr-linuxdrv.pdl@broadcom.com,
 linux-samsung-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240402130645.653507-1-hch@lst.de>
 <20240402130645.653507-11-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240402130645.653507-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@acm.org header.s=mr01 header.b=4elaLUQp;       spf=pass
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

On 4/2/24 06:06, Christoph Hellwig wrote:
> This is a version of ->slave_configure that also takes a queue_limits
> structure that the caller applies, and thus allows drivers to reconfigure
> the queue using the atomic queue limits API.
> 
> In the long run it should also replace ->slave_configure entirely as
> there is no need to have two different methods here, and the slave
> name in addition to being politically charged also has no basis in
> the SCSI standards or the kernel code.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b3c2fb51-2655-43b8-b741-201dd3fa2a2e%40acm.org.
