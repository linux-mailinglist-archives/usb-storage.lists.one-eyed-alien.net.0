Return-Path: <usb-storage+bncBCTPRFE7TUKRBXPRUHEAMGQEWLWCKFQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA2BC2ACFC
	for <lists+usb-storage@lfdr.de>; Mon, 03 Nov 2025 10:41:51 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-640b8087663sf2055940a12.3
        for <lists+usb-storage@lfdr.de>; Mon, 03 Nov 2025 01:41:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762162910; cv=pass;
        d=google.com; s=arc-20240605;
        b=apSbGy4Or3y28L53jibzJJPMi/VTZfV9ISzhk8uAG9tPmlZaTF1pzUbvJQo1Dr6Ym3
         KO2MpyBJEaVcb340rz3P57EN+dAwvp77ygD+1ceafSE6u9XXAdfi+iIy+mNkCNxmvgTa
         pxQH4cqe23YkqyIHDogt47qDaclOqrdz73tbWtOK8zdRyKQnurE2vivL7hLvgU8ycAf4
         W7fvzuzMn1IMSjAy66TZ5BBv+BrxVsUYlvf0KND6fSzXEBg+QZRx71N8fwioQsRv3yP8
         bNcTY2A2Uuuw5AOlMZZfpkZS/BNN1tBITpYtLe0z5ePhml9wPax8QmrWMMa9J54QGtzV
         7yRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=h7BXXMqAsKyujM4sDMv2h9T9AdE+1vjFbdIARAq5zQM=;
        fh=KZ/0XH6ecWLmBfkiHgRs2sv2s7W96lfyOSfC1cM/XHA=;
        b=NtiYJdw8d2tgiCobSkaQKrWNcCHTMwefhc3HVtzv7CE1KOHeLPSSRO5kNMxSfesWsq
         oFA831sFbvYkZUl9fvdqSGBsN0+VFGN8+jHFVehGZLPabWPJxpOrQQeIWqbzP7CL7ldA
         Blcmqu8lcHgxg+PShyt+eYwac0tk5MbM5YZs7ymimFsV+ce1BMw8ldMtiD4e5GUgGBTX
         VXAlE3SPiNP1Mc9QOnjNcVR//aR4pYxznAPxMCJ8GNaDGSHXkro6n16nVskZwUKrm1kK
         0KDh6Q9LBoQJuXYeJwYk22oj/NllrqTffL/1t3BhmUS4p3h945A1vvfMm+bKu9caGbnN
         tRCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=DRe4d5bp;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762162910; x=1762767710; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h7BXXMqAsKyujM4sDMv2h9T9AdE+1vjFbdIARAq5zQM=;
        b=NyUzQ5fEmpaYHF7r8D1AwOgdlUbQV8I7zevQaxl4VxVmnYreOEuW+4ntglBjXMQv9D
         HUW4mIQplPntAGunPWgZh9SGdhJsaSN9KOBz7omb9HjbsEWH5BM59u4L79maStz5tGsg
         UzWIRCuQ1sT+Tr/L0AcH9mpYt688irR8dnN8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762162910; x=1762767710;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h7BXXMqAsKyujM4sDMv2h9T9AdE+1vjFbdIARAq5zQM=;
        b=rIkHYLDEt4zKt4l1PZHxjFyyISbDdGDdr3A62Ri9bChZf3P7LAThjwoO/eB98aRLpy
         iVqge5cDUST97exjRtDTu2RbWkWwb03QX4dqHcIhztA0LVd7qafWxoJ4EWBFV1JnslWo
         VZ4tiUiIfxBuq+I2lQ7TJsWh/5kXn2DeOrOUz4AmCugWhinyRLXKNx3SC0iCszajFTGj
         fEJKPxhv4e9qmtLnFhiaaJfNOw24cUSPQAUfTkS6mnhX5NkD7erftdE4++Ur/JUq6HTe
         jyKAsLCnJhPGdjJhVx8o6LbxR3OHI4TvNej+eh2fdmfa++kj79+zu3m0ZUW7XW11FRjW
         rx/A==
