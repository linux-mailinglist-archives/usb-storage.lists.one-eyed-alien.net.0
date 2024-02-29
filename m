Return-Path: <usb-storage+bncBCTPRFE7TUKRBH7XQCXQMGQEM376OXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id C324E86C31F
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 09:09:04 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id 38308e7fff4ca-2d243193975sf3762231fa.2
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 00:09:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709194144; cv=pass;
        d=google.com; s=arc-20160816;
        b=z65B/HDW6aiGslxfGlA1aAETA0kEA4fiBYY1RsTV2an/zzQkDClRXMTUuiHZiWembw
         DIMNnsWjqIk2QdUGFEvUYtHsWp1xgyRi2C7C7GahOZyOzcONqqNvFKltAbYzkcGCj2QA
         KQw1E3tqH0YRhbGQ/BKBpJciqEzSq/DvKTjCQ/uULXRttaIY6LPGDCeDEFaS0KuXAl3f
         2280rzfTBYo2GrcgsxP0Qb4itQbA0JDLBU0hAERtCBBRig5uizg8RyPd/NPsv6suxN1w
         6g70Q1RUOJcQR4872JkhOZQouh27QO8G5n7ET8IyNPWX7LH5COGW1pxs40r4X6wpni8V
         UZPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=HQiytEXt86rZe33Lt08pxFNQigMBTRPcK4QFS5YT+ck=;
        fh=faaV7bFWb5hbVPJ/UDb4PsZW59bcMwLmh+N/dVUcI5I=;
        b=AJXVXtgObZRHCXNJDXuCvB/2gnjTuYC+yFkWl2C5g8E7iBSYJhLvXyt6+J2P0u5LQY
         toyvkkiitKZ33HCBxfQ6qQ+PA11Al9IbgPuFyFV1IcIGqIWPzj3G9gbCmQLgLiU8WT9G
         bzqScfXS6QpbpPCwL+dccWX2sJRY/V/X/8grcAHQvztEs+6vbHkJS26zw/wqe3Htdba7
         aKUIrwPKyZESk3qmTQAefW+Ih8Lvfq98gNbnJhrLbApXtYgUXjZe69jTJh1ojz5/B4ii
         /YvhtH3sd9edf4xDgNX1I3KOSsFWU09L6YHIPhuD/CYg3uNNpdqLvJ+6Qq4ZE9JlGEs9
         Jhkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=CzDlMRco;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709194144; x=1709798944; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HQiytEXt86rZe33Lt08pxFNQigMBTRPcK4QFS5YT+ck=;
        b=dqYcx3eAFnMnwIILP3wq5JFkufZrZSO1eTb6RQ7Ai8A7xsdKS1CJRMhB3YVdubyh/Y
         SIr3DuoX6EXFRQkbemGjJVy3edcrRtnn95fKgbOgC3EFD/qE9PyIaYGmI8QocA5Ua+DE
         QAoH5gnfEhYfEgPshl0rBYKB1qCVC39lCRLTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709194144; x=1709798944;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQiytEXt86rZe33Lt08pxFNQigMBTRPcK4QFS5YT+ck=;
        b=QlqDcPodn60RmyUFmIrmGTDjjylh2v+HPXEjQ+ATmeNtcTnQNLKCEqAlzCgHuc0dT2
         f5WEyyseDvkr2zVQvyj5EOejY+ECeB3rzr65suEodNuTnBulNj8nPRCEVcku/rZrHXue
         lNotxXWxf+Kkontblwcz/enQNhb7P6xvNMDW104ungX0P9L7dV8K+5jSkPqzwtI0z2Qy
         XSGhL40MGnFEt4FjEj5ImAuPsqUIWWxjMccfyNR9W4R71bkCHmJZF83SdTxVKCXm0dYG
         N95EuUPBJFYSjz4jooEBmhQWbZYSJ5DCIxuTYGX+a5LdcfGFMjAZncgVTNADqw/IVYzc
         bnvQ==
X-Forwarded-Encrypted: i=2; AJvYcCUe7+Kvu9Xnm4TpCYI6ZHmn2VRI58xqIp4WYPBGDktkNEMkGTbA5EPrLI86y+/2+dbz3T9xEQQLG9xOaeAO3vw7aJMd5+lqmtf2
X-Gm-Message-State: AOJu0Ywg1/blVkVdxPRyiKkqXJ9A2kHCh5K36l2wcE6Y0Ysxx3ktzWGk
	HgKqIbAgRWXxxybqXzy+2rCVCKCkWmrz1WogDz3/XQ2+5ANiw1yOWHYDFBaMfSE=
X-Google-Smtp-Source: AGHT+IEfHVLzscz44Y0wpEj94mdmhDvUTuzR6gaUET5v3CxHB13MfjY1jf7ouOuqMrtyDWMcmnXG5g==
X-Received: by 2002:ac2:5187:0:b0:512:abe6:2905 with SMTP id u7-20020ac25187000000b00512abe62905mr836912lfi.50.1709194143922;
        Thu, 29 Feb 2024 00:09:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6512:3d26:b0:512:ed5d:5da6 with SMTP id
 d38-20020a0565123d2600b00512ed5d5da6ls352254lfv.0.-pod-prod-01-eu; Thu, 29
 Feb 2024 00:09:02 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVAAwW7tz3GSJEeTUZ3P2bt2+a/bKY6WiWVstkIf3t5w+xyrcuNLoC4d1zNv8PSs56tQwGrrRNcSlvG4drzqnSpfu3eyeQ5BOEgPFAByQc3iFrinaw=
