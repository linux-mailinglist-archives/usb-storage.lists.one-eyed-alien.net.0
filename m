Return-Path: <usb-storage+bncBDTNDO5RRYJRB5745CUQMGQEM3FNPNY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA867D80AC
	for <lists+usb-storage@lfdr.de>; Thu, 26 Oct 2023 12:24:55 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-54061ad6600sf578219a12.3
        for <lists+usb-storage@lfdr.de>; Thu, 26 Oct 2023 03:24:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698315895; cv=pass;
        d=google.com; s=arc-20160816;
        b=RTiAoihbg3eFvb1HmD8kvU7cCyyMF5BIr7OizPPpJ1yFbRPYb9EZwzpTfC0e7KX0k+
         T6/FZ+MKr/x0VLZLkIdODwRaddh2X1sdHNvufz5E1v3oQDI6whWBrvmUn7x3S7gLEScU
         2iv7GGr49pQru1/1xaw/i+AOn0yv4gXI4nj3c/JUMwGPqrJ1OrGr8qNldjg0K83EYhD9
         9dBFd/0iTyV43mQhaWeNr94gbRnBgSt04ITZ1dk5vUPHvfKktFdoH9aWjL6CgITfxaQl
         6Lg+iHYXbCejNhs1CuXkxyDjhDYaYXi0l+39n/DyFD7iEKrL0WoSaUiNYBzHEffPWwpp
         sMiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=geGkLCHkr6N5HnCdKvLkGY/QRp4pdkW4s7t/vPlmrro=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=qybXRgXmltbnX2dleYG7MjgOyFsnMIx9gSB46QsykFh0E8zmbHVZcp5mRQqKK/Pxxz
         s8RrReeLFwmXyrw6C0OTrGJkl2fH1vdz2L3xyq7ABkjrz8ewQnDSewf9Wj0e8v2xszZO
         U2oLCPPwYj4Y7XDdfo6hofp1OdbxvWvQAhRnlKEa2VxTdcfIskKnYDrv6ijsEe58CPqp
         1mMzcSgtmS3baDtdun/Mo4S1zmnwuibjUNiPTGg3HjStDBG5J4yBheFV6U2IRYKG1hO+
         yCUipb5hAkR7Hz3bsxbBL20AGZDn/HKjC5jhqqRRieTiI5IdI0gptZ+K3hL237TH4fny
         GOWQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=GVe+TQJu;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698315895; x=1698920695; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=geGkLCHkr6N5HnCdKvLkGY/QRp4pdkW4s7t/vPlmrro=;
        b=IG8g9NRd06TGFOGdFRJYWtpVINGpEVapobXDUYh4xPThJGutMDCArn+RsTr8HY+hrS
         5TOwSPjmVzMQtvCoXzBDiJSF0uPe6+/stf/jLYsyRfG0veoT+x4SU6rTelLE+n3YpmVH
         ifPbJb5StbdHla5fYrKBUTayOpfk/gZpgtN20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698315895; x=1698920695;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=geGkLCHkr6N5HnCdKvLkGY/QRp4pdkW4s7t/vPlmrro=;
        b=YW3+l5GslJ6hbNl6ppT4P9vZEU8GR2CWOkHNjhO1cT/f2pElcmkeVP9OUCYcgnT+Nl
         Eo+J+nxtBV3g2faYfeRxErAgn0xGNiGpSPqfOhlkVRPt5n/EhkypLKx98kQXJ2uhurbU
         rQvk9XaflUBgaypNv7EiesLTQeOw8Fl0DAg2vvolZVdsgMOR0yoFdkqSxuHpBI3DqbgT
         VbyIYHsqyUsLsaq59L8FXE68Zy4bu7DR52h9/wCJ9Q0eeJ+UwiJSRVvMn3Rmo19o7Gv4
         4Op9GLqTXoo4EvKOp/k2gVk8RTcT2Tkha+oAeXp5QBvKTgajIE0QZL1Rl3j10nURl8Cx
         8wlw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YwXA9FvPYdOwI/VAIPHcQtwy387t8Gqs9SH2JSSvHpEUTAXGppy
	MsyJ7brdz/83AZwUzzNG0LzqmQ==
X-Google-Smtp-Source: AGHT+IFazIsCLyYSHMBoF9uW6qXdHu9YRV9rvcl5UAT0btwWStqS/G8qpdZiRuwHiI3GS5D/2DpCjA==
X-Received: by 2002:a50:9fc8:0:b0:52d:212d:78ee with SMTP id c66-20020a509fc8000000b0052d212d78eemr12277199edf.25.1698315895476;
        Thu, 26 Oct 2023 03:24:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:43ce:b0:523:cb27:ebd2 with SMTP id
 p14-20020a05640243ce00b00523cb27ebd2ls570681edc.0.-pod-prod-06-eu; Thu, 26
 Oct 2023 03:24:54 -0700 (PDT)
