Return-Path: <usb-storage+bncBD3JNNMDTMEBBSGQ43WQKGQECZGH7WA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A814E9E83
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 16:12:10 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id f21sf1920998pfa.3
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 08:12:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572448329; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZjLQXS1b0JjbM7jzCo0a32DbjMjfjSMfP1I1cqFQSX4v1w9pCyrq5zFhn7ZpB4qd+
         m9ZYilN4tH/FiOhIqtUWXCv6sinjQSZn6b0eiZDtVWD1rvtOLenLBlsSf4u1RBTOgS4l
         jQj8RUpH4GPjg9qdZKnD5VqMiqPezjPLcv7F6bd0B5OsBkYzKutLAgVM3ZYlcUHaIxf5
         4hEx/drqkFxDQiTA/OR0c0I2hkbJV1MLI8dXPksf7+gBoSu1pLOXU82OmHCtQRfIx8RF
         VxINlCGpaKEZUOlkQEhpTRa2Su+slzIusgM69mJMzWRJMjV45AddDRu9YRKGDaMW86af
         m5KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=bX4BcdG8//+/E+MpOi5cS2OTjNm2S+tSIIzHKc4mYBk=;
        b=JHO51wXecpEhvFuxMAbQvLYZGhY4DXmppsnk8FfQ8cnM26vClSTQ3UIyQeJfmyymvy
         goEFFG9akClNeNd93qY4iIY6JwkgCUoOf3vgPisGAUApt+S/+xUNrJL12K+3yioGfRLN
         t1RFWInpy3HjrJazauMRwkXvBWblYaMH2pdVL2ZPTlTUH4i4dlqqM7csjI9HM9BWzDzg
         ld00Fas3VwUax/GJVwH8+O1jg0ht3DUrc0ZmEdg2iGD/O7ZcBfcom4YyMdEerSnjiOh0
         bGoD/lw9Abxh6Vy50EX74OW15tVLVweDHIYqObfZIPgHWjL7ldSde+iu37W25cFemGP/
         AAUA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bX4BcdG8//+/E+MpOi5cS2OTjNm2S+tSIIzHKc4mYBk=;
        b=PplclabjBU/f94lP653u7KiS03XbeVCOxMj1e4ceoXeXBbQkHWY8pABjeymq/2On4r
         QplPDxPUV4zozFeI4BcyoWQVjpdbhAbLtX9Uaz68uEL/2/pdx0r8Amx/gucGpikpweTW
         u/FymaS1yWTZY+4Fx9IhTp59fhn+BOTGougQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bX4BcdG8//+/E+MpOi5cS2OTjNm2S+tSIIzHKc4mYBk=;
        b=tdASEc2NFO+/4OJefcxEWrN8kSLHtYIO4qqHWP/25Am6Hgb4vj6Q4u7ktWMDUd+wfq
         JhFPcHl8ys6PyTm1KFgnAjyZuiqzufxf2bjTptYh9l+uzzAtJIXXpOauY/LwwA17xsmv
         0fUESBWtQVRS2LvciYB/huOjVhUimz2OGOAGWgfgea/5ah0Q2Zrx4OC5EZpkjnytv788
         A7o8HpfGSQEvMf/81vBM7xjUoUhl+sy4qHkHAE/Woyx9UeJJQNNFUf8Twc0MlNlGQsZ+
         PejZYyTDG029AokSVzTDwLfWxtlxwDTfAJrPQXHo3Mae9txsecFs3biCKicNmiGlD0MX
         7bPQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX+fZQ1fB3JwR/N9lL+yCu0+rCJYLwqRBQR6LwqiBkFhVE49wI4
	P8P50xSq6Gy+c8nqspXZ6V3THQ==
X-Google-Smtp-Source: APXvYqzFQmGDnVsbC9hwi7Ff/lCkVpe17V4zaUnuMoU4l9AhF+mJAjmX3aqo1goluectloRrKQj12w==
X-Received: by 2002:a17:90a:2623:: with SMTP id l32mr15258947pje.70.1572448329042;
        Wed, 30 Oct 2019 08:12:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:cb0f:: with SMTP id p15ls4108538pgg.1.gmail; Wed, 30 Oct
 2019 08:12:08 -0700 (PDT)
