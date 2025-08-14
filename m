Return-Path: <usb-storage+bncBD64ZMV5YYBRBAM27DCAMGQEWRZWN6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A8EB26C62
	for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 18:21:23 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id af79cd13be357-7e8704e0264sf263136685a.1
        for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 09:21:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755188482; cv=pass;
        d=google.com; s=arc-20240605;
        b=CAnWdxUsvcwWsMoPikex6ubxQeSDo8AteMdXArAjX5Kb/zVHCf40kNyyjK4SD99AkH
         bRrKhSeFm68rzKqQNlxm5QeDP+qKLqozop5ilbMMSsAGOAoGxOk/+ry3ny88usVISKSS
         J/4pGPvG6qG72HKHl6zC03GCSpaaBW92Pgve5uizW+o67cuQqoOSGEomciQZOobzXIZD
         uDW2hKS/d7RjJIKiQsmwNY8wbVUJBVgjGPfVh98llyWOQ0kt+BIOBtyinlovED+bzvxT
         81lLgcubd+5bxlL6OHwA/fonMPFSjK24nEvqWf3U+N/3c9xJeTEDhgkWi6DMm1Da85uz
         7eCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZNFVMwSpnpQmFjl1JlyqplYx7j658tMI2jsvRfT/fBc=;
        fh=qXt4uay0kEFmSME+R7L/9tM+8oIuCZD7yOlTg3bsDHg=;
        b=Lr6gOfR0tecopm/4jfGDjqX2SFBexK8PxqWJbbRdsR2XyoE773+1t6g5pBnH8HXm+j
         fybeIJsiRTea1rNrT8X/suiHWzhkrldQFBFe2EeuIvNyF5DljmVHhqz5qI0zGrlBMDoO
         bhRMXHM+FluA1Z3A+YvpTf6SwALN4oJT3ayTziKlP8gM+AgTEZH6jgwFFYxa+zokzBHu
         qgT53Hq/Ze1Idi+/Z9o3Ts6O4WPnnZS5VOaT1X+DxbmRaeLZOHtA2uwedooH35h3rGyf
         NLclrOSvMLTYDIWGm7Vmbivmm/9+hlLYBLEAvwyuTVFlaHg6GXHDaqcomSdm+C3WOuSF
         TIAQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=hOzNg4t1;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755188482; x=1755793282; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNFVMwSpnpQmFjl1JlyqplYx7j658tMI2jsvRfT/fBc=;
        b=XHCXBSRyCchjpqS+cD7t1o2X11FEoztqzC+qaMPqlQbM0w4aY5djJ0+dTi/zI3iuY+
         QVDJ4uQDd0ZfxhDUavH3FA4rW0kE4Tw+lmk4A+/c4Hw/KVwGdxMeOb17ZT7wZfE63h1V
         KhDRCEo/FtnPscHFTUOwBMctbhWLBYIv1s31E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755188482; x=1755793282;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNFVMwSpnpQmFjl1JlyqplYx7j658tMI2jsvRfT/fBc=;
        b=r8/pzb9NgcFvml8bGq3yIBcqk8HUFl1rAELhB0Tt4/8ETpSx1FSRly3Ai+wD5zIm+k
         9/+wRHe/JRZBEfoe2Jq5LfpkHbtayc6ZkJmc0VzxmrENUuqhlvZLseVaIt2gALje8QIW
         HO5BARdxO3KJUmvFvRvIYeZD8nInxkOIrF9fr7peOLB+d7i90Uc/ezGPHD91fdDYsKKa
         4zE8JykgetZ3Qdsa9+fWgTWgf0DkhcsGdQZeCV3u4nYigxcNHnX0pCbuQyxIPD5pn9kJ
         sr9+E9L2g5NzCc3UX5/vQirn3qVhWjvh59F0O71maSZzCcDf2Z9DeQYpu4L6QQ7KB+eZ
         itLA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX5q28kBOTE/PbghlrRc1eNxXezwyPI4ZXmiSUmDpnZ87YFbDEJbuUbxEyQUfZgcyAPw92kdg==@lfdr.de
X-Gm-Message-State: AOJu0YwsUPifMyZf06a2geJ0XEPgsq2JJhz1luM4O52hLQazjaHxwdUZ
	SccML6QfB90s8UfTY/oyb2t/Twr2aBcXR5+OC5/NeAyDGnlprUSfq9bsdMEdK0s3iVk=