X-Received: by 2002:a05:6402:35d4:b0:540:cada:f0a8 with SMTP id z20-20020a05640235d400b00540cadaf0a8mr3862909edc.17.1698315893972;
        Thu, 26 Oct 2023 03:24:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698315893; cv=none;
        d=google.com; s=arc-20160816;
        b=t8xsYa9iVWDIOzKIRoj67umBdiKliUyrdEVLtJC1cEC3xq/txhxg90PEG/KUv4W/EG
         v0jcvaKpi7Vq3j4MeJpnVpSlCCBjoIDjOzTQA5d6mBH5RK3OcG5MHs4OeSeYoWVW7Rka
         pDtjVPbczPjuXfJxNWqf3mb7gwoJVV5JRAst5LeazRKbPUQz9PyVCb3BywOgEQ4qBSWQ
         iwGtjZbqsuZS8OTf2rwFa3EpGaYc0bPY+QnTqIGJKTEnk1ubfo6yHvVceoRnfbZ+JCL6
         E7nUkpe6Z2hQM7cCpOEXVet8iFCbD0Xito2cdYVvKORZn9WODBu1i2HwJ7UEgLIPRMs4
         b7fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=PtHyqsL08UNBkbgkozrmEZVvg2QPUfXMgyS74tdsVq4=;
        fh=68ZrbdVtruJDNZMsmlvBjz5oliGVED5rl6IClFx+37k=;
        b=kXR0OZrjs4PvBZRvSpvkzAbwIpFoE29Of77z/ne/vS/aLQuGh1hE2GhM8CCXDuykPe
         QvA0a60qpu/RBuxmMM064v+5xjpHQCbLKREIudNTF54q6oQChwpWR1gn6JyrfRZBSf38
         RAjFJBLNjLpQqz39XJdOfu8Mp+OghUolxjP/dFBZy2OOdplHc1ro82xDrSw21E3r8VJU
         K5dlXu9cKzKO3mNecxtMHH845888FBYfVECNy725ps8jF0ZKxm7wxqMdSpSUs+6jdsx+
         hZgNnWTmpLobmh307MLaekmgSb7jycCVmEQm+98JlOoblEw1M8767yTdUuzSySPb2lOI
         fs/A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=GVe+TQJu;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u18-20020a056402111200b00540e5c9d299sor1251012edv.1.2023.10.26.03.24.53
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 26 Oct 2023 03:24:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6402:3484:b0:53f:25c4:357f with SMTP id v4-20020a056402348400b0053f25c4357fmr13292314edc.34.1698315893442;
        Thu, 26 Oct 2023 03:24:53 -0700 (PDT)
Received: from [147.251.42.107] (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id v30-20020a50a45e000000b0053da3a9847csm11361733edb.42.2023.10.26.03.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 03:24:53 -0700 (PDT)
Message-ID: <5a7e8f2f-6893-4b00-972d-e995b395f67c@gmail.com>
Date: Thu, 26 Oct 2023 12:24:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 4/7] usb-storage,uas: use host helper to
 generate driver info
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <20231016072604.40179-5-gmazyland@gmail.com>
 <787eea9f-240b-493b-a719-bcec972589e4@rowland.harvard.edu>
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <787eea9f-240b-493b-a719-bcec972589e4@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=GVe+TQJu;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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


On 10/16/23 20:49, Alan Stern wrote:
> On Mon, Oct 16, 2023 at 09:26:01AM +0200, Milan Broz wrote:
>> The USB mass storage quirks flags can be stored in driver_info in
>> a 32-bit integer (unsigned long on 32-bit platforms).
>> As this attribute cannot be enlarged, we need to use some form
>> of translation of 64-bit quirk bits.
>>
>> This problem was discussed on the USB list
>> https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/
>>
>> The initial solution to use a static array extensively increased the size
>> of the kernel module, so I decided to try the second suggested solution:
>> generate a table by host-compiled program and use bit 31 to indicate
>> that the value is an index, not the actual value.
>>
>> This patch adds a host-compiled program that processes unusual_devs.h
>> (and unusual_uas.h) and generates files usb-ids.c and usb-ids-uas.c
>> (for pre-processed USB device table with 32-bit device info).
>> These files also contain a generated translation table for device_info
>> to 64-bit values.
>>
>> The translation function is used only in usb-storage and uas modules; all
>> other USB storage modules store flags directly, using only 32-bit integers.
>>
>> This translation is unnecessary for a 64-bit system, but I keep it
>> in place for simplicity in this patch.
>>
>> Signed-off-by: Milan Broz <gmazyland@gmail.com>
>> ---
>>   drivers/usb/storage/Makefile       |  25 ++++
>>   drivers/usb/storage/mkflags.c      | 226 +++++++++++++++++++++++++++++
>>   drivers/usb/storage/uas-detect.h   |   4 +-
>>   drivers/usb/storage/uas.c          |  20 +--
>>   drivers/usb/storage/usb-ids.h      |  33 +++++
>>   drivers/usb/storage/usb.c          |  10 +-
>>   drivers/usb/storage/usual-tables.c |  23 +--
>>   7 files changed, 301 insertions(+), 40 deletions(-)
>>   create mode 100644 drivers/usb/storage/mkflags.c
>>   create mode 100644 drivers/usb/storage/usb-ids.h
>>
>> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
>> index 46635fa4a340..612678f108d0 100644
>> --- a/drivers/usb/storage/Makefile
>> +++ b/drivers/usb/storage/Makefile
>> @@ -45,3 +45,28 @@ ums-realtek-y		:= realtek_cr.o
>>   ums-sddr09-y		:= sddr09.o
>>   ums-sddr55-y		:= sddr55.o
>>   ums-usbat-y		:= shuttle_usbat.o
>> +
>> +# The mkflags host-compiled generator produces usb-ids.c (usb-storage)
>> +# and usb-ids-uas.c (uas) with USB device tables.
>> +# These tables include pre-computed 32-bit flags as USB driver device_info
> 
> s/flags as/flags, as/
> 
> Otherwise this seems to say that the 32-bit flags are converted to USB
> driver device_info values -- an incorrect parsing that makes no sense
> and will confuse readers.  (It confused me at first.)
> 
> Also, don't you really mean "driver_info" rather than "driver
> device_info"?  That's the name of the field in struct usb_device_id.

Yes, not sure why I mixed these. Fixed in v3 patch (and now only one
patch is needed as 2 previous are merged in usb-next).

I hope I fixed all other comments too, thanks!

Milan

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5a7e8f2f-6893-4b00-972d-e995b395f67c%40gmail.com.
