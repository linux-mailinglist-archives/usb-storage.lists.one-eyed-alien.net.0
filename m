Return-Path: <usb-storage+bncBCHZVHVFVMARBGVW5LWQKGQEVJ26ODY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 36569EAB8A
	for <lists+usb-storage@lfdr.de>; Thu, 31 Oct 2019 09:28:11 +0100 (CET)
Received: by mail-ed1-x548.google.com with SMTP id r26sf3524513edy.13
        for <lists+usb-storage@lfdr.de>; Thu, 31 Oct 2019 01:28:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572510491; cv=pass;
        d=google.com; s=arc-20160816;
        b=OtO3Sghk7HlUqrOBcEPnGdlirPb1ca9pyDKGXVkk3shoYN17jBTFV2ZTQaMwn47Gw7
         PX5EXTUMsO7tqtwXnDS2aZF2XGJDp+0WTMyrU7u8YNkj0m1hwxrjQGmTdA8GqwwvutWG
         uhT504Od9UOxC1Fxc3ia0gyHuv9Y/CQstpXTbTfsgjU0uYEdYJ/1+neH3EaZu0zBiYXi
         g/F9EHuyo138Eut/avkUPGAaUjK65x8Sn+U/qBcOH+FggXxqm3mcUx7Kc8/KyVfEauae
         qOPm+S7Jef9hvGTYrQCnoO4eW4yNj7hjcYGRPllV6UAEuAS+sStK3YxHVd67XaEHcBjM
         HFhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=umA6mD3ei+beJP8DYIRe8KJ204A+NrzRkmC+19qg0vg=;
        b=WsPUA7LIhjZNooW4Z5Btn9+mcTxiak3fHDvG7NMqSvZ8DHWwbxORbWGOUz7RHkJ7bc
         IxIgU8HeXS2wTTbQjij7bQU6zpw8c4tSclakFYolPDU+eBW4YfZfNErErD7k2a29w49v
         uyHlBY0UQoGJBkGUH9Plb+tSVS8pUEcLOlhQIyjCNxVaHbc6WQdCk+bvlOYk+hVByhWh
         g7NbVw1V1MbDOiAfXgcyKvXXI6EOWSLeml7WqDL3OlDNLU7n2RE43cBf2mqnUWBWF5cc
         TTD/qlVRcCtQoLbHigrqHFvb9USCDliFVOxcHRiBVYkMoFYSHJ5swx4BCnUXgfnifSnq
         vhyA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umA6mD3ei+beJP8DYIRe8KJ204A+NrzRkmC+19qg0vg=;
        b=Uni3PXiYDUCVz0NVhiWDqmv6l6I8VsdbfgYTq/hSJEqofhVb4iNX9+QXWJqZKRhymF
         jgvSEYEz2NQ3cQHPqGIpZWUbE6RLxg9f414JRuDupaIHmgx4XlerZyeWAs+81vFz/G2K
         7l3pVRr12cW2DHFpfl8+xipv9+4YbUJUt3CwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umA6mD3ei+beJP8DYIRe8KJ204A+NrzRkmC+19qg0vg=;
        b=NEutPf3YtHqhmfggUjcZVWexlZ+HBW+rRmsdRYkbowxmvtEZ3OfaH/e3QxOiVq6rKf
         iF8eELK5junZp1K1DKitDu+Mk9tDn+GVO1uevQNpXsgTGuFqpPutcXCEGB0hrclz3gU4
         lVc4d1u8GdRNjA/dp1ZhR+TBxSEW6wKFmUmbl3b9JWTQSwYl/LTbCPA8qwRahcux/lWM
         12XvsTIwnYi0MKoU/jPFZYsXtuKb97vNLU6XUElhsnb/XLhh4K7i+HwniuJr33FtTEZ5
         vxVnLqp+qgb5puBxOV34QPuSh+4/fX7ORgI4jDqqRwr3RU5WsvD7Qlz87Qn+9gdNhkxs
         1kng==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV9SIE2cGe7moCJRB+LiDcwmbrsEZDDWMAGqVOkAbrGft0XGcv6
	q9Qm3LylWykK+wQg+ZOd++P1PA==
