Return-Path: <usb-storage+bncBCHZVHVFVMARB4NE5LWQKGQE6K3OKVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB71EAB1B
	for <lists+usb-storage@lfdr.de>; Thu, 31 Oct 2019 08:51:14 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id j21sf3415936edv.20
        for <lists+usb-storage@lfdr.de>; Thu, 31 Oct 2019 00:51:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572508274; cv=pass;
        d=google.com; s=arc-20160816;
        b=CogusHsNz7gJtm+TnDoi67OxZ4eR+f82Ue82ek/0v9E0aiHwNjYA1FqAe7UZTsZ5Qt
         hnPP+p5JCi+NphR6X4MNZHjBZEctKmnRbCpxKCS+XChqkAJwgKMpbH6Ryhwn+yt7SEG7
         hVb9BEiKrug7CZ4sdrMMK7wBeLvLDjYgClV7CAO27UKE8sYJRcQB3LdwRCwzo4jngmd/
         r3p2f4miCSwIjkF3yFmOCAP1QmokmVhkpz5i6gWMVkEc+khQFu6s2DmQIyKbzsAUrnus
         N825YpA4d3tZ7EzGjVb4H/5jB+gpA5JmXuW1Nuv/nxp6BWbMMiqedp3ZTOcbDFwn9Yhh
         5xPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=F0HN3rAfB9+Ob02PIj4YeZy8toRCXlpC7Z64XXhOH+o=;
        b=Ywc5dOx96FyKCT5y17JkYE0bvR+QemOZeuiL1hL/zAka7mioOyVEBduUIcnyjJAI1o
         WBGtAC09DNB+eHZopHH+OWugUw6t/8MwlKS7WCCM/5MHhUOlZLsWXDwwJMY0WzPzKYxR
         6QBd2wvo21orvxuzdRP9NY73FCvxGJBJMYxTPvD4lch/lBs2XSb0gXmn1ZK2WH4IZrwq
         7AnRGT8q60l87Q3lACugTVazzpzI2qnQbJZT1S3aj9KCNay95MKBdrIj0hEQwLiNHeNd
         BTkb4XTb2IjePNB7SdylK/dE/+fMb7xCJTgPgfiY2ysf7OKekVwCRE5ETGBQkVbPdI1F
         7z5g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F0HN3rAfB9+Ob02PIj4YeZy8toRCXlpC7Z64XXhOH+o=;
        b=GVByvFMvD+nqTjMtpb/y4kMsZhIqLSr6ucfkBcZSHV0nOO2BFFi16sTuvcMBVDRwdY
         1urVMePHpCky+iYq/mg1eXVtzi6YLyPBDV5VwU2NbdZEpOZGX3m++qE1AAXVgxBwXQQA
         gNdrWZIfhSzfiFf1qC9p3Gl/cMJJHX2OOiJRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F0HN3rAfB9+Ob02PIj4YeZy8toRCXlpC7Z64XXhOH+o=;
        b=c61nek0EK/cHYnKY06EXn5wccrXi4Pgnk6+O6kWsgWFpQGHv+L5ItFxWIPKarhG1zd
         9mvxaqwbfMVkz8rYFJ/lMvmADNGk9LiALSyYldmNppkljFYxNwhubwv5Dzpm3z3ZBCHr
         uPraswSLgVsp2kjR6ZPGZIGFgJN982NA+EuhCrLwO/5Lx0fCtJpTJ4JF8gz5GJqD2QKr
         Xu8uWCV3M1uSo81cSCUqfsp8R0g1z62nob/hQv/sIGVSrTIZwy3/p/dhXqnRJWe2g2Ds
         YFHRlTyUm98FUBPksLDlWwpS+QJjWIib2Ea9tn8Xh3bJljA6/eASQMWt1ZSNR7nJc/G6
         r8kw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUQSaDMlsbqm9tQ1R6xUQ66iYI3p64J9gUJWm4UisEnVEWRxZDv
	lRbKGwDwZYoHJQvc/8nJSDQiXA==
