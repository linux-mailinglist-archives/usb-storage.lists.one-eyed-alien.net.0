Return-Path: <usb-storage+bncBCHZVHVFVMARBUWT43WQKGQEGBUHPHA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCD6E9EB6
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 16:18:43 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id f22sf1866795edj.14
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 08:18:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572448723; cv=pass;
        d=google.com; s=arc-20160816;
        b=IWaTZS+y8wnOv3vOz71a2fqpP8GIAytW7MSEANMgKqx3KTZh/5Xai9PMJwdLE6en6l
         PBj7VnIDuk9kbE274SOHFnqfXdU6xK+sVZr2nuwV8KyzfQi4HiMqoiD1xTaUsPuKMDft
         fxxR/dEQDDofUXcys97QL8fHzod6wTKSaZznfXVUASJ4Ou1/U2TPazAbn1BKOGkJ228S
         95FGv56TQv2vO6oeX2DXUJT3bh5s13GDetL7q0RR5hBGJN92Q6ZF4lbEw3/KVMxav2Yz
         86ftbs/+mBcVm2tiiZ2Pgp1HR4TKEmgMBXDQgz+8clzSOAavwstQmBYlOol8DlLgOsf9
         7NkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=D2H+nilUggeRz/hgctvFGnRKCVONmkmPDlSLRUUWH7I=;
        b=fnJRSPdWWgO2NJ4Vj5edHcVhM1AdpDDBU4xF6gOx0Sv9AslRZi1vEmzJNmWCU99u/0
         NAaeLmyxuPUraaDeKUbVQrb5dwI0z64KIbaVGZOPM16GslNPgWNsxIGi1SUCVNb+t4An
         7f1yFPaG1KUaFyu0vUz42q/suTzR8PLmuNRAOjkkGcXQf9CDXTGuuXSoEEmYDKsMhfE7
         1eK4sNbu8ipxzP+p5f/GcIpIz0kUMKLB7rbI8NH0OAoigmTmSdVmIQVRy5Tr5S0knQXB
         0oA7rnoqTT+CPm+i9a+Tc8l+vi5q3rJfSLyHwrvzO28DZrPIMvnVf2Cgca6lMLAerclF
         phLQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2H+nilUggeRz/hgctvFGnRKCVONmkmPDlSLRUUWH7I=;
        b=hX/n+0xIvsLpZ2KjLRNFRNCC0mvco7SRP7gwOSJUTjZngSKImg7Aegk3uBv9Hzqxa6
         zdyxWcBkfUkC0HhOsxOKTaXsMP4pyEw1y5wQyt3CUjJg9d8EISTxIwh+bujllWusdLJx
         hBWlnKs86r56ciH+pWW0J8TAcEiJZ47IsHGY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2H+nilUggeRz/hgctvFGnRKCVONmkmPDlSLRUUWH7I=;
        b=cTXCJyDHN4sMbDKOVr8B5qfmq+VA1AxHATfi3R1+b/9NryKltnt+VbiougGlFN9vB5
         M5fh4m3wSlW/niYFYsbJmFocY0zx5HJ59wM140WWnkoEKh8RxECUvUcXIkgleGrpfna8
         n04mOc/0DpCKmAnAbnRRKRNHmnn8LNz7Be8wVY1tSoYt/mXZdT5ai95LLge+1/txv0rX
         5CFa3Pypd2DFA2+XqZNuR3iaYne6LqFUMy9h3zowwQKTLjq5qbY0TCW/R4stOj2BwgBx
         WMbqum/Oe/8WtDAwod9yjylRvWoyFMCs/VXTdFLbJSiOveUrFv6B9MepWWZ6v+MWAHvD
         wJvA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXiqaUZpR1gNAI3DWBtRpMhAnKOeb/QjCe3He2oYRnIz2pOylFu
	YG2+TnFqGovdRVDEBGeVuS5kpw==
X-Google-Smtp-Source: APXvYqzVxjrhO79/f62fOk/qziHaXxpkhC+qeyrmaRbi/PhxlPjWxQnCJnn5qKlZ2VaK2Cwbpd2d4A==
X-Received: by 2002:a17:906:5004:: with SMTP id s4mr70465ejj.26.1572448722903;
        Wed, 30 Oct 2019 08:18:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:2da1:: with SMTP id g1ls2356832eji.14.gmail; Wed, 30
 Oct 2019 08:18:42 -0700 (PDT)
