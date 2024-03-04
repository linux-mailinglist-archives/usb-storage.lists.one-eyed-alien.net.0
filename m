Return-Path: <usb-storage+bncBCVNPMX3XYOBBF7ESSXQMGQEUUDGDMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE7D86F890
	for <lists+usb-storage@lfdr.de>; Mon,  4 Mar 2024 03:29:45 +0100 (CET)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-20486eac97fsf5933048fac.0
        for <lists+usb-storage@lfdr.de>; Sun, 03 Mar 2024 18:29:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709519383; cv=pass;
        d=google.com; s=arc-20160816;
        b=KYWlYpyVtYbEongrgKz4/2MQUL3sUMTfFFy1oYMLVU6bJmqI2NuAClcj98M9Wh721q
         hAuLG5OmiP5rxkMIZLhBLpESZ0V+b9l/pM7eBVNqSE3CmWEhEm6LRweG/XBIt8g8SAwT
         5JDzqOCYfKI7Tf5GgJsNc6kTR1MUClPsUy67PAVrx2Mr0J4WdROBCIH8ANs04KhGiTZQ
         AgqT3CPbwDp5Pmw/bGH4wzGd1V0P+x7HbTO/vWaP7nUQ2p+vQ24tis6eoeuAZaRQVsJo
         Y/LhZPfBbxZ3ACHbngrbvSJjgkWxMSxF1VcM9wdanXrfxa9LM2wj0KObDffd/azHGTvn
         cuBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=VGwGCj9OdJ3R6CC60mZI99In5vCuB33TqK2agCVXQIo=;
        fh=U5jo4GRT0D8Kb0ibgHtfxNIkY1lEfVIvpMlxBZpPlvI=;
        b=eEzIailHTvkpiJW+wpzNNClEtLLoSkpiBblKw0ZKksuf3VFQErrI3CFKMEDbLNovoi
         XvFOf+Jr+9W9WVOixnUiI+a8dEK8Hsg7EAsn3msncSMXbCn9N1Tl5Q+nI3h3inrOm+wj
         GH/7DW2wzsUq9FHTU8I1fBr3lCxX7rFpsbj7KiZ1pIW6hDSeGefyT0MybeFAOsVPKYp+
         /fzSf2WVr8HBOYqbcKTSz4gLIRVB650ND4/kFc+dvVC6+1Ge4yEZLyDRJEIBTioj5cwz
         xhP/MOhoNsgnN26h5v71yeAMiiVNodK0Nml+m4yggNhKolptHJCI2o3UGU5K0gHf2tdi
         0zUA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z4eYOPvV;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709519383; x=1710124183; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VGwGCj9OdJ3R6CC60mZI99In5vCuB33TqK2agCVXQIo=;
        b=GSarX+cD8GFI2Nmj4/jdMWTFX4Udan4kDE7eIp3+KtS1cArTS2WFLfxs1y5Tdp6KG9
         p+kS+DRhrsApxCgHbZudvof83a1uE9T7EUj+OaKjr/xwzDrW8RAAUtPliPR5B7o9xTfk
         yp6OtWlt4iC+eBvF30SLJfk0HyahUxo1A44Io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709519383; x=1710124183;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VGwGCj9OdJ3R6CC60mZI99In5vCuB33TqK2agCVXQIo=;
        b=p3zJwvuool0Lb1lg1k6P9rZZcFg2vVQbBf3B7nGZyx9z3COl+y80Yb9+fxnibZCUIN
         c+Xds2Tmtplv4gtPzOa95uTUcObzIB4wAFJmRdvCNIz5CIddRcZFotmY4YOsrtNmxsEJ
         Yp3ii+TCUCLMpSM9m9thmmMyt64JZ376nnUKxHW7hG6FdmVN1xrYAq0wBLSIxMfACLni
         jYBScPnujkhFE+3rKyFwI0tlzg7ft5tiEWeBGTktn5FkXWivE+cEsFxqG/3PnDkWpXmq
         TOkm/MKv2K2A2FP68pQBplcoEPhoNlgEBVT3adn0O+K1aocA6flt6p2MYyQZ6P7Gh1qQ
         UFaQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWh3m3BTp9YzNmbKl+i4R4ktBczhXlWiYUgflW2ThbFXdv6FToX8nG2S6ww3u74YDzTJC4sivfEKs8jEYI6/7NttcRWl880RqW1