X-Google-Smtp-Source: APXvYqxWZujDa0cNzEqGoMIrPGplRohoqhxf86SlFvK3pMn9TPH7jWbWasBN19WB/JtBxhqYzR0K2w==
X-Received: by 2002:a50:d713:: with SMTP id t19mr4335377edi.185.1572508273919;
        Thu, 31 Oct 2019 00:51:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:d80b:: with SMTP id v11ls508983edq.0.gmail; Thu, 31 Oct
 2019 00:51:13 -0700 (PDT)
X-Received: by 2002:a05:6402:75a:: with SMTP id p26mr4342331edy.221.1572508273041;
        Thu, 31 Oct 2019 00:51:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572508273; cv=none;
        d=google.com; s=arc-20160816;
        b=bKmbH9grmNXxrY6H6acwFmkj/AcLcCLYiYaOvFGxdJLCW4Np3xW6UEmg4RZAKqEBTb
         upL3MkpnU691qjo5+yLIx7oovQjWrq4twhg90rkwWEqT5dOVvrWtrsaJdNe0qjcLy//V
         NsA5WNh/8cwlndBJdB5V2eizv5vWo2JwZcMYAmwKb7XZHXHSVZ8lfP5jYBu8ZS2A4Bh1
         hqHfu1S2uabi04sWjer15zk9IqYzArptPNG2Kp0QzjjVYqmWnmm5IYUotlAdYKeZDavs
         ihcBIPJVtSsKxWNm2UQjOAUwhLFtrMAUyszU7EXvHGCi2o717e9f0uyXZnD56fUBC3jS
         3EKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=nRtd7Ms2v4/+HD2siChuXeooAJfYWwerGt099OeQ3rQ=;
        b=ir7B3MARu8Fdc2rkk7FcDV0GVkKk6rZLDg3W5MjfUmFIw4Yo8s1z/vrJRGXCZ0myHb
         Kh1QeveL0tdvh4JLHyv0abJyvC5VSMrlmfl2oDMjHBdQVn+COZY7fu/NKoAvrEqAwHFY
         QgDw8qT9i3wkRJi7IuZy+K1ow3+3RgIkPEc5/KRYlbn+S2olS84PPhjreIwfV7ABLOUJ
         B6SOJk34cdQwngi/gMhC1jwleERdVusR4xrdWXbBvXKxM9yq6L+mAsXCJIJkWAmbGJqd
         ZzyXjmXQfpufOtls/NSJ8b0jHXSXC8N9Wjtt/wXUfDWdjV9b4OSbKcpVqb0Zq0J+1LJS
         GVIA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id 92si4069305edh.321.2019.10.31.00.51.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Oct 2019 00:51:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id A10FBABCE;
	Thu, 31 Oct 2019 07:51:11 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: dgilbert@interlog.com, Bart Van Assche <bvanassche@acm.org>,
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
 <571b5f9a-f151-30fb-5720-d7d47a4ef1d7@suse.de>
 <8b2fbab6-b787-470a-f9ed-46622733881c@interlog.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <7ba0414d-7989-31ee-4044-90f541db379f@suse.de>
Date: Thu, 31 Oct 2019 08:51:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <8b2fbab6-b787-470a-f9ed-46622733881c@interlog.com>
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

