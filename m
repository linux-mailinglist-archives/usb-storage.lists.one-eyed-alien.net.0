Return-Path: <usb-storage+bncBCFIH5VMRQNBBNP4UCXQMGQEORJTTFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA3D87333A
	for <lists+usb-storage@lfdr.de>; Wed,  6 Mar 2024 10:58:15 +0100 (CET)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5a02065e470sf6024096eaf.1
        for <lists+usb-storage@lfdr.de>; Wed, 06 Mar 2024 01:58:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709719094; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzr4lY7H28iB5NTEM12LJOfEmb6IXN1mMeV9zeaxR9W9oRv0MBEyw9gvA11Dv7zKHh
         l3cmSJXhhwAcjsJ+8bzS2fsU84juzr3w+W+vxZf9YqNIjEAS2by3Fhx1s8c+TOggzjeC
         rXiVh/cIKhUjtrQmfTo//SZlDQ0euiQWwMUvT8/OI2Dk1xeLVfkWVh9UhFrBdQBCFxc9
         TDKUKMOsKoEwBrC14dOCBqowRa/89rkox2QbApzrdxuVgAc3Zgeu8LhCQMMUL+QcFHbu
         A2+xiyovJp+/CZ4Xr5oe0ONTzaGMvhLTY6EKHwIhtbEAbo3ynJYEjqYouwTl2+5iiAsd
         g3Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=GXYJ3yQd0HbGWKko0MDNMe2U0mwkB4rOV6jwHuKNlHw=;
        fh=7BHn3NpgY6HTGU1r+lHFDc6ZK1NP79v1i5x8N4g0ETI=;
        b=T8gTE+GfV7FBe7NHfZJXgsKoABKwqo/QvPnS/WpM+4D8NP41itEIqoazPb0Jr9o+tQ
         R3cu+Gps/0ORp3I6Di0qmk1yE891n+eIJe1YGXNm/IAvXOt+HebyjhXXyJggPgSmip80
         39X98lhv80fB2kA22pHTXOsh/sun7cT/BYO4JJba+raZ4IOVJHqnR0hCSXwfG5CW3UCE
         aXq7bECzgtzZAQ/bXPtG3NyvSyg9ygQrkGpeIogis4VOk0ptIbF/go/e49kAjeMr5IpB
         0kZezGSn2ik0Rx/g4Wubh5fLckl4GlQUURvk2+uWLxJTfIHvLlnagNSo4GkmCdTzd+AV
         UIBA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709719094; x=1710323894; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=GXYJ3yQd0HbGWKko0MDNMe2U0mwkB4rOV6jwHuKNlHw=;
        b=FwDhvoTidKzhXpo+YobztHcPvQbe24kcReuvAYUYR7eIAi3/uqJE6yvEGK7Lqkr7fT
         4wT0AX0lcrNLpusXBUW3QTYQMnzJoPYKyUx7vmH7aQ2dOCqz/lTw3iv6+H8fQSxtJ14j
         0NAUuIrm6HRw7NPDHPnYF7t/FRgIX1rdLj9YQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709719094; x=1710323894;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXYJ3yQd0HbGWKko0MDNMe2U0mwkB4rOV6jwHuKNlHw=;
        b=MVRDITYB1TdVpDWwPiIYxPhzeJF9gP4LEl5/AQkxtTbcSGpVT+quvHEgBD/WPfS+7O
         vFW7Gvp9Nv4agnO1n7xoXmeIf/H+2MbR4yqbk8GkHrF6GXz+xxx7EElASTgXPDyhqQOm
         n6N//NBZxyeOiKpjCX+iGj+CxQTejY0wCqYvYNSdpT89uWFm+7C5jTcJoHS6OnMGUkmz
         itX4GGlUai1hDGdGWcWAK/O6wMwL7drFimxLeYAKb+HCfzAi3X4pcUoaUfaepklOy4rW
         Dp+zuJxiQZXeFZvIvj3jpRd3uabPLFpOagjCHh3nma+zdGNW4ihvrGuDb6iT8noMwJZH
         3Oqw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUaoU0c4tp1LP2UqBLDlhIhcdSEbV9OCHIkyXXXauGGI18KstRc90n/SlAdFRbT17QQskRT75qq/kH8+a+xc65X9YRMh5pqESgk
X-Gm-Message-State: AOJu0YwjrDkxgE+KhA+88UeVFYunzYDDiJer437oj/UOh0OAQjeG3/oV
	MkXlSrE8s9lOERayQJNGNqKTqUTa9FXwcaY7nwRg2AgTbFTOYn/zqhkDvrbCT6Y=