X-Google-Smtp-Source: AGHT+IE9zQJf5hWiPYfK3uLbYmlAbt50srET7svZsAaMVtxf3QN2h6bs808S6fqW+6N5WiSGyZeTxA==
X-Received: by 2002:a05:620a:9147:b0:7e6:2435:b6bc with SMTP id af79cd13be357-7e870460f17mr316167485a.29.1755188481548;
        Thu, 14 Aug 2025 09:21:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfOk2G1iUJCqD6Pb4y2kYfO2v18a8Jq4EmEGLkl1xC3pg==
Received: by 2002:a05:622a:2ca:b0:4b0:7930:aefa with SMTP id
 d75a77b69052e-4b10a2b17acls15174621cf.2.-pod-prod-05-us; Thu, 14 Aug 2025
 09:21:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUyid42VpGLpeOUYVKQhQrdjb07cup5yDASZ1LZ28j0sPckKNVKc1io2tUjohkoBYr0zEsRJKkCvI1HEw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:3bd2:b0:7e3:28f3:8a5 with SMTP id af79cd13be357-7e87045d632mr429310585a.28.1755188480313;
        Thu, 14 Aug 2025 09:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755188480; cv=none;
        d=google.com; s=arc-20240605;
        b=isX+AR9VduYxf/CB3Nx9i84xquLLEKLDi8CAyjrgy7VqIHBMrroV/wUsUWcdLJwhuX
         1JNGj4391Ilc9Ol2WK5qqAFacfbuRpOtYM58i/C9SqvxMF7BTLH9mPC4DTuGy8zqRaLi
         srNUNpqPWjvXYB0zah1mlKjBikfb+CWUhJjr7KnNSzqsZ9t4Rlq5Z9Bfq7MoguPwGF8q
         D25R9Z/lbvI07vFXXujC3ray5MYbv7KVNcTufT2TFoi5axI8EVgtCKlVXqdlwcmq63ik
         rso2WjD+y79I5Qts3qe/GDPImO/7UItnM8LIJgI/wRTyF81ne6dTrju/RoinAnvsgPt/
         aaKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=le3KUTgWjNTixhQays7FLtYINre7Udl52g4ue44pkrM=;
        fh=AOWHORM3KUuYubOdA3Ad7ftuWGHGZu/YkkpEkPwRpZ8=;
        b=CdsdNzYWTD+y2fLVrNg0Ap20RLokHovYJhGJEQDc2i6zb0KMUsyWVRZyXtR/LzDnIw
         Sojiphgo665+xKwZsW37erQUV1CjblqS9cBeNPZz1K9XRMrz/+K5v+HsccaHFWEQ8hND
         RF+mPJudHlhZkQhLW+YMGxyxkk2NY/P+2pgDP5/CrySbtQGlDE12H3WEBgjjxPJIn9fF
         I0SubXC7jPFV72R+P01E44YZPuVMIdB9L0ZNgiLBiKXM6g+6l6GkBgeBo9nofXOH+rJn
         8zHXGrx2O4VM+fSTjN5Oi/VwBSX0iyCk3nSmiMHOiUtf0LXESUiEnCO3oRQuk5Z+fZ88
         9JFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=hOzNg4t1;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7e806c199c3sor2130047785a.1.2025.08.14.09.21.20
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 14 Aug 2025 09:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUvunCPaEfLvmvSUv01DTMlInM6NM8X5CJC4FMds8s3eHRnegwvf6XCe1InZQSBF1S83BCC3r3MVER4VQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncu5FwAQkxyX7Fbug+f4+vT/v3ZzOSOaWs8yGcFoFPEX8wp6pmigEHMRupL1FQu
	3Rc1B5BXuGi23Waht7FOBD3MGsfSDAk1GIuHZPwQMSecQT8TNZ888kgKHwi3ZBpKrEefz4m1lCe
	TReZILk6s/W9xJ+pEei3pkTU2aRivE29PvGBqHJuuN6DZPxhv9ROmke2RmrvPMEesgpK5rp3Z8u
	odttWmNIMf6MNxJGfwuXEc+gQIlT9J1M37jTSjmCpJ6UqIRzGT59qza6/ATG5FphbH1sPG8rPwy
	nNX6mA3gquoQ9FTujlgtUw/Z8j+YRaeg3+PvviMNudY9/VX7tvmjrb2YoAhw6LhpZ/feCvTW97A
	lzAvO5qDyo1a24bu8fOXMHrZ7d+U=