On 10/30/19 5:18 PM, Douglas Gilbert wrote:
> On 2019-10-30 11:18 a.m., Hannes Reinecke wrote:
>> On 10/30/19 4:12 PM, Bart Van Assche wrote:
>>> On 10/30/19 1:30 AM, Hannes Reinecke wrote:
>>>> On 10/28/19 9:38 PM, Bart Van Assche wrote:
>>>>> If the residual is changed from signed into unsigned, how is a SCSI=
=20
>>>>> LLD expected to report the difference between residual overflow and=
=20
>>>>> residual underflow to the SCSI core?
>>>>
>>>> You don't have to. To quote RFC 3720 page 122:
>>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bit 5 - (O) set for Residual Overflow.=
=C2=A0 In this case, the=20
>>>> Residual
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Count indicates the number =
of bytes that were not transferred
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 because the initiator's Exp=
ected Data Transfer Length was not
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sufficient.=C2=A0 For a bid=
irectional operation, the Residual Count
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains the residual for t=
he write operation.
>>>>
>>>> IE the 'overflow' setting in the iSCSI command response is an=20
>>>> indicator that there _would_ be more data if the command request=20
>>>> _would_ have specified a larger buffer.
>>>> But as it didn't, the entire buffer was filled, and the overflow=20
>>>> counter is set.
>>>> Which, of course, is then ignored by the linux SCSI stack as the=20
>>>> request got all data, and the residual is set to zero.
>>>> Then it's left to the caller to re-send with a larger buffer if=20
>>>> required. But it's nothing the SCSI stack can nor should be=20
>>>> attempting on its own.
>>>
>>> Hi Hannes,
>>>
>>> I do not agree that reporting a residual overflow by calling=20
>>> scsi_set_resid(..., 0) is acceptable. For reads a residual overflow=20
>>> means that the length specified in the CDB (scsi_bufflen()) exceeds=20
>>> the data buffer size (length of scsi_sglist()). I think it's=20
>>> dangerous to report to the block layer that such requests completed=20
>>> successfully and with residual zero.
>>>
>> But that is an error on submission, and should be aborted before it=20
>> even got send to the drive.
>>
>> However, this does not relate to the residual, which is handled after=20
>> the command completes (and which sparked this entire thread ...).
>=20
> Seen from a pass-through perspective, the resid is just about the near-en=
d
> data transfer between the HBA and pass-through, or as cam3r03 says:
>=20
> =E2=88=92 cam_resid;
>  =C2=A0=C2=A0=C2=A0 The data residual length member contains the differen=
ce in twos=20
> complement
>  =C2=A0=C2=A0=C2=A0 form of the number of data bytes transferred by the H=
A for the SCSI
>  =C2=A0=C2=A0=C2=A0 command compared with the number of bytes requested b=
y the CCB
>  =C2=A0=C2=A0=C2=A0 cam_dxfer_len member. This is calculated by the total=
 number of bytes
>  =C2=A0=C2=A0=C2=A0 requested to be transferred by the CCB minus the actu=
al number of=20
> bytes
>  =C2=A0=C2=A0=C2=A0 transferred by the HA.
>=20
> [where "HA" is HBA (or the initiator)]
>=20
> That makes overflow (negative resid) a bit interesting as it is only
> reasonable that the pass-though user allocated a buffer big enough to
> receive dxfer_len bytes. One would hope that in the READ case of overflow=
,
> the HBA would have sent the residual bytes to the bit bucket (i.e.
> /dev/null) rather than overfill the data buffer provided by the=20
> pass-through.
>=20
Yes. But my point here is that any residual values are handled (and=20
defined) at the protocol level. Any SCSI midlayer protocol like SPC or,=20
indeed, SAM have no concept of residuals.

THe SCSI midlayer chose to add a residual value to document the number=20
of bytes _not_ being handled from hardware.

> Handling discrepancies between page length (e.g. of VPD, LOG and MODE=20
> pages) and the ALLOCATION LENGTH field are defined in the SCSI standards.
>=20
> That leaves the difficult cases: when there is a discrepancy between=20
> what the
> SCSI command (and the storage device) implied as a data length and the
> dxfer_len allocated at the near-end. In some, but not all, cases that is
> detectable before the command is issued.
>=20
As mentioned, this needs to be handled in the submission path, and the=20
command should be aborted before being sent to the drive.

> Overflow can happen, for example if the RDPROTECT field in a READ(10) is
> accidentally set (e.g. because it uses bits previously used for a SPI
> LUN) and the storage device has protection information. That will result
> in an extra 8 bytes per logical block being returned.
>=20

See above. We should intercept such a command, and simply abort it with=20
an appropriate error.
That goes for internal commands, of course; I know it doesn't work for=20
things like sg_raw, but one could argue that this was precisely the=20
point of that command ...

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
one-eyed-alien.net/d/msgid/usb-storage/7ba0414d-7989-31ee-4044-90f541db379f=
%40suse.de.