X-Received: by 2002:a17:906:6d9:: with SMTP id v25mr25336ejb.274.1572448722169;
        Wed, 30 Oct 2019 08:18:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572448722; cv=none;
        d=google.com; s=arc-20160816;
        b=kNpPljqOw4KPISOB85DCXKH2OqiFtVNQ2VorQTYbBCcNEGjRxWqV1zvX8JVmBis+BX
         3KBVKOITKHSEYbOMX+P2Hf23lgDZVWyQhvvwKpSYrCUmniHQAVYo+NBGhS55GBb8Rjxu
         /tEEG/D8luFQ93WKeNsHTUkXuO2O+dlvnB273DzToQQQ8Z1jbT4DD9d37YdJkLi6armT
         SruTzWCwpgvI52kO/WQWrd3RAR9IwJugWkSqjGXbQFmATRp9CvLGXSuhbbDoSVDj27rB
         azAMXwC5Hz8lo1BvCvIJ6yAXm2kNl+ZyqhlwEmvkGMkP24vmaJcPciQ04AKdyIZK0e6Q
         S0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=w+Z48zJ9vZQu8j+Y4WZsainEEHxCn546H0tlLE06+p0=;
        b=Zbzi1o3ShSa8wolcyt4pwb4uhE4WgQehi2vhRfh/ueEHC31uz5sTnieA1yko4ZXLgq
         inNyEP4ZdHAX4L+/Zf2pk/DcwOJzEjZQOhuEYtPzUIYqtUMMbKZqFR0SwOp5PRD1YewD
         YA/rOui+nEvbs8l6YjvTaED8TOuxMQ9M7O5CU3GFdUSKJzHMXKVfK0FSGzgwVA7H7fK/
         67tM6BAQpmiZ+6/lHmPt4MgN6O8EA8xSgxdredEV1oJ7ajtQQLKQahwfeMt/40lYvF1c
         q2sSq2HTMZRuXc9BGH85SPOOD7EQsdG1HslATobVfYkFDejnVxMY1FXDuICEElGZ69xd
         8THw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id c36si1694792edb.58.2019.10.30.08.18.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 08:18:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 7EFEFAB9B;
	Wed, 30 Oct 2019 15:18:41 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Bart Van Assche <bvanassche@acm.org>,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
 <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
 <4ee551d0-27a6-b516-ade0-d477fd93bad8@suse.de>
 <d0899d02-ecb2-7f0b-3d0a-c818a0ec6ceb@acm.org>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <571b5f9a-f151-30fb-5720-d7d47a4ef1d7@suse.de>
Date: Wed, 30 Oct 2019 16:18:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <d0899d02-ecb2-7f0b-3d0a-c818a0ec6ceb@acm.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
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

On 10/30/19 4:12 PM, Bart Van Assche wrote:
> On 10/30/19 1:30 AM, Hannes Reinecke wrote:
>> On 10/28/19 9:38 PM, Bart Van Assche wrote:
>>> If the residual is changed from signed into unsigned, how is a SCSI=20
>>> LLD expected to report the difference between residual overflow and=20
>>> residual underflow to the SCSI core?
>>
>> You don't have to. To quote RFC 3720 page 122:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bit 5 - (O) set for Residual Overflow.=C2=
=A0 In this case, the Residual
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Count indicates the number of=
 bytes that were not transferred
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 because the initiator's Expec=
ted Data Transfer Length was not
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sufficient.=C2=A0 For a bidir=
ectional operation, the Residual Count
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains the residual for the=
 write operation.
>>
>> IE the 'overflow' setting in the iSCSI command response is an=20
>> indicator that there _would_ be more data if the command request=20
>> _would_ have specified a larger buffer.
>> But as it didn't, the entire buffer was filled, and the overflow=20
>> counter is set.
>> Which, of course, is then ignored by the linux SCSI stack as the=20
>> request got all data, and the residual is set to zero.
>> Then it's left to the caller to re-send with a larger buffer if=20
>> required. But it's nothing the SCSI stack can nor should be attempting=
=20
>> on its own.
>=20
> Hi Hannes,
>=20
> I do not agree that reporting a residual overflow by calling=20
> scsi_set_resid(..., 0) is acceptable. For reads a residual overflow=20
> means that the length specified in the CDB (scsi_bufflen()) exceeds the=
=20
> data buffer size (length of scsi_sglist()). I think it's dangerous to=20
> report to the block layer that such requests completed successfully and=
=20
> with residual zero.
>=20
But that is an error on submission, and should be aborted before it even=20
got send to the drive.

However, this does not relate to the residual, which is handled after=20
the command completes (and which sparked this entire thread ...).

Cheers,

Hannes
--=20
Dr. Hannes Reinecke            Teamlead Storage & Networking
hare@suse.de                              +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/571b5f9a-f151-30fb-5720-d7d47a4ef1d7=
%40suse.de.