X-Received: by 2002:a05:620a:31a2:b0:7e6:9730:3d4e with SMTP id af79cd13be357-7e87057bb20mr438296185a.43.1755188479584;
        Thu, 14 Aug 2025 09:21:19 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::fa48])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e80c0e6ff2sm1563517685a.30.2025.08.14.09.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:21:19 -0700 (PDT)
Date: Thu, 14 Aug 2025 12:21:16 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Zenm Chen <zenmchen@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, pkshih@realtek.com,
	rtl8821cerfe2@gmail.com, stable@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, usbwifi2024@gmail.com
Subject: Re: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Message-ID: <b938a764-6ded-4b76-a15c-82c0062abf42@rowland.harvard.edu>
References: <03d4c721-f96d-4ace-b01e-c7adef150209@rowland.harvard.edu>
 <20250814140329.2170-1-zenmchen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250814140329.2170-1-zenmchen@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=hOzNg4t1;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Thu, Aug 14, 2025 at 10:03:29PM +0800, Zenm Chen wrote:
> > Also, can you collect a usbmon trace showing what happens when the dongle is plugged in?
> 
> Hi Alan,
> 
> Today I removed usb_modeswitch from my system and grabbed some data, could you please take
> a look what was wrong? many thanks!

Yes, this shows the problem.  I'll skip the unimportant stuff below.

> D-Link AX9U

...

> ffff8ae1f0bee000 771359614 S Bo:2:053:5 -115 31 = 55534243 0a000000 08000000 80000a25 00000000 00000000 00000000 000000
> ffff8ae1f0bee000 771359684 C Bo:2:053:5 0 31 >
> ffff8ae1b52d83c0 771359702 S Bi:2:053:4 -115 8 <
> ffff8ae1b52d83c0 771359812 C Bi:2:053:4 0 8 = 00007bff 00000200
> ffff8ae1f0bee000 771359853 S Bi:2:053:4 -115 13 <
> ffff8ae1f0bee000 771359935 C Bi:2:053:4 0 13 = 55534253 0a000000 00000000 00

This is a READ CAPACITY(10) command.  It asks the device for the number
of data blocks it contains and the size of each block.  The reply says
there are 31744 blocks each containing 512 bytes (which is unheard-of
for CDs; they virtually always have 2048 bytes per block).

...

> ffff8ae1f0bee000 771366235 S Bo:2:053:5 -115 31 = 55534243 17000000 0c000000 00000615 1000000c 00000000 00000000 000000
> ffff8ae1f0bee000 771366306 C Bo:2:053:5 0 31 >
> ffff8ae218ff2900 771366317 S Bo:2:053:5 -115 12 = 00000008 00000000 00000800
> ffff8ae218ff2900 771366432 C Bo:2:053:5 0 12 >
> ffff8ae1f0bee000 771366443 S Bi:2:053:4 -115 13 <
> ffff8ae1f0bee000 771366556 C Bi:2:053:4 0 13 = 55534253 17000000 0c000000 01

This is a MODE SELECT(6) command.  This one tells the device to change
the block size to 2048.  The device responds with an error indication.

> ffff8ae1f0bee000 771366567 S Bo:2:053:5 -115 31 = 55534243 18000000 12000000 80000603 00000012 00000000 00000000 000000
> ffff8ae1f0bee000 801899370 C Bo:2:053:5 -104 0

This is a REQUEST SENSE command; it asks the device to report the
details of the error condition from the previous command.  But the
device doesn't reply and the command times out.  From this point on,
the trace shows nothing but repeated resets.  They don't help and the
device appears to be dead.

I don't know of any reasonable way to tell the kernel not to send that
MODE SELECT(6) command.

The log for the Mercury is generally similar although the details are
different.  Everything works okay until the computer sends a command
that the device doesn't like.  At that point the device dies and
resets don't revive it.

So it does indeed look like there is no alternative to making
usb-storage ignore the devices.

Greg, do you still have the original patch email that started this 
thread?  You can add:

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b938a764-6ded-4b76-a15c-82c0062abf42%40rowland.harvard.edu.
