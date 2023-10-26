Return-Path: <usb-storage+bncBDTNDO5RRYJRBK765CUQMGQEYVPRAVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 592387D80B9
	for <lists+usb-storage@lfdr.de>; Thu, 26 Oct 2023 12:27:56 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-533d8a785a5sf539098a12.3
        for <lists+usb-storage@lfdr.de>; Thu, 26 Oct 2023 03:27:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698316076; cv=pass;
        d=google.com; s=arc-20160816;
        b=D151wAWJR7M9Ht+D2SNZ8iSKx3MFyfGC9qnnQ2XTaH0n2Q0smQedkN/f9Gj2hwZm5a
         eRpJlIAJPdeKB22CgWlai4fD19mwsc4ISl8C9W1pS+GqFypp3kg6l/L650SbNhvK3Myv
         1/RWMaFN3IQg/NBQ6TNAtmOkxWSVeXAVP9hLUVemjT4A9Fsjtcnna2C087IJoXiLS6Ci
         Jrs37zeT6VNd7ghLgER2F/kxU7sfn3GfNcFtARCQXNZigdSNo0ST75A9wAQUxGd8Uoep
         EuMD+GP9Z+W8uL5TjAcr3s2NBRkb7VdS8C86Q1p6/zd/mGN/w5MEyD9qMaFTP65hFHUt
         c0ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:autocrypt:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=SaAR3KhxJhVHC+qwgC8d17bkvpM8P/Mlo4CiRJ4yJLY=;
        fh=IelrNM0Hod9abwgeEpLwY4j17xJUw4YqHKAIAb+uXhg=;
        b=AEu/fercWG9mBefFxO8a2e3r6Coqn/NHyK7PyLbt1lkPjT8NA2l2Nm2PEC4bA29mId
         0tISLxYbFW5fRDf4tGmIit2iRWHIwcDk+8wCyMkIsPvLdoUBJbzAQ7UkKnQtyUs4kjIq
         5U7r2ntXIlWNOOdGN/q/C/67ILcySiT5M+uhdK0hbXkTOKn/9K7BRP9KjGW1NZ5vNiAG
         pxiNvsKiafAL1cv3SFCkCCpJ4z9/99nva4uxijFyenb+o6Zxp6ve+EjGq2VbpEV8XfWa
         dyHO/JajyIjeeE/EhJfEKBbhz9omL+VapZQSqB5duXZKeIBHb/t8qz21r+Fzdz8nE9yS
         xdsg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OBZUydCE;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698316076; x=1698920876; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:autocrypt:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=SaAR3KhxJhVHC+qwgC8d17bkvpM8P/Mlo4CiRJ4yJLY=;
        b=E4uB7tn76BsD4Vf2zYgbK4lBU3oqKGWsZSyH86ant1Km6V4NDAOg+Pp2hDucl00Fsi
         +lt/hi+vvap59IZZYKaz3GUDTmTVuZjU4BVgbQvld9bgBBce2fL5bbypbtwvc11nu20V
         //ouL4JMM/pMsgYxN8OecbNQKbtTMl2svbA68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698316076; x=1698920876;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SaAR3KhxJhVHC+qwgC8d17bkvpM8P/Mlo4CiRJ4yJLY=;
        b=ZTUfV/OR4AClSimQn60b7wOHaSy8BIRccT3MoGU6NBxmkVwTIWWSzprmN/3Zb8YOg8
         /jDchH1PoyoJB8aSc6toUgJ6qtSSFqc28cwKMHXZBK6lGu7dnIfSXdd8yQWukE+jsnf2
         14TgF99KDqVLOIZCYccl6aLvqmKHZnAeo+oVLtbLyItWlCqFyxgeD2LyG8Hs12uKgVDe
         0BrGhMHPXxEZLL7kl2BkOYArDRcEofTGc6fJeR2HKuQz2wxFG2e0XXHEzly+RJQtxEQt
         +RpVQYj/nfu9JbU+VQDPehY9bCwBEs3AW66zkcqji9fQ4WLkdMoO0pLX149wyyduMEHX
         dgJg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxjYKchzBl+Sy0AdFQeBfjbbjiu7cw2IHkpkARqsXs6IVsuNmgx
	9t4DFr9BUNIv8EJ3GrUJCWLRSA==
X-Google-Smtp-Source: AGHT+IH22qqKv9KmLD6kWv11gz/HcB6vMuMD65uuTyFTzLh+UEpuJ7YybWeK56VLEBdeJVYQQZTVLg==
X-Received: by 2002:a50:9b5d:0:b0:53f:f47f:3d5 with SMTP id a29-20020a509b5d000000b0053ff47f03d5mr10211001edj.32.1698316075792;
        Thu, 26 Oct 2023 03:27:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:eac3:0:b0:540:1929:1578 with SMTP id u3-20020a50eac3000000b0054019291578ls145455edp.1.-pod-prod-08-eu;
 Thu, 26 Oct 2023 03:27:54 -0700 (PDT)