X-Received: by 2002:a63:9d0f:: with SMTP id i15mr8281171pgd.286.1572448328152;
        Wed, 30 Oct 2019 08:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572448328; cv=none;
        d=google.com; s=arc-20160816;
        b=YwoXZ9IEY7MoH0Rluex+ntRNG53Ly19n8l/ikA+WeHwZSBI1FJYR4zLj6SgO4AKxN7
         LCCaHiV0HMJyuSPFOu4zXDdpkK/1reBYnu7Zmwkf5pFXMr9u7tlH3nTwvAL7mG44TS0B
         k4+SSdKmwQ41cntwbqNiDsZrS1ConcclA3T/XHUzpe41Td4+SY3AT58bLkjx1j66taNT
         KFLXJL5m3EblVfpBO2c9dX58AJnqx6qoYxPdL1MFslDXSgY6Wj0vDHTuqHs+JilhwoCt
         itpcyy1DUXonPrrzfm3K+o9sg/7DLrBpT9WQHPVjoVbXiK7FlXSeoUiNX6M3OyLQ0UUp
         5NTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=nrnPTyEFl+6aZzJXJflCpowsX8ZrOUs+tX0p0YHuCEE=;
        b=CpkewZuvHEl+YD+7VklE3U3u95d7YH61n7nDg/3+XXrIRe3ONmaHBBk617/hRwSHVT
         +ysYRtB//O/o7ZUCBHtB482dnUOEYielILme+Nu4KOYaD64ob+IfcIIalsx2xWoHCEsS
         N0QU9zLc1n5bkpMpaFs+RzJYxCaHtpBXyVdi/pgcZ6ZfJml/AjaEvpf9dfZlKECEnEmS
         7t7ghG8VLWuRbNIIXQm+qw5I9hzW3SlXN9M+qoQqRJ37SlfdxqWjtkgUSjXFYr+56gBf
         ElOs11qF6dgA/dCI/QS/Mp8P4emPb/c/TIGx4bDGtqHwU683u2hZ2cz9xzrLCo51NYDp
         HpLg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id m126sor2775482pfm.41.2019.10.30.08.12.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 30 Oct 2019 08:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:5801:: with SMTP id m1mr25588238pgb.139.1572448327681;
        Wed, 30 Oct 2019 08:12:07 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id z7sm290350pfr.165.2019.10.30.08.12.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 08:12:06 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Hannes Reinecke <hare@suse.de>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-scsi@vger.kernel.org, "Martin K . Petersen"
 <martin.petersen@oracle.com>, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern
 <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
 <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
 <4ee551d0-27a6-b516-ade0-d477fd93bad8@suse.de>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <d0899d02-ecb2-7f0b-3d0a-c818a0ec6ceb@acm.org>
Date: Wed, 30 Oct 2019 08:12:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4ee551d0-27a6-b516-ade0-d477fd93bad8@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 10/30/19 1:30 AM, Hannes Reinecke wrote:
> On 10/28/19 9:38 PM, Bart Van Assche wrote:
>> If the residual is changed from signed into unsigned, how is a SCSI=20
>> LLD expected to report the difference between residual overflow and=20
>> residual underflow to the SCSI core?
>
> You don't have to. To quote RFC 3720 page 122:
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0 bit 5 - (O) set for Residual Overflow.=C2=A0 In=
 this case, the Residual
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Count indicates the number of bytes=
 that were not transferred
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 because the initiator's Expected Da=
ta Transfer Length was not
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sufficient.=C2=A0 For a bidirection=
al operation, the Residual Count
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains the residual for the write=
 operation.
>=20
> IE the 'overflow' setting in the iSCSI command response is an indicator=
=20
> that there _would_ be more data if the command request _would_ have=20
> specified a larger buffer.
> But as it didn't, the entire buffer was filled, and the overflow counter=
=20
> is set.
> Which, of course, is then ignored by the linux SCSI stack as the request=
=20
> got all data, and the residual is set to zero.
> Then it's left to the caller to re-send with a larger buffer if=20
> required. But it's nothing the SCSI stack can nor should be attempting=20
> on its own.

Hi Hannes,

I do not agree that reporting a residual overflow by calling=20
scsi_set_resid(..., 0) is acceptable. For reads a residual overflow=20
means that the length specified in the CDB (scsi_bufflen()) exceeds the=20
data buffer size (length of scsi_sglist()). I think it's dangerous to=20
report to the block layer that such requests completed successfully and=20
with residual zero.

Bart.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/d0899d02-ecb2-7f0b-3d0a-c818a0ec6ceb=
%40acm.org.