X-Forwarded-Encrypted: i=2; AJvYcCU4RbXF9YGw390VVgviD6i8jPQg5GTaeg7WuXm/quVXBHELk3uewvjKo9W8j2A2/+tOiuD+CA==@lfdr.de
X-Gm-Message-State: AOJu0YwMMou/rKkmp9/NcCQ0cNuVJf1KUCATEYFdPVFYq5/SN/hktWJ1
	6qLE6uDAf0KYyPuMv7MLX0zowzBQEQEdNgIt02vytvd/9oXEcx2N3C/fp7VB75hn4aY=
X-Google-Smtp-Source: AGHT+IGQGMTrSRvmrREhoU9gkhoX21foaCpW7E1kZScncufoXrgicq+6kbtt+2DpA8CjdIgiWr1CiA==
X-Received: by 2002:a05:6402:1d4d:b0:640:8bdb:65f0 with SMTP id 4fb4d7f45d1cf-6408bdb7145mr6677282a12.11.1762162910352;
        Mon, 03 Nov 2025 01:41:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Ycecgvifo1QsSLem399jbq0ulVrldnpclFte3rjZ9+jQ=="
Received: by 2002:aa7:d3cc:0:b0:640:aee3:e358 with SMTP id 4fb4d7f45d1cf-640aee3e3a3ls1537935a12.1.-pod-prod-08-eu;
 Mon, 03 Nov 2025 01:41:47 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWHcTynfgNUnb9nXdT16aFdErIjOJxPtHUtGryY7UCDrRCzqnUrf0XxY1/vyUZO5ik/XilPsCklfz+6Ag==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:7e82:b0:b71:3045:f73f with SMTP id a640c23a62f3a-b7130554ddfmr149925666b.40.1762162907214;
        Mon, 03 Nov 2025 01:41:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762162907; cv=none;
        d=google.com; s=arc-20240605;
        b=JKrKiPqd/qEIj8WZ2uH8N3Ra19MJbL35Gxk1ApIJWb8r3iI0NC+xxCKdjU12b9wXrJ
         7UdRKHQ2zt94UsBUMY99Rnat4pc92wFKSxqj/Q7hkXJHZmRpHBkCzQTwERx4xHtruCMk
         Y2gf0CMoJvElwUmS9CRBwCoZwZX9tNN4HLQgNdq+06hbo7TpBoDPGT9bde/FNWEO85MI
         Zd9UNs6eCXY7cwhpsk7cNtY2DpY9s17HuFpVnj0DErJ+2N1YvedSVRZ8LVFY/vvdtTEo
         W5bsHbPYS6CmYDFAXAwW84IIalobFyUWbt/wHb3SnML3JvilXulKFzmhAwzmgB6blDYV
         Xm4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=uQ4p8extKYli1hpsb18sxQURINeyF5Ujv69r9EjqtSM=;
        fh=YXh8hzGKHWbRr/8mbTcUbndyPAjnq23J7PCAAi+TN3s=;
        b=D2jBK5+rPUFHrcMb54JdfmzqGEOVbOFJGNO+3e7fp0h80TTDOHXZFeHAhgDn2/m4dl
         2Vdp4zDrEBEDFB/6l4fyRwh6awpfgHvb8FCOVNDvF7eOz9jAO+OczaBlFzAQWgBPnMG7
         aqzjnHgwD2K0MPqWc1xe3W5NJRiHzQEoAdZSow88niWkU9m/fEePePZTo6Nvi1LC+bq9
         CzblyPtOMnMqAHHci8dmHaGDaPFjSfbW+j6LA2yYIzy9XCMNXsX7Y4+qBAbPYvAJYF4J
         q3xviztCDPiiug9ne99TzXe45rM6uwdbx1ivH0wCdx45PkRsPuPBXTe7sK2462QyCi4p
         HecQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=DRe4d5bp;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a640c23a62f3a-b7077a1c161sor243235466b.6.2025.11.03.01.41.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 03 Nov 2025 01:41:47 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWHdPTLhX0LGK+FLvDzuvhShDUZbLFocorAUE45s+VwANWno5AKPSxT43QZOQiYCMAHgwgyCM5Z5seBkw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuL7Ch2ylDdq1Cb/Nnszqv0tKdn3jocHZwWnKCdYme2w93s3otcZhyssOkDQis
	c0bplYbDxXOGFRgDTv7LIPu1tbpIQ89976tpG59dEIvOseGCvH647Hr3T1ZH+D963X8dyeFWV4X
	Uze8wlSLULPPX2HSsL6rw0QeB97x/UcPY87WqdH3A4pfvid3/K1YSrIk5zTCpfth3Zika4gDdFt
	TxPVlMP9BpR6VESD/ESn5CP/ngfiuOmDjOiXEpCb1bzS2dPtLY5/Kmq61Nz6e6pJgFvOArG1XL+
	hbVViVBDtLjGNaIuykkOiCL3i9THGx8J848QIOCXPlO2SDvmUki00b7nVbNxkyUF82CBBsjVZ6x
	0zmdV+Lzq/CbYlHs7r8qnhdWlqYUj3vcObVN2LJ/mvzRTHRg7qyelT4OIYJc4WEQjgKMWsNbw0E
	Ggb3aZxJLO6pHJKcW/QQ2+c3RdI+88vNJ+9LZXWeKlApQVVe+w77smz4M=
