Return-Path: <usb-storage+bncBCIKNOFMWQGRBKXUXCJAMGQEANCKUKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id B389E4F6F82
	for <lists+usb-storage@lfdr.de>; Thu,  7 Apr 2022 03:11:10 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id f10-20020a170902ce8a00b00156a6b150e4sf1958064plg.7
        for <lists+usb-storage@lfdr.de>; Wed, 06 Apr 2022 18:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649293867; cv=pass;
        d=google.com; s=arc-20160816;
        b=isj38dziIPURj5sJ2jNzjiHbQMn1ObBq1m/bwiopnuzTHm3n4bKCPtF0fmGo2y/3CB
         9XTwdDU4GOOAZAhZ/mJo51wUw7RoldDpflUJUzgzy6OWqmtI2pptIsjWD/WV5SiEdgJz
         HHXBBduPUGkMA8aOJIPfZipTsavT9k688av7u0YRcDlrvZXhhgffBEqhezFabubOKP6d
         QjwUovpLOU89Kn9AZGwyLXe2AMSvH20/YjEfavpB92Jr02U87r62U+PAC6Yn+YX2SMFL
         tGJXemUxe44K2vFeRF6U2OoxlvJ9Zkalf+wd70zP4i/R+JV6zOSqJqZirGK7SIQ6UDPE
         z4XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=Y55eS5QcQ9n1RhBMI9XAr2lT6l8t/lBedz62kgEufWo=;
        b=qWevIRRDIdbD0M9IVbb67EeGzFbw2EeAJfENgdtC0YDU9f5AkK6hYlujjmmxMQlqxO
         cjh0v1grh/D7spWHbNH1h2UxQhJAWFJI+J6SesPhlM5U0ur0WkSMiv6DKsKiMfxqtyUC
         YVH4jUjgQyzy98/NupF+GiF1eb9ekYxtpbHjj0KMKH/O/DJl6NaUkYOpeh/15jl1aWmB
         1jX/xbyfdIb6uex0JEgNAgCwYO0U4XwXxp+jwYgjUnl2toLQODy2gCt9Twb4eawYoXmF
         msmnJtr1N8Iek8DQ0jMvdo4DNyxZQ3V0SaaiyZnnTJw8gogpxocGydWOUXm1kMHT6HPy
         z01w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:references:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y55eS5QcQ9n1RhBMI9XAr2lT6l8t/lBedz62kgEufWo=;
        b=MJuapys7q5GIUeX0aCcxjyjgZnOA/zzAREUoUOEpZI3z+iklo4xTqEISK/wy8wNgWS
         vvAJ+MAiysfsWoiv4D5kCB4Y93EqNWN0qgOPTqc0EHf4E9NAONdIlzFduvFrBb3TtEWa
         wpN1DyHbIbLiUSpLji2m1hImTF7mKn20Pe95Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :references:mime-version:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y55eS5QcQ9n1RhBMI9XAr2lT6l8t/lBedz62kgEufWo=;
        b=ohdBu241+ARqJ6asrkoIvsxNgxYIcfcR1WpeoZ+68NciQTFVXt7wPG5yFZB91dXPL/
         tsy1lY08ffkCU8+3nxqPC4zTSdYX5GL7506Y4pe6KREN+/OrdvmeknnLq8z+7akbTgqK
         0UvHDeRCm3ZcWcz35Te8uZmP+YAdqTmUSgJV9N+EJycHTCmqCVCGFQoxMLu+CYVSjZ/4
         t4o6RbWk9QRCVHlO/6b1l2Nx5vPwY0yvGLH8zEZ5H0d9ffX++Raa7rUXH2flEkxDVXi3
         60m9TF3fIvRzTJw3rG2mfiSqwXS+Yjp5UCMdkRtYbAtvXySudRqFXmCDHG/HEnAyGCnt
         y2Kw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5327EiuIwBq1tAuZb3rlZsSIXP6j1oXxIlS3x8+kSXbNfmm5HNM7
	2XoVSdG2RzbxY2iQ8qb2JGYbIA==
X-Google-Smtp-Source: ABdhPJyrEXmE7FDHl7A4C8lx/RHvIvVjbqL6Nw0cXV0PaN8eJkoGicqrr4iUSPrS/0m77QibADFK9A==
X-Received: by 2002:a17:902:ab57:b0:156:c63e:9d1a with SMTP id ij23-20020a170902ab5700b00156c63e9d1amr11474364plb.49.1649293867140;
        Wed, 06 Apr 2022 18:11:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:1684:b0:4e1:b713:eb10 with SMTP id
 k4-20020a056a00168400b004e1b713eb10ls739138pfc.9.gmail; Wed, 06 Apr 2022
 18:11:06 -0700 (PDT)