X-Google-Smtp-Source: AGHT+IH8J/AjwrJuXi97Er6vX11Fu6Xb1390PbOLEWaj+7pPGrkWVhI7xm7cj7aJUyAnmoaFZADKwQ==
X-Received: by 2002:a4a:9215:0:b0:5a1:e36:cad3 with SMTP id f21-20020a4a9215000000b005a10e36cad3mr4246506ooh.1.1709719094253;
        Wed, 06 Mar 2024 01:58:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6820:1c91:b0:5a1:4881:a8fc with SMTP id
 ct17-20020a0568201c9100b005a14881a8fcls1740406oob.2.-pod-prod-02-us; Wed, 06
 Mar 2024 01:58:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXXqDdF/POjFJa1epfovZvqmTQNLPINA+ExMrkdgfoA0IgRSHuTvM9vHEKDqzxLpd1sVkBddQ2n1ifM81ihGL8byeRwyfBIV/M4dkvogkEZ22reu80=
X-Received: by 2002:a05:6808:4044:b0:3c1:f5b2:8031 with SMTP id cz4-20020a056808404400b003c1f5b28031mr4324170oib.42.1709719093047;
        Wed, 06 Mar 2024 01:58:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709719093; cv=none;
        d=google.com; s=arc-20160816;
        b=QjJCJR+uD4L7Qh8S5Rsgkl2BtUcNdI3NYPGMDgYy5h11L3//nKGb2zxCs1W2MFQNt3
         NHJKiTYVo7KouAOR8svyWAGjR9zb1Nj23atBfsb5pNmE7PdQAlEAttPZuQNLtEg6WI4H
         81+xv3bSyQrbbQwQp4DkRVgB1wOK5WAoU4556Gsn3SioCpdWYuS8QhV/xDyHS/LGMQYo
         liDFdNoc2oVwmUixpkpcYkm4zf0sg/x+tu5195FNq3DRA4lv/DKCUrqbSB4S8QexZDcd
         Lml+oTtP6+l2Wj/aqXAdpL0Vl6i9jdgOnRTEN9vRoS6LnUp04YBoXmnao3/ZFjdHejHV
         BhDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=6jwgTavNXsJBqzrw/IhnUaiKkyj9fDlX87IzOUf9IJ4=;
        fh=3PlatI6I5sfB8xYVth7giF1itSdL5EUSNub2HRqcLv4=;
        b=Pv9/1aKp+wn9IZxisOkBcpz3guOOCizJ3+h5IQfERFHB9MUns9WESnp31B1lkV1zaP
         9mDxClgZeJ/BqrCQq4AK1jwOFDQNDmDEhu6mkXLe5ONA6uEX0lSuhkX8VTJ9sixkxqyw
         buqtceg5t5UYPVPkLNP5vxezXTRwn1AqCf9gK05/81ZkCvp/i+1XAOUWhcPluSFpkTDQ
         SPt3Cb+iymGdZPJKpm2rUn5mqunnwrK7g8C0L3WdO+g1+MMN8jfxKvPFp0UcPdHfzk+H
         GvdupXznH8pTRUfuDsXPNePA2le4KFUtuK7zfAgDNR5NHykmCH68qyGmnqSG74nmNJ6e
         fuvQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
Received: from mx1.zhaoxin.com (MX1.ZHAOXIN.COM. [210.0.225.12])
        by mx.google.com with ESMTPS id c189-20020a6335c6000000b005d92a3f1196si2249653pga.592.2024.03.06.01.58.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 01:58:12 -0800 (PST)
Received-SPF: pass (google.com: domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted sender) client-ip=210.0.225.12;
X-ASG-Debug-ID: 1709719089-086e23661a01e80001-FTGftY
Received: from ZXSHMBX2.zhaoxin.com (ZXSHMBX2.zhaoxin.com [10.28.252.164]) by mx1.zhaoxin.com with ESMTP id s9aSJHPSEpQwNNlP (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO); Wed, 06 Mar 2024 17:58:09 +0800 (CST)
X-Barracuda-Envelope-From: WeitaoWang-oc@zhaoxin.com
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Received: from zxbjmbx1.zhaoxin.com (10.29.252.163) by ZXSHMBX2.zhaoxin.com
 (10.28.252.164) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 6 Mar
 2024 17:58:08 +0800
Received: from [10.29.8.21] (10.29.8.21) by zxbjmbx1.zhaoxin.com
 (10.29.252.163) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 6 Mar
 2024 17:58:07 +0800