X-Received: by 2002:a17:907:970b:b0:9be:ab38:a361 with SMTP id jg11-20020a170907970b00b009beab38a361mr12344693ejc.8.1698316074442;
        Thu, 26 Oct 2023 03:27:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698316074; cv=none;
        d=google.com; s=arc-20160816;
        b=KMxzPWiUDC7FaaJScQAlOXjUYd7yq1wDLm4lkCaer9SFsO2KrmQbLf1MifdrYj1xPq
         W38CcMkp3879IRgcAfMniba+0Eb+FBOyvkHl3hfKf/GCU9naFgaIqgw6jbqs5FGdNkNh
         zX3p+c4l89YcU0Q36QKsuRMQLuNOy4+zO5FK2ha+CpCLjvz6m84bHqyH/KhcPDA0XbP9
         HjoDiibqJ9PL+9SB33FTBr/lxhR1wVdSow47RK3FFI4t75B/YjKo31ERurxo1mkgZCLG
         eTKIoSYfE2fl14ABLEEkHD32rgMWJNkAcwhpPjrHfM16IiabTv8VH7uJB0JwUT0z9Da9
         JYvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=+aq475Tqa0avFYdG2VH8bfPJXGlpgBKdf2u1n93YWuk=;
        fh=IelrNM0Hod9abwgeEpLwY4j17xJUw4YqHKAIAb+uXhg=;
        b=G7e1QJFrqVvHt5+N2CBGREh4P/7TYY02akqEuM7n+UgM1GCgknFzb+G0tDSU6w9rKm
         Bbfb67X1qTbvopnNRgZizYJDfWP+yHpWa7kvzfE1g3ouyNWqKKRscvjn0q4bF2DGFQfQ
         aXE0c5hDu8xF64r0/hYTaZHDHuL7qieEhUpAC2DeL7N8lavBuqXWULC5HKVJ5xjSEZ3u
         qmoGmhN3NOAdabC0r3QU612xZ0iCUnGLmnraPcYfS0ZOmU5mGKckSiKEk3B0mKsgbgju
         Y71R6UJYH+piphD0Km2q47Tc8seAkHU5bpcy7o4k6fUORDqr88vORK9x0CKjSvtL47IS
         jtRg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=OBZUydCE;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id my43-20020a1709065a6b00b009ae523008basor1544035ejc.0.2023.10.26.03.27.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 26 Oct 2023 03:27:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:3e11:b0:9be:6bf0:2f95 with SMTP id hp17-20020a1709073e1100b009be6bf02f95mr13954717ejc.20.1698316073776;
        Thu, 26 Oct 2023 03:27:53 -0700 (PDT)
Received: from [147.251.42.107] (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id a20-20020a1709066d5400b0099bd5d28dc4sm11427937ejt.195.2023.10.26.03.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 03:27:52 -0700 (PDT)
Message-ID: <ec993b61-5e68-4e63-8ffb-e30503ea5080@gmail.com>
Date: Thu, 26 Oct 2023 12:27:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 3/7] usb-storage: use fflags index only in
 usb-storage driver
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, stern@rowland.harvard.edu, oneukum@suse.com
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <20231016072604.40179-4-gmazyland@gmail.com>
 <2023102125-lived-clause-66ad@gregkh>
From: Milan Broz <gmazyland@gmail.com>
Autocrypt: addr=gmazyland@gmail.com; keydata=
 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
In-Reply-To: <2023102125-lived-clause-66ad@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=OBZUydCE;       spf=pass
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

On 10/21/23 12:21, Greg KH wrote:
> On Mon, Oct 16, 2023 at 09:26:00AM +0200, Milan Broz wrote:
>> This patch adds a parameter to use driver_info translation function
>> (which will be defined in the following patch).
>>
>> Only USB storage driver will use it, as other drivers do not need
>> more than 32-bit quirk flags.
> 
> Then this really should be renamed to be something else.
> 
> Having a parameter be "0" means we have to go and look up the function
> and see what it does and why everyone is passing 0 to it.
> 
> Make a "wrapper" function, and rename it to be something sane that does
> not need the extra option, and then for the one place you do need it,
> use a different function name and then both call the real function.
> 
> Does that makes sense?

Yes, fixed in v3 - and as it really simplified the patch to just few lines,
I merged in to one patch (as we touch these lines there anyway, it is
IMO more readable to have it in one patch).

Thanks!

Milan

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ec993b61-5e68-4e63-8ffb-e30503ea5080%40gmail.com.