X-Received: by 2002:a05:6512:467:b0:512:f68b:69e7 with SMTP id x7-20020a056512046700b00512f68b69e7mr769535lfd.16.1709194141788;
        Thu, 29 Feb 2024 00:09:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709194141; cv=none;
        d=google.com; s=arc-20160816;
        b=lM4q7pm+W+bpyJnyAPXQMnYC4WyUDPC9USZ++zvLJk22dtAxd97ArxsH/90epzQGmw
         rxBVBbp+Is9KVUq1IhfFdSDS7M2pX0FMFauYUl3Cc18fVnnaWoF3WMTGaW8UTqYPsCbT
         GFPj10/PbHn4lrz7agmaArfm4QnHLj7ayjiW3LnnT9LyzIgE8j0dSL3W/1ZPlADEZyIs
         NJ6MAglO0SUXdl3pcRA6OGoQ2rPi1luexvBo4q/iaZ6xEJDTwArQYZrmcDH1VCzlopI8
         Vy5tw0jfT/8LsNT+GhARFMRhQ49+efijuGPevGoK+oWoZ6ipsv+ulQvo6BzkhAwj7mTc
         asaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=+6fUyesk9XtuEUwAKGfVFcYKYn8nCxiz5t4vTL0pI4o=;
        fh=Lde3UzDYnicPfthyVJwmvpcWyklD15mVfMgnhSOY3xo=;
        b=c5FS8aNMNX/1suXaSZuDVgUbnvckRqznsxAcem3Yxfvq2bhUgZl0CBpWz5Baxehygt
         au6OsPNRmZeXcmeFMqIYDwM5WTrY5c2tyhoCGlWVPsiWi/aVkLtwLPT532AqYw9Mseqq
         WOyfu0k4uelKvt+4C7FV25DQjlUeHklITgb99N0sxeoREzK77lgnHP6rOg20o52znHxS
         nizc1yKPki/HVQWK6IrhtwI9f/pyaNInEti9ThN9VbckCMkhAm+Mh5PuLZ3WJBsD3Kya
         qPET48GP/tFsIaXHmcLrCm5vXqE87vWaVls+o2Tv3aZpGHP6t+tEI9GkOId1/4TrhANr
         EfBw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=CzDlMRco;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id j10-20020a056512108a00b0051326bc04a7sor227643lfg.31.2024.02.29.00.09.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 29 Feb 2024 00:09:01 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUHRycYlCmjLDPbI+rSYngbkiYdlivhTrbhQJe59T2SuA4ycSm1z1bLNwGYWxu5F7WCXKuecSjdLRQnMQ4jCPXbWHIDhUao+AKb2YKlE+3mGKZY/WI=
X-Received: by 2002:a2e:bc1f:0:b0:2d2:8290:46ff with SMTP id b31-20020a2ebc1f000000b002d2829046ffmr971230ljf.50.1709194141302;
        Thu, 29 Feb 2024 00:09:01 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id jn3-20020a05600c6b0300b004128e903b2csm4375201wmb.39.2024.02.29.00.09.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 00:09:01 -0800 (PST)
Message-ID: <9263b77e-9ebe-4987-bf7f-8f9fafcf06b3@suse.com>
Date: Thu, 29 Feb 2024 09:08:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] USB:UAS:return ENODEV when submit urbs
 fail with device not attached.
To: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>,
 Oliver Neukum <oneukum@suse.com>, stern@rowland.harvard.edu,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Cc: WeitaoWang@zhaoxin.com, stable@vger.kernel.org
References: <20240228111521.3864-1-WeitaoWang-oc@zhaoxin.com>
 <e8c4e8a3-bfc3-463f-afce-b9f600b588b2@suse.com>
 <07e80d55-d766-1781-ffc9-fab9ddcd33e3@zhaoxin.com>
 <49a365a7-199a-42cd-b8d3-86d72fe5bca6@suse.com>
 <0b0eefa5-71b6-dc08-d103-72b9aebd9237@zhaoxin.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <0b0eefa5-71b6-dc08-d103-72b9aebd9237@zhaoxin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=CzDlMRco;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com
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

On 29.02.24 12:19, WeitaoWang-oc@zhaoxin.com wrote:

> When alloc urb fail in the same function uas_submit_urbs,
> whether we should replace SCSI_MLQUEUE_DEVICE_BUSY with generic
> error code -ENOMEM? Such like this:
>=20
> @@ -572,7 +571,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmdinfo->data_in_urb =
=3D uas_alloc_data_urb(devinfo, GFP_ATOMIC,
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 cmnd, DMA_FROM_DEVICE);
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!cmdinfo->data_in_u=
rb)
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retur=
n SCSI_MLQUEUE_DEVICE_BUSY;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retur=
n -ENOMEM;
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmdinfo->state &=3D ~AL=
LOC_DATA_IN_URB;
>  =C2=A0=C2=A0=C2=A0=C2=A0 }

Hi,

yes, and then you translate in one central place for the SCSI layer
into DID_ERROR or DID_NO_CONNECT.

	Regards
		Oliver

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/9263b77e-9ebe-4987-bf7f-8f9fafcf06b3=
%40suse.com.