X-Received: by 2002:a05:6402:1472:b0:63c:1d4a:afc4 with SMTP id 4fb4d7f45d1cf-6407704138emr9280289a12.4.1762162906723;
        Mon, 03 Nov 2025 01:41:46 -0800 (PST)
Received: from ?IPV6:2001:a61:13df:d801:cb2e:7d62:bafe:d300? ([2001:a61:13df:d801:cb2e:7d62:bafe:d300])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64098077b1asm6659522a12.7.2025.11.03.01.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 01:41:46 -0800 (PST)
Message-ID: <a3d9c04d-73fe-4624-abee-b06abda9fe97@suse.com>
Date: Mon, 3 Nov 2025 10:41:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [usb-storage] Re: [PATCH v2] usb: uas: fix urb unmapping issue
 when the uas device is remove during ongoing data transfer
To: Owen Gu <guhuinan@xiaomi.com>, Oliver Neukum <oneukum@suse.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org, Yu Chen <chenyu45@xiaomi.com>,
 Michal Pecio <michal.pecio@gmail.com>
References: <20251015153157.11870-1-guhuinan@xiaomi.com>
 <aP8Llz04UH8Sbq5Q@oa-guhuinan-2.localdomain>
 <8de18ee2-ccdd-4cdd-ae49-48600ad30ed4@suse.com>
 <aQYRIgg2lyFhd7Lf@oa-guhuinan-2.localdomain>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <aQYRIgg2lyFhd7Lf@oa-guhuinan-2.localdomain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=DRe4d5bp;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=neutral header.i=@lists.one-eyed-alien.net
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

On 01.11.25 14:55, 'Owen Gu' via USB Mass Storage on Linux wrote:
> On Mon, Oct 27, 2025 at 02:35:37PM +0100, Oliver Neukum wrote:

> I think the error handling only takes effect when uas_queuecommand_lck() calls
> uas_submit_urbs() and returns the error value -ENODEV . In this case, the device is
> disconnected, and the flow proceeds to uas_disconnect(), where uas_zap_pending() is
> invoked to call uas_try_complete().

OK, I see. You are right. Please resubmit and I'll ack it.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a3d9c04d-73fe-4624-abee-b06abda9fe97%40suse.com.
