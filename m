Return-Path: <usb-storage+bncBDGIZD433YCRBXHP43WQKGQEHCC3VRY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x145.google.com (mail-lf1-x145.google.com [IPv6:2a00:1450:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id C103AEA195
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 17:18:37 +0100 (CET)
Received: by mail-lf1-x145.google.com with SMTP id m24sf388411lfh.22
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 09:18:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572452317; cv=pass;
        d=google.com; s=arc-20160816;
        b=gOzj8r1x0B2ht7EeM6+tA5GqfYdFhG+HcsIfIEE3MEAR4jHp2TQitY+xdrfjGmFnSW
         mDvwBtb6wqI7TyVqP1m08ADlbsvWghx5qpWnCGtoC780OOPE1Bebxkw/d5QSdHayd7q6
         tuK2Wg+NhI552a0Blx8wutnQFGTtKBPG8WnYWTV/2VaO1JK7Ll6Sr4rG/iIIpDwDNTts
         9qRwrD6MDa2NDVufM2/D+HFeYsKsxkRcMcqUBTo0wwFuch70WkXf5Mg58jWo7YoRszHi
         YrChqMtMCjUzMXDUnHD/+rvA3RR2t5zf+FPgGnCSj3hLCVDE9nP8l1NrBzUTNvwY2qUD
         0xow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:reply-to:sender
         :dkim-signature;
        bh=xVX5dizlAUWcYjKgurBz2qBAMwOAGJDnD092Eqqx8bA=;
        b=gE8DhadMuHHsvm0tqpFro4j70UeE0r4P/odCCsfqr7zpPY7lRSGkMv7CMBZIbXVaGE
         stKO6M+eGghyfXcIoL//HmsRHnTU6cnbozQhQ5GdhrkEuUvGXkuWXoHFxR4Dl00fM38Y
         ZZ6giGxxNjzMnlX7N0RLWSqvKiXzrumgEw5FsflJMF5cjAhSBvBfIJrNJ6zTX+ZTJktH
         0ywAH/quWS6BaZz1q/GoiGjELaHFrHoCIl/YEG8gd4QSnMrIqxG5k/GPOdL4cWlC5B6f
         UKSy9sVNqmyftrJ+2QpawNURuxUlNc9KjzZdOry6FRLC73efEuxlobRfP8DU4zMpDaFi
         QKmg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:reply-to:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xVX5dizlAUWcYjKgurBz2qBAMwOAGJDnD092Eqqx8bA=;
        b=f6jEwWy0jsrtkTlx/CXV62buF2mXYC9EiWoAemty3OCvQrkjbb2/oeJVZZFaV/PxT4
         d1CgzEHXYR8yeC+f6XX28YoKIwe/cBEXJ730jOYSWit9dr7JUpZni4gCY5Ssg8Z7XMbs
         SEh08MwJN+VVIqnS0YW8W8lUpRTEho0x68XbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xVX5dizlAUWcYjKgurBz2qBAMwOAGJDnD092Eqqx8bA=;
        b=L6UXamIDcH/DRtRdFHGBVkrXMo6i16MnS6FMQmxdZQlUDLOfp6dpDhXzpe6VPWptqN
         j9XAcS5E1qi7BchBP0gfAV5CYpc2C6yCd0FpIQuPAw3VOpF8PCrBABxAMhFpgLX+Ioqn
         tFrvdtvHBf5wvTN4SrQhWec15KzJUTpRS5EuBz4FmmhHVpmkk8uOXcYIDTZRtPDpfo5v
         kBG6pRX4PpYy433F9J4I3Euhn+9FVhbyaSUyoqTndSHAiazvx32u/mvWh+nvEiKVciGT
         UihE2Wf4CF33dHnZgGr1Gd9TWoKkgA9jkDmw/hL5+TSn7x8Xm8VmhwAKpQDvudaYl+Q1
         gq7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWv9Mn1mZV7RuxPkgIhZS/GTtA0TY4Cf0q8ENhKz8AhDror9ufW
	0/hB25RLSct7qn1KaeLUF5MM5w==
X-Google-Smtp-Source: APXvYqzyBtnodEGOaa2Q1gw1VkgWaFYrFfJBCO0baj+94NNCaYtHGwIY8GrAqnLE8+tkK0Q+fKWeWQ==
X-Received: by 2002:ac2:5bca:: with SMTP id u10mr6808054lfn.134.1572452317051;
        Wed, 30 Oct 2019 09:18:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:3e17:: with SMTP id l23ls1278lja.7.gmail; Wed, 30 Oct
 2019 09:18:36 -0700 (PDT)
X-Received: by 2002:a2e:80c5:: with SMTP id r5mr375531ljg.231.1572452316086;
        Wed, 30 Oct 2019 09:18:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572452316; cv=none;
        d=google.com; s=arc-20160816;
        b=n5SLAsrORKzjDxPf2e4CEAK3d0jcUge8e2Ex4gU31RpzOVbLRuDekUU2ld2n63USLZ
         mpflhqs9OmUDFTTqe2nUu/veSCO5kLlgfTfkyVT8E0sX9/Ivdq/plhAeXdNlzM/X6ghz
         BdDL9jr2bM91IK6Q+rreAocgCNhOFl9mJeAxLh7/iJyLS+B1iMHzDlxOUcqZVmTMalNh
         L5elOMkWci3DvhBFwk1BLW14uAR5l1xpjYobZ1QnBQOOld5BX4NZ8gWuiVGIpJLTEJy7
         l507pVxg8hOplk26Dr6qPFrgKx1ti8L8zllWiwZfE2D010Wx/S9H2tYoheBQDKxBVvW2
         sm+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to;
        bh=1b+U9sVc5ehTLVF1iqWgTWziOeTjyS7Ou6WseyHXOpA=;
        b=AvMaxnDQkPOgcbnR8MtRa58RYoovgO9vrw/u1w9AGQWL0Njw/MwXbExql7ZZq72AJl
         ExzXSk3AxGRePNtd6f6oDPJfZ3PTAN6eIZWNo75MUSbam2pLCR8WJ8eeMxlphmKwhJO9
         gZnddnYhfsc5XhztyDUy/2ljZscaAXsC4ISK/80gWn209eX4Ix3yYmb9QGHKT8zngYx4
         OGJ927CioVG9Tre73e9ObgPv/im0oC7cOQFB2/kty7FA42pLnxyJcq1khRXQl1KtZvVq
         zMWghCcwPp3b+I9i8vVSRPre8QMyABi58+tj5lzfNJNcSSzdx5R6gkBe7vau3+xnkVCd
         oThA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
Received: from smtp.infotech.no (smtp.infotech.no. [82.134.31.41])
        by mx.google.com with ESMTP id s18si3124341ljm.136.2019.10.30.09.18.35
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 30 Oct 2019 09:18:35 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) client-ip=82.134.31.41;
Received: from localhost (localhost [127.0.0.1])
	by smtp.infotech.no (Postfix) with ESMTP id A5B68204191;
	Wed, 30 Oct 2019 17:18:35 +0100 (CET)
X-Virus-Scanned: by amavisd-new-2.6.6 (20110518) (Debian) at infotech.no
Received: from smtp.infotech.no ([127.0.0.1])
	by localhost (smtp.infotech.no [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S4efPonsjrQE; Wed, 30 Oct 2019 17:18:33 +0100 (CET)
Received: from [192.168.48.23] (host-23-251-188-50.dyn.295.ca [23.251.188.50])
	by smtp.infotech.no (Postfix) with ESMTPA id 552A320415A;
	Wed, 30 Oct 2019 17:18:31 +0100 (CET)
Reply-To: dgilbert@interlog.com
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Hannes Reinecke <hare@suse.de>, Bart Van Assche <bvanassche@acm.org>,
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
From: Douglas Gilbert <dgilbert@interlog.com>
Message-ID: <8b2fbab6-b787-470a-f9ed-46622733881c@interlog.com>
Date: Wed, 30 Oct 2019 12:18:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <571b5f9a-f151-30fb-5720-d7d47a4ef1d7@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
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

On 2019-10-30 11:18 a.m., Hannes Reinecke wrote:
> On 10/30/19 4:12 PM, Bart Van Assche wrote:
>> On 10/30/19 1:30 AM, Hannes Reinecke wrote:
>>> On 10/28/19 9:38 PM, Bart Van Assche wrote:
>>>> If the residual is changed from signed into unsigned, how is a SCSI LL=
D=20
>>>> expected to report the difference between residual overflow and residu=
al=20
>>>> underflow to the SCSI core?
>>>
>>> You don't have to. To quote RFC 3720 page 122:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bit 5 - (O) set for Residual Overflow.=
=C2=A0 In this case, the Residual
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Count indicates the number o=
f bytes that were not transferred
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 because the initiator's Expe=
cted Data Transfer Length was not
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sufficient.=C2=A0 For a bidi=
rectional operation, the Residual Count
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains the residual for th=
e write operation.
>>>
>>> IE the 'overflow' setting in the iSCSI command response is an indicator=
 that=20
>>> there _would_ be more data if the command request _would_ have specifie=
d a=20
>>> larger buffer.
>>> But as it didn't, the entire buffer was filled, and the overflow counte=
r is set.
>>> Which, of course, is then ignored by the linux SCSI stack as the reques=
t got=20
>>> all data, and the residual is set to zero.
>>> Then it's left to the caller to re-send with a larger buffer if require=
d. But=20
>>> it's nothing the SCSI stack can nor should be attempting on its own.
>>
>> Hi Hannes,
>>
>> I do not agree that reporting a residual overflow by calling=20
>> scsi_set_resid(..., 0) is acceptable. For reads a residual overflow mean=
s that=20
>> the length specified in the CDB (scsi_bufflen()) exceeds the data buffer=
 size=20
>> (length of scsi_sglist()). I think it's dangerous to report to the block=
 layer=20
>> that such requests completed successfully and with residual zero.
>>
> But that is an error on submission, and should be aborted before it even =
got=20
> send to the drive.
>=20
> However, this does not relate to the residual, which is handled after the=
=20
> command completes (and which sparked this entire thread ...).

Seen from a pass-through perspective, the resid is just about the near-end
data transfer between the HBA and pass-through, or as cam3r03 says:

=E2=88=92 cam_resid;
     The data residual length member contains the difference in twos comple=
ment
     form of the number of data bytes transferred by the HA for the SCSI
     command compared with the number of bytes requested by the CCB
     cam_dxfer_len member. This is calculated by the total number of bytes
     requested to be transferred by the CCB minus the actual number of byte=
s
     transferred by the HA.

[where "HA" is HBA (or the initiator)]

That makes overflow (negative resid) a bit interesting as it is only
reasonable that the pass-though user allocated a buffer big enough to
receive dxfer_len bytes. One would hope that in the READ case of overflow,
the HBA would have sent the residual bytes to the bit bucket (i.e.
/dev/null) rather than overfill the data buffer provided by the pass-throug=
h.

Handling discrepancies between page length (e.g. of VPD, LOG and MODE pages=
)
and the ALLOCATION LENGTH field are defined in the SCSI standards.

That leaves the difficult cases: when there is a discrepancy between what t=
he
SCSI command (and the storage device) implied as a data length and the
dxfer_len allocated at the near-end. In some, but not all, cases that is
detectable before the command is issued.

Overflow can happen, for example if the RDPROTECT field in a READ(10) is
accidentally set (e.g. because it uses bits previously used for a SPI
LUN) and the storage device has protection information. That will result
in an extra 8 bytes per logical block being returned.

Doug Gilbert


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/8b2fbab6-b787-470a-f9ed-46622733881c=
%40interlog.com.
