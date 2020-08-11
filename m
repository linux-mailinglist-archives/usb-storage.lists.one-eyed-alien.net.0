Return-Path: <usb-storage+bncBC27X66SWQMBB3GSZP4QKGQEBK2YVCQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 252A7241FFB
	for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 20:54:38 +0200 (CEST)
Received: by mail-yb1-xb48.google.com with SMTP id u189sf17810302ybg.17
        for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 11:54:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597172077; cv=pass;
        d=google.com; s=arc-20160816;
        b=HHKM6kOpv5wgVJ2xscdoQvYyHqokdyO6SqQlMXySi5VRJbc50GEecvefcKv8H2nd63
         c4upuAx77URNBlcR6HA8ijX+KEhqnqE/GI+EsmbzciyKUdFDeKhKTAtkIG6A9IPPwZw2
         Sn9oVLDB7JPAIsP/yiYjandqxGaiglY0OMx8jMcZDSb3v1bUmFi+H8du2Vp7Fz9G1JT+
         PiS+vLGti7Ff8mcO75GjJDNK8Bj6Gj9TX74ziUp56ULQ3cA8Z5wI0FPTi3M/CM/Ij5zi
         /lwif5q8GRCH5tkE5Ys4i5av1raFdxYGFvg7yFUWjQZ+/QbabShNVh8lxmgMtsNsIxpy
         SlKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=dxcqbzUEjVoB3AufAqL5LZidXajNlfO2qrIIY73ul0E=;
        b=JRcIVSqaIbPoMJr6Y1KH0Lfd7fv902ejd5skW/d3VW7yK0JTy2Hsja5DeUWdNGbP3D
         ZAdLpZMmJSvVI3j4cP02Nvgt3XAEEMo42DjOYvpYK82LySUfrnwjdIXPsX7EXl0cy2/T
         yXPog8gmyWh5EogixPgIOSWAoV2uJg4SSsgHHnQkrylbhUBY1S4kYseobNkIWkJRi74E
         JASXpuzZGJQ67gwAhd2xBtPKLMflDECK6B67p/ddYVQEg/t2aI7ZUYGgbpdDio33JUAO
         GB/gaDQPQ0NIw8+KLy/hTYmDfNLxnK6HmwyAZgge7XRG17I6agZ3Ot5wHtwzDQq4U4+F
         pi7w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XBQQONd1;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dxcqbzUEjVoB3AufAqL5LZidXajNlfO2qrIIY73ul0E=;
        b=hOGZ2F/YaHe+Ir+rtvJFhmNSeqdtq3v2QBRKAA6aDC9TDLa9Tpfb2C1BHalhCV2IOs
         iJW6955H+dzmxjiUJrjECfhhCf0IE1sVdu5woAWqFxWqnZGzX9/K36Z65sBtg8cumG93
         MGiVKJWtbig84WizYn6a8eJIyja9c0T9/B0qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dxcqbzUEjVoB3AufAqL5LZidXajNlfO2qrIIY73ul0E=;
        b=YS49swgtlzpPUeI3klIWoDW0OmjOsdgXzEqsl/nLoggaXPb4hitFcEWzlqdytZH17z
         UYOGaWgMNVZn+LoIee5g0T2NJ6FN51JLUlMXTRNDS+i7TFZ8latHTvcMgPW/zYVWY/xl
         BEc4jKpX1FViujVu8u619j60Dy+GKDOUWA4qa7c7B++26HgW6GlyFSzIY+zcbPI2QH2U
         5xEpKhbYeJnLd1XUXRv1FmwgXofoFDaLo6ZCzQqObgS4B1u09smMn8rnATDHCOXB49P3
         KTGREIpIQFlgUzL/CQ8gvvWnTzTjAu5qQ5NtXNt7ts7wml929zfpOqXh8vUL5F9igRI/
         u3jQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531794NmV6vhf98txYAseKuaCQRsK6+9CrorR6eK0Z+lRvk3hcrI
	KRLq8u84kx0a7hImugokWx/5fQ==
X-Google-Smtp-Source: ABdhPJwp8ayvB2uUaHKZdHf4CSjXpuj+UopDtoiO45hmqJn747AZoLZL3Ydol6yJaglZ0a/k2fVCJw==
X-Received: by 2002:a25:2a58:: with SMTP id q85mr54009707ybq.518.1597172077128;
        Tue, 11 Aug 2020 11:54:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:5755:: with SMTP id l82ls8366124ybb.5.gmail; Tue, 11 Aug
 2020 11:54:36 -0700 (PDT)
X-Received: by 2002:a25:c7cd:: with SMTP id w196mr47256660ybe.351.1597172076553;
        Tue, 11 Aug 2020 11:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597172076; cv=none;
        d=google.com; s=arc-20160816;
        b=TYAwogpnCfx2Zqb7YmVmskiUWP+G0OopCNvs7uUQER7P/W1po72OUKEwBBLVArtWML
         0P9WPAbSqM0qBBW6MBLZF3L25DWoiwdhXZFcCL4IkETXq70OmFiaS2A7n3vS3SEzcDDE
         giFMZJlVdoFbbn9+vQt72PxuWNcI8Gn+SjUk6QT26pLKO6uKn+dJWar60hIkPiqqP7Un
         9E4Lr+hY6bElQ5zVe0c5WWJ7Bc19Z+kkSwv47epP8AMopz9drTVku9bHnZjXCDLv111i
         0Cx2ELyRiyq4Qliwi0xOzdyPIULCCXuCUBgmy9TZLln7yiX6CdVAlohQdx2Ryv/gPWrf
         ps3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fInOYw3oYFGypGBJ4zylH0Up62AYKcuG7tGEScNZDMo=;
        b=qd8+RsRZGLjws4AMjAI0YV85wRPcMJuKZ4qAy9YfY+4o9CRNwWNgpzKCte6CGN7Q4S
         YEK/o141bOqu+e48aqV+ao9XzHAZOd0SfQWqN3DO1Pfp71mDGgi8b2oCwMwXOuZcdwpo
         zC0cLusDN3A+9o0Z3rJXKsG7hnPA3NjfMblulX0t/jDsA7iiMB33p+eYIeklKSe6lHpI
         hUfMlisj3zcufnVK3VIApXfyThzVLnoyCcd/sWr2jqit36c4ygtktKsPwBXi4NZilVoj
         ek5w5FBvWXONulRakHBROqK/D3JzmgwD5xS31yeecd9VF8uRiIN4MjyMs1nefkfPxsX5
         IvPA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XBQQONd1;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id v70si21048441ybe.383.2020.08.11.11.54.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Aug 2020 11:54:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-emeovKHtORWgf-GqGQ3tbw-1; Tue, 11 Aug 2020 14:54:31 -0400