X-Google-Smtp-Source: APXvYqwViWWE2cGZpkrFprpeb64Vy4+xvlGXfNlyex9crQ5dClHxAHH1QbAZAyX2F5LunRTTbZX29g==
X-Received: by 2002:a05:6402:1157:: with SMTP id g23mr4615932edw.260.1572510490967;
        Thu, 31 Oct 2019 01:28:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:6889:: with SMTP id n9ls478985ejr.2.gmail; Thu, 31
 Oct 2019 01:28:10 -0700 (PDT)
X-Received: by 2002:a17:907:38a:: with SMTP id ss10mr2567960ejb.325.1572510490290;
        Thu, 31 Oct 2019 01:28:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572510490; cv=none;
        d=google.com; s=arc-20160816;
        b=MNSh5LGqcbrbtHGreUi2/vSmX18BEy8Bg6zVt3zLXO0ZHON/qBK/He7M2OpTX1aDHW
         6lHnXv9cVd3N4Se33y9qXAofCmGWiW3MkvYRxaYujKtiwJdE9Zt4AsuQVTFqiZ5aosAf
         ZGAleqmyfRiPys5FGXEfBy1r2kFU4Bt1xg3zsDeUBweMzG3sNjwtvaWiy8Br7lG3ojfG
         yAjQR8PyncXGE1Cjo8m0RL8cmZmCEDmldAXdPS6n110TKIMQMIfS3nO0xdKEVodoobrt
         QMHXY9xftuJZARYjefGYUhLXdkJQ5KnAzI5winf5XJd/FOjPHC5my0XDZSIB0n91/HUR
         x1yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=umtvc5+Fike60g6FZFxEmLk0S+d5/EpjpLqkbKdbW2s=;
        b=wHlQj/3aFmVMy0EQ3HAIP8xAEQGOSMxH8T8vKm+XNW4nk0Dpohw9g1g/RhqOLEzm9Z
         /tKMd8g8DSd5y1SfSyJqZbHaPGs4qhEG4qM3FTimTqvOjo+ghcGiN2rCv0NeDfRNeByB
         FCMNsufBbMHpmpDYFgvp1qQzGZ0xLjBT/ASiE9z36wpd6yZ3tdmd5WIRsZ8kDTEt2rBR
         +fGRdRVh/I1b9DGsB5MCRpNR17cN4YGS6iNU93yCnjB4bD33tE/Afisb5DgRpjApLewX
         FpXr4WGz9e/hRY8azKXE3HwaQ83WBGHI3GgMmd/BvgTD0Zst4E7TR0K1Ggp8xY4CXrja
         d1iQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id ks2si1072220ejb.396.2019.10.31.01.28.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Oct 2019 01:28:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 7CF89AB89;
	Thu, 31 Oct 2019 08:28:09 +0000 (UTC)
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
Message-ID: <825182ee-98ce-1905-1839-239a6a950db7@suse.de>
Date: Thu, 31 Oct 2019 09:28:06 +0100
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
Dangerous how?

fcp3:
For read operations and write operations, if the FCP_RESID_OVER bit is=20
set to one, the FCP_RESID field contains the excess of the number of=20
bytes required by the SCSI command to be transferred over the number of=20
bytes specified by the FCP_DL field.

SAS doesn't even have the notion of residuals

srp04:
DOOVER , when set to one, indicates that the DATA-OUT RESIDUAL COUNT=20
field is valid and contains the count of data bytes that could not be=20
transferred from the data-out buffer because the length of the data-out=20
buffer was not sufficient. The application client should examine the=20
DATA-OUT RESIDUAL COUNT field in the context of the command to determine=20
whether or not an error condition occurred.

iSCSI we've already covered.

In all cases, the overflow value is an _indicator_ that additional data=20
is available, but was not transferred due to the lack of space.
So we will not have any buffer overflow as data is never transferred.

And in most cases an overflow is actually desired; it is a pretty common=20
use pattern to send a SCSI command with a small enough buffer to return=20
the length of available data, and then send the actual command knowing=20
how large the buffer needs to be.
See for example scsi_report_lun_scan() or the VPD handling code.

So again, I don't think it's something we need to worry about.

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
one-eyed-alien.net/d/msgid/usb-storage/825182ee-98ce-1905-1839-239a6a950db7=
%40suse.de.