X-Received: by 2002:a63:2bc1:0:b0:398:5eec:6e77 with SMTP id r184-20020a632bc1000000b003985eec6e77mr9403624pgr.83.1649293866411;
        Wed, 06 Apr 2022 18:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649293866; cv=none;
        d=google.com; s=arc-20160816;
        b=cP4AWgjuk4w+MIAQUNw2ZF7ubwGD5aG1azmuRaxOztxlEz8Iaipl+3i+OQJhcxFyQI
         i8/qB87sYkf+u+9+2BBc2ieRWUcxLG8gXsrtFj/wUQ+1MWfMND/ODBmB4Qlg/Lx949Gz
         lmEFkk0PXOgXD/Z84hq8lXCpHzTSw7R4yBTcEsmVkii/1wJiuxt8zXRFZ8zPEhvFunmc
         9Y2UFk3+rMKA/opoMJanzzxC5Jp6t4NW7xoXjmvWo3nzzgYlA4bkWhkw7hW6L9Q4+cao
         JYOzbAnSqsKWovwUPwzPTJvD3CEzWyD5Zb71j1vDpl7zaFLi+IIfsMGpA/k8lBc3MTil
         6dVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:content-transfer-encoding:references
         :in-reply-to:subject:cc:to:from:date;
        bh=n8ZrbnqCG9H4buvAx2LSYL6TDe3D6U6G7O6mg2Fo5ys=;
        b=ez4txLCp7nDUbig8eCJHFOphgHnFdBrrb4xekfbNnnGPRAQJNUu4j52h7z6Lkzl/Aw
         q6v7ybmLH3vWL0SgHfxoTZprbQ+B3NC/cA2Tvg/pVjs2d87ymH9RXZZNhVVDTgRjlVHp
         e/Q6J6wQGEpHgaGW5VrtcaRFJBtW/8WDq+vRe8OR/Ej3l71KCfYp/gUuT5hzHc/CBWXi
         tgxvwurkyspebi6HBYa6uvwjkGhcRLygwfCDqm/J7TDW0oZW+S9pd3R5E3yUJ1lyz93g
         es7rd/ztWSm+q03e241B66JL2aWl3N8vGhlSrfvhh/i+1eF4ZsStFx9KdZT6BEj/qAy8
         u8cA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (spam.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id p14-20020a056a000a0e00b004fdf6336020si11586113pfh.61.2022.04.06.18.11.05
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 06 Apr 2022 18:11:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: by ajax-webmail-mail-app4 (Coremail) ; Thu, 7 Apr 2022 09:11:02
 +0800 (GMT+08:00)
X-Originating-IP: [222.205.11.114]
Date: Thu, 7 Apr 2022 09:11:02 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Lin Ma" <linma@zju.edu.cn>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v0] USB: storage: karma: fix rio_karma_init return
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.8 build 20200806(7a9be5e8)
 Copyright (c) 2002-2022 www.mailtech.cn zju.edu.cn
In-Reply-To: <Yk2tR4iEr5/T6o+h@rowland.harvard.edu>
References: <20220406100259.6483-1-linma@zju.edu.cn>
 <Yk2tR4iEr5/T6o+h@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Message-ID: <18ed9d8e.3c7eb.1800193253f.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: cS_KCgCHj6cmOk5iYjrgAA--.31805W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwQNElNG3GOLGAAAsh
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
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

Hi Alan,

> Not exactly.  rio_karma_init() is a usb-storage initFunction (see 
> the usb_stor_acquire_resources() routine in usb.c), and these functions 
> are supposed to return either 0 or a negative error code.
> 
> So you should make the routine return -ENOMEM, not 
> USB_STOR_TRANSPORT_ERROR.  You can simplify the patch by changing the 
> line where ret is defined; initialize it to -ENOMEM rather than to 0

Thanks for pointing out that, and as I dig deeper, I found that the use of error code
is "totally a mess" in the usb storage.

Taking the initfunction for example, there are below 6 cases
1 karam: rio_karma_init()
2 realtek_cr: init_realtek_cr()
3 aluda: init_alauda()
4 isd200: isd200_init_info()
5 shuttle_usbat: init_usbat()
6 onetouch: onetouch_connect_input()

The (1) is erroneously return 0 even when the kzalloc if failed, must be fixed.
The (2) and (6) uses -ENOMEM when allocation fails. (2) will also return -EIO when
another kzalloc fails or rts51x_check_status() fails.
The (3) uses USB_STOR_TRANSPORT_ERROR when allocation fails (seems that I learned a
mistake from here).
The (4) uses custom ISD200_ERROR when allocation fails.
The (5) uses constant 1 when allocation fails.

It's worth pointed out that (except (1)), the others though not following the standard,
it won't cause bad thing because the callsite of these initFunction just check whether the
return is zero.

/*
 * Just before we start our control thread, initialize
 * the device if it needs initialization
 */
 if (us->unusual_dev->initFunction) {
     p = us->unusual_dev->initFunction(us);
     if (p)
         return p;
 }

I will then send patches to make sure all initFunction follow the standard.

> 
> And don't forget the error code for when the rio_karma_send_command() 
> call fails.  In that case the return value should be -EIO.
> 

Okay, will add this in next version of this patch.

> 
> Shouldn't this also be marked for the stable kernels?
> 

Sorry, I didn't get it, do you mean add another tag like "Cc: stable@vger.kernel.org"?
Or I just need to CC the mail to stable mail list?

Regards
Lin

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/18ed9d8e.3c7eb.1800193253f.Coremail.linma%40zju.edu.cn.