X-MC-Unique: emeovKHtORWgf-GqGQ3tbw-1
Received: by mail-qv1-f72.google.com with SMTP id d30so10301187qve.5
        for <usb-storage@lists.one-eyed-alien.net>; Tue, 11 Aug 2020 11:54:31 -0700 (PDT)
X-Received: by 2002:a05:6214:d6c:: with SMTP id 12mr2778609qvs.208.1597172070774;
        Tue, 11 Aug 2020 11:54:30 -0700 (PDT)
X-Received: by 2002:a05:6214:d6c:: with SMTP id 12mr2778599qvs.208.1597172070556;
        Tue, 11 Aug 2020 11:54:30 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id l29sm8661915qtu.88.2020.08.11.11.54.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 11:54:30 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] USB: realtek_cr: fix return check for dma functions
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, acozzette@cs.hmc.edu,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20200811151505.12222-1-trix@redhat.com>
 <20200811160348.GD335280@rowland.harvard.edu>
 <1f7d5a64-f264-4fed-bf90-b64e2693652d@redhat.com>
 <20200811175338.GB339805@rowland.harvard.edu>
From: Tom Rix <trix@redhat.com>
Message-ID: <c48fec19-fe2c-65c6-917b-8b8ba40e4c7e@redhat.com>
Date: Tue, 11 Aug 2020 11:54:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200811175338.GB339805@rowland.harvard.edu>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XBQQONd1;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 8/11/20 10:53 AM, Alan Stern wrote:
> On Tue, Aug 11, 2020 at 10:29:29AM -0700, Tom Rix wrote:
>> On 8/11/20 9:03 AM, Alan Stern wrote:
>>> On Tue, Aug 11, 2020 at 08:15:05AM -0700, trix@redhat.com wrote:
>>>> From: Tom Rix <trix@redhat.com>
>>>>
>>>> clang static analysis reports this representative problem
>>>>
>>>> realtek_cr.c:639:3: warning: The left expression of the compound
>>>>   assignment is an uninitialized value. The computed value will
>>>>   also be garbage
>>>>     SET_BIT(value, 2);
>>>>     ^~~~~~~~~~~~~~~~~
>>>>
>>>> value is set by a successful call to rts51x_read_mem()
>>>>
>>>> 	retval =3D rts51x_read_mem(us, 0xFE77, &value, 1);
>>>> 	if (retval < 0)
>>>> 		return -EIO;
>>>>
>>>> A successful call to rts51x_read_mem returns 0, failure can
>>>> return positive and negative values.  This check is wrong
>>>> for a number of functions.  Fix the retval check.
>>>>
>>>> Fixes: 065e60964e29 ("ums_realtek: do not use stack memory for DMA")
>>>> Signed-off-by: Tom Rix <trix@redhat.com>
>>>> ---
>>>>  drivers/usb/storage/realtek_cr.c | 36 ++++++++++++++++---------------=
-
>>>>  1 file changed, 18 insertions(+), 18 deletions(-)
>>>>
>>>> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/re=
altek_cr.c
>>>> index 3789698d9d3c..b983753e2368 100644
>>>> --- a/drivers/usb/storage/realtek_cr.c
>>>> +++ b/drivers/usb/storage/realtek_cr.c
>>>> @@ -481,16 +481,16 @@ static int enable_oscillator(struct us_data *us)
>>>>  	u8 value;
>>>> =20
>>>>  	retval =3D rts51x_read_mem(us, 0xFE77, &value, 1);
>>>> -	if (retval < 0)
>>>> +	if (retval !=3D STATUS_SUCCESS)
>>>>  		return -EIO;
>>> Instead of changing all these call sites, wouldn't it be a lot easier=
=20
>>> just to change rts51x_read_mem() to make it always return a negative=20
>>> value (such as -EIO) when there's an error?
>>>
>>> Alan Stern
>> I thought about that but there was already existing (retval !=3D=20
>> STATUS_SUCCESS) checks for these calls.
> The only values that routine currently returns are=20
> USB_STOR_TRANSPORT_ERROR, -EIO, and 0.  None of the callers distinguish=
=20
> between the first two values, so you can just change the first to the=20
> second.
>
> Note that STATUS_SUCCESS is simply 0.

Yes, i noted all of these already. My change is consistent with the existin=
g correct checks.=C2=A0 consistency is important.=C2=A0 returning a neg val=
ue to reuse the exiting check should mean the STATUS_SUCCESS !=3D 0 checks =
are changed to neg check.=C2=A0 i can do this larger change if required.

Tom

>
> Alan Stern
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/c48fec19-fe2c-65c6-917b-8b8ba40e4c7e=
%40redhat.com.