X-Gm-Message-State: AOJu0YzWPM6EMfqEK1+hYMTYQMqbQeFm+Z/ZS4COEWRj/UD+zbG+s9g9
	x8nsibsXzbxVsfKs2+wyULU0ni10kvBP+l8GihzXfeBi/7cVsTtJwiDRlgAybxc=
X-Google-Smtp-Source: AGHT+IEsSJ+6Sd1H9otSWQ1oqVv306qAcm+QF53pqvqhygTkOQtnivCKWCBFhS+2Pwd8fZNpekp8tA==
X-Received: by 2002:a05:6870:ce48:b0:21f:c0a4:639d with SMTP id xd8-20020a056870ce4800b0021fc0a4639dmr10037935oab.35.1709519383710;
        Sun, 03 Mar 2024 18:29:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:b415:b0:221:a0:c163 with SMTP id
 x21-20020a056870b41500b0022100a0c163ls1191466oap.0.-pod-prod-09-us; Sun, 03
 Mar 2024 18:29:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVHvrr/sE1uvUIRo3zvwZqjUPhv+zN0xxjzCGcuN7q6KOREqEhNZnks1mRQVcdFHuwYPToSeGQ9fC/pKeswuUR9Q/dw3BtLILnDqA2jNSQs4WV5nYg=