X-Barracuda-RBL-Trusted-Forwarder: 10.28.252.164
Message-ID: <3d5254cf-27de-b689-352b-45698e265f5e@zhaoxin.com>
X-Barracuda-RBL-Trusted-Forwarder: 10.29.8.21
Date: Thu, 7 Mar 2024 01:58:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: [usb-storage] Re: [PATCH v3] USB:UAS:return ENODEV when submit urbs
 fail with device not attached
Content-Language: en-US
X-ASG-Orig-Subj: Re: [PATCH v3] USB:UAS:return ENODEV when submit urbs fail with
 device not attached
To: Greg KH <gregkh@linuxfoundation.org>
CC: <oneukum@suse.com>, <stern@rowland.harvard.edu>,
	<linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
	<WeitaoWang@zhaoxin.com>, <stable@vger.kernel.org>
References: <20240229193349.5407-1-WeitaoWang-oc@zhaoxin.com>
 <2024030530-trinity-triangle-c334@gregkh>
From: "WeitaoWang-oc@zhaoxin.com" <WeitaoWang-oc@zhaoxin.com>
In-Reply-To: <2024030530-trinity-triangle-c334@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.29.8.21]
X-ClientProxiedBy: ZXSHCAS2.zhaoxin.com (10.28.252.162) To
 zxbjmbx1.zhaoxin.com (10.29.252.163)
X-Barracuda-Connect: ZXSHMBX2.zhaoxin.com[10.28.252.164]
X-Barracuda-Start-Time: 1709719089
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://10.28.252.35:4443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at zhaoxin.com
X-Barracuda-Scan-Msg-Size: 2055
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: 1.09
X-Barracuda-Spam-Status: No, SCORE=1.09 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=DATE_IN_FUTURE_06_12, DATE_IN_FUTURE_06_12_2
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.121736
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.01 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
	3.10 DATE_IN_FUTURE_06_12_2 DATE_IN_FUTURE_06_12_2
X-Original-Sender: weitaowang-oc@zhaoxin.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of weitaowang-oc@zhaoxin.com designates 210.0.225.12 as permitted
 sender) smtp.mailfrom=WeitaoWang-oc@zhaoxin.com
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

On 2024/3/5 21:25, Greg KH wrote:
>=20
>=20
> On Fri, Mar 01, 2024 at 03:33:49AM +0800, Weitao Wang wrote:
>> In the scenario of entering hibernation with udisk in the system, if the
>> udisk was gone or resume fail in the thaw phase of hibernation. Its stat=
e
>> will be set to NOTATTACHED. At this point, usb_hub_wq was already freeze=
d
>> and can't not handle disconnect event. Next, in the poweroff phase of
>> hibernation, SYNCHRONIZE_CACHE SCSI command will be sent to this udisk
>> when poweroff this scsi device, which will cause uas_submit_urbs to be
>> called to submit URB for sense/data/cmd pipe. However, these URBs will
>> submit fail as device was set to NOTATTACHED state. Then, uas_submit_urb=
s
>> will return a value SCSI_MLQUEUE_DEVICE_BUSY to the caller. That will le=
ad
>> the SCSI layer go into an ugly loop and system fail to go into hibernati=
on.
>>
>> On the other hand, when we specially check for -ENODEV in function
>> uas_queuecommand_lck, returning DID_ERROR to SCSI layer will cause devic=
e
>> poweroff fail and system shutdown instead of entering hibernation.
>>
>> To fix this issue, let uas_submit_urbs to return original generic error
>> when submitting URB failed. At the same time, we need to translate -ENOD=
EV
>> to DID_NOT_CONNECT for the SCSI layer.
>>
>> Suggested-by: Oliver Neukum <oneukum@suse.com>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
>> ---
>> v2->v3
>>   - Modify the description of this patch.
>>   - An error is returned directly when submitting URB fails.
>=20
> This change breaks the build, please be more careful'
>=20
> drivers/usb/storage/uas.c: In function =E2=80=98uas_submit_urbs=E2=80=99:
> drivers/usb/storage/uas.c:559:21: error: unused variable =E2=80=98urb=E2=
=80=99 [-Werror=3Dunused-variable]
>    559 |         struct urb *urb;
>       |                     ^~~
>=20

I'm sorry for the carelessness. Now, I have removed this unused variable
and completed the compilation test. I'll resubmit this patch with a new ver=
sion.

Thanks
weitao

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/3d5254cf-27de-b689-352b-45698e265f5e=
%40zhaoxin.com.