X-Received: by 2002:a05:6871:2301:b0:220:8e72:f92a with SMTP id sf1-20020a056871230100b002208e72f92amr9637899oab.13.1709519383006;
        Sun, 03 Mar 2024 18:29:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709519382; cv=none;
        d=google.com; s=arc-20160816;
        b=OHUMTsFbC4RTA26rTNEixx5FG0mXcR/3S3ha5FEmvkrgspE4byCV+NxYwDI6Q+4OSD
         FeXrn/cVy6l5+FeZYf1CbkAulMt2soQBGk1f/IJ2VPoVuOaaZIv8Uz+rTVn9Q1oeeXWs
         mGDYZPwtIeLZDXMNwpAOZKzqLszJs8Ys9JRp1Swlg9w0FXPI2Glh1UwwdG+RA27hjpPJ
         Ph/3AXgHslcq3d6Q+k2t7XQuTpaF8LxQhUyqeBWAmgq/qKvuH21pkay+TfcLB4oP3ln6
         SKYQJGwO8+27Rk/VONoavT4xhksqujbsWI7BK+k7mxOXSVl4D/Wnfzr0Lw12YVIAZhvu
         Z6xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=QsT1xP/aqrlEd2K9EXySx8X6EjIeBBpcAVZbIuX2Mto=;
        fh=1oTaGV39QDeV+W9CgIymC6D4EvtvngxFmEbBWiqcRMM=;
        b=zOglpDsWUx0AB9E+hVV9dyBZCDoToahETm07/0tSX6wYbT/wT2kwOy8WPOQQJqBjOh
         yNu7RSveavXL3eQYcd9Ko/UMyWikjjysQYpXHnozSJpPY0Ujl+Ckti3a/cnDlm/Eisak
         lF6wBxhFXeaDCR7JoT1DNYSBPcaAAcHpY4f96Yp4qYNdx6PLZfA3G6bwVWuVtiuBGZmC
         m/6WlTJ7fLqvHmXzPlDsWsVi7v9Ql7ydJLQk7pE82fDNSK+j1Qd1n3QC7iDupDgdffZV
         SyKjs2XF+iHLS77BLxHhv1KxT7Y8dsQuUqA8sqyDhyniFEe9XxSqFWZ5s7RxbJQYi02G
         ZzqQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z4eYOPvV;
       spf=pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=larsm17@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id l6-20020a056808020600b003c1eecdb674sor465422oie.1.2024.03.03.18.29.42
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 03 Mar 2024 18:29:42 -0800 (PST)
Received-SPF: pass (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXSO3GEsL/P8X+9lYHEV86U3qEEEiHOE1fGYGEGG2JUaRwHlZsZwMF6PLiIVqN5b1y+jKs99Ltk3QxFh6L5zzpnwAkQ8IR0gNYF3PBkQvglW41/Qbo=
X-Received: by 2002:a05:6808:eca:b0:3c1:c7cb:13f6 with SMTP id q10-20020a0568080eca00b003c1c7cb13f6mr10297374oiv.22.1709519382612;
        Sun, 03 Mar 2024 18:29:42 -0800 (PST)
Received: from [100.64.100.6] ([193.37.32.146])
        by smtp.googlemail.com with ESMTPSA id h16-20020a17090a051000b0029932d64c2bsm7483503pjh.17.2024.03.03.18.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Mar 2024 18:29:42 -0800 (PST)
Message-ID: <fac909fe-164c-40cf-9182-4a9ae08e980a@gmail.com>
Date: Mon, 4 Mar 2024 09:29:36 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb-storage: Add Brain USB3-FW to IGNORE_UAS
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Alan Stern <stern@rowland.harvard.edu>, Tom Hu <huxiaoying@kylinos.cn>,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20240226075936.1744353-1-huxiaoying@kylinos.cn>
 <a960f1c2-a858-498e-a0cf-4c15d74487d5@rowland.harvard.edu>
 <960d9120-47b3-4961-9ce7-cd9e8b760220@gmail.com>
 <2024030221-tilt-remission-7d7a@gregkh>
From: Lars Melin <larsm17@gmail.com>
In-Reply-To: <2024030221-tilt-remission-7d7a@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: larsm17@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Z4eYOPvV;       spf=pass
 (google.com: domain of larsm17@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=larsm17@gmail.com;       dmarc=pass (p=NONE
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

On 2024-03-03 02:19, Greg KH wrote:
> On Sat, Mar 02, 2024 at 07:06:20PM +0700, Lars Melin wrote:
>> On 2024-03-01 23:53, Alan Stern wrote:
>>>>    drivers/usb/storage/unusual_uas.h | 7 +++++++
>>>>    1 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
>>>> index 1f8c9b16a0fb..98b7ff2c76ba 100644
>>>> --- a/drivers/usb/storage/unusual_uas.h
>>>> +++ b/drivers/usb/storage/unusual_uas.h
>>>> @@ -83,6 +83,13 @@ UNUSUAL_DEV(0x0bc2, 0x331a, 0x0000, 0x9999,
>>>>    		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>>>>    		US_FL_NO_REPORT_LUNS),
>>>> +/* Reported-by: Tom Hu <huxiaoying@kylinos.cn> */
>>>> +UNUSUAL_DEV(0x1234, 0x1234, 0x0000, 0x9999,
>>>
>>> The vendor and product ID values have a suspicious look, but they appear
>>> to be genuine.
>>
>> Hi Alan,
>> it is of course a bogus Id, here is another one:
>>
>> "SmartWi - Multi Room Solution is a Smart Card Reader hardware device. This
>> driver was developed by SmartWi International A/S. The hardware id of this
>> driver is USB/VID_1234&PID_1234."
>>
>> found by googling vid_1234&pid_1234.
>>
>> There are others like 1234:5678 which also looks suspicious.
> 
> Yeah, this is a "fake" number, which happens a lot (0000/0000 is also
> used.)
> 
> Because of this, I don't know if we should take this change.  It
> obviously fixes an issue for _this_ device, but for any other
> usb-storage device using this fake id, will it cause issues?
> 
> thanks,
> 
> greg k-h


If you are asking me then I say that the patch should not be taken.
If the manufacturer doesn't make it possible to distinguish this USB 
device from another USB device then there is nothing we can do for him.


thanks
Lars

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/fac909fe-164c-40cf-9182-4a9ae08e980a%40gmail.com.
